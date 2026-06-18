.class public Lcom/android/systemui/qs/MiuiQSHeaderView;
.super Lcom/android/systemui/qs/MiuiHeaderView;

# interfaces
.implements Lcom/miui/systemui/controller/RegionController$Callback;
.implements Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController$SuperSaveModeChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/miui/systemui/controller/WeatherController$WeatherChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

.field public mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mCarrierTextContainerLayout:Landroid/widget/LinearLayout;

.field public mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

.field public mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mDependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

.field public mDisable2:I

.field public mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

.field public mIsPrivacyPromptShowing:Z

.field public mOrientation:I

.field public mShortCut:Landroid/widget/ImageView;

.field public mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

.field public mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

.field public mSuperSave:Z

.field public mVerticalInfo:Landroid/view/View;

.field public mWeatherAvailable:Z

.field public mWeatherCity:Landroid/widget/TextView;

.field public mWeatherContainer:Landroid/widget/LinearLayout;

.field public mWeatherTemp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/MiuiQSHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/MiuiQSHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/MiuiHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    return-void
.end method


# virtual methods
.method public final disable(IIIZ)V
    .registers 5

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDisable2:I

    if-eq p1, p3, :cond_1

    iput p3, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDisable2:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateShortCutVisibility()V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDisable2:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V

    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPromptContainer(Landroid/widget/LinearLayout;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/WeatherController;->addCallback(Lcom/miui/systemui/controller/WeatherController$WeatherChangeListener;)V

    invoke-virtual {v0}, Lcom/miui/systemui/controller/WeatherController;->getWeatherInfo()Lcom/miui/systemui/controller/WeatherController$WeatherInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->onWeatherChange(Lcom/miui/systemui/controller/WeatherController$WeatherInfo;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/miui/systemui/controller/RegionController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/controller/RegionController;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/RegionController;->addCallback(Lcom/miui/systemui/controller/RegionController$Callback;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController;->addCallback(Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController$SuperSaveModeChangeListener;)V

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setNeedLimitIcon(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiIconManagerUtils;->CONTROL_CENTER_BLOCK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setIgnoredSlots(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->themeChanged()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->startClockApp()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherCity:Landroid/widget/TextView;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->startWeatherApp()V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    if-ne p1, p0, :cond_5

    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/systemui/util/CommonUtil;->startCalendarApp(Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateLayout()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateLayout()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0716ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateResources$2()V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mCarrierTextContainerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071889

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mCarrierTextContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071717

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071716

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/ViewUtils;->setLayoutSize(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0713f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/ViewUtils;->setMarginBottom(Landroid/view/View;IZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0716be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070491

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    iget-object v1, v1, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->destroy()V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController;->removeCallback(Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController$SuperSaveModeChangeListener;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/WeatherController;->removeCallback(Lcom/miui/systemui/controller/WeatherController$WeatherChangeListener;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/miui/systemui/controller/RegionController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/controller/RegionController;

    iget-object v0, v0, Lcom/miui/systemui/controller/RegionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V

    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePromptContainer(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public final onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b019c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    const v0, 0x7f0b036f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const v0, 0x7f0b09ad

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mVerticalInfo:Landroid/view/View;

    const v0, 0x7f0b056c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const v0, 0x7f0b0890

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    const v0, 0x7f0b0891

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mCarrierTextContainerLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-static {}, Landroid/preference/SettingsEliteHelper;->getCon()Landroid/content/Context;

    move-result-object v2

    const-string v0, "weather_container"

    invoke-static {v2, v0}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherContainer:Landroid/widget/LinearLayout;

    const-string v0, "weather_city"

    invoke-static {v2, v0}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherCity:Landroid/widget/TextView;

    const-string v0, "weather_temp"

    invoke-static {v2, v0}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    const v0, 0x7f0b0892

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    const v0, 0x7f0b0962

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/MiuiQSHeaderView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0b66

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherCity:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onMiuiThemeChanged$1(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->themeChanged()V

    return-void
.end method

.method public final onPromptInfoChanged(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$AndroidPromptInfo;)V
    .registers 3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIsPrivacyPromptShowing:Z

    if-eq p2, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIsPrivacyPromptShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateCarrierVisibility()V

    :cond_1
    return-void
.end method

.method public final onRegionChanged(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateCarrierVisibility()V

    return-void
.end method

.method public final onSuperSaveModeChange(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mSuperSave:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mSuperSave:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateShortCutVisibility()V

    :cond_0
    return-void
.end method

.method public final onUiModeChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateResources$2()V

    return-void
.end method

.method public final onWeatherChange(Lcom/miui/systemui/controller/WeatherController$WeatherInfo;)V
    .registers 6

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherAvailable:Z

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherCity:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/miui/systemui/controller/WeatherController$WeatherInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/miui/systemui/controller/WeatherController$WeatherInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eq v3, v0, :cond_0

    iget v2, p1, Lcom/miui/systemui/controller/WeatherController$WeatherInfo;->temperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v2, p1, Lcom/miui/systemui/controller/WeatherController$WeatherInfo;->temperatureUnit:I

    if-nez v2, :cond_1

    const-string v2, "℉"

    goto :goto_0

    :cond_1
    const-string v2, "℃"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v0, :cond_2

    iget p1, p1, Lcom/miui/systemui/controller/WeatherController$WeatherInfo;->temperature:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherAvailable:Z

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateWeatherVisibility()V

    return-void
.end method

.method public bridge synthetic setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .registers 2

    return-void
.end method

.method public setDependency(Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;)V
    .registers 6

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    iget-object p1, p1, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->factory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->QS:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->createMiuiIconManager(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;ZI)Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    return-void
.end method

.method public bridge synthetic setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 3

    return-void
.end method

.method public bridge synthetic setImeWindowStatus(IIIZ)V
    .registers 5
    .param p2  # I
        .annotation build Landroid/inputmethodservice/InputMethodService$ImeWindowVisibility;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic setNavigationBarLumaSamplingEnabled(IZ)V
    .registers 3

    return-void
.end method

.method public bridge synthetic setQsTiles([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setSplitscreenFocus(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic setTopAppHidesStatusBar(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setWindowState(III)V
    .registers 4

    return-void
.end method

.method public final themeChanged()V
    .registers 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getLightModeIconColorSingleTone()I

    move-result v4

    invoke-interface {v3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getDarkModeIconColorSingleTone()I

    move-result v3

    if-eqz v0, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v5, v0, v7}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->setLight(IZZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onDarkChanged(Ljava/util/ArrayList;FI)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v4, v3, v7}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onLightDarkTintChanged(IIZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateResources$2()V

    return-void
.end method

.method public final updateCarrierVisibility()V
    .registers 6

    iget v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIsPrivacyPromptShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz p0, :cond_6

    if-eqz v2, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    :cond_6
    return-void
.end method

.method public final updateLayout()V
    .registers 5

    iget v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mVerticalInfo:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/views/MiuiClock;->setClockMode(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mVerticalInfo:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/views/MiuiClock;->setClockMode(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateCarrierVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateShortCutVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateWeatherVisibility()V

    const v1, 0x7f0714ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0716be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070491

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v1, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final updateResources$2()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08198e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_1

    const v1, 0x7f15062c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const v1, 0x7f15062b

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/MiClock-Light.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public final updateShortCutVisibility()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mSuperSave:Z

    if-nez v1, :cond_0

    iget p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDisable2:I

    and-int/2addr p0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final updateWeatherVisibility()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

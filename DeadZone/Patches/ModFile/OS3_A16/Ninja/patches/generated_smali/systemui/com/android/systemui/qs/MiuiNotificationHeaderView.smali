.class public Lcom/android/systemui/qs/MiuiNotificationHeaderView;
.super Lcom/android/systemui/qs/MiuiHeaderView;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/miui/systemui/controller/WeatherController$WeatherChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public bigTimeColor:Landroid/graphics/Color;

.field public carrierContainerBottom:Landroid/widget/LinearLayout;

.field public carrierContainerTop:Landroid/widget/LinearLayout;

.field public final clockLayoutChangeListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$$ExternalSyntheticLambda0;

.field public mAreas:Ljava/util/ArrayList;

.field public mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

.field public mCarrierTextLayoutBottom:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

.field public mCarrierTextLayoutTop:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

.field public mDarkColor:I

.field public mDarkIntensity:F

.field public mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDisable2:I

.field public mIsShowCarrierText:Z

.field public mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mLightColor:I

.field public mMiuiOptimization:Z

.field public final mMiuiOptimizationListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

.field public mNotificationDateContainer:Landroid/widget/LinearLayout;

.field public mNotificationHeaderClockContainer:Landroid/view/View;

.field public mOrientation:I

.field public mPreviousCarrierTextShouldShow:Z

.field public mScreenLayout:I

.field public final mSettingsObserver:Lcom/android/systemui/qs/MiuiNotificationHeaderView$2;

.field public mShortCutBottom:Landroid/widget/ImageView;

.field public mShortCutTop:Landroid/widget/ImageView;

.field public mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

.field public mTint:I

.field public mVisibility:I

.field public mWeatherAvailable:Z

.field public mWeatherCity:Landroid/widget/TextView;

.field public mWeatherContainer:Landroid/widget/LinearLayout;

.field public mWeatherTemp:Landroid/widget/TextView;

.field public mWhiteFraction:F

.field public shortcutContainerTop:Landroid/widget/LinearLayout;

.field public usingMiPro:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/MiuiHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mScreenLayout:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->usingMiPro:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mAreas:Ljava/util/ArrayList;

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDarkIntensity:F

    iput p2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mTint:I

    iput p2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLightColor:I

    iput p2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDarkColor:I

    iput p3, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWhiteFraction:F

    iput-boolean p2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mIsShowCarrierText:Z

    iput-boolean p2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mPreviousCarrierTextShouldShow:Z

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->bigTimeColor:Landroid/graphics/Color;

    new-instance p1, Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;-><init>(Lcom/android/systemui/qs/MiuiNotificationHeaderView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimizationListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

    new-instance p1, Lcom/android/systemui/qs/MiuiNotificationHeaderView$2;

    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/MiuiNotificationHeaderView$2;-><init>(Lcom/android/systemui/qs/MiuiNotificationHeaderView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mSettingsObserver:Lcom/android/systemui/qs/MiuiNotificationHeaderView$2;

    new-instance p1, Lcom/android/systemui/qs/MiuiNotificationHeaderView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiNotificationHeaderView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->clockLayoutChangeListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$$ExternalSyntheticLambda0;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mVisibility:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/qs/MiuiNotificationHeaderView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static safeSetVisibility(ILandroid/view/View;)V
    .registers 2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final disable(IIIZ)V
    .registers 5

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDisable2:I

    if-eq p1, p3, :cond_1

    iput p3, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDisable2:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateShortCutVisibility$1()V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDisable2:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mVisibility:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p1, 0x4

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
    .registers 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/WeatherController;->addCallback(Lcom/miui/systemui/controller/WeatherController$WeatherChangeListener;)V

    invoke-virtual {v0}, Lcom/miui/systemui/controller/WeatherController;->getWeatherInfo()Lcom/miui/systemui/controller/WeatherController$WeatherInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->onWeatherChange(Lcom/miui/systemui/controller/WeatherController$WeatherInfo;)V

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPromptContainer(Landroid/widget/LinearLayout;I)V

    const-class v0, Lcom/miui/systemui/SettingsManager;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/SettingsManager;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimizationListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

    invoke-virtual {v0, v1}, Lcom/miui/systemui/SettingsManager;->registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V

    const-class v0, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcher;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcher;

    check-cast v0, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->clockLayoutChangeListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->themeChanged()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateBigTimeColor()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateFlipResources()V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_carrier_under_notification_panel"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mSettingsObserver:Lcom/android/systemui/qs/MiuiNotificationHeaderView$2;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/systemui/util/CommonUtil;->startCalendarApp(Landroid/content/Context;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherCity:Landroid/widget/TextView;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->startWeatherApp()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutTop:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutBottom:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_6

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/miui/systemui/util/CommonUtil;->getNotificationManagerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    const-class p0, Lcom/android/systemui/statusbar/notification/analytics/INotificationStat;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/analytics/INotificationStat;

    check-cast p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStatImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/miui/systemui/events/SettingClickEvent;

    const-string v0, "49.1.3.1.47370"

    const v1, 0x13501f0

    invoke-direct {p1, v0, v1}, Lcom/miui/systemui/events/SettingClickEvent;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStatImpl;->eventTracker:Lcom/miui/interfaces/IEventTracker;

    invoke-interface {p0, p1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_0
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->startClockApp()V

    :cond_6
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateHeaderResources()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateFlipResources()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateHeaderResources()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateFlipResources()V

    return-void
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mAreas:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDarkIntensity:F

    iput p3, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mTint:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateBigTimeColor()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateHeaderResources()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateFlipResources()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/WeatherController;->removeCallback(Lcom/miui/systemui/controller/WeatherController$WeatherChangeListener;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePromptContainer(Landroid/widget/LinearLayout;)V

    const-class v0, Lcom/miui/systemui/SettingsManager;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/SettingsManager;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimizationListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

    iget-object v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-class v0, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcher;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcher;

    check-cast v0, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->clockLayoutChangeListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mSettingsObserver:Lcom/android/systemui/qs/MiuiNotificationHeaderView$2;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b036f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const v0, 0x7f0b019c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->setNsBigTime(Lcom/android/systemui/statusbar/views/MiuiClock;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateDateTimeSize()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    :goto_0
    const v0, 0x7f0b0886

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    const v0, 0x7f0b0887

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationDateContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0894

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutTop:Landroid/widget/ImageView;

    const v0, 0x7f0b0874

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mCarrierTextLayoutTop:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    const v0, 0x7f0b0267

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->carrierContainerTop:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0ae6

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->shortcutContainerTop:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0893

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutBottom:Landroid/widget/ImageView;

    const v0, 0x7f0b0873

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mCarrierTextLayoutBottom:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    const v0, 0x7f0b0266

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->carrierContainerBottom:Landroid/widget/LinearLayout;

    const v0, 0x7f0b056e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-static {}, Landroid/preference/SettingsEliteHelper;->getCon()Landroid/content/Context;

    move-result-object v2

    const-string v0, "weather_container"

    invoke-static {v2, v0}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherContainer:Landroid/widget/LinearLayout;

    const-string v0, "weather_city"

    invoke-static {v2, v0}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherCity:Landroid/widget/TextView;

    const-string v0, "weather_temp"

    invoke-static {v2, v0}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    const v0, 0x7f0b0962

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutTop:Landroid/widget/ImageView;

    const v1, 0x7f140129

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutTop:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutBottom:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherCity:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mCarrierTextLayoutTop:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/MiuiNotificationHeaderView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView$3;-><init>(Lcom/android/systemui/qs/MiuiNotificationHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_a
    const-class v0, Lcom/miui/systemui/SettingsManager;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/SettingsManager;

    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimization:Z

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_carrier_under_notification_panel"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_b

    goto :goto_1

    :cond_b
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mIsShowCarrierText:Z

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    iget-boolean v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimization:Z

    if-eqz v2, :cond_c

    const/16 v1, 0x8

    :cond_c
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateCarrierDisplay()V

    return-void
.end method

.method public final onLightDarkTintChanged(IIZ)V
    .registers 4

    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLightColor:I

    iput p2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDarkColor:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateBigTimeColor()V

    return-void
.end method

.method public final onMaxBoundsChanged(Z)V
    .registers 3

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateHeaderResources()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateFlipResources()V

    return-void
.end method

.method public final onMiuiThemeChanged$1(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->themeChanged()V

    return-void
.end method

.method public final onUiModeChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateResources$8()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateFlipResources()V

    return-void
.end method

.method public final onWeatherChange(Lcom/miui/systemui/controller/WeatherController$WeatherInfo;)V
    .registers 6

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherAvailable:Z

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherCity:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherAvailable:Z

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherTemp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateWeatherVisibility()V

    return-void
.end method

.method public bridge synthetic setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .registers 2

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
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getLightModeIconColorSingleTone()I

    invoke-interface {v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getDarkModeIconColorSingleTone()I

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateResources$8()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateFlipResources()V

    return-void
.end method

.method public final updateBigTimeColor()V
    .registers 7

    iget v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWhiteFraction:F

    iget v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mTint:I

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Color;->alpha()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->bigTimeColor:Landroid/graphics/Color;

    invoke-virtual {v3}, Landroid/graphics/Color;->alpha()F

    move-result v3

    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Color;->red()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->bigTimeColor:Landroid/graphics/Color;

    invoke-virtual {v4}, Landroid/graphics/Color;->red()F

    move-result v4

    invoke-static {v3, v4, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Color;->green()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->bigTimeColor:Landroid/graphics/Color;

    invoke-virtual {v5}, Landroid/graphics/Color;->green()F

    move-result v5

    invoke-static {v4, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Color;->blue()F

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->bigTimeColor:Landroid/graphics/Color;

    invoke-virtual {v5}, Landroid/graphics/Color;->blue()F

    move-result v5

    invoke-static {v1, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mAreas:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDarkIntensity:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;->onDarkChanged(Ljava/util/ArrayList;FI)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    iget v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLightColor:I

    iget p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDarkColor:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/statusbar/views/MiuiClock;->onLightDarkTintChanged(IIZ)V

    return-void
.end method

.method public final updateCarrierDisplay()V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateCarrierDisplay: mIsShowCarrierText="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mIsShowCarrierText:Z

    const-string v2, "MiuiNotificationHeaderView"

    invoke-static {v0, v2, v1}, Lcom/android/keyguard/BaseMiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mIsShowCarrierText:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mPreviousCarrierTextShouldShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/utils/configs/MiuiConfigs;->isVerticalMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v5, "横屏模式"

    goto :goto_1

    :cond_1
    const-string v5, "竖屏模式 || 折叠屏大屏"

    :goto_1
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    if-nez v4, :cond_3

    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v5, v3

    :goto_2
    if-nez v4, :cond_4

    :goto_3
    move v0, v2

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_4
    if-eqz v1, :cond_6

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutTop:Landroid/widget/ImageView;

    invoke-static {v5, v1}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutBottom:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->carrierContainerTop:Landroid/widget/LinearLayout;

    invoke-static {v3, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mCarrierTextLayoutTop:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    invoke-static {v3, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->carrierContainerBottom:Landroid/widget/LinearLayout;

    invoke-static {v5, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mCarrierTextLayoutBottom:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    invoke-static {v5, p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    return-void
.end method

.method public final updateFlipResources()V
    .registers 6

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_0

    const v3, 0x7f071641

    goto :goto_0

    :cond_0
    const v3, 0x7f07163b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutTop:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutBottom:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->carrierContainerTop:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mCarrierTextLayoutTop:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->carrierContainerBottom:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mCarrierTextLayoutBottom:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->safeSetVisibility(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07163e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    const/4 v2, 0x0

    const v3, 0x7f1505ea

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    int-to-float v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final updateHeaderResources()V
    .registers 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0716ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1, p0}, Lcom/miui/utils/MiuiLayoutParamsUtils;->updateLayoutParamsWidth(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/utils/configs/MiuiConfigs;->getAdjustedRotation(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/utils/configs/MiuiConfigs;->getCutoutRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz v5, :cond_1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v2, :cond_3

    const/4 v7, 0x2

    if-eq v2, v7, :cond_2

    goto :goto_2

    :cond_2
    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    goto :goto_2

    :cond_3
    add-int/2addr v3, v5

    :cond_4
    :goto_2
    invoke-virtual {p0, v3, v4, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/utils/configs/MiuiConfigs;->isVerticalMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0717dc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutTop:Landroid/widget/ImageView;

    const v2, 0x7f07163d

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutBottom:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v1, :cond_8

    const v2, 0x7f0717e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0714ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v1, :cond_9

    const v2, 0x7f0714e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f071604

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method public final updateLayout()V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mScreenLayout:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mScreenLayout:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isVerticalMode(Landroid/content/Context;)Z

    move-result v0

    const-class v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-eqz v4, :cond_1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationDateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07163d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v5, v4, :cond_2

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationDateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->shortcutContainerTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->setNsBigTime(Lcom/android/systemui/statusbar/views/MiuiClock;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071602

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationDateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v4, :cond_5

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationDateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->shortcutContainerTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071604

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->setNsBigTime(Lcom/android/systemui/statusbar/views/MiuiClock;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateShortCutVisibility$1()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateWeatherVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateCarrierDisplay()V

    return-void
.end method

.method public final updateResources$8()V
    .registers 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutTop:Landroid/widget/ImageView;

    const v2, 0x7f0819b1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutBottom:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    if-eqz v1, :cond_4

    const v2, 0x7f1505e5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    sget-boolean v1, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->DEBUG:Z

    new-array v1, v0, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiNotificationHeaderClock;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "mipro-normal"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v4, v2, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    move v5, v3

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    :try_start_0
    aget-object v5, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "mipro"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->MI_PRO_TYPEFACE:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v3

    :goto_1
    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->usingMiPro:Z

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_5

    const v1, 0x7f1505ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_5
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060b85

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->bigTimeColor:Landroid/graphics/Color;

    return-void
.end method

.method public final updateShortCutVisibility$1()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCutTop:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDisable2:I

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final updateWeatherVisibility()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

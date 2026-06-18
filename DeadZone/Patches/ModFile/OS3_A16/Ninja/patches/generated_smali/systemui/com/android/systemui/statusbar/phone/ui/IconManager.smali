.class public abstract Lcom/android/systemui/statusbar/phone/ui/IconManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/demomode/DemoModeCommandReceiver;


# instance fields
.field public final mAppScope:Lkotlinx/coroutines/CoroutineScope;

.field public final mBindableIcons:Ljava/util/Map;

.field public final mBlockList:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

.field public mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field public final mDemoable:Z

.field public mDripEnd:Z

.field public final mGroup:Landroid/view/ViewGroup;

.field public mIconSize:I

.field public mIsInDemoMode:Z

.field public final mKairosNetwork:Lcom/android/systemui/kairos/KairosNetwork;

.field public final mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

.field public final mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

.field public final mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

.field public final mMobileUiAdapterKairos:Ldagger/Lazy;

.field public mShouldLog:Z

.field public final mWifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Ldagger/Lazy;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/kairos/KairosNetwork;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntObjectMap;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBindableIcons:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mShouldLog:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBlockList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mKairosNetwork:Lcom/android/systemui/kairos/KairosNetwork;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mAppScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const p7, 0x7f071889

    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    iput p6, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIconSize:I

    iget-object p4, p4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->mobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    invoke-static {p1, p4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconsBinder;->bind(Landroid/view/View;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileUiAdapterKairos:Ldagger/Lazy;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;->bindGroup(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mWifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;

    return-void
.end method


# virtual methods
.method public final addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/16 v1, 0x9

    if-eq v0, v1, :cond_b

    const/4 p3, 0x3

    if-eq v0, p3, :cond_5

    const/4 p3, 0x4

    if-eq v0, p3, :cond_3

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1

    return-object v2

    :cond_1
    check-cast p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBindableIcons:Ljava/util/Map;

    iget-object p3, p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->slot:Ljava/lang/String;

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    iget-object p3, p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->initializer:Lcom/android/systemui/statusbar/pipeline/icons/shared/model/ModernStatusBarViewCreator;

    invoke-interface {p3, p2}, Lcom/android/systemui/statusbar/pipeline/icons/shared/model/ModernStatusBarViewCreator;->createAndBind(Landroid/content/Context;)Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->WRAP_CONTENT:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams(Lcom/android/internal/statusbar/StatusBarIcon$Shape;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addBindableIcon(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;)V

    :cond_2
    return-object p2

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mWifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;

    invoke-static {p3, p2, p4}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;->constructAndBind(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->WRAP_CONTENT:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams(Lcom/android/internal/statusbar/StatusBarIcon$Shape;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addModernWifiView(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)V

    :cond_4
    return-object p2

    :cond_5
    iget p3, p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    invoke-virtual {v0, p3, p4}, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->getMobileContextForSub(ILandroid/content/Context;)Landroid/content/Context;

    move-result-object p4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {v1, p3, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->viewModelForSub(ILcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->reuseCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->createViewModel(I)Lkotlin/Triple;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    move-object v6, v4

    :cond_7
    :goto_0
    check-cast v6, Lkotlin/Triple;

    invoke-virtual {v6}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;

    invoke-static {p4, v2, p2, v3, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->constructAndBind(Landroid/content/Context;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    move-result-object p2

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->WRAP_CONTENT:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams(Lcom/android/internal/statusbar/StatusBarIcon$Shape;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p4, p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3, p1}, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->getMobileContextForSub(ILandroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "addModernMobileView (subId="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "DemoStatusIcons"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {p4, p3, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->viewModelForSub(ILcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;

    move-result-object p4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iget-object v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->reuseCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->createViewModel(I)Lkotlin/Triple;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v4, p3

    goto :goto_1

    :cond_8
    move-object v4, v0

    :cond_9
    :goto_1
    check-cast v4, Lkotlin/Triple;

    invoke-virtual {v4}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;

    const-string v0, "mobile"

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

    invoke-static {p1, v1, v0, p4, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->constructAndBind(Landroid/content/Context;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {p4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-object p2

    :cond_b
    iget-object p2, p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->networkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->WRAP_CONTENT:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams(Lcom/android/internal/statusbar/StatusBarIcon$Shape;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0343

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setBlocked(Z)V

    invoke-virtual {p4, v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p0, p2, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setVisibilityByController(Z)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedNumber:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedUnit:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setNetworkSpeed(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_c
    iget-object p4, p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p2, v2, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getAnimationInject()Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    move-result-object p2

    iput-boolean v1, p2, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->newAnimationFeature:Z

    iget-object p2, p2, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->iconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    iget-object p3, p4, Lcom/android/internal/statusbar/StatusBarIcon;->shape:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams(Lcom/android/internal/statusbar/StatusBarIcon$Shape;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p2, v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    .registers 9

    new-instance v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIconSize:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileUiAdapterKairos:Ldagger/Lazy;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mKairosNetwork:Lcom/android/systemui/kairos/KairosNetwork;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mAppScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;Lcom/android/systemui/statusbar/phone/StatusBarLocation;ILdagger/Lazy;Lcom/android/systemui/kairos/KairosNetwork;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method

.method public destroy()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public exitDemoMode()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    return-void
.end method

.method public onCreateLayoutParams(Lcom/android/internal/statusbar/StatusBarIcon$Shape;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->FIXED_SPACE:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIconSize:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIconSize:I

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final onDemoModeFinished()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->onDemoModeFinished()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->exitDemoMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    :cond_0
    return-void
.end method

.method public final onDemoModeStarted()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mWifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addModernWifiView(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBindableIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addBindableIcon(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->onDemoModeStarted()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071889

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIconSize:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v4, v3, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->onDensityOrFontScaleChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
.end method

.method public onRemoveIcon(I)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    instance-of v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    if-eqz v1, :cond_3

    const-string v1, "DemoStatusIcons"

    const-string v2, "onRemoveIcon: removing modern wifi view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernWifiView:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernWifiView:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->getSubId()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->getSubId()I

    move-result v8

    if-ne v7, v8, :cond_1

    move-object v3, v6

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v2, 0x7f0b0d63

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarIcon;->shape:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams(Lcom/android/internal/statusbar/StatusBarIcon$Shape;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    return-void
.end method

.method public final setBlockList(Ljava/util/List;)V
    .registers 3

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->refreshIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    :cond_0
    return-void
.end method

.method public final setDripEnd(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDripEnd:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDripEnd:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDripEnd(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

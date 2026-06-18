.class public final Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Dumpable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public final context:Landroid/content/Context;

.field public final controlCenterController:Ldagger/Lazy;

.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public endL:I

.field public endT:I

.field public fakeFocusNotifViewContainer:Lcom/android/systemui/statusbar/notification/stack/ui/view/SharedNotificationContainer;

.field public fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

.field public focusNotifHeight:I

.field public focusNotifWidth:I

.field public focusNotifYTranslation:F

.field public focusTipHeight:I

.field public focusTipHideHeight:I

.field public focusTipHideWidth:I

.field public focusTipMarginHorizontal:I

.field public focusTipMarginVertical:I

.field public focusTipWidth:I

.field public focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

.field public focusedNotifPrompt:Landroid/view/View;

.field public final focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

.field public final headerExpansionAnimator:Lcom/android/systemui/shade/NotificationPanelExpansionAnimator;

.field public final headsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

.field public isLightStatus:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final layoutInflater$delegate:Lkotlin/Lazy;

.field public final notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

.field public notificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public nsBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public nsBigTimeX:I

.field public nsDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public nsDateTimeY:I

.field public final onLayoutChangeListener:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;

.field public startL:I

.field public startT:I

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final topPaddingController:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/shade/NotificationPanelExpansionAnimator;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/plugins/DarkIconDispatcher;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->headsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->headerExpansionAnimator:Lcom/android/systemui/shade/NotificationPanelExpansionAnimator;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->controlCenterController:Ldagger/Lazy;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->topPaddingController:Ldagger/Lazy;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    new-instance p2, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->layoutInflater$delegate:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightMode()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightStatus:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070499

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipMarginHorizontal:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07049a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipMarginVertical:I

    new-instance p1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$handleConfigurationController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$handleConfigurationController$1;-><init>(Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;)V

    check-cast p6, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-interface {p10, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;-><init>(Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;

    return-void
.end method

.method public static final access$reInflateFakeStatusView(Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070499

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipMarginHorizontal:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07049a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipMarginVertical:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeFocusNotifViewContainer:Lcom/android/systemui/statusbar/notification/stack/ui/view/SharedNotificationContainer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->createFakeStatusView()V

    return-void
.end method


# virtual methods
.method public final createFakeStatusView()V
    .registers 4

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/DynamicFeatureConfig;->FEATURE_DYNAMIC_ISLAND:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->layoutInflater$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0262

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->setFakeFocusNotifController(Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateFakeFocusNotifView(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateFakeStatusIconsSize()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateBigTimeSize()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateDateTimeSize()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeFocusNotifViewContainer:Lcom/android/systemui/statusbar/notification/stack/ui/view/SharedNotificationContainer;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final isLightMode()Z
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final needFakeFocusNotif()Z
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->controlCenterController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->controlCenterController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenter:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/controlcenter/ControlCenterImpl;->getExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :cond_3
    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsFocusNotification:Z

    if-eqz v6, :cond_3

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->notificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNsslInjector()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutInjector;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutInjector;->getFirstVisibleNotification()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v2

    :goto_2
    instance-of v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_12

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsFocusNotification:Z

    if-eqz v0, :cond_12

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->headsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    move-object v0, v2

    :goto_3
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretchingFromHeadsUp:Z

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    if-eqz v0, :cond_f

    move-object v2, v0

    :cond_f
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->inNotifUnoccludedState:Z

    if-eqz v0, :cond_10

    goto :goto_4

    :cond_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->notificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNsslInjector()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutInjector;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutInjector;->isScrolledToTop()Z

    move-result p0

    if-nez p0, :cond_11

    move v1, v3

    :cond_11
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_12
    :goto_4
    return v1
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .registers 5

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-gtz p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightStatus:Z

    if-eq v0, p1, :cond_1

    move p2, p3

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightStatus:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateFakeFocusNotifView(Z)V

    :cond_2
    return-void
.end method

.method public final setNsBigTime(Lcom/android/systemui/statusbar/views/MiuiClock;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateBigTimeSize()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final startExpandAnimation(FZ)V
    .registers 8

    invoke-static {p1, p2}, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;->startExpandAnimation(FZ)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->startExpandAnimation1(FZ)V

    return-void
.end method

.method public final startExpandAnimation1(FZ)V
    .registers 17

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->createFakeStatusView()V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateNotificationStackScrollerSize()V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipWidth:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipHeight:I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->startL:I

    iget v4, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipMarginHorizontal:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->startT:I

    iget v5, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipMarginVertical:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipHideWidth:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipHideHeight:I

    iget v7, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->endL:I

    iget v8, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->endT:I

    iget v9, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusNotifWidth:I

    iget v10, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusNotifHeight:I

    iget v11, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipWidth:I

    iget v12, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipHeight:I

    iget v13, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusNotifYTranslation:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsBigTimeX:I

    iput v3, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusTipX:I

    iput v4, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusTipY:I

    iput v5, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusTipHideWidth:I

    iput v6, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusTipHideHeight:I

    iput v7, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->fX:I

    iput v8, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->endT:I

    iput v9, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusWidth:I

    iput v10, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusHeight:I

    iput v11, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusTipWidth:I

    iput v12, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusTipHeight:I

    iput v13, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusNotifYTranslation:F

    iput p0, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->nsBigTimeX:I

    :cond_2
    if-eqz v2, :cond_c

    const/high16 p0, 0x43480000

    div-float v3, p1, p0

    cmpg-float v4, v3, v0

    if-gez v4, :cond_3

    move v3, v0

    :cond_3
    iput v3, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->perValue:F

    const/high16 v4, 0x3f800000

    cmpl-float v5, v3, v4

    if-lez v5, :cond_4

    sub-float v6, p1, p0

    iget v7, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->screenHeight:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    move-result v6

    const v7, 0x3ecccccd

    mul-float/2addr v6, v7

    add-float/2addr v6, p0

    goto :goto_1

    :cond_4
    invoke-static {v0, p0, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    :goto_1
    if-lez v5, :cond_5

    sub-float v7, p1, p0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->screenHeight:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    move-result v7

    goto :goto_2

    :cond_5
    move v7, v0

    :goto_2
    float-to-double v8, v0

    const/high16 v10, 0x3fc00000

    float-to-double v11, v10

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000

    mul-float/2addr v7, v8

    const/4 v9, 0x1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    iget v1, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusActiveY:F

    div-float v1, p1, v1

    cmpg-float v11, v1, v0

    if-gez v11, :cond_7

    move v1, v0

    :cond_7
    cmpl-float v11, v1, v4

    if-lez v11, :cond_8

    int-to-float v11, v9

    sub-float/2addr v1, v11

    invoke-static {v1, v4}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    move-result v1

    const v12, 0x3dcccccd

    mul-float/2addr v1, v12

    add-float/2addr v1, v11

    :cond_8
    iput v1, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusNotifTriggerPer:F

    if-lez v5, :cond_9

    iget v0, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->statusBarHeight0:I

    int-to-float v0, v0

    iget v1, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->statusBarHeight1:F

    sub-float v5, v3, v4

    const/high16 v11, 0x40a00000

    invoke-static {v5, v11}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    move-result v5

    const v12, 0x3e99999a

    mul-float/2addr v5, v12

    div-float/2addr v5, v11

    add-float/2addr v5, v4

    invoke-static {v0, v1, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_4

    :cond_9
    iget v1, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->statusBarHeight0:I

    int-to-float v1, v1

    iget v5, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->statusBarHeight1:F

    cmpg-float v11, v3, v0

    if-gez v11, :cond_a

    goto :goto_3

    :cond_a
    move v0, v3

    :goto_3
    invoke-static {v1, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    :goto_4
    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    add-float/2addr v0, v6

    const/high16 v5, 0x41200000

    add-float/2addr v0, v5

    iget v11, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusTipHideHeight:I

    int-to-float v11, v11

    mul-float/2addr v3, v8

    add-float/2addr v3, v4

    mul-float/2addr v3, v11

    div-float/2addr v3, v1

    add-float/2addr v3, v0

    iput v3, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusNotifExpandY:F

    iget v0, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->statusBarHeight1:F

    div-float/2addr v0, v1

    add-float/2addr v0, p0

    add-float/2addr v0, v5

    invoke-static {v11, v10, v1, v0}, Landroidx/compose/material3/internal/colorUtil/Cam$$ExternalSyntheticOutline0;->m$2(FFFF)F

    move-result v0

    iget v1, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->notifFinalOffsetY:F

    add-float/2addr v0, v1

    iput v0, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->focusFinalExpandY:F

    :goto_5
    sub-float/2addr v6, p0

    add-float/2addr v7, v6

    new-instance p0, Lmiuix/animation/controller/AnimState;

    const-string v0, "fake_expand_to"

    invoke-direct {p0, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->EXPAND_SMALL_TRANS_Y:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$Companion$EXPAND_TRANS_X$1;

    const/4 v1, 0x0

    new-array v3, v1, [J

    invoke-virtual {p0, v0, v6, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->EXPAND_BIG_TRANS_Y:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$Companion$EXPAND_TRANS_X$1;

    new-array v1, v1, [J

    invoke-virtual {p0, v0, v7, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->folme:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_c

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    if-eqz p2, :cond_b

    sget-object v3, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->EXPAND_TRANS_EASE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    goto :goto_6

    :cond_b
    sget-object v3, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->releaseEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :goto_6
    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-virtual {v1, v9}, Lmiuix/animation/base/AnimConfig;->enableStartImmediately(Z)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$expandChange$1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$expandChange$1;-><init>(Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;I)V

    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_c
    return-void
.end method

.method public final startVisibleAnimation(ZZ)V
    .registers 9

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz p0, :cond_4

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->folme:Lmiuix/animation/IStateStyle;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->NOTIF_PANEL_APPEARED:Lmiuix/animation/controller/AnimState;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->showScaleAlphaEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->EXPAND_TRANS_ALPHA:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$Companion$EXPAND_TRANS_X$1;

    sget-object v3, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->showAlphaEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const/4 v4, 0x0

    new-array v5, v4, [F

    invoke-virtual {v1, v2, v3, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->EXPAND_TRANS_X:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$Companion$EXPAND_TRANS_X$1;

    sget-object v3, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->showExpandEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v5, v4, [F

    invoke-virtual {v1, v2, v3, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->EXPAND_TRANS_Y:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$Companion$EXPAND_TRANS_X$1;

    new-array v4, v4, [F

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmiuix/animation/base/AnimConfig;->enableStartImmediately(Z)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$expandChange$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$expandChange$1;-><init>(Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;I)V

    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {p2, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->folme:Lmiuix/animation/IStateStyle;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->NOTIF_PANEL_HIDDEN:Lmiuix/animation/controller/AnimState;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->hideExpandEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmiuix/animation/base/AnimConfig;->enableStartImmediately(Z)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$expandChange$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView$expandChange$1;-><init>(Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;I)V

    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {p2, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->folme:Lmiuix/animation/IStateStyle;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->NOTIF_PANEL_APPEARED:Lmiuix/animation/controller/AnimState;

    invoke-interface {p1, p2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->folme:Lmiuix/animation/IStateStyle;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->NOTIF_PANEL_HIDDEN:Lmiuix/animation/controller/AnimState;

    invoke-interface {p1, p2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->scheduleFakeViewUpdate()V

    :cond_4
    return-void
.end method

.method public final updateBigTimeSize()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    filled-new-array {v1, v1}, [I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-static {v0, v2}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    aget v0, v2, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsBigTimeX:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateCommon()V

    return-void
.end method

.method public final updateCommon()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifPrompt:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0b04b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b04b6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    filled-new-array {v2, v2}, [I

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    :cond_0
    filled-new-array {v2, v2}, [I

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    :cond_1
    const/4 v0, 0x1

    aget v4, v3, v0

    aget v0, v1, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget v1, v3, v2

    iput v1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->startL:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->startT:I

    :cond_2
    return-void
.end method

.method public final updateDateTimeSize()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    filled-new-array {v1, v1}, [I

    move-result-object v1

    sget-object v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-static {v0, v1}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->nsDateTimeY:I

    :cond_0
    return-void
.end method

.method public final updateFakeFocusNotifView(Z)V
    .registers 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v0, :cond_46

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v0, :cond_0

    const v3, 0x7f0b0479

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v0, :cond_1

    const v4, 0x7f0b047a

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;->getNotifDarkRemote()Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_3
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v5, :cond_4

    const v6, 0x7f0b0475

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_5
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v6, :cond_6

    const v7, 0x7f0b0474

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/widget/FocusedTextView;

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-eqz v7, :cond_7

    const v8, 0x7f0b0476

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/widget/FocusedTextView;

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_8

    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentRemoteViews:Landroid/widget/RemoteViews;

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentNightRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v9, :cond_9

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentNightRemoteViews:Landroid/widget/RemoteViews;

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    :goto_7
    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v10, :cond_a

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    :goto_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-nez v10, :cond_e

    if-eqz v7, :cond_b

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    if-eqz v7, :cond_d

    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    if-eqz v6, :cond_10

    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    :goto_9
    const-string v10, "Exception "

    const-string v13, "FakeFocusNotifController"

    const v14, 0x7f060cf5

    const v15, 0x7f060cf4

    if-eqz p1, :cond_2b

    if-eqz v8, :cond_14

    if-eqz v9, :cond_12

    :try_start_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightMode()Z

    move-result v16

    if-nez v16, :cond_12

    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v9, v8, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eqz v0, :cond_11

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_c

    :cond_11
    :goto_a
    if-eqz v0, :cond_15

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_b

    :cond_12
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_13

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_13
    if-eqz v0, :cond_15

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_b

    :cond_14
    if-eqz v0, :cond_15

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_15
    :goto_b
    if-eqz v9, :cond_17

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v9, v0, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v5, :cond_16

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_16
    if-eqz v5, :cond_18

    invoke-virtual {v5, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_d

    :cond_17
    if-eqz v5, :cond_18

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :goto_c
    invoke-static {v13, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_d
    if-eqz v7, :cond_19

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_19
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightMode()Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v6, :cond_1b

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    :cond_1a
    if-eqz v6, :cond_1b

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1b
    :goto_e
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v0, :cond_1c

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawableDark:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    :cond_1c
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_23

    if-eqz v0, :cond_1d

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_10

    :cond_1d
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_20

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightMode()Z

    move-result v0

    if-nez v0, :cond_20

    if-eqz v3, :cond_1f

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_1e
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    if-eqz v3, :cond_26

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    :cond_20
    if-eqz v3, :cond_22

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawableDark:Landroid/graphics/drawable/Drawable;

    goto :goto_12

    :cond_21
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_22
    if-eqz v3, :cond_26

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    :cond_23
    if-eqz v3, :cond_25

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    :cond_24
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_25
    if-eqz v3, :cond_26

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_26
    :goto_14
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v0, :cond_27

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_15

    :cond_27
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_2a

    if-eqz v4, :cond_29

    if-eqz v0, :cond_28

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_16

    :cond_28
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_29
    if-eqz v4, :cond_46

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24

    :cond_2a
    if-eqz v4, :cond_46

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24

    :cond_2b
    if-eqz v9, :cond_2f

    if-eqz v8, :cond_2d

    :try_start_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightMode()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2c

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_19

    :cond_2c
    :goto_17
    if-eqz v0, :cond_30

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_18

    :cond_2d
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v9, v2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2e
    if-eqz v0, :cond_30

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_18

    :cond_2f
    if-eqz v0, :cond_30

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_30
    :goto_18
    if-eqz v8, :cond_32

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v8, v0, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v5, :cond_31

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_31
    if-eqz v5, :cond_33

    invoke-virtual {v5, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1a

    :cond_32
    if-eqz v5, :cond_33

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1a

    :goto_19
    invoke-static {v13, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_1a
    if-eqz v7, :cond_34

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_34
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightMode()Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz v6, :cond_36

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b

    :cond_35
    if-eqz v6, :cond_36

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_36
    :goto_1b
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v0, :cond_37

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1c

    :cond_37
    const/4 v2, 0x0

    :goto_1c
    if-eqz v2, :cond_3e

    if-eqz v0, :cond_38

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawableDark:Landroid/graphics/drawable/Drawable;

    goto :goto_1d

    :cond_38
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_3b

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->isLightMode()Z

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz v3, :cond_3a

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v0, :cond_39

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawableDark:Landroid/graphics/drawable/Drawable;

    goto :goto_1e

    :cond_39
    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3a
    if-eqz v3, :cond_3f

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    :cond_3b
    if-eqz v3, :cond_3d

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v0, :cond_3c

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1f

    :cond_3c
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    if-eqz v3, :cond_3f

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    :cond_3e
    if-eqz v3, :cond_3f

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3f
    :goto_20
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-eqz v0, :cond_40

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawableDark:Landroid/graphics/drawable/Drawable;

    goto :goto_21

    :cond_40
    const/4 v1, 0x0

    :goto_21
    if-eqz v1, :cond_43

    if-eqz v4, :cond_42

    if-eqz v0, :cond_41

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawableDark:Landroid/graphics/drawable/Drawable;

    goto :goto_22

    :cond_41
    const/4 v2, 0x0

    :goto_22
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_42
    if-eqz v4, :cond_46

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24

    :cond_43
    if-eqz v4, :cond_45

    if-eqz v0, :cond_44

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_23

    :cond_44
    const/4 v2, 0x0

    :goto_23
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_45
    if-eqz v4, :cond_46

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_46
    :goto_24
    return-void
.end method

.method public final updateFakeStatusIconsSize()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifPrompt:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->fakeStatusView:Lcom/android/systemui/statusbar/notification/policy/FakeStatusView;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipHideWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusTipHideHeight:I

    const v2, 0x7f0b04b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/FocusedTextView;

    const v2, 0x7f0b0472

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v0, :cond_6

    cmpg-float v3, v4, v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_5
    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    const/4 v0, -0x2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateCommon()V

    return-void
.end method

.method public final updateNotificationStackScrollerSize()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->notificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNsslInjector()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutInjector;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutInjector;->getFirstVisibleNotification()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->endL:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    float-to-int v1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->endT:I

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusNotifWidth:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusNotifHeight:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusNotifYTranslation:F

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateCommon()V

    return-void
.end method

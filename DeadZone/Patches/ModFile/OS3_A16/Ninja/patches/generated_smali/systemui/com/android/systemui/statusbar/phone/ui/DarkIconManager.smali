.class public final Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;
.super Lcom/android/systemui/statusbar/phone/ui/IconManager;


# instance fields
.field public final mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final mIconHorizontalMargin:I


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Ldagger/Lazy;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/kairos/KairosNetwork;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/plugins/DarkIconDispatcher;)V
    .registers 11

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/ui/IconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Ldagger/Lazy;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/kairos/KairosNetwork;Lkotlinx/coroutines/CoroutineScope;)V

    move-object v0, p2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07188a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->mIconHorizontalMargin:I

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-direct {p0, p9, v0}, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->onManagerCreated(Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)V

    return-void
.end method

.method private onManagerCreated(Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)V
    .registers 6

    sget-object v0, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onManagerCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/newstatusbar/controllers/ElementController;->onManagerCreated(Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)V

    return-void
.end method


# virtual methods
.method public final createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-object v0
.end method

.method public final destroy()V
    .registers 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final exitDemoMode()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->exitDemoMode()V

    return-void
.end method

.method public final onCreateLayoutParams(Lcom/android/internal/statusbar/StatusBarIcon$Shape;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams(Lcom/android/internal/statusbar/StatusBarIcon$Shape;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->mIconHorizontalMargin:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object p1
.end method

.method public final onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDripEnd:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDripEnd(Z)V

    return-void
.end method

.method public final onRemoveIcon(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onRemoveIcon(I)V

    return-void
.end method

.method public final onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->applyDark(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

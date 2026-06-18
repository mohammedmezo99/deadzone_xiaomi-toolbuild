.class public Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/IslandMonitor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final container:Ljava/lang/Object;

.field public final islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

.field public islandShowing:Z

.field public islandWidth:I

.field public final locationArray$delegate:Lkotlin/Lazy;

.field public final stateListener:Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->container:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    new-instance p1, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$stateListener$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$stateListener$1;-><init>(Lcom/android/systemui/statusbar/IslandMonitor;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->stateListener:Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;

    new-instance p1, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->locationArray$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->container:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    new-instance p1, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->locationArray$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$stateListener$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$stateListener$1;-><init>(Lcom/android/systemui/statusbar/IslandMonitor;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->stateListener:Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;

    return-void
.end method


# virtual methods
.method public applyIslandState$1(ZZ)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->islandWidthChanged:Z

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->islandAnimate:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-object p2, p2, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->islandRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getLayoutFrom()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onIslandStatusChanged: rect = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " tx = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requestLayout = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  from = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IIslandMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getBlocked()Z
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0  #0x0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0  #00000000
    .end packed-switch
.end method

.method public getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->container:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    return-object p0
.end method

.method public getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    return-object p0
.end method

.method public getIslandShowing()Z
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandShowing:Z

    return p0

    :pswitch_0  #0x0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandShowing:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0  #00000000
    .end packed-switch
.end method

.method public getIslandWidth()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    return p0

    :pswitch_0  #0x0
    iget p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0  #00000000
    .end packed-switch
.end method

.method public getLocationArray()[I
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->locationArray$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getLocationArray$1()[I
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->locationArray$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public final init()V
    .registers 4

    iget v0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->container:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->stateListener:Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;

    check-cast v1, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$stateListener$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->addOnIslandStatusChangedListener(Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;)V

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/IslandMonitor$NotificationContainerIslandMonitor$init$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/IslandMonitor$NotificationContainerIslandMonitor$init$1;-><init>(Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_0  #0x0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->stateListener:Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;

    check-cast v1, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$stateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->addOnIslandStatusChangedListener(Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object p0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->onIslandStateChangedListeners:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$init$$inlined$doOnAttach$1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$init$$inlined$doOnAttach$1;-><init>(Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$init$$inlined$doOnAttach$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor$init$$inlined$doOnAttach$1;-><init>(Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0  #00000000
    .end packed-switch
.end method

.method public final onLayoutChanged()V
    .registers 4

    iget v0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->islandRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->updateContainerSize(Landroid/graphics/Rect;ZZ)V

    return-void

    :pswitch_0  #0x0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->islandShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->islandRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->updateContainerSize(Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0  #00000000
    .end packed-switch
.end method

.method public setIslandShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandShowing:Z

    return-void
.end method

.method public setIslandWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    return-void
.end method

.method public final updateContainerSize(Landroid/graphics/Rect;ZZ)V
    .registers 15

    const v0, 0x7f071893

    const-string v1, " y = "

    const-string v2, "getLocationOnScreen error x = "

    const/4 v3, 0x0

    const-string v4, "calculateIslandSize error container width = 0"

    const/4 v5, -0x1

    const-string v6, "IIslandMonitor"

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v7

    const v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandShowing:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->container:Ljava/lang/Object;

    check-cast v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    if-nez v9, :cond_0

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandShowing:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray()[I

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray()[I

    move-result-object v4

    aget v4, v4, v3

    if-ltz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray()[I

    move-result-object v4

    aget v4, v4, v7

    if-gez v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray()[I

    move-result-object v5

    aget v5, v5, v7

    const-string v9, " from = Notification container"

    invoke-static {v4, v5, v2, v1, v9}, Landroidx/compose/runtime/collection/MutableVectorKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    invoke-virtual {v8}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray()[I

    move-result-object v2

    aget v2, v2, v3

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->supportIslandTranslation(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->getTranslationX()I

    move-result v3

    :cond_5
    add-int/2addr v3, v1

    add-int v5, v3, v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray()[I

    move-result-object v1

    aget v1, v1, v3

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray()[I

    move-result-object v1

    aget v1, v1, v3

    sub-int/2addr p1, v1

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->supportIslandTranslation(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->getTranslationX()I

    move-result v1

    goto :goto_1

    :cond_7
    move v1, v3

    :goto_1
    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_8
    :goto_2
    iget p1, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    if-ne v5, p1, :cond_9

    goto :goto_3

    :cond_9
    iput v5, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getInject()Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    move-result-object p1

    iput-boolean p2, p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->islandAnimate:Z

    iput-boolean v7, p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->islandWidthChanged:Z

    if-eqz p3, :cond_a

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->target:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_a
    iget-object p1, v10, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-object p1, p1, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->islandRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onIslandStatusChanged: rect = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " tx = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " requestLayout = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "  from = Notification container "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :pswitch_0  #0x0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v7

    const v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->setIslandShowing(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    if-nez v8, :cond_c

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    move p1, v5

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandShowing()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray$1()[I

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray$1()[I

    move-result-object v4

    aget v4, v4, v3

    if-ltz v4, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray$1()[I

    move-result-object v4

    aget v4, v4, v7

    if-gez v4, :cond_f

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray$1()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray$1()[I

    move-result-object v8

    aget v7, v8, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getLayoutFrom()I

    move-result v8

    const-string v9, " from = "

    invoke-static {v4, v7, v2, v1, v9}, Landroidx/collection/MutableObjectList$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v6, v1}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_5

    :cond_10
    move v0, v3

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_12

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray$1()[I

    move-result-object v0

    aget v0, v0, v3

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getLayoutFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->supportIslandTranslation(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->getTranslationX()I

    move-result v3

    :cond_11
    sub-int/2addr p1, v3

    goto :goto_6

    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getLocationArray$1()[I

    move-result-object v2

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getLayoutFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->supportIslandTranslation(I)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->getTranslationX()I

    move-result v3

    :cond_13
    add-int p1, v3, v1

    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandWidth()I

    move-result v0

    if-ne p1, v0, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->setIslandWidth(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getContainer()Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getLayoutFrom()I

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandWidth()I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v5, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->statusContainerSpace:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->statusContainerSpace:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->getIslandWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_16
    :goto_7
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->applyIslandState$1(ZZ)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0  #00000000
    .end packed-switch
.end method

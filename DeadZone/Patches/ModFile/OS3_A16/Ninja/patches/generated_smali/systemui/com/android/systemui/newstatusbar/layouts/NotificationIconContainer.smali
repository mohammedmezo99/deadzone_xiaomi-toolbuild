.class public Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;
.super Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;


# static fields
.field private static TAG_ANIMATOR_TRANSLATION_Z:I


# instance fields
.field private final controller:Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;

.field private curIconSize:I

.field private mDimenPadding:I

.field private mDimenWidth:I

.field private realHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/ElementController;->setNotificationIconContainer(Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->initDimens()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->setPaddingRelative(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->setClipToPadding(Z)V

    const-string v0, "translation_z_animator_tag"

    invoke-static {p1, v0}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->TAG_ANIMATOR_TRANSLATION_Z:I

    return-void
.end method


# virtual methods
.method public getActualPaddingEnd()F
    .registers 3

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public getActualPaddingStart()F
    .registers 3

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public getActualWidth()I
    .registers 3

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public initDimens()V
    .registers 7

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iget v1, v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;->statusBarHeight:I

    if-lez v1, :cond_0

    iput v1, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->realHeight:I

    iget-object v2, v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->isOneLineBar()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->realHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->realHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_icon_height"

    const-string v4, "dimen"

    const-string v5, "com.android.systemui"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mDimenWidth:I

    const-string v3, "status_bar_notification_padding_end"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mDimenPadding:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->setActualPaddingEnd(F)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->setActualPaddingStart(F)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->requestLayout()V

    return-void
.end method

.method public isLayoutRtl()Z
    .registers 3

    const-string v0, "reverse_notification_sorting_order"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;Z)V

    return-void
.end method

.method public onIconChange()V
    .registers 4

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mDimenWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;->getCurrData(Z)Lcom/android/systemui/newstatusbar/data/IconData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/newstatusbar/data/IconData;->zoom:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->curIconSize:I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;

    invoke-interface {v2}, Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;->onIconChange()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->requestLayout()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 14

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->realHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v5, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->curIconSize:I

    int-to-float v6, v5

    div-float/2addr v6, v1

    sub-float v6, v0, v6

    float-to-int v6, v6

    add-int v7, v6, v5

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/view/View;->layout(IIII)V

    if-nez v2, :cond_0

    iget v4, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->curIconSize:I

    iput v4, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mIconSize:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    if-eqz p1, :cond_3

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandShowing:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->onLayoutChanged()V

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mAbsolutePosition:[I

    invoke-virtual {p0, v2}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getLocationOnScreen([I)V

    iget-boolean v2, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->resetViewStates()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->calculateIconXTranslations()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->applyIconStates()V

    :cond_4
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->islandWidthChanged:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->islandAnimate:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    goto :goto_f

    nop

    :goto_0
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_18

    nop

    :goto_1
    if-nez v6, :cond_0

    goto :goto_1a

    :cond_0
    goto :goto_e

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getActualPaddingStart()F

    move-result v3

    goto :goto_8

    nop

    :goto_3
    iget v2, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->curIconSize:I

    goto :goto_7

    nop

    :goto_4
    add-int/2addr v3, v7

    :goto_5
    goto :goto_6

    nop

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    nop

    :goto_7
    const/high16 v3, 0x40000000

    goto :goto_17

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v4

    goto :goto_1e

    nop

    :goto_9
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    goto :goto_1

    nop

    :goto_a
    iget v7, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->curIconSize:I

    goto :goto_4

    nop

    :goto_b
    iget v1, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mMaxIcons:I

    goto :goto_3

    nop

    :goto_c
    invoke-virtual {p0, v3}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->setActualLayoutWidth(I)V

    goto :goto_1f

    nop

    :goto_d
    invoke-virtual {p0, v4}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_9

    nop

    :goto_e
    iget v7, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->curIconSize:I

    goto :goto_0

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->getChildCount()I

    move-result v0

    goto :goto_b

    nop

    :goto_10
    const/4 v4, 0x0

    :goto_11
    goto :goto_1d

    nop

    :goto_12
    invoke-virtual {p0, v5, v2, v2}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->measureChild(Landroid/view/View;II)V

    goto :goto_15

    nop

    :goto_13
    return-void

    :goto_14
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->setMeasuredDimension(II)V

    goto :goto_13

    nop

    :goto_15
    if-lt v4, v1, :cond_1

    goto :goto_5

    :cond_1
    goto :goto_a

    nop

    :goto_16
    float-to-int v3, v3

    goto :goto_10

    nop

    :goto_17
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_2

    nop

    :goto_18
    iget v7, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->curIconSize:I

    goto :goto_19

    nop

    :goto_19
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1a
    goto :goto_12

    nop

    :goto_1b
    goto :goto_11

    :goto_1c
    goto :goto_c

    nop

    :goto_1d
    if-lt v4, v0, :cond_2

    goto :goto_1c

    :cond_2
    goto :goto_d

    nop

    :goto_1e
    add-float/2addr v3, v4

    goto :goto_16

    nop

    :goto_1f
    iget v4, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->realHeight:I

    goto :goto_14

    nop
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->onViewAdded(Landroid/view/View;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/systemui/newstatusbar/views/StatusBarIconView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/newstatusbar/views/StatusBarIconView;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/views/StatusBarIconView;->setNotificationIcon()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->onIconChange()V

    return-void
.end method

.method public setActualPaddingEnd(F)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mDimenPadding:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mActualPaddingEnd:F

    return-void
.end method

.method public setActualPaddingStart(F)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mDimenPadding:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mActualPaddingStart:F

    return-void
.end method

.method public setMaxIconsAmount(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationIconContainer;->mMaxIcons:I

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setMaxIconsAmount(I)V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 6

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVisibility(I)V

    return-void
.end method

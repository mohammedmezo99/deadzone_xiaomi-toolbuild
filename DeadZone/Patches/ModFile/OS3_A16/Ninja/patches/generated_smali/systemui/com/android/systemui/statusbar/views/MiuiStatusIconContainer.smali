.class public Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;

# interfaces
.implements Lcom/android/systemui/statusbar/views/IAnimatable;


# static fields
.field public static Companion:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$Companion;


# instance fields
.field public _islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor;

.field public _layoutFrom:I

.field public _realIconsWidth:I

.field public animatable:Lcom/android/systemui/statusbar/views/IAnimatable;

.field public animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

.field public batteryChanged:Z

.field public configuration:Landroid/content/res/Configuration;

.field public dotPadding:I

.field public iconDotFrameWidth:I

.field public iconSpacing:I

.field public ignoredSlots:Ljava/util/List;

.field public initTime:J

.field public isAodAnimate:Z

.field public islandAnimate:Z

.field public islandWidthChanged:Z

.field public layoutStates:Ljava/util/List;

.field public limitIcon:Z

.field public maxSize:I

.field public measureViews:Ljava/util/List;

.field public needsUnderflow:Z

.field public reload:Z

.field public screenType:I

.field public underflowWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->layoutStates:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->measureViews:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->ignoredSlots:Ljava/util/List;

    const/16 p2, 0xa

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->maxSize:I

    const-wide/16 p2, -0x1

    iput-wide p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->initTime:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->screenType:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->islandAnimate:Z

    new-instance p3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->reloadDimens$4()V

    iget p1, p3, Landroid/content/res/Configuration;->screenType:I

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->screenType:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$NfcSettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$NfcSettingObserver;-><init>(Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;Landroid/os/Handler;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_nfc"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private getIslandShowing()Z
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/IslandMonitor;->getBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/IslandMonitor;->getIslandShowing()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getIslandTranslationX()I
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/IslandMonitor;->getBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/IslandMonitor;->getIslandWidth()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private isNfcHidden()Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_nfc"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addIgnoredSlots(Ljava/util/List;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->ignoredSlots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->ignoredSlots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public animatorEnable()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->enableAnimation$1()Z

    move-result p0

    return p0
.end method

.method public enableAnimation$1()Z
    .registers 9

    sget-object v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->supportAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->maxSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->batteryChanged:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->reload:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->islandAnimate:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->controlPanelExpand:Z

    if-nez v0, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->animatable:Lcom/android/systemui/statusbar/views/IAnimatable;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/systemui/statusbar/views/IAnimatable;->animatorEnable()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->MINIMAL_ANIMATION_ENABLED:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->islandWidthChanged:Z

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    iget-wide v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->initTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->initTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getLayoutFrom()I

    move-result v0

    if-ne v0, v1, :cond_7

    const-wide/16 v6, 0x7d0

    goto :goto_0

    :cond_7
    const-wide/16 v6, 0x1f4

    :goto_0
    cmp-long v0, v4, v6

    if-gez v0, :cond_8

    goto :goto_1

    :cond_8
    iget-wide v4, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->initTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_9

    iput-wide v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->initTime:J

    :cond_9
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->isAodAnimate:Z

    if-eqz p0, :cond_b

    :cond_a
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_b
    return v1
.end method

.method public getAnimatable()Lcom/android/systemui/statusbar/views/IAnimatable;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->animatable:Lcom/android/systemui/statusbar/views/IAnimatable;

    return-object p0
.end method

.method public getAnimatorController()Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    return-object p0
.end method

.method public getBatteryChanged()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->batteryChanged:Z

    return p0
.end method

.method public getIslandMonitor()Lcom/android/systemui/statusbar/IslandMonitor;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/statusbar/IslandMonitor;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor;

    return-object p0
.end method

.method public getLayoutFrom()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    return p0
.end method

.method public getRealIconWidth()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_realIconsWidth:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->configuration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_0
    const v1, 0x40003080

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->reloadDimens$4()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->screenType:I

    iget p1, p1, Landroid/content/res/Configuration;->screenType:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->screenType:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->reload:Z

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 34

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v11, v10

    div-float/2addr v11, v4

    sub-float v11, v3, v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {v8, v6, v11, v9, v10}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v7, v2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget v3, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    if-eqz v3, :cond_1

    if-ne v3, v2, :cond_2

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/systemui/statusbar/IslandMonitor;->onLayoutChanged()V

    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v4, v6

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$Companion;->access$getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/views/NewStatusIconState;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->initFrom(Landroid/view/View;)V

    const/high16 v5, 0x3f800000

    iput v5, v7, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->alpha:F

    iput v5, v7, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->scaleY:F

    iput v5, v7, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->scaleX:F

    iput v6, v7, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->blur:I

    :cond_3
    add-int/2addr v4, v2

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->layoutStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    sget-object v8, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    iget v8, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->supportAnimation(I)Z

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor;

    if-eqz v9, :cond_5

    invoke-interface {v9}, Lcom/android/systemui/statusbar/IslandMonitor;->getBlocked()Z

    move-result v9

    if-nez v9, :cond_5

    move v9, v2

    goto :goto_2

    :cond_5
    move v9, v6

    :goto_2
    add-int/lit8 v10, v7, -0x1

    :goto_3
    if-ge v1, v10, :cond_38

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-static {v12}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$Companion;->access$getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/views/NewStatusIconState;

    move-result-object v11

    if-eqz v11, :cond_8

    instance-of v15, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-nez v15, :cond_7

    instance-of v15, v12, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    if-eqz v15, :cond_6

    goto :goto_4

    :cond_6
    move v15, v6

    goto :goto_5

    :cond_7
    :goto_4
    move v15, v2

    :goto_5
    iput-boolean v15, v11, Lcom/android/systemui/statusbar/views/NewStatusIconState;->signalView:Z

    :cond_8
    if-eqz v11, :cond_9

    iput-boolean v8, v11, Lcom/android/systemui/statusbar/views/NewStatusIconState;->supportAnim:Z

    :cond_9
    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v15

    if-nez v15, :cond_b

    iget-object v15, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->ignoredSlots:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v6

    const-string v13, "nfc"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-direct {v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->isNfcHidden()Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_6

    :cond_a
    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    move-object v1, v0

    move/from16 v22, v3

    move/from16 v24, v5

    move/from16 v23, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v0, v11

    goto :goto_21

    :cond_c
    :goto_6
    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getRemoveFlag()Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v1, v0

    move/from16 v22, v3

    move/from16 v24, v5

    move/from16 v23, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    goto :goto_20

    :cond_d
    instance-of v6, v12, Lcom/android/systemui/statusbar/views/NetworkSpeedView;

    if-eqz v6, :cond_e

    move-object v6, v12

    check-cast v6, Lcom/android/systemui/statusbar/views/NetworkSpeedView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getNetworkSpeedWidth()I

    move-result v6

    goto :goto_7

    :cond_e
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v12}, Landroid/view/View;->getPaddingStart()I

    move-result v15

    add-int/2addr v15, v6

    invoke-virtual {v12}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    add-int/2addr v6, v15

    :goto_7
    sub-int/2addr v4, v6

    if-eqz v9, :cond_33

    instance-of v6, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-eqz v6, :cond_33

    invoke-direct {v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getIslandTranslationX()I

    move-result v6

    if-ne v6, v1, :cond_f

    move v6, v1

    goto :goto_8

    :cond_f
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_10

    move-object v6, v12

    check-cast v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    invoke-direct {v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getIslandTranslationX()I

    move-result v15

    sub-int/2addr v15, v4

    sub-int/2addr v6, v15

    goto :goto_8

    :cond_10
    invoke-direct {v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getIslandTranslationX()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_8
    check-cast v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->getInjector()Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    move-result-object v12

    invoke-direct {v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getIslandShowing()Z

    move-result v15

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->islandWidthChanged:Z

    iget-boolean v13, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandShowing:Z

    if-ne v15, v13, :cond_11

    if-nez v15, :cond_11

    goto :goto_1d

    :cond_11
    iget v13, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->locationX:I

    iget-object v1, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->mobileView:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-ne v4, v13, :cond_12

    iget v13, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->beforeWidth:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-ne v13, v2, :cond_12

    iget v2, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandInWidth:I

    if-eq v2, v6, :cond_33

    :cond_12
    iget-object v2, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->viewDebug:Ljava/lang/Boolean;

    if-nez v2, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getLayoutFrom()I

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->viewDebug:Ljava/lang/Boolean;

    :cond_14
    iput v6, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandInWidth:I

    iput v4, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->locationX:I

    iput-boolean v14, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandChangedThisFrame:Z

    iget-object v2, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->container:Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;

    if-nez v2, :cond_15

    move-object/from16 v16, v1

    move/from16 v22, v3

    move/from16 v25, v4

    move/from16 v24, v5

    move/from16 v23, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v26, v11

    goto :goto_1c

    :cond_15
    iget-object v6, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->animatable:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->enableAnimation$1()Z

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_16

    const/4 v6, 0x1

    goto :goto_a

    :cond_16
    const/4 v6, 0x0

    :goto_a
    if-eqz v15, :cond_18

    iget-object v13, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->container:Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;

    if-eqz v13, :cond_18

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getLastView()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_18

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_18

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    iget v14, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandInWidth:I

    if-le v13, v14, :cond_18

    goto :goto_b

    :cond_17
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandInWidth:I

    if-ge v13, v14, :cond_18

    :goto_b
    const/4 v13, 0x1

    goto :goto_c

    :cond_18
    const/4 v13, 0x0

    :goto_c
    iput-boolean v13, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->_isInIsland:Z

    iget-object v13, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->viewDebug:Ljava/lang/Boolean;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "ModernStatusBarMobileViewInjector"

    if-eqz v13, :cond_19

    iget v13, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandInWidth:I

    move-object/from16 v16, v1

    iget-boolean v1, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->_isInIsland:Z

    move/from16 v19, v8

    const-string v8, "calculateIsland: in width = "

    move/from16 v20, v9

    const-string v9, " showing = "

    move/from16 v21, v10

    const-string v10, " in island = "

    invoke-static {v8, v13, v9, v15, v10}, Lcom/android/keyguard/ext/KeyguardUnlockAnimationControllerExtKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v8, v14, v1}, Lcom/android/keyguard/BaseMiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_d

    :cond_19
    move-object/from16 v16, v1

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    :goto_d
    iget-boolean v1, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->_isInIsland:Z

    if-nez v1, :cond_32

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    const/4 v1, 0x0

    :goto_e
    const/4 v9, -0x1

    if-ge v9, v8, :cond_31

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_30

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v13, 0x8

    if-ne v10, v13, :cond_1b

    :goto_f
    move-object/from16 p3, v2

    move/from16 v22, v3

    move/from16 v25, v4

    move/from16 v24, v5

    move/from16 v23, v7

    move-object/from16 v26, v11

    move/from16 v27, v15

    :cond_1a
    const/16 v0, 0xa

    goto :goto_17

    :cond_1b
    instance-of v10, v9, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;

    if-eqz v10, :cond_1c

    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;

    goto :goto_10

    :cond_1c
    const/4 v10, 0x0

    :goto_10
    if-nez v10, :cond_1d

    goto :goto_f

    :cond_1d
    iget-object v13, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->viewDebug:Ljava/lang/Boolean;

    move-object/from16 p3, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    move/from16 v22, v13

    const-string v13, " left = "

    if-eqz v22, :cond_1e

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v23, v7

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v7

    move/from16 v24, v5

    iget v5, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandInWidth:I

    move/from16 v25, v4

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-interface {v10}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->getIslandState()I

    move-result v0

    move-object/from16 v26, v11

    const-string v11, "handleViewsState: name = "

    move/from16 v27, v15

    const-string v15, "  islandWidth = "

    invoke-static {v7, v11, v3, v13, v15}, Landroidx/datastore/preferences/protobuf/ByteString$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " visible = "

    const-string v11, " state = "

    invoke-static {v3, v5, v7, v4, v11}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v14, v3}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_11

    :cond_1e
    move/from16 v22, v3

    move/from16 v25, v4

    move/from16 v24, v5

    move/from16 v23, v7

    move-object/from16 v26, v11

    move/from16 v27, v15

    :goto_11
    if-eqz v27, :cond_29

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandInWidth:I

    if-le v0, v3, :cond_29

    goto :goto_12

    :cond_1f
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandInWidth:I

    if-ge v0, v3, :cond_29

    :goto_12
    invoke-interface {v10}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->getIslandState()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_1a

    invoke-static {v9}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->cancelAnimator()V

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandChangedThisFrame:Z

    if-nez v0, :cond_20

    goto :goto_15

    :cond_20
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v2, 0x3e4ccccd

    cmpg-float v0, v0, v2

    if-gez v0, :cond_21

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_15

    :cond_21
    if-nez v6, :cond_22

    goto :goto_15

    :cond_22
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    invoke-static {v9}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object v2

    iget-boolean v3, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandChangedThisFrame:Z

    if-eqz v3, :cond_23

    sget-object v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->ISLAND_HIDE:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-static {v3}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->getConfig(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    goto :goto_13

    :cond_23
    sget-object v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->DISAPPEAR:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-static {v3}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->getConfig(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    :goto_13
    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector$hideIconAnimator$1;

    invoke-direct {v4, v10, v9, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector$hideIconAnimator$1;-><init>(Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;Landroid/view/View;Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;)V

    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->MINIMAL_ANIMATION_ENABLED:Z

    if-nez v5, :cond_24

    iget-boolean v5, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandChangedThisFrame:Z

    if-nez v5, :cond_25

    :cond_24
    const/4 v0, 0x0

    :cond_25
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->animatorDisappear(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/listener/TransitionListener;F)V

    :cond_26
    :goto_14
    const/16 v0, 0xa

    goto :goto_16

    :cond_27
    :goto_15
    invoke-static {v9}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->resetViewState$1(Landroid/view/View;)V

    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v9}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->distanceToViewEnd:I

    if-eqz v6, :cond_26

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v0

    const-string v2, "hideIconAnimator: view is show but alpha value = "

    invoke-static {v0, v2, v14}, Lcom/android/keyguard/clock/animation/TinyClockBaseAnimation$$ExternalSyntheticOutline0;->m(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :goto_16
    invoke-interface {v10, v0}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->setIslandState(I)V

    :cond_28
    :goto_17
    const/16 v17, -0x1

    goto :goto_1a

    :cond_29
    const/16 v0, 0xa

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-interface {v10}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->getIslandState()I

    move-result v3

    if-ne v3, v0, :cond_28

    invoke-interface {v10}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->getIconVisible()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->viewDebug:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->_firstVisibleX:I

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-boolean v3, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandChangedThisFrame:Z

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v4

    const-string v5, "handleViewsState: first = "

    const-string v7, " change = "

    invoke-static {v0, v2, v5, v13, v7}, Landroidx/collection/MutableObjectList$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " animator = "

    const-string v5, " view = "

    invoke-static {v0, v3, v2, v6, v5}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v4, v14, v0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2a
    invoke-static {v9}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->cancelAnimator()V

    if-eqz v6, :cond_2f

    iget v0, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->_firstVisibleX:I

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v9}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->initAppearAnimation(Landroid/view/View;)V

    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->MINIMAL_ANIMATION_ENABLED:Z

    if-nez v3, :cond_2b

    iget-boolean v4, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandChangedThisFrame:Z

    if-nez v4, :cond_2c

    :cond_2b
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->moveTo()V

    :cond_2c
    sget-object v4, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->ISLAND_HIDE:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-static {v4}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->getConfig(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    if-nez v3, :cond_2d

    iget-boolean v3, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandChangedThisFrame:Z

    if-nez v3, :cond_2e

    :cond_2d
    const/4 v0, 0x0

    :cond_2e
    invoke-virtual {v2, v0, v4}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->animatorAppear(FLmiuix/animation/base/AnimConfig;)V

    :goto_18
    const/16 v2, 0x14

    goto :goto_19

    :cond_2f
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v9}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->resetViewState$1(Landroid/view/View;)V

    goto :goto_18

    :goto_19
    invoke-interface {v10, v2}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->setIslandState(I)V

    goto :goto_17

    :goto_1a
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, v22

    move/from16 v7, v23

    move/from16 v5, v24

    move/from16 v4, v25

    move-object/from16 v11, v26

    move/from16 v15, v27

    goto :goto_e

    :cond_30
    move-object/from16 p3, v2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: "

    const-string v2, ", Size: "

    invoke-static {v8, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move/from16 v22, v3

    move/from16 v25, v4

    move/from16 v24, v5

    move/from16 v23, v7

    move-object/from16 v26, v11

    move/from16 v27, v15

    iput v1, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->_firstVisibleX:I

    move/from16 v0, v27

    goto :goto_1b

    :cond_32
    move/from16 v22, v3

    move/from16 v25, v4

    move/from16 v24, v5

    move/from16 v23, v7

    move-object/from16 v26, v11

    move v0, v15

    :goto_1b
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandShowing:Z

    :goto_1c
    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iput v0, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->beforeWidth:I

    const/4 v3, 0x0

    iput-boolean v3, v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->islandChangedThisFrame:Z

    goto :goto_1e

    :cond_33
    :goto_1d
    move/from16 v22, v3

    move/from16 v25, v4

    move/from16 v24, v5

    move/from16 v23, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v26, v11

    const/4 v3, 0x0

    :goto_1e
    if-eqz v26, :cond_34

    move-object/from16 v0, v26

    iput v3, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->hiddenBySpace:Z

    move-object/from16 v1, p0

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->islandWidthChanged:Z

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->islandChanged:Z

    move/from16 v4, v25

    int-to-float v2, v4

    iput v2, v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->translationX:F

    iput v2, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    const/16 v2, 0x14

    iput v2, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->inIslandState:I

    iget-object v2, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->layoutStates:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1f

    :cond_34
    move-object/from16 v1, p0

    move/from16 v4, v25

    :goto_1f
    iget v0, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->iconSpacing:I

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_realIconsWidth:I

    :cond_35
    :goto_20
    const/16 v17, -0x1

    goto :goto_22

    :goto_21
    if-eqz v0, :cond_36

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    :cond_36
    if-eqz v0, :cond_37

    const/16 v2, 0x14

    iput v2, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->inIslandState:I

    :cond_37
    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mobile"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v2

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v3

    iget-object v5, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->ignoredSlots:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "skipping child ( "

    const-string v7, " ) not visible a1 = "

    const-string v8, "  a2 = "

    invoke-static {v6, v0, v7, v2, v8}, Lcom/android/keyguard/logging/KeyguardLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " a3 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiStatusIconContainer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :goto_22
    add-int/lit8 v10, v21, -0x1

    move-object v0, v1

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v3, v22

    move/from16 v7, v23

    move/from16 v5, v24

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_3

    :cond_38
    move-object v1, v0

    move/from16 v22, v3

    move/from16 v24, v5

    move/from16 v23, v7

    iget-object v0, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->layoutStates:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->maxSize:I

    const/16 v3, 0xa

    if-gt v0, v3, :cond_39

    const/16 v3, 0xa

    goto :goto_23

    :cond_39
    const/16 v3, 0x9

    :goto_23
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getIslandTranslationX()I

    move-result v3

    if-gtz v3, :cond_3e

    move/from16 v3, v24

    int-to-double v4, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v6

    sub-int v6, v22, v6

    iget v7, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->underflowWidth:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    const/4 v0, 0x0

    const/4 v9, -0x1

    :goto_24
    if-ge v9, v6, :cond_3d

    iget-object v7, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->layoutStates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/views/NewStatusIconState;

    iget v8, v7, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->translationX:F

    int-to-float v9, v3

    cmpg-float v9, v8, v9

    if-gez v9, :cond_3a

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/views/NewStatusIconState;->signalView:Z

    if-eqz v7, :cond_3b

    :cond_3a
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->limitIcon:Z

    if-eqz v7, :cond_3c

    if-lt v0, v2, :cond_3c

    :cond_3b
    const/4 v9, -0x1

    goto :goto_25

    :cond_3c
    iget v7, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->underflowWidth:I

    int-to-float v7, v7

    sub-float/2addr v8, v7

    iget v7, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->iconSpacing:I

    int-to-float v7, v7

    sub-float/2addr v8, v7

    float-to-double v7, v8

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    const/4 v9, -0x1

    add-int/2addr v6, v9

    goto :goto_24

    :cond_3d
    move v6, v9

    :goto_25
    if-eq v6, v9, :cond_45

    :goto_26
    if-ge v9, v6, :cond_45

    iget-object v0, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->layoutStates:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->hiddenBySpace:Z

    add-int/2addr v6, v9

    goto :goto_26

    :cond_3e
    const/4 v9, -0x1

    const/4 v13, 0x1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-int/2addr v0, v13

    :goto_27
    if-ge v9, v0, :cond_43

    iget-object v3, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->layoutStates:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;

    iget v4, v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    invoke-direct {v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->getIslandTranslationX()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3f

    iget v2, v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    :goto_28
    const/4 v9, -0x1

    goto :goto_2a

    :cond_3f
    iget-object v4, v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;->view:Landroid/view/View;

    instance-of v5, v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-eqz v5, :cond_40

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->getInjector()Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->_isInIsland:Z

    if-eqz v4, :cond_41

    :cond_40
    const/4 v9, -0x1

    goto :goto_2b

    :cond_41
    iget v2, v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    iget-object v3, v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;->view:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->getInjector()Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    move-result-object v3

    iget-object v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->mobileView:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->_firstVisibleX:I

    add-int/2addr v4, v3

    goto :goto_29

    :cond_42
    iget v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->_firstVisibleX:I

    :goto_29
    int-to-float v3, v4

    add-float/2addr v2, v3

    goto :goto_28

    :goto_2a
    add-int/2addr v0, v9

    goto :goto_27

    :cond_43
    move v0, v9

    :goto_2b
    if-eq v0, v9, :cond_45

    :goto_2c
    if-ge v9, v0, :cond_45

    iget-object v3, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->layoutStates:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->MINIMAL_ANIMATION_ENABLED:Z

    if-eqz v4, :cond_44

    iget v4, v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    goto :goto_2d

    :cond_44
    move v4, v2

    :goto_2d
    iput v4, v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->translationX:F

    const/16 v4, 0xa

    iput v4, v3, Lcom/android/systemui/statusbar/views/NewStatusIconState;->inIslandState:I

    const/16 v17, -0x1

    add-int/lit8 v0, v0, -0x1

    move/from16 v9, v17

    goto :goto_2c

    :cond_45
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_48

    move/from16 v2, v23

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v2, :cond_48

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$Companion;->access$getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/views/NewStatusIconState;

    move-result-object v4

    move/from16 v5, v22

    if-eqz v4, :cond_46

    int-to-float v6, v5

    iget v7, v4, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->translationX:F

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v4, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->translationX:F

    :cond_46
    if-eqz v4, :cond_47

    int-to-float v6, v5

    iget v7, v4, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v6, v3

    iput v6, v4, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    :cond_47
    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v22, v5

    goto :goto_2e

    :cond_48
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->enableAnimation$1()Z

    move-result v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v2, :cond_72

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$Companion;->access$getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/views/NewStatusIconState;

    move-result-object v5

    if-eqz v5, :cond_71

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->batteryChanged:Z

    iget-object v7, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    instance-of v8, v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v8, :cond_49

    goto :goto_48

    :cond_49
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/View;

    if-eqz v8, :cond_4a

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    goto :goto_30

    :cond_4a
    const/4 v8, 0x0

    :goto_30
    move-object v9, v4

    check-cast v9, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->slot:Ljava/lang/String;

    int-to-float v10, v8

    iget v11, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    sub-float/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getRemoveFlag()Z

    move-result v11

    iget v12, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->inIslandState:I

    const/16 v13, 0xa

    if-ne v12, v13, :cond_52

    iget-boolean v12, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->supportAnim:Z

    if-nez v12, :cond_4c

    const/4 v13, 0x0

    iput v13, v5, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->alpha:F

    :cond_4b
    :goto_31
    const/4 v12, 0x0

    const/16 v14, 0x14

    const/16 v15, 0xa

    goto :goto_34

    :cond_4c
    const/4 v13, 0x0

    iput v13, v5, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->alpha:F

    const v12, 0x3ecccccd

    iput v12, v5, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->scaleY:F

    iput v12, v5, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->scaleX:F

    sget-boolean v12, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->isHighDevice:Z

    if-eqz v12, :cond_4d

    const/16 v12, 0x1e

    iput v12, v5, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->blur:I

    :cond_4d
    if-nez v0, :cond_4e

    goto :goto_31

    :cond_4e
    iget-boolean v12, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->justAdded:Z

    if-nez v12, :cond_4b

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_4f

    goto :goto_31

    :cond_4f
    iget v12, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->inIslandState:I

    iget v14, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->beforeInIslandState:I

    if-ne v12, v14, :cond_50

    goto :goto_31

    :cond_50
    const/16 v14, 0x14

    :cond_51
    const/16 v15, 0xa

    goto :goto_33

    :cond_52
    const/4 v13, 0x0

    const/16 v14, 0x14

    if-ne v12, v14, :cond_51

    iget v12, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->beforeInIslandState:I

    const/16 v15, 0xa

    if-ne v12, v15, :cond_53

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v12

    if-nez v12, :cond_53

    const/4 v12, 0x1

    goto :goto_32

    :cond_53
    const/4 v12, 0x0

    :goto_32
    iput-boolean v12, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->forceAppear:Z

    :goto_33
    move v12, v0

    :goto_34
    if-eqz v12, :cond_6e

    if-eqz v7, :cond_6e

    iget v12, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->oldViewWidth:I

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    sub-int v12, v12, v16

    if-eqz v11, :cond_54

    sget-object v6, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->DISAPPEAR:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-virtual {v7, v6, v4, v5}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->createFolmeAnimation(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;Landroid/view/View;Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;)Lcom/android/systemui/statusbar/anim/FolmeProperties;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/statusbar/views/NewStatusIconState$applyToView$1;

    invoke-direct {v7, v4}, Lcom/android/systemui/statusbar/views/NewStatusIconState$applyToView$1;-><init>(Landroid/view/View;)V

    iget-object v12, v6, Lcom/android/systemui/statusbar/anim/FolmeProperties;->animatedProperties:Ljava/util/Map;

    sget-object v13, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v12, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_35
    move-object v7, v6

    const/4 v6, 0x0

    :goto_36
    const/4 v12, 0x0

    goto :goto_40

    :cond_54
    iget-boolean v13, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->justAdded:Z

    if-nez v13, :cond_62

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_55

    iget v13, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    if-eqz v13, :cond_62

    :cond_55
    iget-boolean v13, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->forceAppear:Z

    if-nez v13, :cond_62

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getDeemHide()Z

    move-result v13

    if-eqz v13, :cond_56

    iget v13, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    if-nez v13, :cond_56

    goto :goto_3e

    :cond_56
    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v13

    iget v14, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    if-eq v13, v14, :cond_5b

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v6

    if-nez v6, :cond_59

    iget v6, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    const/4 v14, 0x2

    if-ne v6, v14, :cond_59

    invoke-virtual {v5, v8, v4}, Lcom/android/systemui/statusbar/views/NewStatusIconState;->correctTranslationX(ILandroid/view/View;)V

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->islandChanged:Z

    if-eqz v6, :cond_57

    sget-object v6, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->ISLAND_SHOW:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    goto :goto_37

    :cond_57
    sget-object v6, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->DISAPPEAR:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    :goto_37
    invoke-virtual {v7, v6, v4, v5}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->createFolmeAnimation(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;Landroid/view/View;Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;)Lcom/android/systemui/statusbar/anim/FolmeProperties;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/statusbar/views/NewStatusIconState$applyToView$2;

    invoke-direct {v7, v5, v9}, Lcom/android/systemui/statusbar/views/NewStatusIconState$applyToView$2;-><init>(Lcom/android/systemui/statusbar/views/NewStatusIconState;Lcom/android/systemui/statusbar/StatusIconDisplayable;)V

    iget-object v12, v6, Lcom/android/systemui/statusbar/anim/FolmeProperties;->animatedProperties:Ljava/util/Map;

    sget-object v13, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v12, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v7, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->islandChanged:Z

    if-nez v7, :cond_58

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iput v7, v5, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->translationX:F

    iput v7, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    :cond_58
    move-object v7, v6

    const/4 v6, 0x1

    goto :goto_36

    :cond_59
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->islandChanged:Z

    if-eqz v6, :cond_5a

    sget-object v6, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->ISLAND_HIDE:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-virtual {v7, v6, v4, v5}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->createFolmeAnimation(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;Landroid/view/View;Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;)Lcom/android/systemui/statusbar/anim/FolmeProperties;

    move-result-object v6

    goto :goto_38

    :cond_5a
    sget-object v6, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->APPEAR:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-virtual {v7, v6, v4, v5}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->createFolmeAnimation(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;Landroid/view/View;Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;)Lcom/android/systemui/statusbar/anim/FolmeProperties;

    move-result-object v6

    :goto_38
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    :goto_39
    move-object v12, v7

    move-object v7, v6

    const/4 v6, 0x0

    goto :goto_40

    :cond_5b
    const/4 v13, 0x2

    if-eq v14, v13, :cond_5f

    iget v13, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->distanceToViewEnd:F

    cmpg-float v13, v13, v10

    if-nez v13, :cond_5c

    const/4 v13, 0x1

    goto :goto_3a

    :cond_5c
    const/4 v13, 0x0

    :goto_3a
    if-eqz v13, :cond_5e

    if-eqz v6, :cond_5d

    iget v6, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->oldParentWidth:I

    if-eq v6, v8, :cond_5d

    goto :goto_3b

    :cond_5d
    const/4 v13, 0x2

    goto :goto_3c

    :cond_5e
    :goto_3b
    invoke-virtual {v5, v8, v4}, Lcom/android/systemui/statusbar/views/NewStatusIconState;->correctTranslationX(ILandroid/view/View;)V

    sget-object v6, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->MOVE:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-virtual {v7, v6, v4, v5}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->createFolmeAnimation(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;Landroid/view/View;Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;)Lcom/android/systemui/statusbar/anim/FolmeProperties;

    move-result-object v6

    goto :goto_35

    :cond_5f
    :goto_3c
    if-eq v14, v13, :cond_61

    if-eqz v12, :cond_61

    instance-of v6, v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-eqz v6, :cond_61

    sget-object v6, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty;->Companion:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;->TRANSLATION_X:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion$from$1;

    iget v6, v6, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion$from$1;->animatorTag:I

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_60

    const/4 v6, 0x1

    goto :goto_3d

    :cond_60
    const/4 v6, 0x0

    :goto_3d
    if-eqz v6, :cond_61

    int-to-float v6, v12

    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->resetToTranslationX(FLandroid/view/View;)V

    sget-object v6, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->MOVE:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-virtual {v7, v6, v4, v5}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->createFolmeAnimation(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;Landroid/view/View;Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;)Lcom/android/systemui/statusbar/anim/FolmeProperties;

    move-result-object v6

    goto :goto_35

    :cond_61
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_36

    :cond_62
    :goto_3e
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->islandChanged:Z

    if-eqz v6, :cond_63

    sget-object v6, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->ISLAND_HIDE:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    goto :goto_3f

    :cond_63
    sget-object v6, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->APPEAR:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    :goto_3f
    invoke-virtual {v7, v6, v4, v5}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->createFolmeAnimation(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;Landroid/view/View;Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;)Lcom/android/systemui/statusbar/anim/FolmeProperties;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_39

    :goto_40
    if-eqz v11, :cond_66

    iget v11, v5, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->translationX:F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_64

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_65

    :cond_64
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_66

    :cond_65
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v11

    iput v11, v5, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->translationX:F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v11

    iput v11, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->layoutTranslationX:F

    :cond_66
    if-nez v6, :cond_67

    iget v6, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    const/4 v11, 0x0

    invoke-interface {v9, v6, v11}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    :cond_67
    if-eqz v12, :cond_6c

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v11

    iget v13, v5, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->alpha:F

    cmpg-float v11, v11, v13

    if-nez v11, :cond_68

    const/4 v11, 0x1

    goto :goto_41

    :cond_68
    const/4 v11, 0x0

    :goto_41
    if-eqz v11, :cond_6a

    cmpg-float v6, v6, v13

    if-nez v6, :cond_69

    const/4 v6, 0x1

    goto :goto_42

    :cond_69
    const/4 v6, 0x0

    :goto_42
    if-nez v6, :cond_6a

    const/4 v6, 0x1

    goto :goto_43

    :cond_6a
    const/4 v6, 0x0

    :goto_43
    if-eqz v6, :cond_6b

    goto :goto_44

    :cond_6b
    const/4 v12, 0x0

    :goto_44
    if-eqz v12, :cond_6c

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_6c
    if-eqz v7, :cond_6d

    invoke-virtual {v5, v4, v7}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/anim/FolmeProperties;)V

    goto :goto_45

    :cond_6d
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->applyToView(Landroid/view/View;Z)V

    goto :goto_45

    :cond_6e
    const/4 v6, 0x0

    if-eqz v11, :cond_6f

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->performRemove()V

    :cond_6f
    iget v7, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->visibleState:I

    invoke-interface {v9, v7, v6}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->supportAnim:Z

    const/16 v18, 0x1

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->applyToView(Landroid/view/View;Z)V

    :goto_45
    iput v8, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->oldParentWidth:I

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->oldViewWidth:I

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v6

    const/4 v14, 0x2

    if-ne v6, v14, :cond_70

    move v13, v14

    goto :goto_46

    :cond_70
    const/4 v13, 0x1

    :goto_46
    invoke-virtual {v4, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v11, 0x0

    iput-boolean v11, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->justAdded:Z

    iput-boolean v11, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->islandChanged:Z

    iput-boolean v11, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->forceAppear:Z

    invoke-interface {v9, v11}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDeemHide(Z)V

    iget v4, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->inIslandState:I

    iput v4, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->beforeInIslandState:I

    iput v10, v5, Lcom/android/systemui/statusbar/views/NewStatusIconState;->distanceToViewEnd:F

    :goto_47
    const/4 v13, 0x1

    goto :goto_49

    :cond_71
    :goto_48
    const/4 v11, 0x0

    const/4 v14, 0x2

    const/16 v15, 0xa

    goto :goto_47

    :goto_49
    add-int/2addr v3, v13

    goto :goto_2f

    :cond_72
    const/4 v11, 0x0

    const/4 v13, 0x1

    iput-boolean v11, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->reload:Z

    iput-boolean v11, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->islandWidthChanged:Z

    iput-boolean v11, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->batteryChanged:Z

    iput-boolean v13, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->islandAnimate:Z

    return-void
.end method

.method public onMeasure(II)V
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->measureViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->ignoredSlots:Ljava/util/List;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v8

    const-string v19, "nfc"

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-direct {v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->isNfcHidden()Z

    move-result v21

    if-nez v21, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    :goto_1
    if-nez v7, :cond_1

    iget-object v7, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->measureViews:Ljava/util/List;

    check-cast v6, Landroid/view/View;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->measureViews:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->limitIcon:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    goto :goto_2

    :cond_3
    const v5, 0x7fffffff

    :goto_2
    iput v5, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->maxSize:I

    iget v5, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v6

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->needsUnderflow:Z

    const/high16 v7, 0x40000000

    const/high16 v8, -0x80000000

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_4

    const v2, 0x3fffffff

    :cond_4
    const/4 v9, 0x1

    move v10, v4

    move v12, v10

    move v11, v9

    :goto_3
    if-ge v10, v3, :cond_a

    iget-object v13, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->measureViews:Ljava/util/List;

    sub-int v14, v3, v10

    sub-int/2addr v14, v9

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move/from16 v14, p2

    invoke-virtual {v0, v13, v6, v14}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v15, v3, -0x1

    if-ne v10, v15, :cond_5

    move v15, v4

    goto :goto_4

    :cond_5
    iget v15, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->iconSpacing:I

    :goto_4
    move-object/from16 v16, v13

    check-cast v16, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isSignalView()Z

    move-result v16

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    invoke-virtual {v13}, Landroid/view/View;->getPaddingStart()I

    move-result v18

    add-int v18, v18, v17

    invoke-virtual {v13}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    add-int v13, v13, v18

    if-eqz v11, :cond_6

    add-int v17, v5, v13

    add-int v4, v17, v15

    if-gt v4, v2, :cond_6

    iget v4, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->maxSize:I

    if-lt v12, v4, :cond_7

    :cond_6
    if-eqz v16, :cond_9

    :cond_7
    if-nez v13, :cond_8

    goto :goto_5

    :cond_8
    add-int/2addr v13, v15

    add-int/2addr v13, v5

    add-int/lit8 v12, v12, 0x1

    move v5, v13

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    move/from16 v14, p2

    if-ne v1, v7, :cond_b

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->needsUnderflow:Z

    if-nez v1, :cond_d

    if-le v5, v2, :cond_d

    iput-boolean v9, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->needsUnderflow:Z

    goto :goto_6

    :cond_b
    if-ne v1, v8, :cond_c

    if-le v5, v2, :cond_c

    iput-boolean v9, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->needsUnderflow:Z

    goto :goto_6

    :cond_c
    move v2, v5

    :cond_d
    :goto_6
    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    sget-object v1, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->supportAnimation(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->setAnimationEnable(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->getInjector()Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    move-result-object v1

    iput-object p0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->animatable:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->container:Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->getInjector()Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    sget-object v1, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->supportAnimation(I)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setAnimationEnable(Z)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    new-instance p0, Lcom/android/systemui/statusbar/views/NewStatusIconState;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/views/NewStatusIconState;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NewStatusIconState;->justAdded:Z

    const v0, 0x7f0b0b75

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->getInjector()Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    move-result-object v2

    iput-object v1, v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->animatable:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->container:Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->getInjector()Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$Companion;->access$getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/views/NewStatusIconState;

    move-result-object v0

    const v2, 0x7f0b0d63

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->enableAnimation$1()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->addTransientView(Landroid/view/View;I)V

    const-string v3, "addTransientView"

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$Companion;->log$default(Landroid/view/View;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$onViewRemoved$1$1;

    invoke-direct {v5, p0, p1, p1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$onViewRemoved$1$1;-><init>(Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;Landroid/view/View;Landroid/view/View;)V

    instance-of p0, p1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->DISAPPEAR:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-virtual {v3, p0, p1, v0}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->createFolmeAnimation(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;Landroid/view/View;Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;)Lcom/android/systemui/statusbar/anim/FolmeProperties;

    move-result-object p0

    iget-object v3, p0, Lcom/android/systemui/statusbar/anim/FolmeProperties;->animatedProperties:Ljava/util/Map;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/anim/FolmeProperties;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$onViewRemoved$1$1;->onFinish(Z)V

    :goto_2
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    const p0, 0x7f0b0b75

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public reloadDimens$4()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050390

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->iconDotFrameWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071522

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->dotPadding:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0718bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->iconSpacing:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->iconDotFrameWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->dotPadding:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->underflowWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->reload:Z

    return-void
.end method

.method public setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->animatable:Lcom/android/systemui/statusbar/views/IAnimatable;

    return-void
.end method

.method public setAnimatorController(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    return-void
.end method

.method public setBatteryChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->batteryChanged:Z

    return-void
.end method

.method public setIgnoredSlots(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->ignoredSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    return-void
.end method

.method public setIsAodAnimate(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->isAodAnimate:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->isAodAnimate:Z

    :cond_0
    return-void
.end method

.method public setIslandController(Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/android/systemui/statusbar/IslandMonitor$ControlCenterIslandMonitor;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/IslandMonitor$ControlCenterIslandMonitor;-><init>(Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/android/systemui/statusbar/IslandMonitor$FakeContainerIslandMonitor;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/IslandMonitor$FakeContainerIslandMonitor;-><init>(Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;-><init>(Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;)V

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/statusbar/IslandMonitor;->init()V

    :cond_4
    :goto_2
    return-void
.end method

.method public setNeedLimitIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->limitIcon:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public updateLayoutFrom(I)V
    .registers 6

    sget-object v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->supportAnimation(I)Z

    move-result v0

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->_layoutFrom:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->supportAnimation(I)Z

    move-result p1

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setAnimationEnable(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->initTime:J

    return-void
.end method

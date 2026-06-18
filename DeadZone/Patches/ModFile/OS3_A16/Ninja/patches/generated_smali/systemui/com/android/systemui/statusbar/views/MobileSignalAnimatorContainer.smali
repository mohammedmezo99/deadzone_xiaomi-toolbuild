.class public Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;


# static fields
.field public static synthetic $r8$clinit:I


# instance fields
.field public animatable:Lcom/android/systemui/statusbar/views/IAnimatable;

.field public fakeViews:Landroidx/collection/ArrayMap;

.field public hideByIsland:Z

.field public isRtl:Z

.field public islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

.field public lastView:Landroid/view/View;

.field public layoutChangeListener:Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$layoutChangeListener$1;

.field public parentAnimHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

.field public refreshLastView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroidx/collection/ArrayMap;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->fakeViews:Landroidx/collection/ArrayMap;

    new-instance p1, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$layoutChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$layoutChangeListener$1;-><init>(Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->layoutChangeListener:Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$layoutChangeListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static copyAnimatorParams(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3ecccccd

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    sget-object v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->supportBlur(Landroid/view/View;)Lcom/android/systemui/statusbar/views/IBlurEffect;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of v0, p0, Lcom/android/systemui/statusbar/views/IBlurEffect;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/android/systemui/statusbar/views/IBlurEffect;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/views/IBlurEffect;->getBlurRadius()I

    move-result p0

    goto :goto_2

    :cond_3
    const/16 p0, 0x1e

    :goto_2
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/views/IBlurEffect;->setBlurRadius(I)V

    :cond_4
    return-void
.end method

.method public static getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;
    .registers 4

    const v0, 0x7f0b0b75

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public static resetViewState$1(Landroid/view/View;)V
    .registers 3

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    sget-object v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->supportBlur(Landroid/view/View;)Lcom/android/systemui/statusbar/views/IBlurEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/views/IBlurEffect;->setBlurRadius(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public getAnimatable()Lcom/android/systemui/statusbar/views/IAnimatable;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->animatable:Lcom/android/systemui/statusbar/views/IAnimatable;

    return-object p0
.end method

.method public getHideByIsland()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->hideByIsland:Z

    return p0
.end method

.method public getIslandController()Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    return-object p0
.end method

.method public getLastView()Landroid/view/View;
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->refreshLastView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->lastView:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->lastView:Landroid/view/View;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->refreshLastView:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->lastView:Landroid/view/View;

    return-object p0
.end method

.method public getParentAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->parentAnimHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    return-object p0
.end method

.method public onChildVisibilityChanged(Landroid/view/View;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onChildVisibilityChanged(Landroid/view/View;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->refreshLastView:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->isRtl:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->animatable:Lcom/android/systemui/statusbar/views/IAnimatable;

    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->layoutChangeListener:Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$layoutChangeListener$1;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->isRtl:Z

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0b75

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    if-eqz p1, :cond_0

    const p0, 0x7f0b0b75

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->animatable:Lcom/android/systemui/statusbar/views/IAnimatable;

    return-void
.end method

.method public setChildVisible(Landroid/view/View;Z)V
    .registers 11

    instance-of v0, p1, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->setIconVisible(Z)V

    if-nez p2, :cond_0

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->setIslandState(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->getIslandState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "MobileSignalAnimatorContainer"

    const-string v3, " hash ="

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->shouldAnimator()Z

    move-result p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->fakeViews:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->removeTransientView(Landroid/view/View;)V

    invoke-static {v4}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->cancelAnimator()V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result p1

    const-string p2, "appearAnimator: return id = "

    invoke-static {p0, p1, p2, v3, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->cancelAnimator()V

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->copyAnimatorParams(Landroid/view/View;Landroid/view/View;)V

    sget-object p2, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->APPEAR:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-static {p2}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->getConfig(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->animatorAppear(FLmiuix/animation/base/AnimConfig;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->resetViewState$1(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result p1

    const-string p2, "appearAnimator: id = "

    invoke-static {p0, p1, p2, v3, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->shouldAnimator()Z

    move-result p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->fakeViews:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_6

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->removeTransientView(Landroid/view/View;)V

    invoke-static {v4}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->cancelAnimator()V

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result p1

    const-string p2, "disappearAnimator: isVisible false  visible = gone id = "

    const-string v0, " hash = "

    invoke-static {p0, p1, p2, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result p1

    const-string p2, "disappearAnimator: isVisible false  visible = invisible id = "

    invoke-static {p0, p1, p2, v3, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_9

    instance-of p2, p1, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;

    if-eqz p2, :cond_9

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;->copyView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p0, p2, v1}, Landroid/widget/LinearLayout;->addTransientView(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p2, v1, v4, v6, v7}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->fakeViews:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->copyAnimatorParams(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p2}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object v1

    const v4, 0x7f0b0b75

    invoke-virtual {p2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget-object v4, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->DISAPPEAR:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-static {v4}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$Companion;->getConfig(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$disappearAnimator$1$1;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$disappearAnimator$1$1;-><init>(Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v4, v6, v0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->animatorDisappear(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/listener/TransitionListener;F)V

    :cond_9
    invoke-static {p1}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->getViewState(Landroid/view/View;)Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;

    move-result-object p0

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->distanceToViewEnd:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer$ViewState;->cancelAnimator()V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result p1

    const-string p2, "disappearAnimator: id = "

    invoke-static {p0, p1, p2, v3, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHideByIsland(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->hideByIsland:Z

    return-void
.end method

.method public setIslandController(Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    return-void
.end method

.method public setParentAnimHelper(Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->parentAnimHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    return-void
.end method

.method public shouldAnimator()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->animatable:Lcom/android/systemui/statusbar/views/IAnimatable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/views/IAnimatable;->animatorEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->parentAnimHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->hideByIsland:Z

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

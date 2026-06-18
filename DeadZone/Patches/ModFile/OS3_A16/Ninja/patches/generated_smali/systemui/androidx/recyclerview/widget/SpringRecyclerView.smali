.class public abstract Landroidx/recyclerview/widget/SpringRecyclerView;
.super Landroidx/recyclerview/widget/RemixRecyclerView;


# static fields
.field public static final NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

.field public static final NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

.field public static final VIEW_FLINGER:Ljava/lang/reflect/Field;


# instance fields
.field public mHorizontalOverScrolling:Z

.field public final mInGlobalRomMode:Z

.field public mManagedScrollState:I

.field public mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

.field private mSpringHelper:Lmiuix/spring/view/SpringHelper;

.field public final mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

.field public final mSpringStateListeners:Ljava/util/List;

.field public mSpringX:F

.field public mSpringY:F

.field public mVerticalOverScrolling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mViewFlinger"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "mScrollingChildHelper"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f0407b6

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RemixRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringStateListeners:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringX:F

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringY:F

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$1;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    iput-boolean p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mInGlobalRomMode:Z

    new-instance p3, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    invoke-direct {p3, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    new-instance v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    invoke-direct {v0, p0, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    :try_start_0
    sget-object v1, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object p3, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    return-void

    :cond_0
    sget-object p1, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    return-object p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    iget-object v1, v0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$1;

    iget v1, v1, Lmiuix/spring/view/SpringHelper$1;->mDistance:F

    float-to-int v1, v1

    iget-object v0, v0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$1;

    iget v0, v0, Lmiuix/spring/view/SpringHelper$1;->mDistance:F

    float-to-int v0, v0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getDragFlingVelocityX()I
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mDragFlingVelocityX:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDragFlingVelocityY()I
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mDragFlingVelocityY:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSpringEnabled()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEventTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEvent:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public getSpringX()F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringX:F

    return p0
.end method

.method public getSpringY()F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringY:F

    return p0
.end method

.method public onScrollStateChanged(I)V
    .registers 7

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->stop()V

    :cond_3
    iput-boolean v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    :cond_4
    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    iget-object p1, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$1;

    iget v0, p1, Lmiuix/spring/view/SpringHelper$1;->mAllDistance:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    iget-object v4, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$1;

    if-nez v0, :cond_6

    iget v0, v4, Lmiuix/spring/view/SpringHelper$1;->mAllDistance:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    iput v3, v4, Lmiuix/spring/view/SpringHelper$1;->mDistance:F

    iput v3, v4, Lmiuix/spring/view/SpringHelper$1;->mAllDistance:F

    iput v3, p1, Lmiuix/spring/view/SpringHelper$1;->mDistance:F

    iput v3, p1, Lmiuix/spring/view/SpringHelper$1;->mAllDistance:F

    if-eqz v1, :cond_7

    iget p1, v4, Lmiuix/spring/view/SpringHelper$1;->mAllDistance:F

    invoke-virtual {p0, v3, p1}, Lmiuix/spring/view/SpringHelper;->onSpringDistanceChanged(FF)V

    :cond_7
    :goto_3
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOverScrollMode(I)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->setOverScrollMode(I)V

    return-void
.end method

.method public final setScrollState(I)V
    .registers 5

    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    iget-object v1, v0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$1;

    iget v1, v1, Lmiuix/spring/view/SpringHelper$1;->mDistance:F

    float-to-int v1, v1

    iget-object v0, v0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$1;

    iget v0, v0, Lmiuix/spring/view/SpringHelper$1;->mDistance:F

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->springBack(II)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method public setSpringEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mInGlobalRomMode:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    return-void
.end method

.method public final springAvailable()Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->getSpringEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final stopScroll()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->stop()V

    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    return-void
.end method

.class public Lmiuix/springback/view/SpringBackLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Lmiuix/core/view/NestedCurrentFling;


# instance fields
.field public consumeNestFlingCounter:I

.field public mActivePointerId:I

.field public mFakeScrollX:I

.field public mFakeScrollY:I

.field public final mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

.field public final mInGlobalRomMode:Z

.field public mInitialDownX:F

.field public mInitialDownY:F

.field public mInitialMotionX:F

.field public mInitialMotionY:F

.field public mIsBeingDragged:Z

.field public mNestedFlingInProgress:Z

.field public mNestedScrollAxes:I

.field public mNestedScrollInProgress:Z

.field public final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field public final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field public final mNestedScrollingV2ConsumedCompat:[I

.field public final mOnScrollChangeListeners:Ljava/util/List;

.field public mOriginScrollOrientation:I

.field public final mParentOffsetInWindow:[I

.field public final mParentScrollConsumed:[I

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mScrollByFling:Z

.field public mScrollOrientation:I

.field public mScrollState:I

.field public mSpringBackEnable:Z

.field public mSpringBackMode:I

.field public final mSpringScroller:Lmiuix/springback/view/SpringScroller;

.field public mTarget:Landroid/view/View;

.field public final mTargetId:I

.field public mTotalFlingUnconsumed:F

.field public mTotalScrollBottomUnconsumed:F

.field public mTotalScrollTopUnconsumed:F

.field public final mTouchSlop:I

.field public mVelocityX:F

.field public mVelocityY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    const/4 v2, 0x0

    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    new-instance v4, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    new-instance v4, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v4, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    sget-object v4, Lmiuix/springback/R$styleable;->SpringBackLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    const/4 v4, 0x3

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lmiuix/springback/view/SpringScroller;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p2, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    new-instance p2, Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput v1, p2, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    iput-object p0, p2, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p2, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->setNestedScrollingEnabled(Z)V

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Point;->x:I

    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInGlobalRomMode:Z

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    return-void

    :cond_0
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    return-void
.end method

.method public static consumeDelta([III)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    aput p1, p0, p2

    return-void

    :cond_0
    const/4 p2, 0x0

    aput p1, p0, p2

    return-void
.end method

.method private getFakeScrollX()I
    .registers 1

    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollX:I

    return p0
.end method

.method private getFakeScrollY()I
    .registers 1

    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollY:I

    return p0
.end method


# virtual methods
.method public final checkScrollStart(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, v0, p1, v2}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    add-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    :goto_0
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    return-void

    :cond_1
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, v0, p1, v2}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-gez v0, :cond_3

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    add-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    :goto_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    return-void

    :cond_4
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    return-void
.end method

.method public final computeScroll()V
    .registers 5

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-wide v1, v0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    double-to-int v1, v1

    iget-wide v2, v0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    double-to-int v0, v2

    invoke-virtual {p0, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-boolean v0, v0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollX()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollY()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const-string v0, "SpringBackLayout"

    const-string v2, "Scroll stop but state is not correct."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :cond_4
    return-void
.end method

.method public final dispatchNestedFling(FFZ)Z
    .registers 4

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreFling(FF)Z
    .registers 3

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move-object v1, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll([III[II)Z

    move-result p0

    return p0
.end method

.method public final dispatchScrollState(I)V
    .registers 3

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-boolean p0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    filled-new-array {v1, v1}, [I

    move-result-object v6

    iget-object v7, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    aget v7, v6, v1

    aget v6, v6, v3

    iget-object v8, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    iget-object v0, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    add-int/2addr v0, v7

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7, v6, v0, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v0, v4

    float-to-int v4, v5

    invoke-virtual {v9, v0, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v3, :cond_2

    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    if-eq p1, v2, :cond_2

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :cond_2
    return v0
.end method

.method public getSpringBackMode()I
    .registers 1

    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    return p0
.end method

.method public getSpringScrollX()I
    .registers 2

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->getFakeScrollX()I

    move-result p0

    return p0
.end method

.method public getSpringScrollY()I
    .registers 2

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->getFakeScrollY()I

    move-result p0

    return p0
.end method

.method public getTarget()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    return-object p0
.end method

.method public final isNestedScrollingEnabled()Z
    .registers 1

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    iget-boolean p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return p0
.end method

.method public final isTargetScrollOrientation(I)Z
    .registers 2

    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTargetScrollToBottom(I)Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of p1, p0, Landroid/widget/ListView;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final isTargetScrollToTop(I)Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of p1, p0, Landroid/widget/ListView;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final moveTarget(FI)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    neg-float p1, p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    return-void

    :cond_0
    neg-float p1, p1

    float-to-int p1, p1

    invoke-virtual {p0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    return-void
.end method

.method public final obtainMaxSpringBackDistance(I)F
    .registers 8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    :goto_0
    const/high16 p1, 0x3f800000

    invoke-static {p1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v4, v2

    add-double/2addr v4, v0

    double-to-float p1, v4

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public final obtainSpringBackDistance(FI)F
    .registers 7

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p2, 0x3f800000

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 v0, 0x4008000000000000L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v2, v0

    add-double/2addr v2, p1

    double-to-float p1, v2

    mul-float/2addr p1, p0

    return p1
.end method

.method public final obtainTouchDistance(FFI)F
    .registers 8

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    int-to-double p2, p0

    const-wide v0, 0x3fe5555555555555L

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-float p0, p0

    const/high16 v2, 0x40400000

    mul-float/2addr p1, v2

    sub-float/2addr p0, p1

    float-to-double p0, p0

    const-wide v2, 0x3fd5555555555555L

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p0, v0

    sub-double/2addr p2, p0

    double-to-float p0, p2

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    return-void
.end method

.method public final onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_c

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz v0, :cond_1

    goto :goto_c

    :cond_1
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_c

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-boolean v3, v2, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iput-boolean v4, v2, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    iput v1, v2, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    :cond_3
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_42

    :goto_0
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/lit8 v2, v0, 0x4

    const/4 v5, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x3

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_a

    if-eq v2, v3, :cond_5

    if-eq v2, v7, :cond_a

    goto :goto_2

    :cond_5
    iget v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    if-ne v2, v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v9, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    sub-float/2addr v8, v9

    iget v9, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    sub-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v10

    if-lez v9, :cond_d

    :cond_8
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v2, v2, v8

    if-lez v2, :cond_9

    move v2, v4

    goto :goto_1

    :cond_9
    move v2, v3

    :goto_1
    iput v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    goto :goto_2

    :cond_a
    iput v1, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    iget-object v0, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    iput v1, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    :cond_d
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_13

    if-eq v0, v4, :cond_10

    if-eq v0, v3, :cond_f

    if-eq v0, v7, :cond_10

    if-eq v0, v5, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_f
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iget v0, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    if-eqz v0, :cond_17

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_11
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_12

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    goto :goto_4

    :cond_12
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iget v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iget v2, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iget v0, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_14

    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    goto :goto_3

    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_15

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    goto :goto_3

    :cond_15
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    :goto_3
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_16

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    goto :goto_4

    :cond_16
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_17
    :goto_4
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_18

    goto :goto_c

    :cond_18
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_5

    :cond_1b
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    :cond_1c
    :goto_5
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    const-string v8, "Got ACTION_MOVE event but don\'t have an active pointer id."

    const-string v9, "SpringBackLayout"

    if-eqz v0, :cond_2f

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_c

    :cond_1d
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1e

    goto :goto_6

    :cond_1e
    return v1

    :cond_1f
    :goto_6
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_20

    goto :goto_7

    :cond_20
    return v1

    :cond_21
    :goto_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2b

    if-eq v0, v4, :cond_2a

    if-eq v0, v3, :cond_23

    if-eq v0, v7, :cond_2a

    if-eq v0, v5, :cond_22

    goto :goto_8

    :cond_22
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_8

    :cond_23
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    if-ne v0, v6, :cond_24

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_25

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_25
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-eqz v0, :cond_26

    move v1, v4

    :cond_26
    if-nez v1, :cond_27

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_27
    if-eqz v1, :cond_29

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_29

    :cond_28
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float v0, p1, v0

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2e

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_2e

    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_8

    :cond_29
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v0, p1

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2e

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_2e

    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_8

    :cond_2a
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    iput v6, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_8

    :cond_2b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_2c

    goto :goto_c

    :cond_2c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_2d

    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_8

    :cond_2d
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    :cond_2e
    :goto_8
    iget-boolean p0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    return p0

    :cond_2f
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_c

    :cond_30
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-eqz v0, :cond_32

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_31

    goto :goto_9

    :cond_31
    return v1

    :cond_32
    :goto_9
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_33

    goto :goto_a

    :cond_33
    return v1

    :cond_34
    :goto_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3e

    if-eq v0, v4, :cond_3d

    if-eq v0, v3, :cond_36

    if-eq v0, v7, :cond_3d

    if-eq v0, v5, :cond_35

    goto :goto_b

    :cond_35
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_b

    :cond_36
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    if-ne v0, v6, :cond_37

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_37
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_38

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_38
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-eqz v0, :cond_39

    move v1, v4

    :cond_39
    if-nez v1, :cond_3a

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_3a
    if-eqz v1, :cond_3c

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3c

    :cond_3b
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float v0, p1, v0

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_41

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_41

    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_b

    :cond_3c
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v0, p1

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_41

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_41

    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_b

    :cond_3d
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    iput v6, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_b

    :cond_3e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_3f

    goto :goto_c

    :cond_3f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_40

    iput-boolean v4, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_b

    :cond_40
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    :cond_41
    :goto_b
    iget-boolean p0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    return p0

    :cond_42
    :goto_c
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .registers 7

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid target Id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    const/high16 v2, 0x40000000

    if-nez v0, :cond_4

    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-nez v1, :cond_6

    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, v0

    goto :goto_2

    :cond_6
    if-ne v1, v2, :cond_7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_2

    :cond_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fail to get target"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 13

    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p4, p3, p5}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll([III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4, p2, p5}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll([III)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    const/4 p1, 0x0

    aget v0, p4, p1

    sub-int v3, p2, v0

    const/4 p2, 0x1

    aget v0, p4, p2

    sub-int v4, p3, v0

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v5, 0x0

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll([III[II)Z

    move-result p0

    if-eqz p0, :cond_2

    aget p0, p4, p1

    aget p3, v2, p1

    add-int/2addr p0, p3

    aput p0, p4, p1

    aget p0, p4, p2

    aget p1, v2, p2

    add-int/2addr p0, p1

    aput p0, p4, p2

    :cond_2
    return-void
.end method

.method public final onNestedPreScroll([III)V
    .registers 11

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x0

    if-nez p3, :cond_6

    if-lez p2, :cond_4

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v0, p3, v5

    if-lez v0, :cond_4

    int-to-float v0, p2

    cmpl-float v1, v0, p3

    if-lez v1, :cond_3

    float-to-int p2, p3

    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_3

    :cond_3
    sub-float/2addr p3, v0

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    :goto_3
    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return-void

    :cond_4
    if-gez p2, :cond_13

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v0, p3

    cmpg-float v1, v0, v5

    if-gez v1, :cond_13

    int-to-float v1, p2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    float-to-int p2, p3

    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_4

    :cond_5
    add-float/2addr p3, v1

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    :goto_4
    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return-void

    :cond_6
    if-ne v4, v3, :cond_7

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    goto :goto_5

    :cond_7
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    :goto_5
    if-lez p2, :cond_c

    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_c

    const/high16 v6, 0x44fa0000

    cmpl-float v6, p3, v6

    if-lez v6, :cond_9

    invoke-virtual {p0, v3, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p3

    int-to-float v0, p2

    cmpl-float v1, v0, p3

    if-lez v1, :cond_8

    float-to-int p2, p3

    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_6

    :cond_8
    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    sub-float v5, p3, v0

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-virtual {p0, v5, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    :goto_6
    invoke-virtual {p0, v5, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    return-void

    :cond_9
    iget-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v3, :cond_a

    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    invoke-virtual {p0, p3, v1, v4}, Lmiuix/springback/view/SpringBackLayout;->springBack(FZI)V

    :cond_a
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-wide v1, p3, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    double-to-int v1, v1

    iget-wide v2, p3, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    double-to-int p3, v2

    invoke-virtual {p0, v1, p3}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    int-to-float p3, v0

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p3, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p3

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_7

    :cond_b
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    :goto_7
    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    return-void

    :cond_c
    if-gez p2, :cond_11

    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v6, v3

    cmpg-float v6, v6, v5

    if-gez v6, :cond_11

    const/high16 v6, -0x3b060000

    cmpg-float v6, p3, v6

    if-gez v6, :cond_e

    invoke-virtual {p0, v3, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p3

    int-to-float v0, p2

    neg-float v1, p3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_d

    float-to-int p2, p3

    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_8

    :cond_d
    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    add-float v5, p3, v0

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-virtual {p0, v5, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    :goto_8
    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    neg-float p1, v5

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return-void

    :cond_e
    iget-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v3, :cond_f

    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    invoke-virtual {p0, p3, v1, v4}, Lmiuix/springback/view/SpringBackLayout;->springBack(FZI)V

    :cond_f
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-wide v1, p3, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    double-to-int v1, v1

    iget-wide v2, p3, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    double-to-int p3, v2

    invoke-virtual {p0, v1, p3}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    int-to-float p3, v0

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p3, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p3

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_9

    :cond_10
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    :goto_9
    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    return-void

    :cond_11
    if-eqz p2, :cond_13

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float p3, p3, v5

    if-eqz p3, :cond_12

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float p3, p3, v5

    if-nez p3, :cond_13

    :cond_12
    iget-boolean p3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz p3, :cond_13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p0

    if-nez p0, :cond_13

    invoke-static {p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta([III)V

    :cond_13
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .registers 14

    const/4 v6, 0x0

    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .registers 15

    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 22

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move/from16 v4, p3

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    if-eqz v0, :cond_2

    aget v5, p7, v2

    goto :goto_2

    :cond_2
    aget v5, p7, v1

    :goto_2
    iget-object v11, p0, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    iget-object v6, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v6 .. v13}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    iget-boolean v6, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v6, :cond_3

    goto :goto_b

    :cond_3
    if-eqz v0, :cond_4

    aget v6, p7, v2

    :goto_3
    sub-int/2addr v6, v5

    goto :goto_4

    :cond_4
    aget v6, p7, v1

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_5

    sub-int v5, p5, v6

    goto :goto_5

    :cond_5
    sub-int v5, p4, v6

    :goto_5
    if-eqz v5, :cond_6

    move v1, v5

    :cond_6
    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    const/4 v6, 0x4

    const/4 v7, 0x0

    if-gez v1, :cond_e

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v8

    if-eqz v8, :cond_e

    iget v8, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/2addr v8, v2

    if-eqz v8, :cond_e

    if-eqz p6, :cond_d

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v8

    iget v9, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v9, v9, v7

    if-nez v9, :cond_b

    iget v9, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v9, v9, v7

    if-eqz v9, :cond_8

    goto :goto_8

    :cond_8
    iget v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_9

    goto :goto_b

    :cond_9
    iget v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v8, v4

    iget v4, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v4, v6, :cond_15

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v8, v4

    if-gtz v4, :cond_a

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v1, v8

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    aget v1, p7, v2

    int-to-float v1, v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, p7, v2

    goto :goto_7

    :cond_a
    iget v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    aget v1, p7, v2

    add-int/2addr v1, v5

    aput v1, p7, v2

    :goto_7
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-virtual {p0, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v1

    invoke-virtual {p0, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v0, v2

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    return-void

    :cond_b
    :goto_8
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v4, :cond_c

    neg-int v0, v1

    int-to-float v0, v0

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_c

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iput v1, v0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    :cond_c
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    return-void

    :cond_d
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-boolean v3, v3, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    if-eqz v3, :cond_15

    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-virtual {p0, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v1

    invoke-virtual {p0, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    aget p0, p7, v2

    add-int/2addr p0, v5

    aput p0, p7, v2

    return-void

    :cond_e
    if-lez v1, :cond_15

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v8

    if-eqz v8, :cond_15

    iget v8, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_15

    if-eqz p6, :cond_14

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v8

    iget v9, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v9, v9, v7

    if-nez v9, :cond_12

    iget v9, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v9, v9, v7

    if-eqz v9, :cond_f

    goto :goto_a

    :cond_f
    iget v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_10

    goto :goto_b

    :cond_10
    iget v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v8, v4

    iget v4, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v4, v6, :cond_15

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v8, v4

    if-gtz v4, :cond_11

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v1, v8

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    aget v1, p7, v2

    int-to-float v1, v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, p7, v2

    goto :goto_9

    :cond_11
    iget v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    aget v1, p7, v2

    add-int/2addr v1, v5

    aput v1, p7, v2

    :goto_9
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-virtual {p0, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v0, v2

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    return-void

    :cond_12
    :goto_a
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v4, :cond_13

    int-to-float v0, v1

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_13

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iput v1, v0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    :cond_13
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    return-void

    :cond_14
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-boolean v3, v3, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    if-eqz v3, :cond_15

    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-virtual {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-virtual {p0, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    aget p0, p7, v2

    add-int/2addr p0, v5

    aput p0, p7, v2

    :cond_15
    :goto_b
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    iput p3, p1, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    and-int/lit8 p1, p3, 0x2

    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 10

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    goto :goto_2

    :goto_3
    const/4 v4, 0x0

    if-eqz p4, :cond_4

    cmpl-float p4, v0, v4

    if-nez p4, :cond_3

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    goto :goto_4

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    :goto_4
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto :goto_6

    :cond_4
    cmpl-float p4, v0, v4

    if-nez p4, :cond_5

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_5

    :cond_5
    cmpg-float p4, v0, v4

    if-gez p4, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_5

    :cond_6
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v3}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    :goto_5
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    :goto_6
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    iget-object p4, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iput-boolean v1, p4, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    iput v2, p4, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public final onOverScrollEvent(IILandroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    const-string v2, "SpringBackLayout"

    if-eq p1, v0, :cond_b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_b

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    return v0

    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_2

    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p2, v3, :cond_4

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    if-gez p2, :cond_3

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    if-gez p2, :cond_5

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v0

    :cond_6
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_7

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_a

    if-ne p2, v3, :cond_8

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_1
    mul-float/2addr p1, p3

    goto :goto_2

    :cond_8
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_1

    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/4 v2, 0x0

    cmpl-float p3, p3, v2

    if-lez p3, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v0

    :cond_9
    invoke-virtual {p0, v2, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v1

    :cond_a
    :goto_3
    return v0

    :cond_b
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_c

    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_d

    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_d
    const/4 p1, -0x1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_e
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    return v0
.end method

.method public final onScrollChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Builder$$ExternalSyntheticOutline0;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final onScrollDownEvent(IILandroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    const-string v2, "SpringBackLayout"

    if-eq p1, v0, :cond_b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_b

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    return v0

    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_2

    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p2, v3, :cond_4

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    if-gez p2, :cond_3

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    if-gez p2, :cond_5

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v0

    :cond_6
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_7

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_a

    if-ne p2, v3, :cond_8

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_1
    mul-float/2addr p1, p3

    goto :goto_2

    :cond_8
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_1

    :goto_2
    const/4 p3, 0x0

    cmpl-float v2, p1, p3

    if-lez v2, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v0

    :cond_9
    invoke-virtual {p0, p3, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v1

    :cond_a
    :goto_3
    return v0

    :cond_b
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_c

    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_d

    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_d
    const/4 p1, -0x1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_e
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    return v0
.end method

.method public final onScrollEvent(IILandroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    const-string v2, "SpringBackLayout"

    if-eq p1, v0, :cond_b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    return v0

    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_2

    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p2, v3, :cond_4

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    if-gez p2, :cond_3

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    if-gez p2, :cond_5

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v0

    :cond_6
    return v1

    :cond_7
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_8

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_a

    if-ne p2, v3, :cond_9

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_1
    mul-float/2addr p1, p3

    goto :goto_2

    :cond_9
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    :cond_a
    :goto_3
    return v0

    :cond_b
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_c

    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_d

    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_d
    const/4 p1, -0x1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_e
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    return v0
.end method

.method public final onScrollUpEvent(IILandroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    const-string v2, "SpringBackLayout"

    if-eq p1, v0, :cond_b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_b

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    return v0

    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_2

    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p2, v3, :cond_4

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    if-gez p2, :cond_3

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_0

    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    if-gez p2, :cond_5

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v0

    :cond_6
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_7

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_a

    if-ne p2, v3, :cond_8

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v2, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_1
    mul-float/2addr p1, p3

    goto :goto_2

    :cond_8
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v2, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_1

    :goto_2
    const/4 p3, 0x0

    cmpl-float v2, p1, p3

    if-lez v2, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent()V

    neg-float p1, p1

    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v0

    :cond_9
    invoke-virtual {p0, p3, p2}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v1

    :cond_a
    :goto_3
    return v0

    :cond_b
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_c

    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_d

    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_d
    const/4 p1, -0x1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    :cond_e
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    return v0
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 8

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    goto :goto_2

    :goto_3
    if-eqz p4, :cond_5

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_5

    :goto_4
    return p2

    :cond_5
    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    return p1
.end method

.method public final onStopNestedScroll(ILandroid/view/View;)V
    .registers 5

    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iput v0, p2, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesNonTouch:I

    goto :goto_0

    :cond_0
    iput v0, p2, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    :goto_0
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p2, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-eqz p1, :cond_3

    move v1, p2

    :cond_3
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz p2, :cond_6

    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    :goto_2
    int-to-float p1, p1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    goto :goto_2

    :goto_3
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    const/4 v0, 0x0

    if-nez p2, :cond_5

    cmpl-float p2, p1, v0

    if-eqz p2, :cond_5

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    return-void

    :cond_5
    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->stopNestedFlingScroll(I)V

    return-void

    :cond_6
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->stopNestedFlingScroll(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-boolean v3, v1, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iput-boolean v4, v1, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    iput v2, v1, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/GridView;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->onOverScrollEvent(IILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(IILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(IILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0, v1, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(IILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/GridView;

    if-eqz v1, :cond_7

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0, v4, p1}, Lmiuix/springback/view/SpringBackLayout;->onOverScrollEvent(IILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v0, v4, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(IILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_8
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0, v4, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(IILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p0, v0, v4, p1}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(IILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_a
    :goto_0
    return v2
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestDisallowParentInterceptTouchEvent()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    if-eqz p0, :cond_1

    instance-of v1, p0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    invoke-super {v1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final scrollTo(II)V
    .registers 5

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void

    :cond_0
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollX:I

    if-ne v0, p1, :cond_2

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollY:I

    if-eq v1, p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollY:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollX:I

    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 2

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$OnSpringListener;)V
    .registers 2

    return-void
.end method

.method public setScrollOrientation(I)V
    .registers 2

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setSpringBackEnable(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInGlobalRomMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    return-void
.end method

.method public setSpringBackEnableOnTriggerAttached(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    return-void
.end method

.method public setSpringBackMode(I)V
    .registers 2

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v0, p1, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_1
    return-void
.end method

.method public final springBack(FZI)V
    .registers 14

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    const/4 v1, 0x0

    iput v1, v0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    int-to-float v4, v0

    int-to-float v5, v2

    iput-boolean v1, v3, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    iput-boolean v1, v3, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    float-to-double v6, v4

    iput-wide v6, v3, Lmiuix/springback/view/SpringScroller;->mStartX:D

    iput-wide v6, v3, Lmiuix/springback/view/SpringScroller;->mOriginStartX:D

    const/4 v4, 0x0

    float-to-double v6, v4

    iput-wide v6, v3, Lmiuix/springback/view/SpringScroller;->mEndX:D

    float-to-double v8, v5

    iput-wide v8, v3, Lmiuix/springback/view/SpringScroller;->mStartY:D

    iput-wide v8, v3, Lmiuix/springback/view/SpringScroller;->mOriginStartY:D

    double-to-int v5, v8

    int-to-double v8, v5

    iput-wide v8, v3, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    iput-wide v6, v3, Lmiuix/springback/view/SpringScroller;->mEndY:D

    float-to-double v5, p1

    iput-wide v5, v3, Lmiuix/springback/view/SpringScroller;->mOriginVelocity:D

    iput-wide v5, v3, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x40b3880000000000L

    cmpg-double v5, v5, v7

    if-lez v5, :cond_0

    new-instance v5, Lmiuix/springback/view/SpringOperator;

    const v6, 0x3f0ccccd

    invoke-direct {v5, v6}, Lmiuix/springback/view/SpringOperator;-><init>(F)V

    iput-object v5, v3, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    goto :goto_0

    :cond_0
    new-instance v5, Lmiuix/springback/view/SpringOperator;

    const v6, 0x3ecccccd

    invoke-direct {v5, v6}, Lmiuix/springback/view/SpringOperator;-><init>(F)V

    iput-object v5, v3, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    :goto_0
    iput p3, v3, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    invoke-static {}, Lmiuix/view/animation/AnimationUtils;->currentAnimationTimeNanos()J

    move-result-wide v5

    iput-wide v5, v3, Lmiuix/springback/view/SpringScroller;->mStartTimeNanos:J

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    cmpl-float p1, p1, v4

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :goto_1
    if-eqz p2, :cond_2

    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final springBack(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FZI)V

    return-void
.end method

.method public final startNestedScroll(I)Z
    .registers 3

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method public final stopNestedFlingScroll(I)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    iget-boolean v1, v1, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FZI)V

    :cond_1
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    return-void
.end method

.method public final stopNestedScroll()V
    .registers 2

    iget-object p0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

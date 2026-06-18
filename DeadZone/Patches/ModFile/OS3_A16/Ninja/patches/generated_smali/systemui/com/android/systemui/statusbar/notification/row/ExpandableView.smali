.class public abstract Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.super Lcom/miui/systemui/notification/row/ExpandableViewBase;

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/Roundable;


# static fields
.field public static final HEIGHT_PROPERTY:Lcom/android/systemui/statusbar/notification/PhysicsProperty;

.field public static final mClipRect:Landroid/graphics/Rect;


# instance fields
.field public mActualHeight:I

.field public mChangingPosition:Z

.field public mClipBottomAmount:I

.field public mClipRightAmount:I

.field public mClipToActualHeight:Z

.field public mClipTopAmount:I

.field public mContentShift:I

.field public mContentTransformationAmount:F

.field public mContentTranslation:F

.field public mExtraWidthForClipping:F

.field public mInRemovalAnimation:Z

.field public mInShelf:Z

.field public mInjector:Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

.field public mIsLastChild:Z

.field public mLastInSection:Z

.field public mMagneticAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mMagneticRowListener:Lcom/android/systemui/statusbar/notification/stack/MagneticRowListener;

.field public final mMatchParentViews:Ljava/util/ArrayList;

.field public mMinimumHeightForClipping:I

.field public mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

.field public mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

.field public mTouchSlop:I

.field public mTransformingInShelf:Z

.field public mTransientContainer:Landroid/view/ViewGroup;

.field public final mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

.field public mWillBeGone:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/PhysicsProperty;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView$1;

    const-string v2, "ActualHeight"

    invoke-direct {v1, v2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0b055b

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/PhysicsProperty;-><init>(ILandroid/util/Property;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/systemui/notification/row/ExpandableViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-direct {p1, p0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMagneticAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMagneticRowListener:Lcom/android/systemui/statusbar/notification/stack/MagneticRowListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0717ef

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentShift:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public animNotifPanel()V
    .registers 7

    const/4 v5, 0x2

    const/4 v0, 0x0

    check-cast v0, Landroid/animation/ObjectAnimator;

    const-string v1, "anim_expand_style"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "anim_expand_duration"

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "anim_expand_interpolator"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v3

    packed-switch v1, :pswitch_data_0

    :goto_0
    packed-switch v3, :pswitch_data_1

    :goto_1
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :pswitch_0  #0x0
    const-string v0, "rotationX"

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :pswitch_1  #0x1
    const-string v0, "rotationY"

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :pswitch_2  #0x2
    const-string v0, "rotation"

    new-array v1, v5, [F

    fill-array-data v1, :array_2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :pswitch_3  #0x3
    const-string v0, "rotation"

    new-array v1, v5, [F

    fill-array-data v1, :array_3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :pswitch_4  #0x4
    const-string v0, "scaleX"

    new-array v1, v5, [F

    fill-array-data v1, :array_4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :pswitch_5  #0x5
    const-string v0, "scaleY"

    new-array v1, v5, [F

    fill-array-data v1, :array_5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :pswitch_6  #0x6
    const-string v0, "alpha"

    new-array v1, v5, [F

    fill-array-data v1, :array_6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :pswitch_7  #0x7
    const-string v0, "rotationX"

    new-array v1, v5, [F

    fill-array-data v1, :array_7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :pswitch_8  #0x0
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :pswitch_9  #0x1
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :pswitch_a  #0x2
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :pswitch_b  #0x3
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :pswitch_c  #0x4
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :pswitch_d  #0x5
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0  #00000000
        :pswitch_1  #00000001
        :pswitch_2  #00000002
        :pswitch_3  #00000003
        :pswitch_4  #00000004
        :pswitch_5  #00000005
        :pswitch_6  #00000006
        :pswitch_7  #00000007
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8  #00000000
        :pswitch_9  #00000001
        :pswitch_a  #00000002
        :pswitch_b  #00000003
        :pswitch_c  #00000004
        :pswitch_d  #00000005
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x43b40000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b40000
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43b40000
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x3c4c0000
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x3c4c0000
    .end array-data
.end method

.method public applyContentTransformation(FF)V
    .registers 3

    return-void
.end method

.method public areChildrenExpanded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public canExpandableViewBeDismissed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public cancelTranslationAnimations()V
    .registers 1

    return-void
.end method

.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .registers 1

    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    return-object p0
.end method

.method public createInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;
    .registers 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableAnim()Z
    .registers 4

    const/4 v0, 0x1

    const v1, 0x0

    const-string v2, "anim_expand_enable"

    invoke-static {v2, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public getActualHeight()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    return p0
.end method

.method public bridge synthetic getBottomCornerRadius()F
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    move-result p0

    return p0
.end method

.method public getBottomRoundness()F
    .registers 1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundness:F

    return p0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p2

    const/4 p2, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    add-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public getClipBottomAmount()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    return p0
.end method

.method public getClipHeight()I
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getClipTopAmount()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    return p0
.end method

.method public getCollapsedHeight()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentTransformationShift()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentShift:I

    int-to-float p0, p0

    return p0
.end method

.method public getContentTranslation()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTranslation:F

    return p0
.end method

.method public final getDrawingRect(Landroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getTranslationX()F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getTranslationX()F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    add-float/2addr v1, v0

    float-to-int p0, v1

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public getHeaderVisibleAmount()F
    .registers 1

    const/high16 p0, 0x3f800000

    return p0
.end method

.method public getHeadsUpHeightWithoutHeader()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getHeightWithoutLockscreenConstraints()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInjector:Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->createInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInjector:Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInjector:Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMagneticRowListener()Lcom/android/systemui/statusbar/notification/stack/MagneticRowListener;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMagneticRowListener:Lcom/android/systemui/statusbar/notification/stack/MagneticRowListener;

    return-object p0
.end method

.method public getMaxContentHeight()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMaxRadius()F
    .registers 1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    return p0
.end method

.method public getMinHeight()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result p0

    return p0
.end method

.method public getOutlineAlpha()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getOutlineTranslation()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPinnedHeadsUpHeight()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getPinnedStatus()Lcom/android/systemui/statusbar/notification/headsup/PinnedStatus;
    .registers 1

    sget-object p0, Lcom/android/systemui/statusbar/notification/headsup/PinnedStatus;->NotPinned:Lcom/android/systemui/statusbar/notification/headsup/PinnedStatus;

    return-object p0
.end method

.method public final getRelativeTopPadding(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-ne p1, p0, :cond_0

    :cond_1
    return v0
.end method

.method public getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/RoundableState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/systemui/statusbar/notification/RoundableState;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/notification/Roundable;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    return-object p0
.end method

.method public getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getTopCornerRadius()F
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    move-result p0

    return p0
.end method

.method public getTopRoundness()F
    .registers 1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundness:F

    return p0
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTranslation()F
    .registers 1

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getUpdatedRadii()[F
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getUpdatedRadii()[F

    move-result-object p0

    return-object p0
.end method

.method public getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    return-object p0
.end method

.method public hasExpandingChild()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isAboveShelf()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isChildInGroup()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isContentExpandable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isExpandAnimationRunning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isGroupExpanded$1()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isGroupExpansionChanging()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isHeadsUpAnimatingAway$1()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isHeadsUpState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isPinned()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isRemoved()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSummaryWithChildren()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isTransparent()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public markHeadsUpSeen()V
    .registers 1

    return-void
.end method

.method public mustStayOnScreen()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needsClippingToShelf()Z
    .registers 1

    instance-of p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyHeightChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;->cachedIntrinsicHeight:I

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;->onAttachedToWindow()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0717ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentShift:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTouchSlop:I

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping$1()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 16

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const v1, 0x7fffffff

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/high16 v8, 0x40000000

    if-ge v6, v4, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    if-ltz v11, :cond_2

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v2, v10}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v9, v10, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-ne p2, v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v5, v3, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v2, v6}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v6

    invoke-virtual {v4, v6, p2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public performAddAnimation(JJ)V
    .registers 11

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;->performAddAnimation(JJZ)V

    return-void
.end method

.method public abstract performAddAnimation(JJZLjava/lang/Runnable;)V
.end method

.method public abstract performRemoveAnimation(JFZZLjava/lang/Runnable;Ljava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;)J
.end method

.method public pointInView(FFF)Z
    .registers 8

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v2, v2

    neg-float v3, p3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    sub-float/2addr v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    iget p0, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p0, p3

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    add-float/2addr v2, p3

    cmpg-float p0, p2, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public removeFromTransientContainer()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expandable view "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has transient container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but different parent "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExpandableView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final removeFromTransientContainerForAdditionTo(Landroid/view/ViewGroup;)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Removing view "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from transient container "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in preparation for moving to parent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExpandableView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expandable view "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has transient container "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but different parent "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t add view "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to container "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; current parent "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a transient container"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    return-void
.end method

.method public final resetViewState$1()V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getTranslationX()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getScaleX()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->getScaleY()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mInjector:Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mInjector:Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;->getAnimatingTouch()Z

    move-result v5

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;->view:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleY(F)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_3

    xor-int/lit8 v1, v5, 0x1

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;->resetViewFolmeState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_3
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState$1()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setActualHeight(IZ)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "loopanim"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setAnimationPanel()V

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping$1()V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_1
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .registers 2

    return-void
.end method

.method public setAnimationPanel()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->enableAnim()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->animNotifPanel()V

    goto :goto_0
.end method

.method public setChangingPosition(Z)V
    .registers 5

    const-string v0, "loopanim"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setAnimationPanel()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    goto :goto_0

    :goto_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping$1()V

    return-void
.end method

.method public setClipToActualHeight(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping$1()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping$1()V

    return-void
.end method

.method public setContentTransformationAmount(FZ)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mIsLastChild:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTransformationAmount:F

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    or-int/2addr v0, v1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mIsLastChild:Z

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTransformationAmount:F

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateContentTransformation()V

    :cond_2
    return-void
.end method

.method public setExtraWidthForClipping(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .registers 5

    return-void
.end method

.method public setFinalActualHeight(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    return-void
.end method

.method public setFirstInSection(Z)V
    .registers 2

    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .registers 7

    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .registers 2

    return-void
.end method

.method public setInRemovalAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInRemovalAnimation:Z

    return-void
.end method

.method public setInShelf(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    return-void
.end method

.method public setLastInSection(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mLastInSection:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 6

    const-string v0, "loopanim"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setAnimationPanel()V

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public setMinimumHeightForClipping(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping$1()V

    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    return-void
.end method

.method public setTransformingInShelf(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    return-void
.end method

.method public setTransientContainer(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setTranslation(F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/systemui/notification/row/ExpandableViewBase;->setTranslationX(F)V

    return-void
.end method

.method public setWillBeGone(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    return-void
.end method

.method public shouldClipToActualHeight()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public showingPulsing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final updateClipping()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->shouldClipToActualHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRightAmount:I

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public updateClipping$1()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->shouldClipToActualHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateContentTransformation()V
    .registers 5

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTransformationAmount:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTransformationShift()F

    move-result v1

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTransformationAmount:F

    const/high16 v2, 0x3f800000

    sub-float v0, v2, v0

    const/high16 v3, 0x3f000000

    div-float/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v2, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mIsLastChild:Z

    if-eqz v2, :cond_0

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentTranslation:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->applyContentTransformation(FF)V

    return-void
.end method

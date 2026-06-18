.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Landroid/view/ViewGroup;


# static fields
.field public static ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

.field public static DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

.field public static ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

.field public static UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

.field public static UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

.field public static sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;


# instance fields
.field public mAbsolutePosition:[I

.field public mActualLayoutWidth:I

.field public mActualPaddingEnd:F

.field public mActualPaddingStart:F

.field public mAddAnimationStartIndex:I

.field public mAnimationsEnabled:Z

.field public mCannedAnimationStartIndex:I

.field public mChangingViewPositions:Z

.field public mDotPadding:I

.field public mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field public mIconSize:I

.field public mIconStates:Ljava/util/HashMap;

.field public mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

.field public mIsShowingOverflowDot:Z

.field public mIsStaticLayout:Z

.field public mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field public mMaxIcons:I

.field public mMaxStaticIcons:I

.field public mOverrideIconColor:Z

.field public mReplacingIcons:Landroidx/collection/ArrayMap;

.field public mSpeedBumpIndex:I

.field public mStaticDotDiameter:I

.field public mThemedTextColorPrimary:I

.field public mThemedTextColorPrimaryInverse:I

.field public mUseIncreasedIconScale:Z

.field public mUseInverseOverrideIconColor:Z

.field public mVisualOverflowStart:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>()V

    const-wide/16 v1, 0xc8

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;-><init>()V

    const-wide/16 v3, 0x64

    iput-wide v3, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;-><init>()V

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    const-wide/16 v1, 0x32

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;-><init>()V

    const-wide/16 v1, 0x6e

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;-><init>()V

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIcons:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initResources()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public applyIconStates()V
    .registers 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return-void
.end method

.method public areAnimationsEnabled(Lcom/android/systemui/statusbar/StatusBarIconView;)Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIcons:I

    if-lez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-nez p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public calculateIconXTranslations()V
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLeftBound()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIcons:I

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getRightBound()F

    move-result v4

    const/4 v7, 0x0

    iput v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    const/4 v7, -0x1

    move v8, v1

    move v9, v5

    move v10, v7

    move v11, v10

    :goto_2
    if-ge v9, v2, :cond_11

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v15, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/high16 v16, 0x3f800000

    cmpl-float v15, v15, v16

    iget-object v12, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;

    if-nez v15, :cond_3

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->setXTranslation(F)V

    if-eqz v12, :cond_3

    iput v1, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->layoutTranslationX:F

    :cond_3
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v15, :cond_4

    iput-object v14, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    :cond_4
    iget-boolean v15, v14, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v15, :cond_5

    const/4 v15, 0x2

    goto :goto_3

    :cond_5
    move v15, v5

    :goto_3
    iput v15, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v12, :cond_6

    const/16 v6, 0x14

    iput v6, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->inIslandState:I

    :cond_6
    if-eqz v12, :cond_7

    iget-boolean v6, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->islandWidthChanged:Z

    iput-boolean v6, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->islandChanged:Z

    :cond_7
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    iget v12, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-virtual {v0, v9, v6, v12, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->shouldForceOverflow(IIFI)Z

    move-result v6

    if-nez v6, :cond_9

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_8

    goto :goto_4

    :cond_8
    move v6, v5

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-ne v11, v7, :cond_a

    if-eqz v6, :cond_a

    iput v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    move v11, v9

    :cond_a
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mUseIncreasedIconScale:Z

    if-eqz v6, :cond_b

    instance-of v6, v13, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v6, :cond_b

    move-object v6, v13

    check-cast v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleIncreased()F

    move-result v16

    :cond_b
    move/from16 v6, v16

    iget v12, v14, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-static {v12, v13, v6, v1}, Landroidx/compose/material3/internal/colorUtil/Cam$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v6

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;

    if-eqz v12, :cond_c

    iget v13, v12, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    goto :goto_6

    :cond_c
    move v13, v7

    :goto_6
    if-ltz v13, :cond_e

    if-eqz v12, :cond_d

    iget v12, v12, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    goto :goto_7

    :cond_d
    move v12, v7

    :goto_7
    int-to-float v12, v12

    cmpl-float v12, v6, v12

    if-lez v12, :cond_e

    sget-boolean v12, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v12, :cond_e

    const/4 v12, 0x1

    goto :goto_8

    :cond_e
    move v12, v5

    :goto_8
    if-eqz v12, :cond_f

    if-ne v10, v7, :cond_f

    move v10, v9

    :cond_f
    if-nez v12, :cond_10

    move v8, v1

    :cond_10
    add-int/lit8 v9, v9, 0x1

    move v1, v6

    goto :goto_2

    :cond_11
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v10, v7, :cond_13

    if-ne v11, v7, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_a

    :cond_13
    :goto_9
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_a
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    if-eq v1, v7, :cond_20

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    :goto_b
    if-ge v1, v2, :cond_21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v6, :cond_14

    goto :goto_11

    :cond_14
    iget-object v9, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;

    if-lt v1, v11, :cond_19

    if-eq v11, v7, :cond_19

    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40200000

    mul-float/2addr v12, v13

    float-to-int v12, v12

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->setXTranslation(F)V

    if-eqz v9, :cond_15

    iput v3, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->layoutTranslationX:F

    :cond_15
    if-eqz v11, :cond_18

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    if-nez v13, :cond_18

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    if-eqz v14, :cond_16

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_17

    const/4 v13, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_17
    move v13, v5

    :goto_c
    if-nez v13, :cond_18

    const/4 v13, 0x1

    iput v13, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    int-to-float v12, v12

    iget v13, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    mul-float/2addr v12, v13

    add-float/2addr v3, v12

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    goto :goto_d

    :cond_18
    const/4 v12, 0x2

    iput v12, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    :cond_19
    :goto_d
    if-lt v1, v10, :cond_1f

    if-eq v10, v7, :cond_1f

    if-eqz v9, :cond_1f

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->layoutTranslationX:F

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v13, v4

    iget-object v4, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;

    if-eqz v4, :cond_1a

    iget v12, v4, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    goto :goto_e

    :cond_1a
    move v12, v7

    :goto_e
    if-ltz v12, :cond_1c

    if-eqz v4, :cond_1b

    iget v4, v4, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandWidth:I

    goto :goto_f

    :cond_1b
    move v4, v7

    :goto_f
    int-to-float v4, v4

    cmpl-float v4, v13, v4

    if-lez v4, :cond_1c

    sget-boolean v4, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v4, :cond_1c

    const/4 v13, 0x1

    goto :goto_10

    :cond_1c
    move v13, v5

    :goto_10
    if-eqz v13, :cond_1f

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_1d

    const/16 v12, 0xa

    iput v12, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->inIslandState:I

    :cond_1d
    if-eqz v9, :cond_1e

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->islandWidthChanged:Z

    iput-boolean v4, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->islandChanged:Z

    :cond_1e
    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->setXTranslation(F)V

    :cond_1f
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_20
    if-lez v2, :cond_21

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    :cond_21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v5

    :goto_12
    if-ge v1, v2, :cond_23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v6, v3

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->setXTranslation(F)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;

    if-eqz v3, :cond_22

    int-to-float v4, v6

    iget v6, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->layoutTranslationX:F

    sub-float/2addr v4, v6

    iput v4, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->layoutTranslationX:F

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_23
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->multiTaskFactory:Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    if-nez v3, :cond_24

    goto :goto_17

    :cond_24
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->target:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_29

    iget-object v3, v3, Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;->mMultiTaskStatusBarDotsAreaController:Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;

    invoke-interface {v3}, Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->hasDots()Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->location:[I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v8, v5

    :goto_13
    if-ge v8, v7, :cond_29

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-eqz v10, :cond_27

    iget v11, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_26

    aget v11, v6, v5

    int-to-float v11, v11

    iget-object v12, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;

    if-eqz v12, :cond_25

    iget v12, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->layoutTranslationX:F

    goto :goto_14

    :cond_25
    iget v12, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    :goto_14
    add-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->tempLocation:[I

    aput v11, v12, v5

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v11

    const/16 v17, 0x1

    aput v9, v12, v17

    invoke-interface {v3, v12}, Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->overlapArea([I)Z

    move-result v9

    const/4 v12, 0x2

    if-eqz v9, :cond_28

    iput v12, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_16

    :cond_26
    :goto_15
    const/16 v17, 0x1

    goto :goto_16

    :cond_27
    const/4 v12, 0x2

    goto :goto_15

    :cond_28
    :goto_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_29
    :goto_17
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public getActualPaddingEnd()F
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    return v0
.end method

.method public getActualPaddingStart()F
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    return v0
.end method

.method public getActualWidth()I
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getFinalTranslationX()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getIconSize()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    return p0
.end method

.method public getInject()Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    return-object p0
.end method

.method public getLeftBound()F
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result p0

    return p0
.end method

.method public getRightBound()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public initResources()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07149a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0718b0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302e3

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x1010036

    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mThemedTextColorPrimary:I

    const v1, 0x1010039

    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mThemedTextColorPrimaryInverse:I

    return-void
.end method

.method public isOverflowing(ZFFF)Z
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    add-float/2addr p2, p4

    cmpl-float p1, p2, p3

    if-lez p1, :cond_0

    return v0

    :cond_0
    return p0

    :cond_1
    const/high16 p1, 0x40000000

    mul-float/2addr p4, p1

    add-float/2addr p4, p2

    cmpl-float p1, p4, p3

    if-lez p1, :cond_2

    return v0

    :cond_2
    return p0
.end method

.method public isReplacingIcon(Landroid/view/View;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initResources()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000

    div-float/2addr p2, p3

    const/4 p4, 0x0

    iput p4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move p5, p4

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p5, v0, :cond_1

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v3, v2

    div-float/2addr v3, p3

    sub-float v3, p2, v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, p4, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    if-nez p5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIconSize(I)V

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;

    if-eqz p1, :cond_3

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->islandShowing:Z

    if-ne p2, p3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->onLayoutChanged()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->islandWidthChanged:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->islandAnimate:Z

    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIcons:I

    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    :goto_2
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v2, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    if-gt v3, v1, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    move v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v4, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Landroid/view/View;)V

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v0, :cond_2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    :cond_3
    :goto_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez p0, :cond_4

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconDimens()V

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->areAnimationsEnabled(Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v2, :cond_2

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_2

    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->areAnimationsEnabled(Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v0, :cond_a

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    const/4 v0, 0x1

    if-eqz v2, :cond_7

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iput-boolean v0, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->removing:Z

    iget v6, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->inIslandState:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    sget-boolean v6, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v6, :cond_4

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$7;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v7, p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    iget-object p0, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->animationController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    if-eqz p0, :cond_5

    iget-object p1, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->statusBarToken:Lcom/miui/systemui/statusbar/StatusBarToken;

    iget-object p0, p0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->showingStatusBarToken:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    iget-object p0, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;->inject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->animationController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    if-eqz v0, :cond_6

    if-nez v6, :cond_6

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    const-string p1, "NotificationIconContainerInject"

    const-string v0, "remove: start remove notification animation"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;->DISAPPEAR:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->createFolmeAnimation(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController$StateTransition;Landroid/view/View;Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;)Lcom/android/systemui/statusbar/anim/FolmeProperties;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState$remove$1;

    invoke-direct {p1, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState$remove$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$7;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/anim/FolmeProperties;->animatedProperties:Ljava/util/Map;

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v1, p0}, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/anim/FolmeProperties;)V

    return-void

    :cond_6
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$7;->onFinish(Z)V

    return-void

    :cond_7
    if-nez p1, :cond_8

    move v3, v0

    :cond_8
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    if-eqz v3, :cond_9

    const-wide/16 p0, 0x6e

    :goto_5
    move-wide v5, p0

    goto :goto_6

    :cond_9
    const-wide/16 p0, 0x0

    goto :goto_5

    :goto_6
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V

    :cond_a
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onVisibilityAggregated(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->aggregatedVisible:Z

    return-void
.end method

.method public resetViewStates()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->initFrom(Landroid/view/View;)V

    const/high16 v2, 0x3f800000

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject$MiuiIconState;

    if-eqz v3, :cond_0

    iput v2, v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->alpha:F

    iput v2, v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->scaleX:F

    iput v2, v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->scaleY:F

    iput v0, v3, Lcom/android/systemui/statusbar/anim/MiuiStatusBarFolmeViewState;->blur:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setActualLayoutWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return-void
.end method

.method public setActualPaddingEnd(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return-void
.end method

.method public setActualPaddingStart(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .registers 5

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return-void
.end method

.method public setChangingViewPositions(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    return-void
.end method

.method public setIconSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    return-void
.end method

.method public setIsStaticLayout(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    :cond_0
    return-void
.end method

.method public setMaxIconsAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIcons:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setMultiTaskFactory(Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInject:Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->multiTaskFactory:Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    return-void
.end method

.method public setOverrideIconColor(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverrideIconColor:Z

    return-void
.end method

.method public setReplacingIcons(Landroidx/collection/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public setUseIncreasedIconScale(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mUseIncreasedIconScale:Z

    return-void
.end method

.method public setUseInverseOverrideIconColor(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mUseInverseOverrideIconColor:Z

    return-void
.end method

.method public shouldForceOverflow(IIFI)Z
    .registers 5

    if-lt p1, p4, :cond_0

    const/4 p0, 0x0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " { overrideIconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverrideIconColor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxIcons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIcons:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isStaticLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", themedTextColorPrimary=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mThemedTextColorPrimary:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

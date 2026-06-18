.class public Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
.super Lcom/miui/systemui/widget/RemoteViewParentFrameLayout;

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationFadeAware;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimate:Z

.field public mAnimationStartVisibleType:I

.field public mBeforeN:Z

.field public mBubblesEnabledForUser:Z

.field public mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public mCachedExpandedRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

.field public mClipBottomAmount:I

.field public final mClipBounds:Landroid/graphics/Rect;

.field public mClipToActualHeight:Z

.field public mClipTopAmount:I

.field public mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mContentAnimating:Z

.field public mContentHeight:I

.field public mContentHeightAtAnimationStart:I

.field public mContractedChild:Landroid/view/View;

.field public mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field public mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

.field public final mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

.field public mExpandClickListener:Landroid/view/View$OnClickListener;

.field public mExpandable:Z

.field public mExpandedChild:Landroid/view/View;

.field public mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

.field public mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

.field public mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field public mExpandedVisibleListener:Ljava/lang/Runnable;

.field public mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field public mFocusOnVisibilityChange:Z

.field public mForceSelectNextLayout:Z

.field public mHeadsUpAnimatingAway:Z

.field public mHeadsUpChild:Landroid/view/View;

.field public mHeadsUpHeight:I

.field public mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

.field public mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field public mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field public final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

.field public final mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

.field public mIsChildInGroup:Z

.field public mIsContentExpandable:Z

.field public mIsHUNCompact:Z

.field public mIsHeadsUp:Z

.field public mLegacy:Z

.field public mMinContractedHeight:I

.field public mMinSingleLineHeight:I

.field public mMiniBarMarginBottom:I

.field public mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mNotificationMaxHeight:I

.field public final mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

.field public mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

.field public mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field public mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field public mRemoteInputSubcomponentFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$RemoteInputViewSubcomponentFactory;

.field public mRemoteInputVisible:Z

.field public mShownWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field protected mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSingleLineWidthIndention:I

.field public mSmallHeight:I

.field public mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field public mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mTransformationStartVisibleType:I

.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUnrestrictedContentHeight:I

.field public mUserExpanding:Z

.field public mVisibleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/systemui/widget/RemoteViewParentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mShownWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->view:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b19

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07030a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinSingleLineHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b1f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMiniBarMarginBottom:I

    return-void
.end method

.method public static applyExternalSmartReplyState(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->hasPhishingAction:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, 0x1020488

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;->suppressedActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState$SuppressedActions;->suppressedActionIndices:Ljava/util/List;

    goto :goto_2

    :cond_3
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_2

    :cond_4
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    const v1, 0x10201f0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_6

    move v1, v0

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x1020438

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;I)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .registers 13

    const/4 v0, 0x1

    const v1, 0x1020541

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt;->shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object v3

    :cond_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, p1, :cond_3

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0b0b18

    if-ne v6, v7, :cond_2

    instance-of v5, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v4, p1, :cond_4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_4
    if-eqz p3, :cond_7

    iget-object p1, p3, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;->smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz p1, :cond_7

    if-lez p4, :cond_6

    const v3, 0x10201f1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    invoke-virtual {p1, p0, v3, v5, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_6
    :goto_2
    invoke-virtual {v1, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move-object v3, p1

    :cond_7
    if-eqz v3, :cond_9

    iput-object v1, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget p0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    invoke-virtual {v3, p0, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    iget-object p0, p3, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;->smartSuggestionButtons:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;)V

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object p3, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundTint()I

    move-result p0

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result p1

    invoke-virtual {v3, p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-object v3
.end method

.method public static dumpChildViewDimensions(Landroid/util/IndentingPrintWriter;Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;Landroid/view/View;)V

    invoke-static {p0, p2}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    return-void
.end method

.method private getContainingRowSbn()Landroid/service/notification/StatusBarNotification;
    .registers 1
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntryLegacy()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    return-object p0
.end method

.method private getMinContentHeightHint()I
    .registers 7

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v1, v2, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v5, v2, :cond_2

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne v5, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v1, v3, :cond_4

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne v1, v2, :cond_4

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    if-nez v1, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v0

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_8
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne v1, v3, :cond_9

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v5, :cond_9

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_a

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v0

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_b

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v0

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/android/systemui/statusbar/notification/DynamicFeatureConfig;->FEATURE_DYNAMIC_ISLAND:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsFocusNotification:Z

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_3

    :cond_c
    move v1, v4

    :goto_3
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v2

    if-eqz v1, :cond_d

    move v0, v4

    :cond_d
    add-int/2addr v0, v2

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result v0

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_f
    return v0
.end method


# virtual methods
.method public animNotifPanel()V
    .registers 7

    const/4 v5, 0x2

    const/4 v0, 0x0

    check-cast v0, Landroid/animation/ObjectAnimator;

    const-string v1, "anim_expand_style2"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "anim_expand_duration2"

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "anim_expand_interpolator2"

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

.method public final applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 7

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const v0, 0x1020252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x10201f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldShowBubbleButton(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result p2

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    const v3, 0x7f080c30

    goto :goto_0

    :cond_2
    const v3, 0x7f080c2b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_3

    const p2, 0x7f140b00

    goto :goto_1

    :cond_3
    const p2, 0x7f140afe

    :goto_1
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getBubbleClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x1020439

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_5

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-lez p2, :cond_5

    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void

    :cond_4
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/policy/RemoteInputViewController;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;
    .registers 14

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/miui/systemui/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p7}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapperInjector;->isNativeNotificationViewWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b00b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x10201f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getController()Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    :cond_1
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_6

    if-eqz p3, :cond_6

    check-cast v1, Landroid/widget/FrameLayout;

    if-nez p5, :cond_5

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-static {}, Lcom/miui/systemui/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    move-result p6

    if-eqz p6, :cond_3

    if-eqz p2, :cond_2

    iget-object p6, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p6, :cond_2

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p6

    goto :goto_1

    :cond_2
    move-object p6, v4

    :goto_1
    invoke-static {p6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapperInjector;->isNativeNotificationViewWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Z

    move-result p6

    if-nez p6, :cond_3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p6, 0x7f0e026e

    invoke-virtual {p1, p6, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p6, 0x7f0e03ee

    invoke-virtual {p1, p6, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_2
    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object p5, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iput-object p2, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p5, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p5

    sget-object p6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p6, p5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p5

    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p5

    :cond_4
    iget-object p6, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iput-object p5, p6, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p6, p5}, Landroid/widget/EditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 p5, 0x8

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p6, -0x1

    invoke-direct {p5, p6, p6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputSubcomponentFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$RemoteInputViewSubcomponentFactory;

    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p5, p1, p6}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$RemoteInputViewSubcomponentFactory;->create(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$RemoteInputViewSubcomponentImpl;

    invoke-virtual {p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$RemoteInputViewSubcomponentImpl;->remoteInputViewControllerImpl()Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    iget-object p5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setController(Lcom/android/systemui/statusbar/policy/RemoteInputViewController;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    invoke-virtual {p5}, Landroid/widget/LinearLayout;->requestFocus()Z

    iput-object p5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object p6, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    :cond_6
    :goto_3
    if-eqz p3, :cond_12

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p1, p7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    new-instance p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    if-nez p4, :cond_7

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_7
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p4, :cond_8

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    iput-object p4, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    :cond_8
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    if-nez p0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    :cond_9
    iget-object p3, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p3

    if-nez p3, :cond_a

    goto :goto_8

    :cond_a
    move p4, v3

    :goto_4
    array-length p5, p0

    if-ge p4, p5, :cond_11

    add-int/lit8 p5, p4, 0x1

    :try_start_0
    aget-object p4, p0, p4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p6, p4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez p6, :cond_c

    :cond_b
    :goto_5
    move p4, p5

    goto :goto_4

    :cond_c
    invoke-virtual {p4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object p4

    if-nez p4, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {p6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p7

    invoke-virtual {p3, p7}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p7

    if-eqz p7, :cond_b

    array-length p7, p4

    move v1, v3

    :goto_6
    if-ge v1, p7, :cond_f

    aget-object v2, p4, v1

    invoke-virtual {v2}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    move-object v2, v4

    :goto_7
    if-nez v2, :cond_10

    goto :goto_5

    :cond_10
    iput-object p6, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->setRemoteInput(Landroid/app/RemoteInput;)V

    iput-object p4, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputs:[Landroid/app/RemoteInput;

    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p0

    if-nez p0, :cond_12

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    goto :goto_9

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_8
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p0

    if-eqz p0, :cond_12

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    sget p1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->$r8$clinit:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    :cond_12
    :goto_9
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p0, :cond_13

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundTint()I

    move-result p0

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result p1

    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$RemoteInputViewData;->mView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundTintColor(IZ)V

    :cond_13
    return-object v0
.end method

.method public final applySystemActions(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0x1020549

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x10201f1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowSnooze()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f081360

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0e035f

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v6, 0x7f140b0e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    iget-object v8, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v5, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda6;

    invoke-direct {v4, v3, v7, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public final calculateVisibleType()I
    .registers 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded$1()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxContentHeight()I

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    :cond_2
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded$1()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    const-string v3, "NotificationContentView"

    const-string v4, "calculateVisibleType: SingleLineView is not available!"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v1

    :goto_4
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne p0, v1, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    if-eqz v0, :cond_9

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_9
    int-to-float v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result p0

    return p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string v0, "Drawing view failed: "

    const-string v1, "NotificationContentView"

    invoke-static {v0, p1, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/16 v0, 0x8

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "cancelNotification failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    int-to-float v3, v2

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    neg-int p0, v2

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableAnim()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "anim_expand_enable2"

    invoke-static {v2, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public final fireExpandedVisibleListenerIfVisible()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 3

    iget-object p0, p0, Landroid/widget/FrameLayout;->mParent:Landroid/view/ViewParent;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "NotificationContentView"

    const-string p1, "NotificationContentView doesn\'t have parent"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .registers 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq v0, p1, :cond_2

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x1

    invoke-interface {p3, p0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    return-void
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllViews()[Landroid/view/View;
    .registers 4
    .annotation build Landroid/annotation/NonNull;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getBackgroundColorForExpansionState()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded$1()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleType()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getContentHeight()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    return p0
.end method

.method public getContractedChild()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object p0
.end method

.method public getContractedWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method public getCurrentSmartReplyState()Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;
    .registers 1
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    return-object p0
.end method

.method public getExpandHeight()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result p0

    return p0
.end method

.method public getExpandedChild()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object p0
.end method

.method public getExpandedRemoteInput()Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p0
.end method

.method public getExpandedWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method public final getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I
    .registers 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10502c7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object p0
.end method

.method public final getHeadsUpHeight(Z)I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result p0

    return p0
.end method

.method public getHeadsUpWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method public getMaxHeight()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    return p0

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    return p0
.end method

.method public getMinHeight()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result p0

    return p0
.end method

.method public final getMinHeight(Z)I
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded$1()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinSingleLineHeight:I

    return p0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    return p0

    :cond_3
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    return p0
.end method

.method public getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOriginalIconColor()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getOriginalIconColor()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-object p0
.end method

.method public final getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method public final getViewForVisibleType(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object p0
.end method

.method public final getViewHeight(IZ)I
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->notifiFullAodController:Lcom/android/systemui/statusbar/notification/fullaod/NotifiFullAodController;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/notification/fullaod/NotifiFullAodController;->mIsAnimating:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/notification/fullaod/NotifiFullAodController;->mDarkMode:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x3fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getHeaderTranslation(Z)I

    move-result p2

    add-int/2addr v1, p2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_a

    instance-of p2, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    if-eqz p2, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result p2

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    add-int/2addr p2, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->view:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-nez p1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapperInjector;->getExtraMeasureHeight(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v1

    add-int/2addr p2, v1

    :cond_7
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    instance-of p1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;

    if-nez p1, :cond_8

    instance-of p1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p2, p0

    :cond_9
    return p2

    :cond_a
    return v1
.end method

.method public getVisibleType()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    return p0
.end method

.method public getVisibleWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method public final getVisualTypeForHeight(F)I
    .registers 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_e

    if-ne p0, v3, :cond_e

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->view:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-nez p0, :cond_e

    goto :goto_7

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded$1()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v6, :cond_2

    xor-int/lit8 v4, v5, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mInjector:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainerInjectorImpl;

    if-eqz v4, :cond_3

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainerInjectorImpl;->childrenExpanded:Z

    if-ne v4, v1, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-nez v5, :cond_4

    if-nez v4, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    if-le v4, v1, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v7

    :goto_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    move v4, v1

    goto :goto_5

    :cond_7
    move v4, v2

    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v5, :cond_8

    move v5, v1

    goto :goto_6

    :cond_8
    move v5, v2

    :goto_6
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-nez v6, :cond_9

    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    const/4 p0, 0x3

    return p0

    :cond_9
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v4, :cond_c

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-lez p0, :cond_b

    if-eqz v0, :cond_e

    :cond_b
    :goto_7
    return v3

    :cond_c
    if-nez v0, :cond_10

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v3, :cond_d

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v3

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded$1()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_8

    :cond_d
    if-nez v0, :cond_f

    :cond_e
    return v1

    :cond_f
    const/4 p0, -0x1

    return p0

    :cond_10
    :goto_8
    return v2
.end method

.method public final hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isAnimatingVisibleType()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isVisibleOrTransitioning(I)Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v0, p1, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isAnimatingVisibleType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public final notifySubtreeForAccessibilityContentChange()V
    .registers 3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p0, p0, v1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 10

    const-string v0, "loopanim2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setAnimationPanel()V

    goto :goto_0

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateVisibility$9()V

    return-void
.end method

.method public final onChildVisibilityChanged(Landroid/view/View;II)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onChildVisibilityChanged(Landroid/view/View;II)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p2

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eq p1, v0, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    return-void
.end method

.method public final onMeasure(II)V
    .registers 18

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x40000000

    if-ne v1, v8, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    const/high16 v9, -0x80000000

    if-ne v1, v9, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    const v11, 0x3fffffff

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v12, v11

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    move v12, v1

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    move-result v2

    add-int/2addr v1, v2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v6

    goto :goto_4

    :cond_5
    move v1, v7

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->getExtraHeight(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)I

    move-result v3

    add-int/2addr v3, v2

    if-eqz v1, :cond_6

    move v1, v8

    goto :goto_5

    :cond_6
    move v1, v9

    :goto_5
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->getExtraHeight(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v13, v1

    goto :goto_6

    :cond_7
    move v13, v7

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_d

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmallHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_8

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v6

    goto :goto_7

    :cond_8
    move v1, v7

    :goto_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->getExtraHeight(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->isCustomView()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7fffffff

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_8
    move v4, v1

    goto :goto_a

    :cond_9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mBeforeN:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    if-eqz v2, :cond_a

    goto :goto_9

    :cond_a
    if-eqz v1, :cond_b

    :goto_9
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_8

    :cond_b
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_8

    :goto_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->getExtraHeight(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)I

    move-result v2

    add-int v14, v2, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    if-ge v14, v1, :cond_c

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v14, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->getExtraHeight(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)I

    move-result v2

    add-int v14, v2, v1

    :cond_c
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpHeight:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    move-result v2

    add-int/2addr v1, v2

    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_b

    :cond_f
    move v6, v7

    :goto_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->isCustomView()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_c

    :cond_10
    move v11, v2

    move v7, v6

    :goto_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v7, :cond_11

    move v2, v8

    goto :goto_d

    :cond_11
    move v2, v9

    :goto_d
    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v1, :cond_13

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v1, v10, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_e

    :cond_13
    move/from16 v1, p1

    :goto_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_14
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v10, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    const v0, 0x7f0b0a37

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .registers 4

    const-string v0, "loopanim2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setAnimationPanel()V

    goto :goto_0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    :cond_1
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateVisibility$9()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    return-void
.end method

.method public final performWhenContentInactive(ILjava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final pointInView(FFF)Z
    .registers 7

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v1, v1

    neg-float v2, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

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

    add-float/2addr v1, p3

    cmpg-float p0, p2, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeContentInactiveRunnable(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final selectLayout(ZZ)V
    .registers 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object p2

    if-nez p2, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    return-void

    :cond_1
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq p1, p2, :cond_2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {p2, v5, v0}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0, v5, p2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(FLcom/android/systemui/statusbar/TransformableView;)V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0, v1, p2, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0, v4, p2, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0, v3, p2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {p0, v2, p2, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateShownWrapper(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->notifySubtreeForAccessibilityContentChange()V

    :cond_3
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq p2, v0, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq v0, p2, :cond_a

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v4, v2, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/high16 v5, 0x3f800000

    if-nez v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the total transformation distance is 0\n StartType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const-string v6, " height: "

    const-string v7, "\n VisibleType: "

    invoke-static {v3, v4, v6, v0, v7}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const-string v4, "\n mContentHeight: "

    invoke-static {v3, v0, v6, v2, v4}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NotificationContentView"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    int-to-float v0, v3

    int-to-float v2, v4

    div-float/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_0
    invoke-interface {p1, v5, p2}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {p2, v5, p1}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(FLcom/android/systemui/statusbar/TransformableView;)V

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result p2

    goto :goto_2

    :cond_6
    move p2, v1

    :goto_2
    if-eq p1, p2, :cond_9

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result p2

    :cond_7
    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result p1

    :cond_8
    invoke-static {v5, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(FII)I

    move-result p1

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result v0

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq v0, v5, :cond_c

    move v5, v4

    goto :goto_3

    :cond_c
    move v5, v1

    :goto_3
    if-nez v5, :cond_e

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_d
    :goto_4
    return-void

    :cond_e
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_16

    if-ne v0, v4, :cond_10

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez p2, :cond_13

    :cond_10
    if-ne v0, v3, :cond_11

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez p2, :cond_13

    :cond_11
    if-ne v0, v2, :cond_12

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-nez p2, :cond_13

    :cond_12
    if-nez v0, :cond_16

    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object p2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v2

    if-eq p2, v2, :cond_15

    if-nez v2, :cond_14

    goto :goto_6

    :cond_14
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    iput v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    invoke-interface {p2, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateShownWrapper(I)V

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {v2, p2, v3}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    goto :goto_7

    :cond_15
    :goto_6
    invoke-interface {p2, v4}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    goto :goto_7

    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    :goto_7
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eqz v5, :cond_18

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    if-eqz p2, :cond_18

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExpandButton()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_17
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p2

    if-eqz p2, :cond_19

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinContentHeightHint()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    return-void
.end method

.method public setAnimationPanel()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->enableAnim()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->animNotifPanel()V

    goto :goto_0
.end method

.method public setAnimationStartVisibleType(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    return-void
.end method

.method public setBackgroundTintColor(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundTintColor(IZ)V

    :cond_3
    return-void
.end method

.method public setBubblesEnabledForUser(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mBubblesEnabledForUser:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public setClipBottomAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBottomAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setClipChildren(Z)V
    .registers 2

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputVisible:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method public setClipToActualHeight(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method public setContentHeight(I)V
    .registers 4

    const-string v0, "loopanim2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setAnimationPanel()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinContentHeightHint()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    return-void
.end method

.method public setContentHeightAnimating(Z)V
    .registers 2

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    :cond_0
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setContractedChild: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyNotif"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-nez p1, :cond_2

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateShownWrapper(I)V

    return-void
.end method

.method public setContractedWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInputViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->unbind()V

    :cond_2
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInputController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    :cond_3
    if-nez p1, :cond_6

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySystemActions(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_7
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateShownWrapper(I)V

    return-void
.end method

.method public setExpandedInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V
    .registers 2
    .param p1  # Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_0
    return-void
.end method

.method public setExpandedWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V
    .registers 3
    .param p1  # Lcom/android/systemui/statusbar/notification/FeedbackIcon;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V

    :cond_2
    return-void
.end method

.method public setFocusOnVisibilityChange()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    return-void
.end method

.method public setGroupMembershipManager(Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)V
    .registers 2

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    :cond_2
    return-void
.end method

.method public setHeadsUp(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .registers 6
    .param p1  # Landroid/view/View;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHUNCompact:Z

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactHeadsUpTemplateViewWrapper;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHUNCompact:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContainingRowSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationCompactHeadsUpEvent;->NOTIFICATION_COMPACT_HUN_SHOWN:Lcom/android/systemui/statusbar/notification/row/NotificationCompactHeadsUpEvent;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySystemActions(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/utils/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    move-result v2

    invoke-static {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapperInjector;->shouldTransParent(Landroid/content/Context;ZLcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    instance-of v3, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;

    if-eqz v3, :cond_8

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->updateTransparentBgAndTextColor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    goto :goto_1

    :cond_8
    instance-of v3, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;

    if-eqz v3, :cond_9

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->updateTransparentBgAndTextColor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    goto :goto_1

    :cond_9
    instance-of v3, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->updateTransparentBgAndTextColor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    goto :goto_1

    :cond_a
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapperInjector;->sNotificationRowContentBinderInjector:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;

    if-eqz p1, :cond_b

    sget-object p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapperInjector;->sNotificationRowContentBinderInjector:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->headsUpManager:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    check-cast p1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;->updateBackground$1()V

    :cond_b
    :goto_1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateShownWrapper(I)V

    return-void
.end method

.method public setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V
    .registers 2
    .param p1  # Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_0
    return-void
.end method

.method public setHeadsUpWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public setHeights(III)V
    .registers 4

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmallHeight:I

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpHeight:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    return-void
.end method

.method public setInflatedSmartReplyState(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)V
    .registers 2
    .param p1  # Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .registers 6

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->view:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    if-eqz v1, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/notification/utils/NotificationUtil;->WHITE_PKG_LISTS:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->notifiFullAodController:Lcom/android/systemui/statusbar/notification/fullaod/NotifiFullAodController;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/fullaod/NotifiFullAodController;->needChangeFullAodStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v0, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    and-int/lit8 v0, v0, -0x31

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    :goto_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->view:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->getInjector()Lcom/android/systemui/statusbar/notification/row/HybridNotificationViewInjector;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationViewInjector;->updateTextColor(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;)V

    :cond_5
    return-void
.end method

.method public setIsLowPriority(Z)V
    .registers 2

    return-void
.end method

.method public setLegacy(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateLegacy()V

    return-void
.end method

.method public setNotificationFaded(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->setNotificationFaded(Z)V

    :cond_3
    return-void
.end method

.method public setNotificationWhen(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setNotificationWhen(J)V

    :cond_0
    return-void
.end method

.method public setOnExpandedVisibleListener(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    return-void
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    :cond_2
    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputVisible:Z

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipChildren(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const v1, 0x10201f0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method

.method public setRemoved()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    :cond_0
    return-void
.end method

.method public setSingleLineView(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;)V
    .registers 4
    .param p1  # Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->forceLayout()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setUserExpanding(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    return-void

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    return-void
.end method

.method public shouldShowBubbleButton(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mBubblesEnabledForUser:Z

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public final updateAllSingleLineViews()V
    .registers 2

    :try_start_0
    const-string v0, "NotifContentView#updateSingleLineView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mInjector:Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentViewInjectorImpl;->view:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final updateBackgroundColor(Z)V
    .registers 4

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    return-void
.end method

.method public final updateClipping()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateExpandButtonsDuringLayout(ZZ)V
    .registers 6

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v0, v2, :cond_4

    :cond_2
    :goto_0
    move p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v0, v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    if-eq p2, p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;Z)V

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;Z)V

    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;Z)V

    :cond_8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    return-void
.end method

.method public final updateLegacy()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    :cond_2
    return-void
.end method

.method public final updateShownWrapper(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mShownWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mShownWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentShown(Z)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentShown(Z)V

    :cond_2
    return-void
.end method

.method public final updateViewVisibilities(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_3

    if-ne p1, v3, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    move v2, v3

    :cond_6
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateShownWrapper(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->notifySubtreeForAccessibilityContentChange()V

    return-void
.end method

.method public final updateVisibility()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    :goto_0
    return-void
.end method

.method public final updateVisibility$9()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    return-void
.end method

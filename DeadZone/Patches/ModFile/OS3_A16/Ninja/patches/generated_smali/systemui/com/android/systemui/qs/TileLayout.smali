.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field public mCellHeight:I

.field public mCellMarginHorizontal:I

.field public mCellMarginVertical:I

.field public mCellWidth:I

.field public mColumns:I

.field public mEstimatedCellHeight:I

.field public final mIsSmallLandscapeLockscreenEnabled:Ljava/lang/Boolean;

.field public mLastTileBottom:I

.field public final mLessRows:Z

.field public mListening:Z

.field public mMaxAllowedRows:I

.field public mMaxColumns:I

.field public mMinRows:I

.field public final mRecords:Ljava/util/ArrayList;

.field public mResourceCellHeight:I

.field public mResourceCellHeightResId:I

.field public mResourceColumns:I

.field public mRows:I

.field public mSidePadding:I

.field public mSquishinessFraction:F

.field public final mTempTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0716fb

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mResourceCellHeightResId:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    sget-object v0, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_ENABLE_LANDSCAPE:Lcom/android/systemui/flags/UnreleasedFlag;

    new-instance v1, Lcom/android/systemui/flags/RefactorFlag;

    new-instance v2, Lcom/android/systemui/flags/RefactorFlag$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/flags/RefactorFlag;-><init>(Lcom/android/systemui/flags/UnreleasedFlag;Lcom/android/systemui/flags/RefactorFlag$Companion$$ExternalSyntheticLambda0;)V

    iget-object v0, v1, Lcom/android/systemui/flags/RefactorFlag;->isEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mIsSmallLandscapeLockscreenEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_less_rows"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/qs/TileLayout;->mLessRows:Z

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;->setSquishinessFraction(F)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public estimateCellHeight()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    const v1, 0x7f07170c

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071706

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mEstimatedCellHeight:I

    return-void
.end method

.method public getCellHeight()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mResourceCellHeight:I

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mEstimatedCellHeight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getMaxColumns()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    return p0
.end method

.method public getMinRows()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    return p0
.end method

.method public getNumVisibleTiles()I
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getSquishinessFraction()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    return p0
.end method

.method public getTilesHeight()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mLastTileBottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final layoutTileRecords(IZ)V
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v2, v0, Lcom/android/systemui/qs/TileLayout;->mLastTileBottom:I

    iget v4, v0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v5, v0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    mul-int/2addr v4, v5

    move/from16 v5, p1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v5, v4, :cond_4

    iget v8, v0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v6, v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    move v6, v2

    :cond_1
    iget-object v8, v0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget v9, v0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    const v10, 0x3f666666

    mul-float/2addr v9, v10

    const v11, 0x3dcccccd

    add-float/2addr v9, v11

    int-to-float v12, v7

    iget v13, v0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v9

    iget v9, v0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    int-to-float v9, v9

    add-float/2addr v13, v9

    mul-float/2addr v13, v12

    float-to-int v9, v13

    if-eqz v1, :cond_2

    iget v12, v0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v12, v6

    sub-int/2addr v12, v3

    goto :goto_2

    :cond_2
    move v12, v6

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v13

    iget v14, v0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    add-int/2addr v13, v14

    iget v14, v0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget v15, v0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    add-int/2addr v15, v14

    mul-int/2addr v15, v12

    add-int/2addr v15, v13

    add-int/2addr v14, v15

    iget-object v12, v8, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v8, v8, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    if-eqz p2, :cond_3

    invoke-virtual {v8, v15, v9, v14, v12}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v15, v9, v14, v12}, Landroid/widget/LinearLayout;->setLeftTopRightBottom(IIII)V

    :goto_3
    invoke-virtual {v8, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setPosition(I)V

    iget v12, v0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    mul-float/2addr v12, v10

    add-float/2addr v12, v11

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    float-to-int v8, v8

    add-int/2addr v9, v8

    iput v9, v0, Lcom/android/systemui/qs/TileLayout;->mLastTileBottom:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZ)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;->layoutTileRecords(IZ)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_0
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/lit8 v0, p2, -0x1

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    div-int/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getCellHeight()I

    move-result p2

    const/high16 v0, 0x40000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, p0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v7, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v6, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {v6, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    move-object v4, v6

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int/2addr p2, v1

    sub-int/2addr p2, v0

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    move v3, p2

    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final removeAllViews()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v4, v4, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v4, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setExpansion(FF)V
    .registers 3

    return-void
.end method

.method public setListening(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method public setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .registers 6

    iget-boolean p2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic setLogger(Lcom/android/systemui/qs/logging/QSLogger;)V
    .registers 2

    return-void
.end method

.method public final setMaxColumns(I)Z
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateColumns()Z

    move-result p0

    return p0
.end method

.method public final setMinRows(I)Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSquishinessFraction(F)V
    .registers 6

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;->layoutTileRecords(IZ)V

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;->setSquishinessFraction(F)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final updateColumns()Z
    .registers 4

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceColumns:I

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateMaxRows(II)Z
    .registers 6

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getCellHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr v1, v2

    div-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    if-ge p1, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    if-lt p1, v1, :cond_1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr p2, v1

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    div-int/2addr p2, v1

    if-le p1, p2, :cond_2

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    if-eq v0, p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public updateResources()Z
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mIsSmallLandscapeLockscreenEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x7f05009d

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v3, 0x6

    const-string v1, "toggles_elite_count_expanded"

    invoke-static {v1, v3}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    :cond_1
    :goto_0
    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceColumns:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceCellHeightResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceCellHeight:I

    const v1, 0x7f071703

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->useSidePadding()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    const v1, 0x7f071705

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mIsSmallLandscapeLockscreenEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0c0130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_2

    :cond_3
    const v1, 0x7f0c0123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mLessRows:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->estimateCellHeight()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateColumns()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return v3

    :cond_5
    return v4
.end method

.method public useSidePadding()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

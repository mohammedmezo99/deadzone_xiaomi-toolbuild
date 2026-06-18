.class public Lcom/android/systemui/qs/MiuiTileLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;


# instance fields
.field public mCellHeight:I

.field public mCellMarginHorizontal:I

.field public mCellWidth:I

.field public mColumns:I

.field public mListening:Z

.field public mMaxAllowedRows:I

.field public mMaxColumns:I

.field public mMinRows:I

.field public final mRecords:Ljava/util/ArrayList;

.field public mResourceColumns:I

.field public mRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/MiuiTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 p2, 0x3

    iput p2, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mMaxAllowedRows:I

    iput p1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mMinRows:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mMaxColumns:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiTileLayout;->updateResources()Z

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiTileLayout;->addTileView(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V

    return-void
.end method

.method public addTileView(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V
    .registers 2

    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getColumnStart(I)I
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellMarginHorizontal:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    iget p0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellWidth:I

    add-int/2addr p0, v1

    mul-int/2addr p0, p1

    add-int/2addr p0, v2

    return p0
.end method

.method public getNumVisibleTiles()I
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getOffsetTop(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final layoutTileRecords(I)V
    .registers 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    iget v4, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    mul-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, p1, :cond_3

    iget v6, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    if-ne v4, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    move v4, v1

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    iget v7, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellHeight:I

    mul-int/2addr v7, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v7

    if-eqz v0, :cond_2

    iget v7, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    sub-int/2addr v7, v4

    sub-int/2addr v7, v2

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/MiuiTileLayout;->getColumnStart(I)I

    move-result v7

    iget v9, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellWidth:I

    add-int/2addr v9, v7

    iget-object v6, v6, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiTileLayout;->layoutTileRecords(I)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

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

    iget p2, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    :cond_0
    iget p2, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellMarginHorizontal:I

    iget v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    mul-int/2addr p2, v0

    sub-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellWidth:I

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    iget-object v5, v4, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;

    iget v6, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellWidth:I

    const/high16 v7, 0x40000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v8, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellHeight:I

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v4, v4, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-object v2, v4

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellHeight:I

    iget v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    mul-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final removeAllViews()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    iget-object v4, v4, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v4, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setExpansion(F)V
    .registers 2

    return-void
.end method

.method public setListening(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mListening:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mListening:Z

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setMaxColumns(I)Z
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mMaxColumns:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiTileLayout;->updateColumns$1()Z

    move-result p0

    return p0
.end method

.method public final setMinRows(I)Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mMinRows:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mMinRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiTileLayout;->updateResources()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateColumns$1()Z
    .registers 4

    iget v0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    iget v1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mResourceColumns:I

    iget v2, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mMaxColumns:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateResources()Z
    .registers 5

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    const-string v1, "toggles_elite_count_expanded"

    invoke-static {v1, v3}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mResourceColumns:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0716fb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mCellHeight:I

    const v1, 0x7f0716fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0716f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0126

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v3, "toggles_elite_count_expanded_rows"

    invoke-static {v3, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mMaxAllowedRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiTileLayout;->updateColumns$1()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return v2

    :cond_2
    return v0
.end method

.class public Lcom/android/systemui/qs/MiuiQuickQSPanel;
.super Lcom/android/systemui/qs/MiuiQSPanel;


# instance fields
.field public mDisabledByPolicy:Z

.field public mMaxTiles:I

.field public final mNumTiles:Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

.field public mQsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/MiuiQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mNumTiles:Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c0128

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    return-void
.end method


# virtual methods
.method public final closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .registers 1

    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method public final createRegularTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;
    .registers 3

    new-instance v0, Lcom/android/systemui/qs/MiuiQuickQSPanel$HeaderTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/MiuiQuickQSPanel$HeaderTileLayout;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method

.method public final drawTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 3

    iget-object p0, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public getDumpableTag()Ljava/lang/String;
    .registers 1

    const-string p0, "QuickQSPanel"

    return-object p0
.end method

.method public getTileCallbackType()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public final onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mNumTiles:Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

    const-string v1, "sysui_qqs_count"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mNumTiles:Lcom/android/systemui/qs/MiuiQuickQSPanel$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    :cond_0
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "qs_show_brightness"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public final openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .registers 1

    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method public setHost(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/MiuiQSPanel;->setHost(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSHost;

    check-cast p1, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;->interactor:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;

    invoke-interface {p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;->getCurrentQSTiles()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public setMaxTiles(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mMaxTiles:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mMaxTiles:I

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mQsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHost:Lcom/android/systemui/qs/QSHost;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;->interactor:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;

    invoke-interface {p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;->getCurrentQSTiles()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setTiles(Ljava/util/Collection;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/MiuiQSPanel;)V
    .registers 2

    return-void
.end method

.method public setQsAnimator(Lcom/android/systemui/qs/MiuiQSAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mQsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    :cond_0
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mControlCenterSettingsRepository:Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;

    check-cast v0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    iget-object v0, v0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->useControlCenter:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mMaxTiles:I

    if-ne v1, v2, :cond_1

    :cond_2
    const/4 p1, 0x1

    invoke-super {p0, v0, p1}, Lcom/android/systemui/qs/MiuiQSPanel;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mDisabledByPolicy:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    move p1, v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final shouldShowDetail()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mExpanded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final updateResources$1()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v0, 0x6

    const-string v1, "toggles_elite_count_single"

    invoke-static {v1, v0}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setMaxTiles(I)V

    return-void
.end method

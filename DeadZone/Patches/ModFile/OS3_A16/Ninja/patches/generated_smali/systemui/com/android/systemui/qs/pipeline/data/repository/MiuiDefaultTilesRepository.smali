.class public final Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;
.super Ljava/lang/Object;


# instance fields
.field public final context:Landroid/content/Context;

.field public final coolingFanController:Lcom/android/systemui/controlcenter/policy/CoolingFanController;

.field public final editTileSpec$delegate:Lkotlin/Lazy;

.field public final internationalTiles$delegate:Lkotlin/Lazy;

.field public final satelliteController:Lcom/android/systemui/controlcenter/policy/SatelliteController;

.field public final specs:Ljava/util/List;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controlcenter/policy/SatelliteController;Lcom/android/systemui/controlcenter/policy/CoolingFanController;Lcom/android/systemui/settings/UserTracker;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->satelliteController:Lcom/android/systemui/controlcenter/policy/SatelliteController;

    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->coolingFanController:Lcom/android/systemui/controlcenter/policy/CoolingFanController;

    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->internationalTiles$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->editTileSpec$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda2;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;I)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda2;

    const/4 p4, 0x2

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;I)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda2;

    const/4 v0, 0x3

    invoke-direct {p4, p0, v0}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;I)V

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x6

    const-string v2, ","

    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v3, :cond_0

    invoke-interface {p4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-boolean p2, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz p2, :cond_2

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->specs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getDefaultTileSpec()Ljava/util/List;
    .registers 11

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->editTileSpec$delegate:Lkotlin/Lazy;

    const-string v3, ","

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->getNormalTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->getLastLineTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, p0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLite2Phone()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->getNormalTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ",custom(com.google.android.gms/.nearby.sharing.SharingTileService),scanner,wallet,controls"

    invoke-static {p0, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "googlehome"

    invoke-interface {v4, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const-string v0, "controls"

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_1

    if-eq v0, v2, :cond_1

    invoke-static {v4, p0, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_1
    const/4 v7, 0x0

    const/16 v9, 0x3e

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->getNormalTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->getLastLineTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, p0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->getNormalTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->getNormalTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultTiles()Ljava/util/List;
    .registers 7

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->getDefaultTileSpec()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    sget-object v5, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public final getLastLineTileSpec()Ljava/lang/String;
    .registers 9

    const-string v1, "DefaultTilesRepository"

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->internationalTiles$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.microsoft.appmanager"

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "custom(com.miui.screenrecorder/.service.QuickService)"

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p0, "custom(com.microsoft.appmanager/.quicksettings.WindowsLinkTileService)"

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "LTW tile is added"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "Failed to resolve resource package"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/16 v7, 0x3e

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Last Line spec is \n "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getNormalTileSpec()Ljava/lang/String;
    .registers 9

    const-string v0, "DefaultTilesRepository"

    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->specs:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->satelliteController:Lcom/android/systemui/controlcenter/policy/SatelliteController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controlcenter/policy/SatelliteController;->getSupportSatellite()Z

    move-result v1

    const-string v3, "settings"

    const-string v4, "coolingfan"

    if-eqz v1, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->coolingFanController:Lcom/android/systemui/controlcenter/policy/CoolingFanController;

    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/CoolingFanController;->supportCoolingFan$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v5, "satellite"

    if-eqz v1, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.config.miui_desktop_mode_enabled"

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "kid_mode_status"

    const/4 v4, -0x1

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    invoke-static {}, Lmiuix/device/DeviceUtils;->getTotalRam()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_2

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->supportFreeform()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const-string p0, "dtmdtm"

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    const-string p0, "get DeskTopMode available fail"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/16 v7, 0x3e

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Normal Tile spec is \n "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

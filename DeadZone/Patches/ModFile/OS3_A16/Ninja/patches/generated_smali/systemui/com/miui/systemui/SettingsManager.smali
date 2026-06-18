.class public final Lcom/miui/systemui/SettingsManager;
.super Ljava/lang/Object;


# instance fields
.field public final ANIMATOR_DURATION_SCALE:Ljava/lang/String;

.field public chargeAnimType:I

.field public final context:Landroid/content/Context;

.field public fullscreenGesture:Z

.field public final fullscreenGestureListeners:Ljava/util/List;

.field public gameModeEnabled:Z

.field public globalDurationAnimatorOpen:Z

.field public final handler:Landroid/os/Handler;

.field public hideGestureLine:Z

.field public miuiMirrorDndModeEnabled:Z

.field public miuiOptimizationEnabled:Z

.field public final miuiOptimizationListeners:Ljava/util/List;

.field public notifAggregate:Z

.field public final notifAggregateListeners:Ljava/util/List;

.field public notifFold:Z

.field public final notifFoldListeners:Ljava/util/List;

.field public notifStyle:I

.field public final notifStyleListeners:Ljava/util/List;

.field public synergyModeEnabled:Z

.field public final userTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

.field public wakeupForNotification:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/plugins/miui/settings/IUserTracker;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/systemui/SettingsManager;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/miui/systemui/SettingsManager;->userTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/systemui/SettingsManager;->notifStyleListeners:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/systemui/SettingsManager;->notifFoldListeners:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/systemui/SettingsManager;->notifAggregateListeners:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/systemui/SettingsManager;->fullscreenGestureListeners:Ljava/util/List;

    const/4 v4, -0x1

    iput v4, p0, Lcom/miui/systemui/SettingsManager;->chargeAnimType:I

    iput v4, p0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/systemui/SettingsManager;->globalDurationAnimatorOpen:Z

    const-string v7, "animator_duration_scale"

    iput-object v7, p0, Lcom/miui/systemui/SettingsManager;->ANIMATOR_DURATION_SCALE:Ljava/lang/String;

    new-instance v5, Lcom/miui/systemui/SettingsManager$userChangedCallback$1;

    invoke-direct {v5, p0}, Lcom/miui/systemui/SettingsManager$userChangedCallback$1;-><init>(Lcom/miui/systemui/SettingsManager;)V

    new-instance v6, Landroid/os/HandlerExecutor;

    invoke-direct {v6, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-interface {p3, v5, v6}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->addCallback(Lcom/android/systemui/plugins/miui/settings/IUserTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifStyleChanged()V

    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifFoldChanged()V

    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifAggregateChanged()V

    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onMiuiOptimizationChanged()V

    sget-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    invoke-interface {p3}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "miui_mirror_dnd_mode"

    const/4 v8, 0x0

    invoke-static {v5, v6, v8, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->miuiMirrorDndModeEnabled:Z

    invoke-interface {p3}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gb_notification"

    invoke-static {v5, v6, v8, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->gameModeEnabled:Z

    invoke-interface {p3}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "synergy_mode"

    invoke-static {v1, v5, v8, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->synergyModeEnabled:Z

    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onWakeupForNotificationChanged()V

    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onChargeAnimTypeChanged()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-static {v0, v7, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    move v4, v8

    :goto_3
    iput-boolean v4, p0, Lcom/miui/systemui/SettingsManager;->globalDurationAnimatorOpen:Z

    sget-object v8, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$1;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onNotifStyleChanged"

    const/4 v1, 0x0

    const-string v5, "onNotifStyleChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver$1(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_FOLD:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$2;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onNotifFoldChanged"

    const/4 v1, 0x0

    const-string v5, "onNotifFoldChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver$1(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_AGGREGATE:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$3;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onNotifAggregateChanged"

    const/4 v1, 0x0

    const-string v5, "onNotifAggregateChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver$1(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$4;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onMiuiOptimizationChanged"

    const/4 v1, 0x0

    const-string v5, "onMiuiOptimizationChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_MIRROR_DND_MODE:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$5;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onMiuiMirrorDndModeChanged"

    const/4 v1, 0x0

    const-string v5, "onMiuiMirrorDndModeChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver$1(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_GAME_MODE:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$6;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onGameModeChanged"

    const/4 v1, 0x0

    const-string v5, "onGameModeChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver$1(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_SYNERGY_MODE:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$7;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onSynergyModeChanged"

    const/4 v1, 0x0

    const-string v5, "onSynergyModeChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver$1(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lcom/miui/systemui/modulesettings/KeyguardSettings;->WAKEUP_FOR_NOTIFICATION:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$8;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onWakeupForNotificationChanged"

    const/4 v1, 0x0

    const-string v5, "onWakeupForNotificationChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver$1(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lcom/miui/systemui/modulesettings/NavigationSettings;->FULLSCREEN_GESTURE:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$9;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onFullscreenGestureChanged"

    const/4 v1, 0x0

    const-string v5, "onFullscreenGestureChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lcom/miui/systemui/modulesettings/NavigationSettings;->HIDE_GESTURE_LINE:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$10;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onHideGestureLineChanged"

    const/4 v1, 0x0

    const-string v5, "onHideGestureLineChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v0, Lcom/miui/systemui/SettingsManager$11;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onGlobalDurationAnimatorChanged"

    const/4 v1, 0x0

    const-string v5, "onGlobalDurationAnimatorChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    sget-object v7, Lcom/miui/systemui/modulesettings/KeyguardSettings;->CHARGE_ANIM_TYPE:Landroid/net/Uri;

    new-instance v0, Lcom/miui/systemui/SettingsManager$99;

    const-class v3, Lcom/miui/systemui/SettingsManager;

    const-string v4, "onChargeAnimTypeChanged"

    const/4 v1, 0x0

    const-string v5, "onChargeAnimTypeChanged()V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/miui/systemui/SettingsManager;->registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final onChargeAnimTypeChanged()V
    .registers 5

    sget-object v0, Lcom/miui/systemui/modulesettings/KeyguardSettings;->CHARGE_ANIM_TYPE:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemui/SettingsManager;->userTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserId()I

    move-result v1

    const-string v2, "charge_animation_type"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "keyguard_charge_animation_type"

    invoke-static {v1}, Landroid/Utils/Utils;->IntegerToID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/systemui/SettingsManager;->chargeAnimType:I

    return-void
.end method

.method public final onMiuiOptimizationChanged()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifStyleChanged()V

    sget-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/miui/systemui/modulesettings/DeveloperSettings$Companion;->isMiuiOptimizationEnabled(ILandroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;

    iget-boolean v2, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    invoke-interface {v1, v2}, Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;->onChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNotifAggregateChanged()V
    .registers 4

    sget-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_aggregate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->notifAggregate:Z

    if-eq v2, v0, :cond_1

    iput-boolean v2, p0, Lcom/miui/systemui/SettingsManager;->notifAggregate:Z

    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->notifAggregateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinatorInjectorImpl$registerListeners$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinatorInjectorImpl$registerListeners$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinatorInjectorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinatorInjectorImpl;->updateNotificationsOnDensityOrFontScaleChanged$1()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNotifFoldChanged()V
    .registers 4

    sget-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_fold"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->notifFold:Z

    if-eq v2, v0, :cond_1

    iput-boolean v2, p0, Lcom/miui/systemui/SettingsManager;->notifFold:Z

    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->notifFoldListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/modulesettings/NotificationSettings$FoldListener;

    invoke-interface {v0, v2}, Lcom/miui/systemui/modulesettings/NotificationSettings$FoldListener;->onChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNotifStyleChanged()V
    .registers 5

    sget-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/systemui/SettingsManager;->userTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserId()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v3, :cond_1

    sget-object v3, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/miui/systemui/modulesettings/DeveloperSettings$Companion;->isMiuiOptimizationEnabled(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "status_bar_notification_style"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->notifStyleListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/modulesettings/NotificationSettings$StyleListener;

    invoke-interface {v1, v0}, Lcom/miui/systemui/modulesettings/NotificationSettings$StyleListener;->onChanged(I)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final onWakeupForNotificationChanged()V
    .registers 3

    sget-object v0, Lcom/miui/systemui/modulesettings/KeyguardSettings;->WAKEUP_FOR_NOTIFICATION:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/systemui/SettingsManager;->userTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserId()I

    move-result v1

    invoke-static {v1, v0}, Lcom/miui/systemui/modulesettings/KeyguardSettings$Companion;->getKeyguardNotificationStatus(ILandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/systemui/SettingsManager;->wakeupForNotification:Z

    return-void
.end method

.method public final registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final registerObserver(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/miui/systemui/SettingsManager$registerObserver$1;

    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, v2}, Lcom/miui/systemui/SettingsManager$registerObserver$1;-><init>(Lkotlin/jvm/functions/Function0;Landroid/os/Handler;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final registerObserver$1(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/miui/systemui/SettingsManager$registerObserver$1;

    iget-object p0, p0, Lcom/miui/systemui/SettingsManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p0, v2}, Lcom/miui/systemui/SettingsManager$registerObserver$1;-><init>(Lkotlin/jvm/functions/Function0;Landroid/os/Handler;I)V

    const/4 p0, 0x0

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

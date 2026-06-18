.class public Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;
.super Ljava/lang/Object;


# static fields
.field public static final MIUI_BUBBLE_APP_SETTINGS:Ljava/lang/String; = "miui_bubble_app_settings"

.field public static final MULTI_WINDOW_RECOMMEND_SWITCH:Ljava/lang/String; = "MiuiMultiWindowRecommendSwitch"

.field public static final SETTINGS_KEY_HAVE_NOTIFICATION_BUBBLES:Ljava/lang/String; = "have_notification_bubbles"

.field public static final SETTINGS_KEY_MIUI_BUBBLES_SWITCH:Ljava/lang/String; = "miui_bubbles_notification_switch"

.field private static final SHOW_BUBBLE_TIP_IN_GAME_MODE:Ljava/lang/String; = "show_bubble_tip_in_game_mode"

.field private static final TAG:Ljava/lang/String; = "MiuiBubbleSettings"

.field private static final mActiveBubbles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBubbleAppMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lmiui/app/MiuiBubbleApp;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentUserId:I


# direct methods
.method public static synthetic $r8$lambda$293FJXVr2BQLJz0jkSM78TY09dY(Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->lambda$refreshActiveBubble$0(Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fqji7FI5C0JgCwPJ-QUpSt3l3oQ(Ljava/lang/String;ILcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->lambda$removeActiveBubble$1(Ljava/lang/String;ILcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    sput v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addActiveBubble(Landroid/content/Context;Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;)V
    .registers 4

    const-class v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->notifyNotificationBubblesChanged(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static canShowBarrage(Landroid/content/Context;I)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isBarrageSwitchOpen(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->hasBarragePermission(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getDefaultBubbles(Landroid/content/Context;)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lmiui/app/MiuiBubbleApp;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformSuggestionList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f03008f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    array-length v2, p0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    new-instance v5, Lmiui/app/MiuiBubbleApp;

    sget v6, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    invoke-direct {v5, v4, v6}, Lmiui/app/MiuiBubbleApp;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v0}, Lmiui/app/MiuiBubbleApp;->setChecked(Z)Lmiui/app/MiuiBubbleApp;

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private static hasBarragePermission(Landroid/content/Context;I)Z
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_notification_listeners"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.xiaomi.barrage"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static initBubbleApps(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-static {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->getDefaultBubbles(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    invoke-static {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->updateBubbleAppStates(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initBubbleApps: mBubbleAppMaps="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbleSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->saveBubbleAppStatesChanges(Landroid/content/Context;)V

    return-void
.end method

.method public static initBubblesSettings(Landroid/content/Context;)V
    .registers 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-static {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->initBubbleApps(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isBubbleNotificationSwitchOpen(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->setBubbleNotificationSwitch(Landroid/content/Context;Z)V

    return-void
.end method

.method public static declared-synchronized isAppEnableBubbleNotification(Ljava/lang/String;I)Z
    .registers 6

    const-class v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->refreshActiveBubble()V

    sget-object v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;

    sget-object v3, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/MiuiBubbleApp;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lmiui/app/MiuiBubbleApp;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;->getUserId()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "MiuiBubbleSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "isAppEnableBubbleNotification: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static isBarrageSwitchOpen(Landroid/content/Context;I)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gb_bullet_chat"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v1
.end method

.method public static isBubbleNotificationApp(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/app/MiuiBubbleApp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/app/MiuiBubbleApp;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBubbleNotificationSwitchOpen(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    const-string v1, "miui_bubbles_notification_switch"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInGameMode(Landroid/content/Context;I)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gb_boosting"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v1
.end method

.method private static synthetic lambda$refreshActiveBubble$0(Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;->isInflated()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activeBubble "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isInflated "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiBubbleSettings"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method private static synthetic lambda$removeActiveBubble$1(Ljava/lang/String;ILcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;)Z
    .registers 4

    invoke-virtual {p2}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static notifyNotificationBubblesChanged(Landroid/content/Context;)V
    .registers 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "have_notification_bubbles"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;

    sget-object v3, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    sget v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    sget v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private static refreshActiveBubble()V
    .registers 2

    sget-object v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    new-instance v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeIf(Ljava/util/function/Predicate;)Z

    sget-object v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->notifyNotificationBubblesChanged(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized removeActiveBubble(Landroid/content/Context;Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;)V
    .registers 7

    const-string v0, "removeActiveBubble: "

    const-class v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/MiuiBubble;->getUserId()I

    move-result p1

    const-string v3, "MiuiBubbleSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    new-instance v3, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, p1}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->notifyNotificationBubblesChanged(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static saveBubbleAppStatesChanges(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/MiuiBubbleApp;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Lmiui/app/MiuiBubbleApp;->getSpString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    const-string v2, "miui_bubble_app_settings"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setBubbleNotificationSwitch(Landroid/content/Context;Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    const-string v1, "miui_bubbles_notification_switch"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setCurrentUserId(I)V
    .registers 1

    sput p0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    return-void
.end method

.method public static setShowBubbleTipsInGameMode(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    sget v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    const-string v2, "show_bubble_tip_in_game_mode"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static shouldShowBubbleTipsInGameMode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    const-string v2, "show_bubble_tip_in_game_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    sget v0, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->isSupportBubbleNotification()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isInGameMode(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isBubbleNotificationSwitchOpen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isBubbleNotificationApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, v0}, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->canShowBarrage(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method public static updateBubbleAppStates(Landroid/content/Context;)V
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_bubble_app_settings"

    sget v1, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mCurrentUserId:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateBubbleAppStates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbleSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/app/MiuiBubbleApp;

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lmiui/app/MiuiBubbleApp;->setChecked(Z)Lmiui/app/MiuiBubbleApp;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

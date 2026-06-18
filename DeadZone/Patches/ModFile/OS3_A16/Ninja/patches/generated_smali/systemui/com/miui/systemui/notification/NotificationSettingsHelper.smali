.class public abstract Lcom/miui/systemui/notification/NotificationSettingsHelper;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:Z

.field public static final sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_NOTIFICATION:Z

    sput-boolean v0, Lcom/miui/systemui/notification/NotificationSettingsHelper;->DEBUG:Z

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/miui/systemui/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public static canShowBadge(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "canShowBadge"

    invoke-static {}, Lcom/miui/systemui/notification/NotificationSettingsHelper;->getUserContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->isUserOwner(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v0, Lcom/miui/systemui/notification/NotificationSettingsManager;->sINSTANCE:Lcom/miui/systemui/notification/NotificationSettingsManager;

    invoke-virtual {v0, v1, p0}, Lcom/miui/systemui/notification/NotificationSettingsManager;->canShowBadge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "package"

    invoke-virtual {v2, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/miui/utils/MiuiConstants$Notif;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v0, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canShowBadge "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NotifiSettingsHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move p0, v3

    :goto_0
    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v3
.end method

.method public static canShowOngoing(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "canShowOngoing"

    const-string v1, "com.tencent.mm"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/miui/systemui/notification/NotificationSettingsHelper;->getUserContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->isUserOwner(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/miui/systemui/notification/NotificationSettingsManager;->sINSTANCE:Lcom/miui/systemui/notification/NotificationSettingsManager;

    invoke-virtual {v0, v1, p0}, Lcom/miui/systemui/notification/NotificationSettingsManager;->canShowOngoing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "package"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/miui/utils/MiuiConstants$Notif;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v0, v5, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error canShowOngoing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NotifiSettingsHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public static getCustomFold(ILjava/lang/String;)I
    .registers 7

    invoke-static {}, Lcom/miui/systemui/notification/NotificationSettingsHelper;->getUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->isUserOwner(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/systemui/notification/NotificationSettingsManager;->sINSTANCE:Lcom/miui/systemui/notification/NotificationSettingsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_customFold"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/systemui/notification/NotificationSettingsManager$Prefs;->getNotif(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "customFoldDefault"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/utils/MiuiConstants$Notif;->URI:Landroid/net/Uri;

    const-string v3, "getCustomFold"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "customFold"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getCustomFold "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NotifiSettingsHelper"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return p0
.end method

.method public static getUserContext()Landroid/content/Context;
    .registers 1

    const-class v0, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static isNonBlockable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x107009f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v3, v3, v6

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    return v6

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static isNotificationsBanned(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    :try_start_0
    sget-object v0, Lcom/miui/systemui/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p0}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "areNotificationsEnabledForPackage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotifiSettingsHelper"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setNotificationsEnabledForPackage(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 7

    invoke-static {p0, p2}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :try_start_0
    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, v2, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sget-object v1, Lcom/miui/systemui/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p2, p0, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p2}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/UserHandle;

    const/16 v3, 0x3e7

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2, v2, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sget-object v1, Lcom/miui/systemui/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p2, p0, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    sget-object p0, Lcom/miui/systemui/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p2, v0, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public static showEliteStyle()Z
    .registers 2

    const/4 v1, 0x1

    const-string v0, "icon_elite_app_color"

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static showGoogleStyle()Z
    .registers 2

    sget-object v0, Lcom/miui/systemui/notification/NotificationSettingsManager;->sINSTANCE:Lcom/miui/systemui/notification/NotificationSettingsManager;

    iget-object v0, v0, Lcom/miui/systemui/notification/NotificationSettingsManager;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    iget v0, v0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static showMiuiStyle()Z
    .registers 1

    sget-object v0, Lcom/miui/systemui/notification/NotificationSettingsManager;->sINSTANCE:Lcom/miui/systemui/notification/NotificationSettingsManager;

    iget-object v0, v0, Lcom/miui/systemui/notification/NotificationSettingsManager;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    iget v0, v0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static startAppNotificationSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    sget-boolean v0, Lcom/miui/systemui/notification/NotificationSettingsHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "startAppNotificationSettings pkg="

    const-string v1, " label="

    const-string v2, " uid="

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "NotifiSettingsHelper"

    invoke-static {p4, v0, p2}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x8000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AppNotificationSettingsActivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "packageName"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uid"

    invoke-virtual {p2, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "highlight_channel_id"

    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, ":settings:show_fragment_args"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

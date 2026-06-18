.class public abstract Lcom/android/systemui/statusbar/notification/utils/NotifImageUtil;
.super Ljava/lang/Object;


# direct methods
.method public static applyAppIconAllowCustom(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/widget/ImageView;Z)V
    .registers 8

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/utils/NotifImageUtil;->getCustomAppIcon(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->isHybrid(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v3, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    const-class v0, Lcom/miui/systemui/graphics/AppIconsManager;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/graphics/AppIconsManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconInner(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_7

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_6
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public static getCustomAppIcon(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "miui.opPkg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/miui/systemui/notification/NotificationSettingsManager;->sINSTANCE:Lcom/miui/systemui/notification/NotificationSettingsManager;

    sget-boolean v3, Lcom/miui/systemui/notification/NotificationSettingsManager;->DEBUG:Z

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/miui/systemui/notification/NotificationSettingsManager;->mCustomAppIconPackages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "miui.appIcon"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/Icon;

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_5

    :cond_4
    :goto_2
    return-object v1

    :cond_5
    const-class p1, Lcom/miui/systemui/graphics/AppIconsManager;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/systemui/graphics/AppIconsManager;

    invoke-virtual {p1, p0}, Lcom/miui/systemui/graphics/AppIconsManager;->getIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getSmallIcon(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;IZ)Landroid/graphics/drawable/Icon;
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_4

    invoke-static {}, Lcom/miui/systemui/notification/NotificationSettingsHelper;->showEliteStyle()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/systemui/notification/MiuiNotificationCompat;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/systemui/notification/NotificationSettingsManager;->sINSTANCE:Lcom/miui/systemui/notification/NotificationSettingsManager;

    invoke-virtual {v3, v2}, Lcom/miui/systemui/notification/NotificationSettingsManager;->canSendSubstituteNotification(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget-object p3, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "miui.isGrayscaleIcon"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_3

    move p3, v0

    goto :goto_3

    :cond_3
    move p3, v1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p3, 0x1

    :goto_3
    if-eqz p3, :cond_13

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/systemui/notification/MiuiNotificationCompat;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/miui/systemui/notification/NotificationSettingsHelper;->DEBUG:Z

    sget-object v3, Lcom/miui/systemui/notification/NotificationSettingsManager;->sINSTANCE:Lcom/miui/systemui/notification/NotificationSettingsManager;

    invoke-virtual {v3, v2}, Lcom/miui/systemui/notification/NotificationSettingsManager;->canSendSubstituteNotification(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    :goto_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/systemui/statusbar/notification/utils/NotifImageUtil;->getCustomAppIcon(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    goto :goto_6

    :cond_7
    :goto_5
    move-object v2, v4

    :goto_6
    if-eqz v2, :cond_8

    return-object v2

    :cond_8
    invoke-static {p1}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->isHybrid(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_b

    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    move v0, v1

    :cond_b
    :goto_7
    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_8

    :cond_d
    iget-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_e

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p0, v1

    goto :goto_8

    :cond_e
    move-object p0, v4

    :goto_8
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_10

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    :cond_10
    :goto_9
    if-eqz v4, :cond_11

    return-object v4

    :cond_11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-gez p0, :cond_12

    goto :goto_a

    :cond_12
    move p2, p0

    :goto_a
    const-class p0, Lcom/miui/systemui/graphics/AppIconsManager;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/systemui/graphics/AppIconsManager;

    invoke-virtual {p0, p2, p3}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_13

    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static handleFocusAppIcon(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/app/Notification;)V
    .registers 7

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/miui/systemui/notification/MiuiNotificationCompat;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p3, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const-class v1, Lcom/miui/systemui/graphics/AppIconsManager;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/graphics/AppIconsManager;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v1, p3}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/utils/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static shouldSubstituteSmallIcon(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .registers 3

    invoke-static {}, Lcom/miui/systemui/notification/NotificationSettingsHelper;->showEliteStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "miui.isGrayscaleIcon"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.class public abstract Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController$Companion;
.super Ljava/lang/Object;


# direct methods
.method public static forceHideOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)Z
    .registers 10

    const/4 v7, 0x1

    sget-boolean v0, Lcom/miui/systemui/notification/NotificationSettingsHelper;->DEBUG:Z

    const-class v0, Lcom/miui/interfaces/IOperatorCustomizedPolicy;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/IOperatorCustomizedPolicy;

    check-cast v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    iget-boolean v1, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCustEnable:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mShowKeyguardNotifications:Z

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    const v4, 0x7f05009f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OR"

    iget-object v0, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrier:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    const-string v1, "NotificationFilterController"

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "miui.onlyShowKeyguard"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    const-string v6, "show_notif_elite_lock"

    invoke-static {v6, v7}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_8

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mHasShownAfterUnlock:Z

    :goto_2
    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getChildren(Lcom/android/systemui/statusbar/notification/collection/PipelineEntry;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    const-string v6, "show_notif_elite_lock"

    invoke-static {v6, v7}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_6

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mHasShownAfterUnlock:Z

    :goto_3
    if-nez v0, :cond_4

    :cond_6
    move p1, v3

    goto :goto_4

    :cond_7
    move p1, v2

    :goto_4
    if-nez p1, :cond_8

    sget-boolean p1, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string p1, "has shown "

    invoke-static {p1, p0, v1}, Landroidx/fragment/app/Fragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->canShowOnKeyguard()Z

    move-result p1

    if-nez p1, :cond_a

    sget-boolean p1, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string p1, "can not show onKeyguard "

    invoke-static {p1, p0, v1}, Landroidx/fragment/app/Fragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return v3

    :cond_a
    return v2
.end method

.method public static forceShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    const-string v1, "NotificationFilterController"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean p0, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "show media on keyguard "

    invoke-static {p0, v3, v1}, Landroidx/fragment/app/Fragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    sget-object v4, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->AUTO_GROUP_KEY:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v4, "com.android.cts.verifier"

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/utils/FocusUtils;->isUpdatableFocusNotification(Landroid/app/Notification;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/android/systemui/statusbar/notification/policy/NotificationFilterController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "show updatable focus notification on keyguard "

    invoke-static {p0, v3, v1}, Landroidx/fragment/app/Fragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    const-string v0, "show_notif_elite_lock"

    invoke-static {v0, p0}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

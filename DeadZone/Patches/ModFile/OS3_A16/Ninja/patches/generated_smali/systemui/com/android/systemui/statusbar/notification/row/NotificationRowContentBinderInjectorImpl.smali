.class public final Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;
.super Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjector;


# instance fields
.field public final headsUpManager:Ldagger/Lazy;

.field public final notifiFullAodController:Lcom/android/systemui/statusbar/notification/fullaod/NotifiFullAodController;

.field public sBackgroundColorFiled:Ljava/lang/reflect/Field;

.field public sColorFiled:Ljava/lang/reflect/Field;

.field public sPrimaryTextColorFiled:Ljava/lang/reflect/Field;

.field public sProtectionColorFiled:Ljava/lang/reflect/Field;

.field public sSecondaryTextColorFiled:Ljava/lang/reflect/Field;

.field public final settingsManager:Lcom/miui/systemui/SettingsManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/fullaod/NotifiFullAodController;Ldagger/Lazy;Lcom/miui/systemui/SettingsManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->notifiFullAodController:Lcom/android/systemui/statusbar/notification/fullaod/NotifiFullAodController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->headsUpManager:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->settingsManager:Lcom/miui/systemui/SettingsManager;

    sput-object p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapperInjector;->sNotificationRowContentBinderInjector:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;

    return-void
.end method

.method public static getSingleLineText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleActions(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V
    .registers 16

    iget-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0b00b5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "setCollapsibleIndentDimen"

    invoke-virtual {p0, v0, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071403

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071402

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v2, v2

    const v4, 0x3ff33333

    mul-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v2, v3

    const-string v3, "setMinimumHeight"

    invoke-virtual {p0, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v2, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    :try_start_0
    aget-object v1, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    const v6, 0x7f0e035a

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    iget-object v5, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const v6, 0x7f0b005a

    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v5, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    :cond_1
    iget-object v1, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/miui/utils/configs/MiuiConfigs;->isNightMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    invoke-virtual {v4, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    const v9, 0x7f060b2e

    const v7, 0x7f0b005a

    const v8, 0x7f060b2f

    move-object v12, p0

    move-object v10, p1

    move-object v11, p2

    invoke-static/range {v7 .. v12}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    const v1, 0x7f0b0b70

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/app/Notification;->color:I

    if-eqz p0, :cond_0

    const-string v0, "setBackgroundColor"

    invoke-virtual {p1, v1, v0, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void

    :cond_0
    const-string p0, "setBackgroundResource"

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p0, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public static handleBigContentTitle(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V
    .registers 8

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v1

    :cond_0
    invoke-static {p0, v0, p2, p3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleTitle(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Ljava/lang/CharSequence;ZLandroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f0b0685

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_1

    const p2, 0x7f071405

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :cond_1
    const p1, 0x7f0b0a35

    const-string p3, "setMinimumHeight"

    invoke-virtual {p0, p1, p3, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void

    :cond_2
    invoke-virtual {p0, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public static handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V
    .registers 14

    invoke-virtual {p1}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string v3, "setTime"

    const v4, 0x7f0b0c38

    if-eqz v0, :cond_3

    const v0, 0x7f0b0c50

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.showChronometer"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b028c

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-wide v2, p1, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v4, v2

    const-string v2, "setBase"

    invoke-virtual {p0, v0, v2, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string v2, "setStarted"

    invoke-virtual {p0, v0, v2, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.chronometerCountDown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-wide v0, p1, Landroid/app/Notification;->when:J

    invoke-virtual {p0, v4, v3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_3

    :cond_3
    iget-wide v0, p1, Landroid/app/Notification;->when:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_2
    invoke-virtual {p0, v4, v3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :goto_3
    const v7, 0x7f060b31

    const v5, 0x7f0b0c38

    const v6, 0x7f060b32

    move-object v10, p0

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v5 .. v10}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    return-void
.end method

.method public static handleLargeIcon(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->getNotificationTypeForIm(Landroid/app/Notification;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiTelecomMissedCallsForDNDMode"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MiuiTelecomMissedCalls"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f0b0a0b

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, p0, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static handleProgressBar(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)Z
    .registers 7

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressMax"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.progress"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.progressIndeterminate"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const v4, 0x7f0b0979

    if-eqz v3, :cond_2

    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v4, v0, v1, p0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const/4 p0, 0x0

    invoke-virtual {p1, v4, p0}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v4, p0}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    return v3

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {p1, v4, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return v3
.end method

.method public static handleText(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V
    .registers 11

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->getSingleLineText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_3

    iget v1, p1, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-static {p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$Companion;->addImage(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_2

    const p2, 0x7f0b0c26

    :goto_0
    move v1, p2

    goto :goto_1

    :cond_2
    const p2, 0x7f0b0c14

    goto :goto_0

    :goto_1
    invoke-static {p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f060b2f

    const v3, 0x7f060b2e

    move-object v6, p0

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    :cond_3
    return-void
.end method

.method public static handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V
    .registers 7

    invoke-virtual {p3}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p3, p3, Landroid/app/Notification;->color:I

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    invoke-static {p3}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p4, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p5, p0, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_2
    return-void
.end method

.method public static handleTitle(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Ljava/lang/CharSequence;ZLandroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;
    .registers 13

    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->getSingleLineText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.appInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    const v0, 0x7f0b0c72

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {p3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz p2, :cond_4

    const/4 p2, -0x2

    goto :goto_2

    :cond_4
    const/4 p2, -0x1

    :goto_2
    int-to-float p2, p2

    invoke-virtual {p0, v0, p2, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    const v4, 0x7f060b33

    const v2, 0x7f0b0c72

    const v3, 0x7f060b34

    move-object v7, p0

    move-object v6, p3

    move-object v5, p4

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    :cond_5
    return-object p1
.end method

.method public static processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static resetStandardTemplate(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V
    .registers 4

    const v0, 0x7f0b0103

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v0, 0x7f0b010a

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v0, 0x7f0b0c50

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b028c

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b0c38

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b0a0b

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b0c72

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b0c14

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b0c26

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b076b

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static resetStandardTemplateWithActions(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V
    .registers 4

    const v0, 0x7f0b0103

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v0, 0x7f0b010a

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v0, 0x7f0b0c50

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b028c

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b0c38

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b0a0b

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b0c72

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b0c14

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b0c26

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    return-void
.end method


# virtual methods
.method public final buildBaseContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;
    .registers 8

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const v2, 0x7f0e025b

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->resetStandardTemplate(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    invoke-static {p1}, Lcom/miui/systemui/notification/MiuiNotificationCompat;->getMiuiAction(Landroid/app/Notification;)Landroid/app/Notification$Action;

    move-result-object v1

    const v2, 0x7f0b076b

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v3, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleLargeIcon(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleProgressBar(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)Z

    move-result v1

    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3, v1, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleTitle(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Ljava/lang/CharSequence;ZLandroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleText(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V

    if-nez v1, :cond_1

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;Z)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    invoke-static {p2}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v0
.end method

.method public final buildBigBaseContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;
    .registers 7

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f0e025c

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->resetStandardTemplateWithActions(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleLargeIcon(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleProgressBar(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    :cond_1
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2, v1, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleTitle(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Ljava/lang/CharSequence;ZLandroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleText(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleActions(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;Z)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    return-object v0
.end method

.method public final buildOneLineContent(Landroid/app/Notification;Landroid/content/Context;Z)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;
    .registers 13

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->isTransparent(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v0, :cond_0

    const v3, 0x7f0e0261

    goto :goto_0

    :cond_0
    const v3, 0x7f0e0260

    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->resetStandardTemplate(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl$BuilderRemoteViews;)V

    invoke-static {p1}, Lcom/miui/systemui/notification/MiuiNotificationCompat;->getMiuiAction(Landroid/app/Notification;)Landroid/app/Notification$Action;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0b076b

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v5, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_1
    if-eqz p3, :cond_3

    if-eqz v0, :cond_2

    const v2, 0x7f060b3b

    goto :goto_1

    :cond_2
    const v2, 0x7f060b3d

    :goto_1
    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_3
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const v5, 0x7f060b3e

    const v6, 0x7f060b3c

    if-eqz v2, :cond_6

    const v7, 0x7f0b0c72

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {p2}, Lcom/miui/utils/configs/MiuiConfigs;->isNightMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_4
    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz p3, :cond_6

    if-eqz v0, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_6
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.text"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.bigText"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_a

    invoke-static {p2}, Lcom/miui/utils/configs/MiuiConfigs;->isNightMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_8
    const v7, 0x7f0b0c14

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p3, :cond_a

    if-eqz v0, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {v1, v7, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_a
    const/4 p3, 0x1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;Z)V

    invoke-static {p2}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_b

    return-object v1

    :cond_b
    const/16 p0, 0x8

    invoke-virtual {v1, v4, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v1
.end method

.method public final handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;Z)V
    .registers 5

    return-void
.end method

.method public final initColorField()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sColorFiled:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-class v0, Landroid/app/Notification$Builder;

    const-string v2, "mColors"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sColorFiled:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sPrimaryTextColorFiled:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const-class v0, Landroid/app/Notification$Colors;

    const-string v2, "mPrimaryTextColor"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sPrimaryTextColorFiled:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sSecondaryTextColorFiled:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    const-class v0, Landroid/app/Notification$Colors;

    const-string v2, "mSecondaryTextColor"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sSecondaryTextColorFiled:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sBackgroundColorFiled:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    const-class v0, Landroid/app/Notification$Colors;

    const-string v2, "mBackgroundColor"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sBackgroundColorFiled:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sProtectionColorFiled:Ljava/lang/reflect/Field;

    if-nez v0, :cond_4

    const-class v0, Landroid/app/Notification$Colors;

    const-string v2, "mProtectionColor"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->sProtectionColorFiled:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_4
    return-void
.end method

.method public final isNewView(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;)Z
    .registers 5

    const/4 p0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInjector:Lcom/android/systemui/statusbar/notification/collection/NotificationEntryInjector;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntryInjector;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p0

    :goto_1
    if-nez p4, :cond_2

    return p0

    :cond_2
    return p1
.end method

.method public final isTransparent(Landroid/content/Context;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->settingsManager:Lcom/miui/systemui/SettingsManager;

    iget-boolean p0, p0, Lcom/miui/systemui/SettingsManager;->gameModeEnabled:Z

    if-nez p0, :cond_1

    const-class p0, Lcom/miui/sysuiinterfaces/ICentralSurfaces;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/sysuiinterfaces/ICentralSurfaces;

    invoke-interface {p0}, Lcom/miui/sysuiinterfaces/ICentralSurfaces;->getTopHidesStatusBar()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->AUTO_GROUP_KEY:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

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

.method public final useOneLine(Landroid/content/Context;Landroid/content/Context;Landroid/app/Notification;)Z
    .registers 8

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl;->settingsManager:Lcom/miui/systemui/SettingsManager;

    iget-boolean p0, p0, Lcom/miui/systemui/SettingsManager;->gameModeEnabled:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->isGlobalInCallNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Z

    move-result p2

    invoke-static {p3}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->isCustomViewNotification(Landroid/app/Notification;)Z

    move-result p3

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/miui/sysuiinterfaces/ICentralSurfaces;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/sysuiinterfaces/ICentralSurfaces;

    invoke-interface {p1}, Lcom/miui/sysuiinterfaces/ICentralSurfaces;->getTopHidesStatusBar()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p0, :cond_2

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    return v0

    :cond_3
    return v1
.end method

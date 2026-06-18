.class public abstract Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;


# instance fields
.field public mBackgroundColor:I

.field public final mContext:Landroid/content/Context;

.field public final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mContext:Landroid/content/Context;

    const p0, 0x1020006

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of p2, p0, Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    const-string v1, " icon or sbn is null"

    const-string v2, "NotificationInjector"

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/systemui/notification/NotificationSettingsHelper;->showEliteStyle()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    if-eqz p0, :cond_4

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/utils/NotifImageUtil;->shouldSubstituteSmallIcon(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/statusbar/notification/utils/NotifImageUtil;->applyAppIconAllowCustom(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/widget/ImageView;Z)V

    return-void

    :cond_4
    :goto_2
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static invertViewLuminosity(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->setYUV2RGB()V

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        -0x40800000
        0x0
        0x0
        0x0
        0x437f0000
        0x0
        0x3f800000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000
        0x0
    .end array-data
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const-string v4, "oneLine_transparent"

    const-string v5, "oneLine"

    const-string v6, "bigMediaNarrow"

    const-string v7, "media"

    const-string v8, "progress"

    const-string v9, "messaging"

    const-string v10, "conversation"

    const-string v11, "bigText"

    const-string v12, "bigPicture"

    const v13, 0x1020566

    const v14, 0x7f0b0b70

    if-ne v3, v14, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/miui/systemui/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const-string v15, "base"

    if-ne v3, v14, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "big"

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigPictureViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_5
    const-string v3, "inbox"

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationInboxViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_6
    :goto_0
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_8
    :goto_2
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v13, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;

    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/ConversationLayout;

    invoke-direct {v3, v0, v4, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationProgressViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationProgressViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_0

    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_e
    instance-of v3, v1, Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_f

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3

    :cond_f
    invoke-static/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapperInjector;->getMiuiCustomViewWrapper(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    move-result-object v3

    goto :goto_3

    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v13, :cond_11

    goto :goto_0

    :cond_11
    instance-of v3, v1, Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_12

    goto :goto_0

    :cond_12
    invoke-static/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapperInjector;->getMiuiCustomViewWrapper(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_13

    return-object v3

    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v13, :cond_20

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigPictureTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_14
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_15
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_4

    :cond_16
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_17
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_18
    const-string v3, "call"

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_19
    const-string v3, "compactHUN"

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactHeadsUpTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_1a
    const-string v3, "compactMessagingHUN"

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_1b
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationProgressTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_1c
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntryLegacy()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    const-class v4, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v3, v4}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1d

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_1d
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->getWrappedCustomView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1e

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_1e
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_1f
    :goto_4
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_20
    instance-of v3, v1, Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_21

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v3

    :cond_21
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060b10

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mLegacyColor:I

    return-object v3
.end method


# virtual methods
.method public childrenNeedInversion(ILandroid/view/ViewGroup;)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1

    invoke-static {v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p1

    invoke-static {p1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_4

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v5, 0x4008000000000000L

    cmpg-double v2, v2, v5

    if-gez v2, :cond_3

    return v4

    :cond_2
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->childrenNeedInversion(ILandroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final getBackgroundColor(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/systemui/notification/MiuiBaseNotifUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomBackgroundColor()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    return p0
.end method

.method public getExpandButton()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraMeasureHeight()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getHeaderTranslation(Z)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMinLayoutHeight()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOriginalIconColor()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final needsInversion(ILandroid/view/View;)Z
    .registers 8

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntryLegacy()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->resolveBackgroundColor()I

    move-result p1

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v2, 0x1

    aget v3, v1, v2

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    const/4 v0, 0x2

    aget v0, v1, v0

    float-to-double v0, v0

    const-wide/high16 v3, 0x3fe0000000000000L

    cmpl-double v0, v0, v3

    if-lez v0, :cond_5

    return v2

    :cond_5
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->childrenNeedInversion(ILandroid/view/ViewGroup;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public onContentShown(Z)V
    .registers 2

    return-void
.end method

.method public abstract onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
.end method

.method public onReinflated()V
    .registers 3

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final resolveBackgroundColor()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10602cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public setAnimationsRunning(Z)V
    .registers 2

    return-void
.end method

.method public setContentHeight(II)V
    .registers 3

    return-void
.end method

.method public setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V
    .registers 2

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .registers 2

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .registers 2

    return-void
.end method

.method public setLegacy(Z)V
    .registers 2

    return-void
.end method

.method public setNotificationFaded(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExpandButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    return-void
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .registers 2

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .registers 2

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public shouldClipToRounding(Z)Z
    .registers 2

    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    return p0
.end method

.method public transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .registers 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const-wide/16 v0, 0xd2

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(JLandroid/view/View;)V

    return-void
.end method

.method public transformTo(FLcom/android/systemui/statusbar/TransformableView;)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .registers 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const-wide/16 v0, 0xd2

    invoke-static {p0, v0, v1, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JLjava/lang/Runnable;)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;Z)V
    .registers 4

    return-void
.end method

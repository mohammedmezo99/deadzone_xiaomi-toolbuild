.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public entryToExpand:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public expandTopNotification:Z

.field public final mAlwaysExpandNonGroupedNotification:Z

.field public final mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mSectionStyleProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->mSectionStyleProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050011

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->mAlwaysExpandNonGroupedNotification:Z

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->setupExpandTopNotificationObserver()V

    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .registers 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderEntryListeners:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setupExpandTopNotificationObserver()V
    .registers 6

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_expand_top_notification"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->updateExpandTopNotification()V

    return-void
.end method

.method public final updateExpandTopNotification()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_expand_top_notification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->expandTopNotification:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->entryToExpand:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemExpanded(Z)V

    :cond_1
    return-void
.end method

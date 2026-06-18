.class public abstract Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final ARG_SHOW_TRANSIENT_DISABLING:Ljava/lang/Object;

.field public static final ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

.field public static mInControlCenter:Z


# instance fields
.field public final DEBUG:Z

.field public final TAG:Ljava/lang/String;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mCallbacks:Landroid/util/ArraySet;

.field public mClickEventId:I

.field public final mContext:Landroid/content/Context;

.field public final mCurrentTileUser:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

.field public mHasSetListening:Z

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public final mInstanceId:Lcom/android/internal/logging/InstanceId;

.field public final mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsFullQs:I

.field public final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public final mListeners:Landroid/util/ArraySet;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPendingShowStateMessage:Z

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public volatile mReadyState:I

.field public mShowingDetail:Z

.field public final mStaleListener:Ljava/lang/Object;

.field public mState:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public mTileSpec:Ljava/lang/String;

.field public mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final mUiEventLogger:Lcom/android/systemui/qs/QsEventLoggerImpl;

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static -$$Nest$mhandleSetListeningInternal(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-ne p1, v4, :cond_3

    if-eqz v3, :cond_0

    const-string p1, "handleSetListening true"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHasSetListening:Z

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;I)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_3

    if-eqz v3, :cond_2

    const-string p1, "handleSetListening false"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;I)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-class v0, Lcom/android/systemui/qs/SideLabelTileLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    return-void

    :cond_5
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_DISABLING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLoggerImpl;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tile."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "Tile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    new-instance v1, Landroidx/lifecycle/LifecycleRegistry;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCurrentTileUser:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHasSetListening:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    check-cast p1, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;

    iget-object v0, p1, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/android/systemui/qs/QsEventLoggerImpl;->sequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLoggerImpl;

    iput-object p4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iput-object p5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p9, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iput-object p6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p1}, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;->getUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iput-object p3, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    iput-object p3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;I)V

    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;->getUserId()I

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;->getUserId()I

    move-result v1

    invoke-static {v2, v1, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public click(Lcom/android/systemui/animation/Expandable;)V
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x638

    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    sget-object v0, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLoggerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1, v3}, Lcom/android/systemui/qs/QsEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v7, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;

    const/16 v8, 0xd

    invoke-direct {v7, v8}, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v8, 0x0

    iget-object v4, v4, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v9, "QSLog"

    invoke-virtual {v4, v9, v6, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v0, v7, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "send click msg"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "    "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCurrentTileUser()I
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCurrentTileUser:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final getInstanceId()Lcom/android/internal/logging/InstanceId;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public abstract getLongClickIntent()Landroid/content/Intent;
.end method

.method public getMetricsCategory()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsSpec()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-object p0
.end method

.method public getStaleTimeout()J
    .registers 3

    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method public final getState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method public final getStateMessage()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f140ce8

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f140ce7

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTileLabel()Ljava/lang/CharSequence;
.end method

.method public final getTileSpec()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-object p0
.end method

.method public abstract handleClick(Lcom/android/systemui/animation/Expandable;)V
.end method

.method public handleDestroy()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v3, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v1, v1, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "QSLog"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    const-string v0, "Handle destroy"

    iput-object v0, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleInitialize()V
    .registers 1

    return-void
.end method

.method public handleLongClick(Lcom/android/systemui/animation/Expandable;)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick(Lcom/android/systemui/animation/Expandable;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/systemui/controlcenter/utils/ControlCenterUtils;->useSplitSettings()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    const v4, 0x10008000

    if-nez v3, :cond_3

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "miui_dkt_mode"

    const/4 v5, -0x2

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed to read MIUI_DESKTOP_MODE settings "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ControlCenterUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v2, v2, v1}, Lcom/android/systemui/animation/Expandable;->activityTransitionController(Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Ljava/lang/Integer;Z)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object v2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method

.method public final handleRefreshState(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result p1

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I

    move p1, v2

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v5, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object p1, p1, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "QSLog"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v7

    :goto_0
    iput-object v2, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    iput-object v7, v5, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    iget v2, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v2, v5, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p1, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    move p1, v1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v0, p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleShowStateMessage()V

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mPendingShowStateMessage:Z

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getStaleTimeout()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    return-void
.end method

.method public handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick(Lcom/android/systemui/animation/Expandable;)V

    return-void
.end method

.method public handleSetListening(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v2, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v3, "QSLog"

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return-void
.end method

.method public handleShowStateMessage()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getStateMessage()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleStale()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHasSetListening:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->interceptHandleStale()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    return-void
.end method

.method public abstract handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
.end method

.method public handleUserSwitch(I)V
    .registers 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public interceptHandleStale()Z
    .registers 1

    instance-of p0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final isDestroyed()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isListening()Z
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    return p0
.end method

.method public final isTileReady()Z
    .registers 2

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mReadyState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final longClick(Lcom/android/systemui/animation/Expandable;)V
    .registers 13

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x16e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x638

    invoke-virtual {v1, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    sget-object v0, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLoggerImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1, v4}, Lcom/android/systemui/qs/QsEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v8, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v9, 0x0

    iget-object v5, v5, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v10, "QSLog"

    invoke-virtual {v5, v10, v7, v8, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v8, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v0, v8, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v3, "send long click msg"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {p0, v2, v0, v6, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public abstract newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    instance-of v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3a0

    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x639

    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    check-cast p0, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x39f

    invoke-virtual {p1, v0, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final refreshState()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final refreshState(Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeCallbacks()V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final removeCallbacksByType(I)V
    .registers 4

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final secondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x638

    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    sget-object v0, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLoggerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1, v3}, Lcom/android/systemui/qs/QsEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mClickEventId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v7, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/systemui/qs/logging/QSLogger$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v8, 0x0

    iget-object v4, v4, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v9, "QSLog"

    invoke-virtual {v4, v9, v6, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v0, v7, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "send secondary click msg"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDetailListening(Z)V
    .registers 2

    return-void
.end method

.method public setListening(Ljava/lang/Object;Z)V
    .registers 5

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTileSpec(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object p1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object p1, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    return-void
.end method

.method public final showDetail(Z)V
    .registers 4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0x3eb

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final showStateMessage(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final userSwitch(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCurrentTileUser:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

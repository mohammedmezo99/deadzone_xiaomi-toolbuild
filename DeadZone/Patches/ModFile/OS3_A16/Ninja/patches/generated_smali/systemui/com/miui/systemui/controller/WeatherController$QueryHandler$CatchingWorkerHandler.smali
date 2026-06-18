.class public final Lcom/miui/systemui/controller/WeatherController$QueryHandler$CatchingWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;


# instance fields
.field public final synthetic this$1:Lcom/miui/systemui/controller/WeatherController$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/WeatherController$QueryHandler;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/systemui/controller/WeatherController$QueryHandler$CatchingWorkerHandler;->this$1:Lcom/miui/systemui/controller/WeatherController$QueryHandler;

    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string p0, "WeatherController"

    const-string p1, "Exception on background worker thread"

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

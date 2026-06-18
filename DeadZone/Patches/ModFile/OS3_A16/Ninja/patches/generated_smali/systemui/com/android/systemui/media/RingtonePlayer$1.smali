.class public final Lcom/android/systemui/media/RingtonePlayer$1;
.super Landroid/media/IRingtonePlayer$Stub;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/RingtonePlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/RingtonePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-direct {p0}, Landroid/media/IRingtonePlayer$Stub;-><init>()V

    return-void
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .registers 4

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public final getTitle(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v0, p1}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$menforceUriUserId(Lcom/android/systemui/media/RingtonePlayer;Landroid/net/Uri;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {p0, v0}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$mgetContextForUser(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isPlaying(Landroid/os/IBinder;)Z
    .registers 5

    const-string v0, "RingtonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPlaying(token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/RingtonePlayer$Client;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v0, p1}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$menforceUriUserId(Lcom/android/systemui/media/RingtonePlayer;Landroid/net/Uri;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {p0, v0}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$mgetContextForUser(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "external_primary"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    goto :goto_2

    :cond_1
    :goto_0
    const-string p0, "is_alarm"

    const-string v1, "is_notification"

    const-string v2, "is_ringtone"

    filled-new-array {v2, p0, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "r"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Uri is not ringtone, alarm, or notification: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    if-eqz p0, :cond_4

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw p1
.end method

.method public final play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/RingtonePlayer$1;->playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V

    return-void
.end method

.method public final playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V
    .registers 10

    const-string v0, "RingtonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playAsync(uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mRingtonePlayerInjector:Lcom/miui/systemui/notification/RingtonePlayerInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const-string v2, "file"

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 p1, 0x2

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object v1, v1, Lcom/android/systemui/media/RingtonePlayer;->mRingtonePlayerInjector:Lcom/miui/systemui/notification/RingtonePlayerInjector;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_5

    const-string v1, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/system/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1, p2}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$mgetContextForUser(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/systemui/notification/RingtonePlayerInjector;->adjustMashupSoundIfNeeded(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {p0, p2}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$mgetContextForUser(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    const-string v3, "notif_elite_sound"

    invoke-static {v3, v2}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p0}, Lcom/android/systemui/media/RingtonePlayer$1;->isScreenOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_6
    iget-object p2, v1, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "play uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/systemui/media/NotificationPlayer$Command;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    iput v0, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    iput-object p0, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    iput-object p1, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    iput-boolean p3, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    iput-object p4, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    iput p5, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->volume:F

    iget-object p0, v1, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter p0

    :try_start_0
    iget-object p1, v1, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-nez p1, :cond_8

    iget-object p1, v1, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_7
    new-instance p1, Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-direct {p1, v1}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;)V

    iput-object p1, v1, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_8
    iput v0, v1, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    monitor-exit p0

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Async playback only available from system UID."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V
    .registers 14

    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mRingtonePlayerInjector:Lcom/miui/systemui/notification/RingtonePlayerInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/miui/systemui/notification/RingtonePlayerInjector;->Q_INCALL_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, v0, Lcom/miui/systemui/notification/RingtonePlayerInjector;->mOperatorCustomizedPolicy:Lcom/miui/interfaces/IOperatorCustomizedPolicy;

    check-cast p2, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    invoke-virtual {p2}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->playInCallNotification()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    move-object v3, p2

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/miui/systemui/notification/RingtonePlayerInjector;->INCALL_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :goto_1
    const-string p2, "RingtonePlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "play(token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {p2, v3}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$menforceUriUserId(Lcom/android/systemui/media/RingtonePlayer;Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object p2, p2, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    new-instance v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    move-object v2, p1

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/RingtonePlayer$Client;-><init>(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/UserHandle;Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)V

    const/4 p1, 0x0

    invoke-interface {v2, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0, p5}, Landroid/media/Ringtone;->setLooping(Z)V

    iget-object p0, v0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0, p4}, Landroid/media/Ringtone;->setVolume(F)V

    iget-object p0, v0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setPlaybackProperties(Landroid/os/IBinder;FZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/RingtonePlayer$Client;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1, p2}, Landroid/media/Ringtone;->setVolume(F)V

    iget-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1, p3}, Landroid/media/Ringtone;->setLooping(Z)V

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0, p4}, Landroid/media/Ringtone;->setHapticGeneratorEnabled(Z)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final stop(Landroid/os/IBinder;)V
    .registers 5

    const-string v0, "RingtonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop(token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/RingtonePlayer$Client;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final stopAsync()V
    .registers 6

    const-string v0, "RingtonePlayer"

    const-string v1, "stopAsync()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    new-instance v1, Lcom/android/systemui/media/NotificationPlayer$Command;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    iput v2, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    new-instance v1, Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;)V

    iput-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    iput v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Async playback only available from system UID."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;
.super Ljava/lang/Object;


# static fields
.field private static final DBG_CLOUD:Z

.field public static final FUCSWITCH:Ljava/lang/String; = "fucSwitch"

.field static final LAST_SYNC_CLOUD_INFO:Ljava/lang/String; = "last_sync_cloud_info"

.field public static final PARAM:Ljava/lang/String; = "param"

.field public static final PARAM2:Ljava/lang/String; = "param2"

.field public static final TAG:Ljava/lang/String; = "CloudUpdateHideMode"

.field static final TEMP_FILE:Ljava/lang/String; = "temp.config"

.field public static final VIP:Ljava/lang/String; = "vip"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "power.cloud"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "featureValue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p3, p2}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getGlobalCloudFeatureContentValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static dump(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getLastUpdateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applist_update_time"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    const-string v4, "None Cloud Update"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CloudUpdateTime is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    const-string v4, "None appCloud Update"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppCloudUpdateTime is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    const-string v4, "power_update_upid"

    invoke-static {p0, v4, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "powerkeeper_cloudcontrol_last_data_md5"

    invoke-static {p0, v4, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v5, "power_applist_upid"

    invoke-static {p0, v5, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "powerkeeper_cloudcontrol_last_applist_data_md5"

    invoke-static {p0, v5, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const-string v6, "last_sync_cloud_info"

    invoke-static {p0, v6, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "PowerCloud EffectiveInfo:{update="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",updateHash="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",applist="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",applistHash="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",lastSyncInfo:{"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->dumpUserTable(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static dumpUserTable(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "dump  userTable"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/powerkeeper/provider/UserConfigureHelper;->createFromTable(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x40

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powerkeeper/provider/UserConfigureHelper;

    invoke-virtual {v1}, Lcom/miui/powerkeeper/provider/UserConfigureHelper;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powerkeeper/provider/UserConfigureHelper;

    invoke-virtual {v2}, Lcom/miui/powerkeeper/provider/UserConfigureHelper;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powerkeeper/provider/UserConfigureHelper;

    invoke-virtual {v2}, Lcom/miui/powerkeeper/provider/UserConfigureHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powerkeeper/provider/UserConfigureHelper;

    invoke-virtual {v2}, Lcom/miui/powerkeeper/provider/UserConfigureHelper;->getLastConfigured()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powerkeeper/provider/UserConfigureHelper;

    invoke-virtual {v2}, Lcom/miui/powerkeeper/provider/UserConfigureHelper;->getBgControl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powerkeeper/provider/UserConfigureHelper;

    invoke-virtual {v0}, Lcom/miui/powerkeeper/provider/UserConfigureHelper;->getBgDelayMin()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "end  dump  userTable  end"

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static getParamNameInDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "param"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_params"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "param2"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_params2"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isApplistListNull(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lcom/miui/powerkeeper/provider/CloudAppConfigure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_1
    sget-object v0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v3, "applistException"

    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applist if null --->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_4
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method private static logLong(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit16 v2, v1, 0xfa0

    if-lt v2, v0, :cond_0

    sget-object v3, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static parseApplistResult(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "app_list"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->useNewCloudControl()Z

    move-result v2

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->parseFromJson(Lorg/json/JSONObject;)Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->parseFromJsonForNewCC(Lorg/json/JSONObject;)Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->parseFromJson(Lorg/json/JSONObject;)Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    invoke-static {p0, v4}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getCloudAppContentValues(Landroid/content/Context;Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p0, v1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->setCloudAppRule(Landroid/content/Context;Ljava/util/List;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_2
    sget-object p1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse cloud config error"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string p1, "parse json content error"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static parseApplistResult(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "app_list_controller"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->parseFromJsonForNewCC(Lorg/json/JSONObject;)Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p0, v3}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getCloudAppContentValues(Landroid/content/Context;Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->setCloudAppRule(Landroid/content/Context;Ljava/util/List;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_2
    sget-object p1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse cloud config error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static varargs parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/miui/powerkeeper/utils/Constant;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fucSwitch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    array-length p1, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p3, v1

    invoke-static {p2, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->getParamNameInDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->delete(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "parseFunction error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static parseLocalConfig(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "parseResult"

    const-string v3, "thermal_deadlock_info"

    const-string v4, "thermal_setting_is_cloud_control"

    const-string v5, "thermal_sptm_2_by_home_enable"

    const-string v6, "thermal_collector_compound_scenarios"

    const-string v7, "thermal_collector_version"

    const-string v8, "thermal_highfps_group_activities"

    const-string v9, "thermal_common"

    const-string v10, "thermal_camera_group_activities"

    const-string v11, "thermal_group"

    const-string v12, "thermal_enhance_mode_enable"

    const-string v13, ""

    :try_start_0
    new-instance v15, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v14, p1

    :try_start_1
    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    :goto_0
    if-eqz v1, :cond_6

    move-object/from16 v17, v2

    :try_start_2
    array-length v2, v1

    if-ge v14, v2, :cond_5

    aget-object v2, v1, v14

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_0
    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v18, v14

    goto :goto_4

    :cond_1
    sget-boolean v18, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    if-eqz v18, :cond_2

    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    move/from16 v18, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "parseLocalConfig overlayStr="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_9

    :cond_2
    move-object/from16 v19, v3

    move/from16 v18, v14

    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    sget-boolean v20, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    if-eqz v20, :cond_3

    move-object/from16 p1, v1

    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    move-object/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "parseLocalConfig overlay key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    move-object/from16 p1, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    :goto_3
    invoke-virtual {v15, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v4, v21

    goto :goto_2

    :cond_4
    move-object/from16 v21, v4

    :goto_4
    add-int/lit8 v14, v18, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    goto :goto_0

    :cond_5
    :goto_5
    move-object/from16 v19, v3

    move-object/from16 v21, v4

    goto :goto_6

    :cond_6
    move-object/from16 v17, v2

    goto :goto_5

    :goto_6
    const-string v1, "thermal_videochat_config_enable"

    const-string v2, "param"

    const-string v3, "param2"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v15, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v15, v12, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v12, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    sget-object v2, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enhanceModeEnable is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v15, v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v15, v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v15, v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v15, v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v7, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v15, v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x0

    invoke-virtual {v15, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v5, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    const/4 v1, 0x1

    move-object/from16 v2, v21

    invoke-virtual {v15, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-object/from16 v2, v19

    invoke-virtual {v15, v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/miui/powerkeeper/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/powerkeeper/cloudcontrol/CloudControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powerkeeper/cloudcontrol/CloudControlManager;->usersUpdateCloud()V

    return v1

    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_9

    :goto_7
    :try_start_3
    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    move-object/from16 v2, v17

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_8
    invoke-static {}, Lcom/miui/powerkeeper/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/powerkeeper/cloudcontrol/CloudControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powerkeeper/cloudcontrol/CloudControlManager;->usersUpdateCloud()V

    const/16 v16, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    :goto_9
    :try_start_4
    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :goto_a
    return v16

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/miui/powerkeeper/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/powerkeeper/cloudcontrol/CloudControlManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudControlManager;->usersUpdateCloud()V

    throw v0
.end method

.method static parseRemoteResult(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static parseResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "parseResult"

    const-string v3, "open_night_clean_enable"

    const-string v4, "restrict_service_group"

    const-string v5, "process_cluster_group"

    const-string v6, "alarm_align_list"

    const-string v7, "audio_active_control"

    const-string v8, "group_tp_active_time"

    const-string v9, "group_tp_active_device_list"

    const-string v10, "sleep_mode_cloud"

    const-string v11, "sleep_mode_network_white_apps"

    const-string v12, "key_wakelock_cloud_content"

    const-string v13, "key_network_min_interval"

    const-string v14, "upload_log"

    const-string v15, "power_group"

    move-object/from16 v16, v2

    const-string v2, "speed_mode_enable"

    move-object/from16 v17, v3

    const-string v3, "param2"

    move-object/from16 v18, v4

    const-string v4, "param"

    move-object/from16 v19, v5

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v21, v6

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    if-eqz v1, :cond_6

    move-object/from16 v22, v7

    array-length v7, v1

    if-ge v6, v7, :cond_5

    aget-object v7, v1, v6

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1

    :cond_0
    move/from16 v23, v6

    move-object/from16 v26, v8

    move-object/from16 v24, v14

    goto :goto_4

    :cond_1
    sget-boolean v23, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    if-eqz v23, :cond_2

    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    move/from16 v23, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v14

    const-string v14, "parseResult overlayStr="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_b

    :cond_2
    move/from16 v23, v6

    move-object/from16 v24, v14

    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    sget-boolean v25, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    if-eqz v25, :cond_3

    move-object/from16 p1, v1

    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    move-object/from16 v25, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v8

    const-string v8, "parseResult overlay key="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " value="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    move-object/from16 p1, v1

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    :goto_3
    invoke-virtual {v5, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, p1

    move-object/from16 v6, v25

    move-object/from16 v8, v26

    goto :goto_2

    :cond_4
    move-object/from16 v26, v8

    :goto_4
    add-int/lit8 v6, v23, 0x1

    move-object/from16 v1, p2

    move-object/from16 v7, v22

    move-object/from16 v14, v24

    move-object/from16 v8, v26

    goto :goto_0

    :cond_5
    :goto_5
    move-object/from16 v26, v8

    move-object/from16 v24, v14

    goto :goto_6

    :cond_6
    move-object/from16 v22, v7

    goto :goto_5

    :goto_6
    const-string v1, "feature_list"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlFeature;->parseFromJson(Lorg/json/JSONObject;)Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlFeature;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-static {v0, v8}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getCloudFeatureContentValues(Landroid/content/Context;Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlFeature;)Landroid/content/ContentValues;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    const-string v1, "hide_mode"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "miui_standby"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "no_core_system_apps"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    invoke-static {}, Lb/a;->q()Lb/a;

    move-result-object v1

    sget v7, Lb/b;->Q:I

    invoke-virtual {v1, v7}, Lb/a;->t(I)Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v7, "old cloud"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v1, "doze_whitelist_apps"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    :cond_a
    const-string v1, "level_ultimate_special_apps"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "ble_scan_block"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "ble_scan_param"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "frozen"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "cluster"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "frozenNew"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "frozenNew_whitelist"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "bright_millet"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "screenoff_millet_mode"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "hot_feedback"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "network_feedback"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "location_delay_hot"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "kill_delay_hot"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "alarm_align"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "launch_restrict"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "aurogon_enable"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "app_bgidle"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "i_delay"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "standby_chain_delay"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v1, "kill_configs"

    invoke-static {v0, v6, v5, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    invoke-static {v0, v6}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->setCloudFeatureRule(Landroid/content/Context;Ljava/util/List;)Z

    const-string v1, "network_min_interval"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v1, :cond_b

    :try_start_1
    sget-object v7, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "feaStandbyChainDelayValue:"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v13, v6}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v0, v13, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_b
    const-string v1, "wakelock"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    sget-object v7, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wakelockJson:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v12, v6}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {v0, v12, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    sget-object v7, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "speedMode:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v12, 0x0

    invoke-static {v1, v2, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_8
    const-string v1, "event_notify_control"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "fucSwitch_audio"

    const/4 v12, 0x0

    invoke-virtual {v2, v1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "event_notify_control_fucSwitch_audio"

    invoke-static {v0, v2, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KEY_EVENT_NOTIFY_CONTROL_AUDIO_SWITCH="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v5, v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sleepModeData is "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v0, v11, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sleep mode white list is "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v1, "gms_control"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "fakegps"

    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/String;

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "txpower"

    new-array v2, v12, [Ljava/lang/String;

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "screen_off_disable_sync"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "screen_off_clean_app"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "screen_off_force_idle"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "network_traffic"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "shutdown_power"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "night_battery_usage"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "auto_close_wifi_ap"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "func_deep_sleep_check"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "subsysawake_check"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "nonui_mode"

    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/String;

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lb/a;->q()Lb/a;

    move-result-object v1

    sget v2, Lb/b;->L:I

    invoke-virtual {v1, v2}, Lb/a;->t(I)Z

    move-result v1

    if-nez v1, :cond_11

    sget-boolean v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    if-eqz v1, :cond_10

    const-string v1, "old sleep mode cloud"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v10, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v10, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_11
    invoke-static {}, Lb/a;->q()Lb/a;

    move-result-object v1

    sget v2, Lb/b;->N:I

    invoke-virtual {v1, v2}, Lb/a;->t(I)Z

    move-result v1

    if-nez v1, :cond_13

    sget-boolean v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    if-eqz v1, :cond_12

    const-string v1, "is old cloud"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v1, "deep_sleep_mode_cloud"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_13
    const-string v1, "night_clean_process"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lb/a;->q()Lb/a;

    move-result-object v1

    sget v2, Lb/b;->S:I

    invoke-virtual {v1, v2}, Lb/a;->t(I)Z

    move-result v1

    if-nez v1, :cond_15

    sget-boolean v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    if-eqz v1, :cond_14

    const-string v1, "old alarm control cloud"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string v1, "alarm_control"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_15
    const-string v1, "sleep_reboot"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "enable_txpower_changed"

    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/String;

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "thermal_IECtest_config_enable"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "thermal_sptm_config_enable"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "thermal_scenario_config_enable"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseFunction(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;->getInstance()Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;->notifyAllListeners()V

    invoke-virtual {v5, v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v15, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v0, v15, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_16
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v1, v26

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v1, v24

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-boolean v3, Lmiui/os/Build;->IS_MIUI:Z

    xor-int/2addr v3, v8

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_17
    move-object/from16 v1, v22

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powerkeeper/PowerKeeperManager;->getAudioDisguiseController()Lcom/miui/powerkeeper/controller/AudioDisguiseController;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/miui/powerkeeper/controller/AudioDisguiseController;->dispatchCloudFunctionUpdated()V

    :cond_18
    move-object/from16 v1, v21

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v1, v19

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v1, v18

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v1, v17

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nightCleanEnable is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "thermal_common"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "enable_sp_on_virtual_sensor_comp"

    const/4 v12, 0x0

    invoke-virtual {v3, v1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "superModeEnable is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v12, 0x0

    invoke-static {v0, v5, v2, v12}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onCloudFunctionUpdated(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    invoke-static {v0, v5}, Lcom/miui/powerkeeper/statemachine/PowerStateMachine;->onCloudUpdate(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static {v5}, Le/e;->u(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v8

    :goto_9
    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    move-object/from16 v2, v16

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    const/16 v20, 0x0

    goto :goto_c

    :goto_b
    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_c
    return v20
.end method

.method public static parseResultForGlobalFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "parseResultForGlobalFeature"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1, v1, p2}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->addOptGlobalFeature(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)Z

    invoke-static {p0, p1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->setCloudFeatureRule(Landroid/content/Context;Ljava/util/List;)Z

    invoke-static {}, Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;->getInstance()Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;->notifyAllListeners()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static setTestFunc(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cloud_test_update_md5_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v2, "Update md5Addr"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "key_md5_url"

    invoke-static {p0, v1, v0}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->putURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "cloud_test_update_content_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v2, "Update contentAddr"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "key_content_url"

    invoke-static {p0, v1, v0}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->putURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "cloud_test_app_list_update_md5_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update applistcontentAddr "

    if-eqz v0, :cond_3

    sget-object v2, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "key_app_list_md5_url"

    invoke-static {p0, v2, v0}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->putURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "cloud_app_list_push_update_content_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "key_app_list_content_url"

    invoke-static {p0, v0, p1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->putURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static startUpdate(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 9

    sget-object v0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v1, "startUpdateFeature--->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    const-string v3, ""

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_md5_url"

    sget-object v6, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_NEW_SERVER:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&upid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "power_update_upid"

    invoke-static {p0, v5, p1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getUPID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&regionName="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "power_update"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&bucketName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&typeReg="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/powerkeeper/utils/Device;->getInstance()Lcom/miui/powerkeeper/utils/Device;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/powerkeeper/utils/Device;->getType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_POWER_NEW_SID:Ljava/lang/String;

    invoke-static {v2, v3, p1, v4}, Lcom/miui/powerkeeper/cloudcontrol/HttpUtils;->httpGet([I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v4, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startUpdate result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->logLong(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "msgCode"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string v2, "unknown"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0  #0xcb
    const-string v2, "no update profile"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1  #0xca
    const-string v2, "gray test, not hit"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2  #0xc9
    const-string v2, "none profile match the type"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3  #0xc8
    const-string v2, "hit profile"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v2, 0xc8

    if-eq p1, v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no new clould configuration, returnCode = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: serverCode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "profile"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseRemoteResult(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "upid"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, p1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->storeUPID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->saveLastUpdateTime(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v0, "startUpdate"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const-string p0, "startUpdate result is empty"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: response="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v3, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result empty"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3  #000000c8
        :pswitch_2  #000000c9
        :pswitch_1  #000000ca
        :pswitch_0  #000000cb
    .end packed-switch
.end method

.method public static startUpdateAppList(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 8

    invoke-static {}, Lb/a;->q()Lb/a;

    move-result-object v0

    sget v1, Lb/b;->D:I

    invoke-virtual {v0, v1}, Lb/a;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string p1, "AppList has new cloud configured."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Warning:appList has new cloud configured"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_app_list_md5_url"

    sget-object v5, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_NEW_SERVER:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "uuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&upid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "power_applist_upid"

    invoke-static {p0, v4, p1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getUPID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&regionName="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "power_update"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&bucketName="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "power_applist"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&typeReg="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/powerkeeper/utils/Device;->getInstance()Lcom/miui/powerkeeper/utils/Device;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/powerkeeper/utils/Device;->getType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_POWER_NEW_SID:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3}, Lcom/miui/powerkeeper/cloudcontrol/HttpUtils;->httpGet([I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v3, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->DBG_CLOUD:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUpdateAppList result="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->logLong(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "msgCode"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    sget-object v2, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0  #0xcb
    sget-object v2, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v3, "no update profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1  #0xca
    sget-object v2, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v3, "gray test, not hit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2  #0xc9
    sget-object v2, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v3, "none profile match the type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3  #0xc8
    sget-object v2, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v3, "hit profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v2, 0xc8

    if-eq p1, v2, :cond_3

    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no new clould configuration, returnCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: serverCode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "profile"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->parseApplistResult(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "upid"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, p1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->storeUPID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "applist_update_time"

    invoke-static {}, Lcom/miui/powerkeeper/utils/Utils;->getCurrentFormatTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string v0, "startUpdateAppList"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->TAG:Ljava/lang/String;

    const-string p1, "applist get no data"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: response="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v2, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result empty"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3  #000000c8
        :pswitch_2  #000000c9
        :pswitch_1  #000000ca
        :pswitch_0  #000000cb
    .end packed-switch
.end method

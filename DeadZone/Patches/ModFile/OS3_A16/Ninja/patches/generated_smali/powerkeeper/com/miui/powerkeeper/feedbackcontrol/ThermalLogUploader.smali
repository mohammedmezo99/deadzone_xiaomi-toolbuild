.class public Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader$UploadResult;
    }
.end annotation


# static fields
.field private static final BIZ_NAME:Ljava/lang/String; = "themal"

.field private static final TAG:Ljava/lang/String; = "ThermalLogUploader"

.field private static final THERMAL_UPLOAD_URL:Ljava/lang/String; = "https://port.sec.miui.com/mqsas/fileUploadWithUrlId"

.field public static final ZIP_THERMAL_EXCEPTION_LOG_DIR:Ljava/lang/String; = "/data/vendor/thermal/log"

.field private static sIsTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/miui/powerkeeper/feedbackcontrol/ThermalInfoUtils;->isTestMode()Z

    move-result v0

    sput-boolean v0, Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader;->sIsTestMode:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static uploadFile(Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    sget-boolean v0, Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader;->sIsTestMode:Z

    const-string v1, "ThermalLogUploader"

    if-eqz v0, :cond_0

    const-string v0, "uploadFile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2, v0}, Lcom/miui/powerkeeper/feedbackcontrol/HttpUtils;->httpPostFiles(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader$UploadResult;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader$UploadResult;

    const-string v0, "true"

    iget-object p0, p0, Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader$UploadResult;->status:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    sget-boolean v0, Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader;->sIsTestMode:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete isSuccess:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Upload %s done ,delete %s"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    const-string p0, "successfully"

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string p0, "error"

    :goto_0
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean p1, Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader;->sIsTestMode:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UploadFile Failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static uploadFiles()V
    .registers 5

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/vendor/thermal/log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const-string v4, "https://port.sec.miui.com/mqsas/fileUploadWithUrlId?bizName=themal"

    invoke-static {v4, v3}, Lcom/miui/powerkeeper/feedbackcontrol/ThermalLogUploader;->uploadFile(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

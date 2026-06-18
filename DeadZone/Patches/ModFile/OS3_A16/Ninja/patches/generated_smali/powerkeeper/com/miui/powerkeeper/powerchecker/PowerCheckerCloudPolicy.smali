.class public Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;,
        Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$AppPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerChecker.ClPolicy"


# instance fields
.field private mAppPolicies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$AppPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioOnThreshold:I

.field private mContext:Landroid/content/Context;

.field private mCustomerPower:Z

.field private mEnabled:Z

.field private mInBackgroundPercent:I

.field private mKernelWakelockInterval:I

.field private mKernelWakeupInterval:I

.field private mMaxIgnoreCount:I

.field private mMaxKillCount:I

.field private mMaxNotifyCount:I

.field private mMinCheckTimeInterval:I

.field private mNetworkSpeedThreshold:I

.field private mPartialWLCountBase:I

.field private mPartialWLTimeBase:I

.field private mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

.field private mScreenOffPercent:I

.field private mSystemAnomalyAction:I

.field private mWhiteCheckerAppList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x927c0

    iput v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMinCheckTimeInterval:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxKillCount:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxNotifyCount:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxIgnoreCount:I

    const/16 v2, 0x2800

    iput v2, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mNetworkSpeedThreshold:I

    iput v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAudioOnThreshold:I

    iput v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mScreenOffPercent:I

    const/16 v2, 0x1388

    iput v2, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mKernelWakelockInterval:I

    const v2, 0xc350

    iput v2, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mKernelWakeupInterval:I

    const/16 v2, 0xfa0

    iput v2, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPartialWLTimeBase:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPartialWLCountBase:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mSystemAnomalyAction:I

    iput v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mInBackgroundPercent:I

    iput-boolean v2, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mEnabled:Z

    iput-boolean v1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mCustomerPower:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mWhiteCheckerAppList:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mContext:Landroid/content/Context;

    const/16 p1, 0x8

    new-array v0, p1, [Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    iput-object v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    new-instance v1, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    invoke-direct {v1, p0, v2}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;-><init>(Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;I)V

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getNewCloud(Lb/a;I)Lorg/json/JSONObject;
    .registers 3

    invoke-virtual {p1, p2}, Lb/a;->t(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getOldCloud(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "abnormal_consume.config"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "PowerChecker.ClPolicy"

    if-eqz v1, :cond_0

    const-string p1, "old-cloud load cloud config file"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/powerkeeper/utils/FileUtil;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "old-cloud cloud config file is not exist"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz p0, :cond_1

    const-string p0, "old-cloud is disable by default"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "old-cloud load local config file"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Lcom/miui/powerkeeper/utils/Utils;->getJsonFromAssert(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getValidCloud(Landroid/content/Context;Lb/a;ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getNewCloud(Lb/a;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "PowerChecker.ClPolicy"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cloud use old-cloud "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cloud use new-cloud "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseAppListPolicy(Ljava/lang/String;Z)V
    .registers 16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PowerChecker.ClPolicy"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseAppListPolicy failed, content:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "app_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "policy_list"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v3, :cond_6

    move v5, p1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "policy"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v8, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v10, "level"

    invoke-virtual {p0, v7}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getTriggerLevel(I)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "count"

    invoke-virtual {p0, v7}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getPolicyCount(I)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "action"

    invoke-virtual {p0, v7}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getActionRule(I)I

    move-result v7

    invoke-virtual {v8, v12, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-nez p2, :cond_2

    iget-object v6, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mWhiteCheckerAppList:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mWhiteCheckerAppList:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseAppListPolicy ignore app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "for whiteCheckerAppList-contained and noAllow-Overlayed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object v6, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    new-instance v8, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$AppPolicy;

    invoke-direct {v8, p0, v10, v11, v7}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$AppPolicy;-><init>(Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;III)V

    invoke-virtual {v6, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v8, "allow_overlayed"

    const/4 v12, 0x1

    invoke-virtual {v6, v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v6, :cond_4

    iget-object v8, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    new-instance v12, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$AppPolicy;

    invoke-direct {v12, p0, v10, v11, v7}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$AppPolicy;-><init>(Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;III)V

    invoke-virtual {v8, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v7, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mWhiteCheckerAppList:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v9, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateAppPolicies, bad config file"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private updateAbnormalConsumeConfig(Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudConfigure;->getAbnormalConsumeConfig(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mEnabled:Z

    const-string v1, "min_check_interval"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setMinCheckTimeInterval(I)V

    const-string v1, "max_kill_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setMaxKillCount(I)V

    const-string v1, "max_notify_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setMaxNotifyCount(I)V

    const-string v1, "max_ignore_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setMaxIgnoreCount(I)V

    const-string v1, "network_speed_threshold"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setNetworkSpeedThreshold(I)V

    const-string v1, "audio_on_threshold"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setAudioOnThreshold(I)V

    const-string v1, "screen_off_percent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setScreenOffPercent(I)V

    const-string v1, "kernel_wakelock_interval"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setKernelWakelockInterval(I)V

    const-string v1, "kernel_wakeup_interval"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setKernelWakeupInterval(I)V

    const-string v1, "partial_wakelock_time_base"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setPartialWLTimeBase(I)V

    const-string v1, "partial_wakelock_count_base"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setPartialWLCountBase(I)V

    const-string v1, "system_anomaly_action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->setSystemAnomalyAction(I)V

    const-string v1, "trigger_level"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    array-length v4, v1

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    aget-object v4, v4, v3

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;->setTriggerLevel(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "action_rule"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    array-length v4, v1

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    aget-object v4, v4, v3

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;->setActionRule(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "default_limit_ratio"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_2
    if-ge v0, v2, :cond_2

    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    aget-object v1, v1, v0

    aget v3, p1, v0

    invoke-virtual {v1, v3}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;->setDefaultLimitRatio(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    iput-boolean v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mEnabled:Z

    return-void
.end method

.method private updateAppPolicies(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mWhiteCheckerAppList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-static {}, Lb/a;->q()Lb/a;

    move-result-object v0

    sget v1, Lb/b;->y:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getValidCloud(Landroid/content/Context;Lb/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudConfigure;->getDetectControl(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudConfigure;->getAppPoliciesConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->updateWhiteListAppPolicies()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->parseAppListPolicy(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private updateCustomerPower(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudConfigure;->getPowerCustomer(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mCustomerPower:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string p1, "PowerCheckerCloudPolicy dump info"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mEnabled ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mMinCheckTimeInterval ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMinCheckTimeInterval:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mMaxKillCount ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxKillCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mMaxNotifyCount ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxNotifyCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mMaxIgnoreCount ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxIgnoreCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mNetworkSpeedThreshold ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mNetworkSpeedThreshold:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mAudioOnThreshold ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAudioOnThreshold:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mScreenOffPercent ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mScreenOffPercent:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKernelWakelockInterval ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mKernelWakelockInterval:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKernelWakeupInterval ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mKernelWakeupInterval:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPartialWLTimeBase ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPartialWLTimeBase:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPartialWLCountBase ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPartialWLCountBase:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSystemAnomalyAction ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mSystemAnomalyAction:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    const/16 v0, 0x8

    if-ge p3, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const-string p3, "  app policies:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    iget-object p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    iget-object p3, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$AppPolicy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mWhiteCheckerAppList ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mWhiteCheckerAppList:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActionRule(I)I
    .registers 2

    iget-object p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;->getActionRule()I

    move-result p0

    return p0
.end method

.method public getAppPolicy(ILjava/lang/String;)Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$AppPolicy;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAppPolicies:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$AppPolicy;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioOnThreshold()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAudioOnThreshold:I

    return p0
.end method

.method public getCustomerPower()Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mCustomerPower:Z

    return p0
.end method

.method public getDefaultLimitRatio(I)I
    .registers 2

    iget-object p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;->getDefaultLimitRatio()I

    move-result p0

    return p0
.end method

.method public getInBackgroundPercent()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mInBackgroundPercent:I

    return p0
.end method

.method public getKernelWakelockInterval()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mKernelWakelockInterval:I

    return p0
.end method

.method public getKernelWakeupInterval()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mKernelWakeupInterval:I

    return p0
.end method

.method public getMaxIgnoreCount()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxIgnoreCount:I

    return p0
.end method

.method public getMaxKillCount()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxKillCount:I

    return p0
.end method

.method public getMaxNotifyCount()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxNotifyCount:I

    return p0
.end method

.method public getMinCheckTimeInterval()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMinCheckTimeInterval:I

    return p0
.end method

.method public getNetworkSpeedThreshold()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mNetworkSpeedThreshold:I

    return p0
.end method

.method public getPartialWLCountBase()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPartialWLCountBase:I

    return p0
.end method

.method public getPartialWLTimeBase()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPartialWLTimeBase:I

    return p0
.end method

.method public getPolicyCount(I)I
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public getScreenOffPercent()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mScreenOffPercent:I

    return p0
.end method

.method public getSystemAnomalyAction()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mSystemAnomalyAction:I

    return p0
.end method

.method public getTriggerLevel(I)I
    .registers 2

    iget-object p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPolicy:[Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy$GlobalPolicy;->getTriggerLevel()I

    move-result p0

    return p0
.end method

.method public isEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mEnabled:Z

    return p0
.end method

.method public setAudioOnThreshold(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mAudioOnThreshold:I

    return-void
.end method

.method public setKernelWakelockInterval(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mKernelWakelockInterval:I

    return-void
.end method

.method public setKernelWakeupInterval(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mKernelWakeupInterval:I

    return-void
.end method

.method public setMaxIgnoreCount(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxIgnoreCount:I

    return-void
.end method

.method public setMaxKillCount(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxKillCount:I

    return-void
.end method

.method public setMaxNotifyCount(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMaxNotifyCount:I

    return-void
.end method

.method public setMinCheckTimeInterval(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mMinCheckTimeInterval:I

    return-void
.end method

.method public setNetworkSpeedThreshold(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mNetworkSpeedThreshold:I

    return-void
.end method

.method public setPartialWLCountBase(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPartialWLCountBase:I

    return-void
.end method

.method public setPartialWLTimeBase(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mPartialWLTimeBase:I

    return-void
.end method

.method public setScreenOffPercent(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mScreenOffPercent:I

    return-void
.end method

.method public setSystemAnomalyAction(I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mSystemAnomalyAction:I

    return-void
.end method

.method public updatePolicy(Landroid/content/Context;)V
    .registers 7

    const-string v0, "PowerChecker.ClPolicy"

    const-string v1, "update cdp-cal-pcc cloud"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lb/a;->q()Lb/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getOldCloud(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lb/b;->y:I

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getValidCloud(Landroid/content/Context;Lb/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lb/b;->x:I

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getValidCloud(Landroid/content/Context;Lb/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lb/b;->w:I

    invoke-direct {p0, p1, v0, v4, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getValidCloud(Landroid/content/Context;Lb/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->updateAbnormalConsumeConfig(Ljava/lang/String;)V

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v3, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->updateAppPolicies(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->updateCustomerPower(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updatePolicy(Landroid/content/Context;ILorg/json/JSONObject;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update cdp-cal-pcc cloud "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerChecker.ClPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lb/a;->q()Lb/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/a;->t(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update policy by new cloud, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update policy by old cloud, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getOldCloud(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    sget v4, Lb/b;->w:I

    if-ne p2, v4, :cond_2

    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->updateCustomerPower(Ljava/lang/String;)V

    return-void

    :cond_2
    sget v4, Lb/b;->y:I

    if-ne p2, v4, :cond_3

    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->updateAbnormalConsumeConfig(Ljava/lang/String;)V

    return-void

    :cond_3
    sget v4, Lb/b;->x:I

    if-ne p2, v4, :cond_5

    invoke-virtual {v0, v4}, Lb/a;->t(I)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->getOldCloud(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-direct {p0, p1, v2, v3}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->updateAppPolicies(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cloud is not exist, type:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateWhiteListAppPolicies()V
    .registers 4

    iget-object v0, p0, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->mContext:Landroid/content/Context;

    const-string v1, "white_checker_app_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update white_checker_app_list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerChecker.ClPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy;->parseAppListPolicy(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

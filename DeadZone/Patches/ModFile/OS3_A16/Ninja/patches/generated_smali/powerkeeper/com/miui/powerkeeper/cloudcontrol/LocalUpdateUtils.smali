.class public Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;
.super Ljava/lang/Object;


# static fields
.field private static final APP_BG_DATA_DELAY_COUNT:Ljava/lang/String; = "set_delay_count"

.field private static final APP_BG_DATA_DELAY_TIME:Ljava/lang/String; = "app_delay"

.field private static final APP_BG_DATA_DISABLE_LONG_TIME:Ljava/lang/String; = "set_data_disable_long"

.field private static final APP_BG_DATA_DISABLE_SHORT_TIME:Ljava/lang/String; = "set_data_disable_short"

.field private static final APP_BG_DATA_MAX_INACTIVE_COUNT:Ljava/lang/String; = "set_inactive_count"

.field private static final APP_BG_DATA_MIN_DATA_KB:Ljava/lang/String; = "set_data_kb"

.field private static final APP_BG_LOCATION_DELAY_TIME:Ljava/lang/String; = "set_location_delay"

.field private static final APP_BG_LOCATION_DISABLE_SHORT_TIME:Ljava/lang/String; = "set_location_disable_short"

.field private static final APP_POWER_STATE_ID:Ljava/lang/String; = "power_state_id"

.field public static final BLE_SCAN_BLOCK_PARAM:Ljava/lang/String; = "ble_scan_param"

.field public static final BLE_SCAN_BLOCK_STATUS:Ljava/lang/String; = "ble_scan_block"

.field public static final DOZE_WHITELIST_APPS:Ljava/lang/String; = "doze_whitelist_apps"

.field public static final FEATURE_ALARM_ALIGN:Ljava/lang/String; = "alarm_align"

.field public static final FEATURE_AUROGON_ENABLE:Ljava/lang/String; = "aurogon_enable"

.field public static final FEATURE_BG_KILL_DELAY_HOT:Ljava/lang/String; = "kill_delay_hot"

.field public static final FEATURE_BG_LOCATION_DELAY_HOT:Ljava/lang/String; = "location_delay_hot"

.field public static final FEATURE_BKGRND_IDLE_DELAY:Ljava/lang/String; = "i_delay"

.field public static final FEATURE_BKGRND_IDLE_STATUS:Ljava/lang/String; = "app_bgidle"

.field public static final FEATURE_BRIGHT_FROZEN:Ljava/lang/String; = "bright_millet"

.field private static final FEATURE_CLUSTER_POLICY:Ljava/lang/String; = "cluster_policy"

.field public static final FEATURE_CLUSTER_STATUS:Ljava/lang/String; = "cluster"

.field private static final FEATURE_CONNECTION:Ljava/lang/String; = "set_data_connection"

.field public static final FEATURE_DPFS:Ljava/lang/String; = "dpfs_feature"

.field public static final FEATURE_FROZEN_NEW_STATUS:Ljava/lang/String; = "frozenNew"

.field public static final FEATURE_FROZEN_NEW_WHITELIST:Ljava/lang/String; = "frozenNew_whitelist"

.field public static final FEATURE_FROZEN_STATUS:Ljava/lang/String; = "frozen"

.field public static final FEATURE_HOT_FEEDBACK:Ljava/lang/String; = "hot_feedback"

.field public static final FEATURE_KILL_CONFIGS:Ljava/lang/String; = "kill_configs"

.field private static final FEATURE_KILL_DELAY:Ljava/lang/String; = "kill_delay"

.field private static final FEATURE_KILL_POLICY:Ljava/lang/String; = "kill_policy"

.field public static final FEATURE_LAUNCH_RESTRICT:Ljava/lang/String; = "launch_restrict"

.field private static final FEATURE_LOCATION:Ljava/lang/String; = "set_location"

.field public static final FEATURE_NETWORK_FEEDBACK:Ljava/lang/String; = "network_feedback"

.field public static final FEATURE_NETWORK_MIN_INTERVAL:Ljava/lang/String; = "network_min_interval"

.field public static final FEATURE_SCREENOFF_MILLET_MODE:Ljava/lang/String; = "screenoff_millet_mode"

.field private static final FEATURE_SENSOR_DELAY:Ljava/lang/String; = "sensor_delay"

.field private static final FEATURE_SENSOR_DISABLE_TYPE:Ljava/lang/String; = "sensor_disable_type"

.field public static final FEATURE_SENSOR_STATUS:Ljava/lang/String; = "set_sensor"

.field public static final FEATURE_STANDBY_CHAIN_DELAY:Ljava/lang/String; = "standby_chain_delay"

.field public static final FEATURE_STATUS:Ljava/lang/String; = "hide_mode"

.field public static final LEVEL_ULTIMATE_SPECIAL_APPS:Ljava/lang/String; = "level_ultimate_special_apps"

.field public static final MIUI_STANDBY_STATUS:Ljava/lang/String; = "miui_standby"

.field public static final NO_CORE_SYSTEM_APPS:Ljava/lang/String; = "no_core_system_apps"

.field public static final SPEED_MODE_ENABLE:Ljava/lang/String; = "speed_mode_enable"

.field public static final TAG:Ljava/lang/String; = "LocalUpdateUtils"

.field public static final WAKELOCK:Ljava/lang/String; = "wakelock"

.field public static final sAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFeaturesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 22

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->sFeaturesMap:Ljava/util/HashMap;

    const-string v1, "hide_mode"

    const-string v2, "featureStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "miui_standby"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "no_core_system_apps"

    const-string v2, "noCoreSystemApps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "doze_whitelist_apps"

    const-string v2, "dozeWhiteListApps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "level_ultimate_special_apps"

    const-string v2, "levelUtimateSpecialApps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ble_scan_block"

    const-string v2, "bleScanBlock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ble_scan_param"

    const-string v2, "bleScanParam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "frozen"

    const-string v2, "FrozenControlStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "frozenNew"

    const-string v2, "FrozenControlNewStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "frozenNew_whitelist"

    const-string v2, "FrozenNewWhiteList"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "alarm_align"

    const-string v2, "alarmAlign"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "launch_restrict"

    const-string v2, "launchRestrict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aurogon_enable"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bright_millet"

    const-string v2, "bright_frozen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenoff_millet_mode"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "set_sensor"

    const-string v2, "SensorControlStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_bgidle"

    const-string v2, "appIdleStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cluster"

    const-string v2, "ClusterStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "set_location"

    const-string v2, "bgLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "set_data_connection"

    const-string v4, "bgData"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "app_delay"

    const-string v6, "bgDataDelayTime"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "set_delay_count"

    const-string v8, "bgDataDelayCount"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "set_data_kb"

    const-string v10, "bgDataMinDataKb"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "set_inactive_count"

    const-string v12, "bgDataMaxInactiveCount"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "set_location_delay"

    const-string v14, "bgLocationDelayTime"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "set_data_disable_short"

    move-object/from16 v16, v13

    const-string v13, "bgDataDisableShortTime"

    invoke-virtual {v0, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "set_data_disable_long"

    const-string v15, "bgDataDisableLongTime"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "set_location_disable_short"

    const-string v15, "bgLocationDisableShortTime"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "kill_delay"

    const-string v15, "k_delay"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v13

    const-string v13, "kill_configs"

    move-object/from16 v18, v15

    const-string v15, "killConfigs"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "kill_policy"

    const-string v15, "k_policy"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v13

    const-string v13, "cluster_policy"

    move-object/from16 v20, v15

    const-string v15, "c_policy"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "sensor_delay"

    const-string v15, "s_delay"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "sensor_disable_type"

    const-string v15, "s_disable_type"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "i_delay"

    invoke-virtual {v0, v13, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "location_delay_hot"

    move-object/from16 v21, v13

    const-string v13, "l_delay_hot"

    invoke-virtual {v0, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "kill_delay_hot"

    const-string v15, "k_delay_hot"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "hot_feedback"

    const-string v15, "hotFeedbackFeature"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "network_feedback"

    const-string v15, "networkFeedbackFeature"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "standby_chain_delay"

    const-string v15, "standbyChainDelay"

    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->sAppMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cluster_policy"

    const-string v2, "c_policy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sensor_delay"

    const-string v2, "s_delay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sensor_disable_type"

    const-string v2, "s_disable_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "location_delay_hot"

    const-string v2, "l_delay_hot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kill_delay_hot"

    const-string v2, "k_delay_hot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "power_state_id"

    const-string v2, "power_state_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudAllowState(Landroid/content/Context;)Z
    .registers 4

    sget-object v0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->IS_ALLOW_AUTO_CLOUD_SYNC:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sget-object v0, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get currentCloud state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getCloudAppContentValues(Landroid/content/Context;Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;)Landroid/content/ContentValues;
    .registers 6

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->appName:Ljava/lang/String;

    const-string v1, "pkgName"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->action:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->sAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->action:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getCloudFeatureContentValues(Landroid/content/Context;Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlFeature;)Landroid/content/ContentValues;
    .registers 3

    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->sFeaturesMap:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlFeature;->featureName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object p1, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlFeature;->value:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCloudServer(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->useNewCloudControl()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "cloud_current_enviroment"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean p0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz p0, :cond_1

    const-string p0, "International"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "China"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "https://jupiter.sys.miui.com/api/profile/getProfile.do?"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, " force China"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "https://preview-jupiter.sys.miui.com/api/profile/getProfile.do?"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, " force Staging"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, "https://jupiter.intl.sys.miui.com/api/profile/getProfile.do?"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, " force International"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCloudVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "hidemode_update_time"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "power_update_upid"

    invoke-static {p0, v2, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "power_applist_upid"

    invoke-static {p0, v3, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CloudVersion: LatestUpdate="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",hash="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",applistHash="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ",model="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/powerkeeper/utils/Device;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlobalCloudFeatureContentValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 3

    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->sFeaturesMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getLastUpdateTime(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "hidemode_update_time"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandom(I)I
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static getUPID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "local_uuid"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_mqs_uuid"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    :cond_0
    return-object v1

    :cond_1
    return-object v2
.end method

.method public static hasSuccessfulCloudSync(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "hidemode_update_time"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isLocalDataOld(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "powerkeeper_cloudcontrol_last_data_md5"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isOtaUpgrade(Landroid/content/Context;)Z
    .registers 4

    invoke-static {}, Lcom/miui/powerkeeper/utils/Device;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_build_version"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static putURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static saveLastDataMD5(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "powerkeeper_cloudcontrol_last_data_md5"

    invoke-static {p0, v0, p1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static saveLastUpdateTime(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidemode_update_time"

    invoke-static {p0, v1, v0}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setCloudAppRule(Landroid/content/Context;Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;)Z
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkgName = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "pkgName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/miui/powerkeeper/provider/CloudAppConfigure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->appName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->action:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->sAppMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->action:Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v6, v4, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v9, v2

    goto :goto_6

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v9, v2

    goto :goto_4

    :cond_3
    :goto_1
    move v6, v8

    :goto_2
    iget-boolean p1, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlApp;->added:Z

    if-eqz p1, :cond_5

    if-eqz v6, :cond_4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v3, v5, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    move v8, v4

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object p0, v0

    :goto_4
    :try_start_2
    sget-object p1, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->TAG:Ljava/lang/String;

    const-string v0, "setCloudAppRule"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_5
    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCloudAppRule: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :goto_6
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p0
.end method

.method public static setCloudAppRule(Landroid/content/Context;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    sget-object v0, Lcom/miui/powerkeeper/provider/CloudAppConfigure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "cloudAppTableoverride"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 p0, 0x1

    return p0
.end method

.method public static setCloudFeatureRule(Landroid/content/Context;Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlFeature;)Z
    .registers 4

    sget-object v0, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->sFeaturesMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlFeature;->featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object p1, p1, Lcom/miui/powerkeeper/cloudcontrol/PowerKeeperCloudControlFeature;->value:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/miui/powerkeeper/provider/GlobalFeatureConfigureHelper;->updateGlobalConfigure(Landroid/content/Context;Landroid/os/Bundle;)V

    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCloudFeatureRule: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static setCloudFeatureRule(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/miui/powerkeeper/provider/GlobalFeatureConfigureHelper;->updateGlobalConfigure(Landroid/content/Context;Landroid/os/Bundle;)V

    sget-object p0, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCloudFeatureRule: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static setLastBuildVersion(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/miui/powerkeeper/utils/Device;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_build_version"

    invoke-static {p0, v1, v0}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static setServerConfigurations(Landroid/content/Context;)V
    .registers 11

    const-string v0, "cloud_current_enviroment"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "https://jupiter.rus.sys.miui.com/api/profile/getProfile.do?"

    const-string v2, "https://jupiter.intl.sys.miui.com/api/profile/getProfile.do?"

    const-string v3, "https://preview-jupiter.sys.miui.com/api/profile/getProfile.do?"

    const-string v4, "https://jupiter.sys.miui.com/api/profile/getProfile.do?"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p0, v5

    move v0, v6

    :goto_0
    move v5, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    move p0, v6

    move v5, p0

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    move p0, v6

    move v0, p0

    move v6, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_2
    move p0, v6

    move v0, p0

    goto :goto_3

    :cond_4
    move p0, v6

    move v0, p0

    goto :goto_0

    :cond_5
    const-string p0, "ro.miui.region"

    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RU"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    sget-boolean p0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :goto_3
    const-string v7, "J6G4oVvvp"

    const-string v8, "kxIu9S9Wi"

    const-string v9, "wdFSzmfNh"

    if-eqz v5, :cond_7

    sput-object v1, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_NEW_SERVER:Ljava/lang/String;

    sput-object v9, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_POWER_NEW_SID:Ljava/lang/String;

    sput-object v8, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_PERF_ENGINE_SID:Ljava/lang/String;

    sput-object v7, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_THERMAL_NEW_SID:Ljava/lang/String;

    const-string p0, "78U2YSIGr"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_PERF_SHIELDER_SID:Ljava/lang/String;

    return-void

    :cond_7
    if-eqz v6, :cond_8

    sput-object v2, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_NEW_SERVER:Ljava/lang/String;

    sput-object v9, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_POWER_NEW_SID:Ljava/lang/String;

    sput-object v8, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_PERF_ENGINE_SID:Ljava/lang/String;

    sput-object v7, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_THERMAL_NEW_SID:Ljava/lang/String;

    const-string p0, "MGdeXyMDu"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_PERF_SHIELDER_SID:Ljava/lang/String;

    return-void

    :cond_8
    if-eqz p0, :cond_9

    sput-object v4, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_NEW_SERVER:Ljava/lang/String;

    const-string p0, "Ag1c4rX26"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_POWER_NEW_SID:Ljava/lang/String;

    const-string p0, "rMT8fp00I"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_PERF_ENGINE_SID:Ljava/lang/String;

    const-string p0, "6obOqcftx"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_THERMAL_NEW_SID:Ljava/lang/String;

    const-string p0, "epZVJIYU2"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_PERF_SHIELDER_SID:Ljava/lang/String;

    return-void

    :cond_9
    if-eqz v0, :cond_a

    sput-object v3, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_NEW_SERVER:Ljava/lang/String;

    const-string p0, "y4tW6V9BZ"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_POWER_NEW_SID:Ljava/lang/String;

    const-string p0, "t5fs40sND"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_PERF_ENGINE_SID:Ljava/lang/String;

    const-string p0, "mWYgmiZPb"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_THERMAL_NEW_SID:Ljava/lang/String;

    const-string p0, "ILQAXSz73"

    sput-object p0, Lcom/miui/powerkeeper/cloudcontrol/Constants;->CLOUD_PERF_SHIELDER_SID:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public static startCloudSyncData(Landroid/content/Context;Z)V
    .registers 8

    invoke-static {p0}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->setServerConfigurations(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/powerkeeper/utils/Utils;->getCurrentFormatTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getCloudServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->startUpdate(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode;->startUpdateAppList(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",update:{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "},applist:{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "last_sync_cloud_info"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0, p1}, Lcom/miui/powerkeeper/powerchecker/PowerCheckerCloudUpdate;->startCloudUpdate(Landroid/content/Context;Z)Z

    invoke-static {p0, p1}, Lcom/miui/powerkeeper/feedbackcontrol/ThermalPerfLimitsUpdate;->updatePerfLimits(Landroid/content/Context;Z)V

    invoke-static {p0, p1}, Lcom/miui/powerkeeper/perfengine/PeCloudUpdate;->f(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/event/EventsAggregator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powerkeeper/event/EventsAggregator;->notifyCloudUpdateListeners()V

    invoke-static {p0, p1}, Lcom/miui/powerkeeper/perfshielder/PerfshielderCloudUpdate;->startCloudUpdate(Landroid/content/Context;Z)V

    return-void
.end method

.method public static storeUPID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static useNewCloudControl()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static waitAndDumpUpdateCloud(Ljava/io/PrintWriter;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6

    if-nez p2, :cond_0

    const-string p1, "updateCloud ignore"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils$1;

    invoke-direct {v1, v0, p1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils$1;-><init>([ILandroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0xfa0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCloud error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p2, "last_sync_cloud_info"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "hash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCloud success. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getCloudVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCloud failed. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/miui/powerkeeper/cloudcontrol/LocalUpdateUtils;->getCloudVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

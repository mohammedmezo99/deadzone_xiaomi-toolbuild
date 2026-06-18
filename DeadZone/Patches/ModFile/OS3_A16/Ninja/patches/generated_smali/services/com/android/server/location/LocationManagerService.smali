.class public Lcom/android/server/location/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationManagerService$LocalService;,
        Lcom/android/server/location/LocationManagerService$SystemInjector;,
        Lcom/android/server/location/LocationManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTRIBUTION_TAG:Ljava/lang/String; = "LocationService"

.field public static final D:Z

.field private static final IS_USER_BUILD:Z

.field public static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final TEL_DBG_PROP:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field public static final USERDEBUG_TEL_PROP:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

.field private final mDeprecatedGnssBatchingLock:Ljava/lang/Object;

.field private mExtraLocationControllerPackage:Ljava/lang/String;

.field private mExtraLocationControllerPackageEnabled:Z

.field private mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

.field private final mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

.field private volatile mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

.field private final mInjector:Lcom/android/server/location/injector/Injector;

.field private final mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

.field private mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

.field mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

.field final mLock:Ljava/lang/Object;

.field private final mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

.field private mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

.field final mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/provider/LocationProviderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4pXLUGdc1ZZk6PGd2_mM71U3nsY(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$6MROPOjvUM8LNGJwGMKCH7A0R0s(Lcom/android/server/location/LocationManagerService;I)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$4(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6c2pN5bSGWwMbCJXYQGSIqoMNSk(Lcom/android/server/location/LocationManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onLocationModeChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$F5OljuzcjvDlFwBQ9pGN3AoBIp8(Lcom/android/server/location/LocationManagerService;I)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$3(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TAWQqGQwAPdcArzax5yh_01u9oM(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onEmergencyStateChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCbzyxB3CueH3y4nKqrLrxUVRZk(Lcom/android/server/location/LocationManagerService;ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/LocationManagerService;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8M_HdyVjo8K58Kq92prpn865fg(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$eyTQ4ijUbfA4AoGXfSy3i0Mr-d8(Lcom/android/server/location/LocationManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->lambda$new$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ujQuQQ3Bc3ydTqqn2V1w-z0TnO4(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/LocationManagerService;->lambda$onSystemReady$5(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogEmergencyState(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->logEmergencyState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogLocationEnabledState(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->logLocationEnabledState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "userdebug"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->IS_USER_BUILD:Z

    nop

    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->USERDEBUG_TEL_PROP:Z

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_3

    const-string v0, "LocationManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->USERDEBUG_TEL_PROP:Z

    if-eqz v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    sput-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V
    .registers 6

    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, "LocationService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    new-instance v0, Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$LocalService;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    const-class v0, Landroid/location/LocationManagerInternal;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/server/location/geofence/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/settings/LocationSettings;->registerLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/EmergencyHelper;->addOnEmergencyStateChangedListener(Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;)V

    new-instance v0, Lcom/android/server/location/provider/PassiveLocationProviderManager;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/server/location/provider/PassiveLocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    new-instance v1, Lcom/android/server/location/provider/PassiveLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/provider/PassiveLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setLocationPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->init(Lcom/android/server/location/LocationManagerService;Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p2}, Lcom/android/server/location/LocationManagerServiceStub;->init(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    return-void
.end method

.method private getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;
    .registers 7

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    return-void
.end method

.method private synthetic lambda$new$2(II)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(I)[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$4(I)[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onStateChanged$7(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method static synthetic lambda$onStateChanged$8(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method private synthetic lambda$onSystemReady$5(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 9

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location noteOp with location off - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, p4}, Landroid/location/util/identity/CallerIdentity;->forTest(IILjava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$setAdasGnssLocationEnabledForUser$6(ZLcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/location/settings/LocationUserSettings;->withAdasGnssLocationEnabled(Z)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v0

    return-object v0
.end method

.method private logEmergencyState()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/EmergencyHelper;->isInEmergency(J)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/LocationUsageLogger;->logEmergencyStateChanged(Z)V

    return-void
.end method

.method private logLocationEnabledState()V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v5}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationEnabledStateChanged(Z)V

    return-void
.end method

.method public static mtkBuildLocationInfo(Landroid/location/Location;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " hAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " hAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const-string v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " etAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    double-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " vAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v1, " vAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " sAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v1, " sAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " bAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const-string v1, " bAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private onEmergencyStateChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->logEmergencyState()V

    return-void
.end method

.method private onLocationModeChanged(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/server/location/LocationManagerServiceStub;->onLocationModeChanged(IZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] location enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->logLocationEnabled(IZ)V

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->logLocationEnabledState()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.location.extra.LOCATION_ENABLED"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    return-void
.end method

.method private onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 8

    invoke-virtual {p2}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] adas gnss location enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->logAdasLocationEnabled(IZ)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.action.ADAS_GNSS_ENABLED_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.location.extra.ADAS_GNSS_ENABLED"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method private refreshAppOpsRestrictions(I)V
    .registers 11

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    new-instance v2, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v2}, Landroid/os/PackageTagsList$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager;->getProviderIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    :cond_3
    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v3}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v3}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v1

    move-object v7, v1

    goto :goto_3

    :cond_5
    move-object v7, v1

    :goto_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/AppOpsManager;

    xor-int/lit8 v5, v0, 0x1

    const/4 v4, 0x0

    move-object v6, p0

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    xor-int/lit8 v5, v0, 0x1

    const/4 v4, 0x1

    move-object v6, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    return-void
.end method

.method private removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    invoke-virtual {p1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->stopManager()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateLastLocationRequest(Ljava/lang/String;Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;
    .registers 9

    new-instance v0, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v0, p2}, Landroid/location/LastLocationRequest$Builder;-><init>(Landroid/location/LastLocationRequest;)V

    invoke-virtual {v0}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Lcom/android/server/location/LocationManagerService$LocalService;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isHiddenFromAppOps()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v4, "hiding from app ops requires android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isAdasGnssBypass()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "gps"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "adas gnss bypass requests are only allowed on the \"gps\" provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "adas gnss bypass requests are only allowed on automotive devices"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isLocationSettingsIgnored()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    :cond_4
    return-object p2
.end method

.method private validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;
    .registers 13

    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "setting a work source requires android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p2}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-wide/32 v2, 0xa11c3b7

    invoke-static {v2, v3, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    const-string v4, "android.permission.LOCATION_HARDWARE"

    const/4 v5, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v5}, Landroid/location/LocationRequest$Builder;->setLowPower(Z)Landroid/location/LocationRequest$Builder;

    :cond_1
    new-instance v1, Landroid/os/WorkSource;

    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v6

    const-string v7, "LocationManagerService"

    if-lez v6, :cond_2

    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v5, "received (and ignoring) illegal worksource with no package name"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "received (and ignoring) illegal worksource with no attribution tag"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p3, v1}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    :cond_4
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;

    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p2

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p3}, Lcom/android/server/location/LocationManagerService$LocalService;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v5

    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v6

    invoke-static {v2, v3, v6}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "low power request requires android.permission.LOCATION_HARDWARE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v4, "hiding from app ops requires android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "gps"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v5, :cond_9

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "adas gnss bypass requests are only allowed on the \"gps\" provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "adas gnss bypass requests are only allowed on automotive devices"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_1
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v5, :cond_a

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    :cond_a
    return-object p2
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :goto_0
    return-void
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 9

    goto :goto_5

    nop

    :goto_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->startManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;)V

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_enable_stationary_throttle"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    move v2, v3

    :goto_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->disableStationaryThrottling()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->keepGnssStationaryThrottling()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    const-string v3, "gps"

    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/4 v2, 0x0

    :cond_4
    if-eqz v2, :cond_5

    new-instance v3, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-direct {v3, v4, v5, p2}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;-><init>(Ljava/lang/String;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    move-object p2, v3

    :cond_5
    invoke-virtual {p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    :cond_6
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    nop

    :goto_4
    throw v1

    :goto_5
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    nop
.end method

.method public addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->addProviderRequestListener_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/provider/ProviderProperties;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p4, p5}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "enable_mezo_mock_locations"

    invoke-static {v2, v1}, Landroid/preference/SettingsMezoHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v6, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/server/location/LocationManagerServiceStub;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/provider/MockLocationProvider;

    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p2, v4, v0, p3}, Lcom/android/server/location/provider/MockLocationProvider;-><init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    invoke-virtual {p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    return-void
.end method

.method calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;
    .registers 8

    goto :goto_32

    nop

    :goto_0
    iget-object v4, v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    goto :goto_1f

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    goto :goto_11

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v1

    goto :goto_6

    nop

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2c

    nop

    :goto_4
    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    goto :goto_31

    nop

    :goto_5
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v4

    goto :goto_1e

    nop

    :goto_6
    return-object v1

    :goto_7
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_20

    nop

    :goto_8
    const-string v5, "LocationManagerService"

    goto :goto_e

    nop

    :goto_9
    if-nez v4, :cond_0

    goto :goto_30

    :cond_0
    goto :goto_2f

    nop

    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_12

    nop

    :goto_b
    iget-object v4, v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    goto :goto_5

    nop

    :goto_c
    goto :goto_1c

    :goto_d
    goto :goto_b

    nop

    :goto_e
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    nop

    :goto_f
    goto :goto_1c

    :goto_10
    goto :goto_2

    nop

    :goto_11
    if-nez v2, :cond_1

    goto :goto_10

    :cond_1
    goto :goto_17

    nop

    :goto_12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    nop

    :goto_13
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_1b

    nop

    :goto_14
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    goto :goto_21

    nop

    :goto_15
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    goto :goto_26

    nop

    :goto_16
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2e

    nop

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    nop

    :goto_18
    const-string v5, " provider has specified a null attribution tag and a non-empty set of extra attribution tags - dropping the null attribution tag"

    goto :goto_3

    nop

    :goto_19
    invoke-direct {v0}, Landroid/os/PackageTagsList$Builder;-><init>()V

    goto :goto_13

    nop

    :goto_1a
    iget-object v5, v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    goto :goto_25

    nop

    :goto_1b
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    goto :goto_1

    nop

    :goto_1d
    iget-object v4, v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    goto :goto_33

    nop

    :goto_1e
    if-ne v4, p1, :cond_2

    goto :goto_28

    :cond_2
    goto :goto_27

    nop

    :goto_1f
    if-eqz v4, :cond_3

    goto :goto_d

    :cond_3
    goto :goto_c

    nop

    :goto_20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_18

    nop

    :goto_21
    invoke-virtual {v0, v4, v5}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    :goto_22
    goto :goto_f

    nop

    :goto_23
    iget-object v4, v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    goto :goto_2d

    nop

    :goto_24
    iget-object v4, v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    goto :goto_15

    nop

    :goto_25
    invoke-virtual {v0, v4, v5}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    goto :goto_24

    nop

    :goto_26
    if-eqz v4, :cond_4

    goto :goto_2a

    :cond_4
    goto :goto_1d

    nop

    :goto_27
    goto :goto_1c

    :goto_28
    goto :goto_23

    nop

    :goto_29
    goto :goto_22

    :goto_2a
    goto :goto_2b

    nop

    :goto_2b
    iget-object v4, v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    goto :goto_16

    nop

    :goto_2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    nop

    :goto_2d
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    nop

    :goto_2e
    iget-object v5, v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    goto :goto_14

    nop

    :goto_2f
    goto :goto_2a

    :goto_30
    goto :goto_a

    nop

    :goto_31
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v3

    goto :goto_0

    nop

    :goto_32
    new-instance v0, Landroid/os/PackageTagsList$Builder;

    goto :goto_19

    nop

    :goto_33
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    nop
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    goto :goto_40

    nop

    :goto_0
    const-string v3, ":"

    goto :goto_2

    nop

    :goto_1
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_78

    nop

    :goto_2
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b

    nop

    :goto_3
    const-string v1, "Location Manager State:"

    goto :goto_34

    nop

    :goto_4
    invoke-direct {v4, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;)V

    goto :goto_65

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    goto :goto_83

    nop

    :goto_6
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location Controller Extra Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v3, :cond_0

    const-string v3, " [enabled]"

    goto :goto_7

    :cond_0
    const-string v3, " [disabled]"

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_88

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_33

    nop

    :goto_9
    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/location/geofence/GeofenceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_86

    nop

    :goto_a
    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto :goto_4e

    nop

    :goto_b
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b

    nop

    :goto_c
    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v3

    goto :goto_96

    nop

    :goto_d
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    goto :goto_1a

    nop

    :goto_e
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    goto :goto_2c

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_81

    nop

    :goto_10
    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_80

    nop

    :goto_11
    if-nez v1, :cond_2

    goto :goto_2f

    :cond_2
    goto :goto_15

    nop

    :goto_12
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    :goto_13
    goto :goto_2e

    nop

    :goto_14
    invoke-virtual {v2}, Lcom/android/server/location/eventlog/LocationEventLog;->copyGnssMeasurementAggregateStats()Landroid/util/ArrayMap;

    move-result-object v2

    goto :goto_39

    nop

    :goto_15
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_50

    nop

    :goto_16
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_31

    nop

    :goto_17
    if-eqz v0, :cond_3

    goto :goto_47

    :cond_3
    goto :goto_46

    nop

    :goto_18
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_8e

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_d

    nop

    :goto_1a
    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object v1

    goto :goto_74

    nop

    :goto_1b
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    nop

    :goto_1c
    goto :goto_a1

    :goto_1d
    goto :goto_5f

    nop

    :goto_1e
    const-string v1, "LocationManagerService"

    goto :goto_21

    nop

    :goto_1f
    sget-object v3, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    goto :goto_72

    nop

    :goto_20
    const-string v4, ": "

    goto :goto_10

    nop

    :goto_21
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    goto :goto_17

    nop

    :goto_22
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_62

    nop

    :goto_23
    goto :goto_3a

    :goto_24
    goto :goto_8c

    nop

    :goto_25
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a7

    nop

    :goto_26
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_28

    nop

    :goto_27
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    nop

    :goto_28
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    goto :goto_a5

    nop

    :goto_2a
    const-string v1, "User Info:"

    goto :goto_7e

    nop

    :goto_2b
    new-instance v4, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;

    goto :goto_4

    nop

    :goto_2c
    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v1

    goto :goto_51

    nop

    :goto_2d
    check-cast v4, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    goto :goto_92

    nop

    :goto_2e
    return-void

    :goto_2f
    goto :goto_3

    nop

    :goto_30
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_56

    nop

    :goto_31
    check-cast v3, Landroid/util/ArrayMap;

    goto :goto_9e

    nop

    :goto_32
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42

    nop

    :goto_33
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    goto :goto_71

    nop

    :goto_34
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6b

    nop

    :goto_35
    return-void

    :goto_36
    goto :goto_8b

    nop

    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_98

    nop

    :goto_38
    if-nez v2, :cond_4

    goto :goto_36

    :cond_4
    goto :goto_60

    nop

    :goto_39
    const/4 v3, 0x0

    :goto_3a
    goto :goto_79

    nop

    :goto_3b
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    nop

    goto :goto_16

    nop

    :goto_3c
    const-string v2, "Historical Aggregate Gnss Measurement Provider Data:"

    goto :goto_27

    nop

    :goto_3d
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    goto :goto_49

    nop

    :goto_3e
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_7b

    nop

    :goto_3f
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_55

    nop

    :goto_40
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_1e

    nop

    :goto_41
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_4c

    nop

    :goto_42
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_e

    nop

    :goto_43
    const/4 v1, 0x0

    goto :goto_73

    nop

    :goto_44
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_45
    goto :goto_5c

    nop

    :goto_46
    return-void

    :goto_47
    goto :goto_93

    nop

    :goto_48
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_57

    nop

    :goto_49
    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocationEventLog;->copyAggregateStats()Landroid/util/ArrayMap;

    move-result-object v1

    goto :goto_a0

    nop

    :goto_4a
    invoke-virtual {v5}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    goto :goto_3e

    nop

    :goto_4b
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_41

    nop

    :goto_4c
    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_44

    nop

    :goto_4d
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    nop

    :goto_4e
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_35

    nop

    :goto_4f
    array-length v1, p3

    goto :goto_66

    nop

    :goto_50
    if-nez v1, :cond_5

    goto :goto_13

    :cond_5
    goto :goto_67

    nop

    :goto_51
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/location/injector/SettingsHelper;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_9c

    nop

    :goto_52
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_63

    nop

    :goto_53
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_8d

    nop

    :goto_54
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/location/settings/LocationSettings;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_9b

    nop

    :goto_55
    if-nez v3, :cond_6

    goto :goto_45

    :cond_6
    goto :goto_a2

    nop

    :goto_56
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/provider/LocationProviderManager;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_64

    nop

    :goto_57
    const-string v1, "Location Settings:"

    goto :goto_32

    nop

    :goto_58
    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v2

    goto :goto_38

    nop

    :goto_59
    if-lt v3, v4, :cond_7

    goto :goto_24

    :cond_7
    goto :goto_1

    nop

    :goto_5a
    goto :goto_29

    :goto_5b
    goto :goto_a4

    nop

    :goto_5c
    const-string v3, "Geofence Manager:"

    goto :goto_84

    nop

    :goto_5d
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_11

    nop

    :goto_5e
    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object v1

    goto :goto_54

    nop

    :goto_5f
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_3c

    nop

    :goto_60
    const-string v1, "Provider:"

    goto :goto_94

    nop

    :goto_61
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_70

    nop

    :goto_62
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_1f

    nop

    :goto_63
    throw v2

    :goto_64
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_a6

    nop

    :goto_65
    invoke-virtual {v3, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/util/function/Consumer;)V

    goto :goto_95

    nop

    :goto_66
    if-gtz v1, :cond_8

    goto :goto_2f

    :cond_8
    goto :goto_43

    nop

    :goto_67
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_12

    nop

    :goto_68
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6e

    nop

    :goto_69
    const-string v1, "Historical Aggregate Location Provider Data:"

    goto :goto_68

    nop

    :goto_6a
    invoke-direct {v3, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;)V

    goto :goto_4d

    nop

    :goto_6b
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_2a

    nop

    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    nop

    :goto_6d
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_77

    nop

    :goto_6e
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_3d

    nop

    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    nop

    :goto_70
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    goto :goto_9

    nop

    :goto_71
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    nop

    :goto_72
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    nop

    :goto_73
    aget-object v2, p3, v1

    goto :goto_58

    nop

    :goto_74
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/location/injector/UserInfoHelper;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_48

    nop

    :goto_75
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9a

    nop

    :goto_76
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    nop

    :goto_77
    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6c

    nop

    :goto_78
    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_20

    nop

    :goto_79
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    goto :goto_59

    nop

    :goto_7a
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    goto :goto_91

    nop

    :goto_7b
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_37

    nop

    :goto_7c
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_6f

    nop

    :goto_7d
    check-cast v5, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    goto :goto_4a

    nop

    :goto_7e
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19

    nop

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_8f

    nop

    :goto_80
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2d

    nop

    :goto_81
    sget-object v2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    goto :goto_14

    nop

    :goto_82
    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_4f

    nop

    :goto_83
    if-lt v2, v3, :cond_9

    goto :goto_1d

    :cond_9
    goto :goto_53

    nop

    :goto_84
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_61

    nop

    :goto_85
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_18

    nop

    :goto_86
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_9d

    nop

    :goto_87
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    goto :goto_6

    nop

    :goto_88
    const-string v1, "Location Providers:"

    goto :goto_75

    nop

    :goto_89
    aget-object v1, p3, v1

    goto :goto_5d

    nop

    :goto_8a
    if-nez v2, :cond_a

    goto :goto_5b

    :cond_a
    goto :goto_7f

    nop

    :goto_8b
    const-string v3, "--gnssmetrics"

    goto :goto_89

    nop

    :goto_8c
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_3f

    nop

    :goto_8d
    check-cast v3, Ljava/lang/String;

    goto :goto_1b

    nop

    :goto_8e
    const-string v5, ": "

    goto :goto_25

    nop

    :goto_8f
    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    goto :goto_90

    nop

    :goto_90
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/provider/LocationProviderManager;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_5a

    nop

    :goto_91
    if-lt v4, v5, :cond_b

    goto :goto_99

    :cond_b
    goto :goto_85

    nop

    :goto_92
    invoke-virtual {v4}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->updateTotals()V

    goto :goto_6d

    nop

    :goto_93
    new-instance v0, Landroid/util/IndentingPrintWriter;

    goto :goto_a3

    nop

    :goto_94
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    nop

    :goto_95
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_c

    nop

    :goto_96
    invoke-interface {v3, v0}, Lcom/android/server/location/LocationManagerServiceStub;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_52

    nop

    :goto_97
    new-instance v3, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;

    goto :goto_6a

    nop

    :goto_98
    goto :goto_9f

    :goto_99
    goto :goto_7c

    nop

    :goto_9a
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_26

    nop

    :goto_9b
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_87

    nop

    :goto_9c
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    goto :goto_5e

    nop

    :goto_9d
    const-string v3, "Event Log:"

    goto :goto_22

    nop

    :goto_9e
    const/4 v4, 0x0

    :goto_9f
    goto :goto_7a

    nop

    :goto_a0
    const/4 v2, 0x0

    :goto_a1
    goto :goto_5

    nop

    :goto_a2
    const-string v3, "GNSS Manager:"

    goto :goto_b

    nop

    :goto_a3
    const-string v1, "  "

    goto :goto_82

    nop

    :goto_a4
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_69

    nop

    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    goto :goto_8a

    nop

    :goto_a6
    const-string v1, "Event Log:"

    goto :goto_76

    nop

    :goto_a7
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_7d

    nop
.end method

.method public flushGnssBatch()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->flushGnssBatch_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_1

    const-string v1, "gps"

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/location/LocationManagerService;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-void
.end method

.method public getAdasAllowlist()Landroid/os/PackageTagsList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v0

    return-object v0
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "fused"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fused"

    return-object v0

    :cond_1
    const-string v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gps"

    return-object v0

    :cond_2
    const-string v0, "network"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "network"

    return-object v0

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_4
    return-object v3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .registers 13

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5, p6}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->enableLocationBypass()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    nop

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-static {v2, v1, v3}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-static {v2, v1, v3}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p3}, Lcom/android/server/location/provider/LocationProviderManager;->getCurrentLocation(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationCallback;)Landroid/os/ICancellationSignal;

    move-result-object v3

    return-object v3
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGnssAntennaInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGnssBatchSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssBatchSize()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGnssCapabilities()Landroid/location/GnssCapabilities;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/location/GnssCapabilities$Builder;

    invoke-direct {v0}, Landroid/location/GnssCapabilities$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/location/GnssCapabilities$Builder;->build()Landroid/location/GnssCapabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocalService;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0

    return-object v0
.end method

.method public getGnssYearOfHardware()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssYearOfHardware()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .registers 13

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->enableLocationBypass()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    nop

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-static {v1, v0, v2}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    move v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-static {v1, v0, v2}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    :cond_2
    :goto_0
    move v6, v0

    :goto_1
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/location/LocationManagerService;->validateLastLocationRequest(Ljava/lang/String;Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p2

    if-nez p2, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v1

    move-object v2, p1

    move-object v4, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/server/location/LocationManagerServiceStub;->getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object p1

    invoke-virtual {p2, v3, v5, v6}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocation(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;I)Landroid/location/Location;

    move-result-object p3

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p4

    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, p4, v0}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getBlurryLocation(Landroid/location/Location;ILjava/lang/String;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;
    .registers 6

    goto :goto_7

    nop

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_14

    :cond_0
    goto :goto_13

    nop

    :goto_1
    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    goto :goto_a

    nop

    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_12

    nop

    :goto_3
    goto :goto_10

    :goto_4
    goto :goto_8

    nop

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    goto :goto_9

    nop

    :goto_6
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    move-result v1

    goto :goto_0

    nop

    :goto_7
    const/4 v0, 0x0

    goto :goto_11

    nop

    :goto_8
    return-object v0

    :goto_9
    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    goto :goto_d

    nop

    :goto_a
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    nop

    :goto_b
    return-object v0

    :goto_c
    goto :goto_e

    nop

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    nop

    :goto_e
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_f

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    goto :goto_5

    nop

    :goto_11
    if-eqz p1, :cond_2

    goto :goto_c

    :cond_2
    goto :goto_b

    nop

    :goto_12
    if-nez v3, :cond_3

    goto :goto_16

    :cond_3
    goto :goto_6

    nop

    :goto_13
    return-object v0

    :goto_14
    goto :goto_15

    nop

    :goto_15
    return-object v2

    :goto_16
    goto :goto_3

    nop
.end method

.method public getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->getProviderPackages_enforcePermission()V

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->getProviderIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->getProperties()Landroid/location/provider/ProviderProperties;

    move-result-object v1

    return-object v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/LocationPermissions;->checkCallingOrSelfLocationPermission(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager;->getProperties()Landroid/location/provider/ProviderProperties;

    move-result-object v5

    invoke-static {v4, v5, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    new-instance v0, Lcom/android/server/location/LocationShellCommand;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/location/LocationShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/LocationShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p4

    return p4
.end method

.method public hasProvider(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    :cond_0
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)V
    .registers 5

    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->injectLocation_enforcePermission()V

    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/provider/LocationProviderManager;->injectLastLocation(Landroid/location/Location;I)V

    :cond_0
    return-void
.end method

.method public isAdasGnssLocationEnabledForUser(I)Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "isAdasGnssLocationEnabledForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public isAutomotiveGnssSuspended()Z
    .registers 3

    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->isAutomotiveGnssSuspended_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->isAutomotiveGnssSuspended()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isAutomotiveGnssSuspended only allowed on automotive devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isGeocodeAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocationEnabledForUser(I)Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "isLocationEnabledForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->isProviderPackage_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getProviderIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public onStateChanged(Ljava/lang/String;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 12

    iget-object v0, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object v1, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    :cond_0
    iget-object v0, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    iget-object v2, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object v2, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    if-eqz v2, :cond_5

    iget-object v3, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iget-object v4, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz v4, :cond_3

    iget-object v4, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eq v3, v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    move-result-object v5

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v7, v2, v3, v5}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    if-eq v4, v1, :cond_5

    if-eq v4, v3, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    move-result-object v1

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v6, v2, v4, v1}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    monitor-exit v0

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSystemReady()V
    .registers 4

    goto :goto_4

    nop

    :goto_0
    check-cast v0, Landroid/app/AppOpsManager;

    goto :goto_2

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_5

    nop

    :goto_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    nop

    :goto_3
    return-void

    :goto_4
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    goto :goto_a

    nop

    :goto_5
    const-class v1, Landroid/app/AppOpsManager;

    goto :goto_9

    nop

    :goto_6
    const/4 v1, 0x1

    goto :goto_b

    nop

    :goto_7
    check-cast v0, Landroid/app/AppOpsManager;

    goto :goto_6

    nop

    :goto_8
    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    goto :goto_d

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :goto_a
    if-nez v0, :cond_0

    goto :goto_e

    :cond_0
    goto :goto_1

    nop

    :goto_b
    const/4 v2, 0x0

    goto :goto_c

    nop

    :goto_c
    filled-new-array {v1, v2}, [I

    move-result-object v1

    goto :goto_f

    nop

    :goto_d
    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    :goto_e
    goto :goto_3

    nop

    :goto_f
    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;

    goto :goto_8

    nop
.end method

.method onSystemThirdPartyAppsCanStart()V
    .registers 18

    goto :goto_31

    nop

    :goto_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_8b

    nop

    :goto_1
    iget-object v9, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_7a

    nop

    :goto_2
    iget-object v12, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_2c

    nop

    :goto_3
    invoke-static {v3, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_93

    nop

    :goto_4
    const/4 v14, 0x3

    goto :goto_39

    nop

    :goto_5
    const v8, 0x10700e1

    goto :goto_bc

    nop

    :goto_6
    return-void

    :goto_7
    const/16 v11, 0x3ea

    goto :goto_56

    nop

    :goto_8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    goto :goto_18

    nop

    :goto_9
    if-nez v1, :cond_0

    goto :goto_c7

    :cond_0
    goto :goto_5a

    nop

    :goto_a
    const-string v14, "gps_hardware"

    goto :goto_61

    nop

    :goto_b
    const v10, 0x1110175

    goto :goto_db

    nop

    :goto_c
    const v10, 0x1110299

    goto :goto_90

    nop

    :goto_d
    aget-object v14, v11, v14

    goto :goto_aa

    nop

    :goto_e
    new-instance v5, Lcom/android/server/location/provider/LocationProviderManager;

    goto :goto_70

    nop

    :goto_f
    const/4 v14, 0x7

    goto :goto_86

    nop

    :goto_10
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    goto :goto_62

    nop

    :goto_11
    invoke-interface {v7, v8, v9}, Lcom/android/server/location/LocationManagerServiceStub;->onSystemThirdPartyAppsCanStart(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/android/server/location/gnss/GnssManagerService;)V

    goto :goto_cd

    nop

    :goto_12
    invoke-direct {v9, v10, v11, v8}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    goto :goto_79

    nop

    :goto_13
    new-instance v13, Landroid/location/provider/ProviderProperties$Builder;

    goto :goto_74

    nop

    :goto_14
    const-string v8, "unable to bind ActivityRecognitionProxy"

    goto :goto_3f

    nop

    :goto_15
    if-eqz v9, :cond_1

    goto :goto_1e

    :cond_1
    goto :goto_8c

    nop

    :goto_16
    goto :goto_b9

    :goto_17
    goto :goto_b1

    nop

    :goto_18
    new-instance v4, Landroid/content/Intent;

    goto :goto_7f

    nop

    :goto_19
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    goto :goto_cf

    nop

    :goto_1a
    const v16, 0x11101ba

    goto :goto_e7

    nop

    :goto_1b
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    goto :goto_8a

    nop

    :goto_1d
    invoke-static/range {v11 .. v16}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v10

    :goto_1e
    goto :goto_89

    nop

    :goto_1f
    aget-object v14, v11, v14

    goto :goto_e0

    nop

    :goto_20
    invoke-interface {v12, v13}, Lcom/android/server/location/LocationManagerServiceStub;->startPowerSaveListener(Landroid/content/Context;)V

    :goto_21
    goto :goto_9b

    nop

    :goto_22
    if-eqz v8, :cond_2

    goto :goto_1c

    :cond_2
    goto :goto_a5

    nop

    :goto_23
    invoke-virtual {v13, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v13

    goto :goto_f

    nop

    :goto_24
    invoke-static {v7}, Lcom/android/server/location/HardwareActivityRecognitionProxy;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/HardwareActivityRecognitionProxy;

    move-result-object v7

    goto :goto_72

    nop

    :goto_25
    iget-object v3, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_8

    nop

    :goto_26
    const-string v14, "android.permission.LOCATION_HARDWARE"

    goto :goto_7e

    nop

    :goto_27
    move v10, v6

    :goto_28
    goto :goto_7

    nop

    :goto_29
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    goto :goto_c

    nop

    :goto_2a
    invoke-virtual {v13, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v13

    goto :goto_b3

    nop

    :goto_2b
    invoke-virtual {v0, v5, v3}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_16

    nop

    :goto_2c
    invoke-virtual {v12}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;

    move-result-object v12

    goto :goto_2e

    nop

    :goto_2d
    if-nez v3, :cond_3

    goto :goto_17

    :cond_3
    goto :goto_e

    nop

    :goto_2e
    invoke-virtual {v0, v11, v12}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    :goto_2f
    goto :goto_91

    nop

    :goto_30
    invoke-virtual {v14, v15}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    goto :goto_e8

    nop

    :goto_31
    move-object/from16 v0, p0

    goto :goto_a0

    nop

    :goto_32
    invoke-static {v4}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    goto :goto_58

    nop

    :goto_33
    invoke-virtual {v13, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v13

    goto :goto_e5

    nop

    :goto_34
    const-string v14, "gps"

    goto :goto_c2

    nop

    :goto_35
    const-string v4, "network"

    goto :goto_d9

    nop

    :goto_36
    invoke-virtual {v11}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;

    move-result-object v10

    goto :goto_95

    nop

    :goto_37
    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    goto :goto_44

    nop

    :goto_38
    iget-object v9, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_a2

    nop

    :goto_39
    aget-object v14, v11, v14

    goto :goto_d7

    nop

    :goto_3a
    move v10, v4

    goto :goto_4d

    nop

    :goto_3b
    goto :goto_6f

    :goto_3c
    goto :goto_6

    nop

    :goto_3d
    new-instance v11, Lcom/android/server/location/provider/LocationProviderManager;

    goto :goto_66

    nop

    :goto_3e
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_23

    nop

    :goto_3f
    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    goto :goto_bf

    nop

    :goto_41
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    move-result v7

    goto :goto_50

    nop

    :goto_42
    if-lt v9, v8, :cond_4

    goto :goto_3c

    :cond_4
    goto :goto_c4

    nop

    :goto_43
    const v2, 0x1110184

    goto :goto_9a

    nop

    :goto_44
    if-eqz v10, :cond_5

    goto :goto_65

    :cond_5
    goto :goto_be

    nop

    :goto_45
    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    goto :goto_ca

    nop

    :goto_46
    const/4 v6, 0x0

    goto :goto_8d

    nop

    :goto_47
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_24

    nop

    :goto_48
    const-string v2, "LocationManagerService"

    goto :goto_9

    nop

    :goto_49
    if-eqz v10, :cond_6

    goto :goto_4e

    :cond_6
    goto :goto_3a

    nop

    :goto_4a
    const/4 v14, 0x2

    goto :goto_77

    nop

    :goto_4b
    iget-object v9, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_da

    nop

    :goto_4c
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    goto :goto_99

    nop

    :goto_4d
    goto :goto_28

    :goto_4e
    goto :goto_27

    nop

    :goto_4f
    iget-object v9, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_11

    nop

    :goto_50
    if-nez v7, :cond_7

    goto :goto_21

    :cond_7
    goto :goto_d2

    nop

    :goto_51
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_4f

    nop

    :goto_52
    iget-object v13, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    goto :goto_34

    nop

    :goto_53
    aget-object v12, v11, v6

    goto :goto_6c

    nop

    :goto_54
    const-string v5, "Unable to find a direct boot aware fused location provider"

    goto :goto_3

    nop

    :goto_55
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->densityBasedCoarseLocations()Z

    move-result v7

    goto :goto_ec

    nop

    :goto_56
    invoke-static {v11, v10, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZI)V

    :goto_57
    goto :goto_10

    nop

    :goto_58
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    goto :goto_7c

    nop

    :goto_59
    new-instance v15, Lcom/android/server/location/provider/MockLocationProvider;

    goto :goto_5e

    nop

    :goto_5a
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager;

    goto :goto_ea

    nop

    :goto_5b
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    goto :goto_84

    nop

    :goto_5c
    const-string v7, "no geocoder provider found"

    goto :goto_a7

    nop

    :goto_5d
    if-eqz v7, :cond_8

    goto :goto_a8

    :cond_8
    goto :goto_5c

    nop

    :goto_5e
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_32

    nop

    :goto_5f
    iget-object v11, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    goto :goto_12

    nop

    :goto_60
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_33

    nop

    :goto_61
    const/4 v15, 0x0

    goto :goto_b0

    nop

    :goto_62
    if-nez v7, :cond_9

    goto :goto_cc

    :cond_9
    goto :goto_55

    nop

    :goto_63
    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v12

    goto :goto_c8

    nop

    :goto_64
    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    goto :goto_df

    nop

    :goto_66
    iget-object v12, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_ce

    nop

    :goto_67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_4b

    nop

    :goto_68
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_c0

    nop

    :goto_69
    aget-object v14, v11, v14

    goto :goto_3e

    nop

    :goto_6a
    const/4 v14, 0x6

    goto :goto_69

    nop

    :goto_6b
    invoke-virtual {v0, v3, v1}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_c6

    nop

    :goto_6c
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    goto :goto_13

    nop

    :goto_6d
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    goto :goto_5d

    nop

    :goto_6e
    move v9, v6

    :goto_6f
    goto :goto_42

    nop

    :goto_70
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_d5

    nop

    :goto_71
    invoke-virtual {v13}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v13

    goto :goto_98

    nop

    :goto_72
    if-eqz v7, :cond_a

    goto :goto_40

    :cond_a
    goto :goto_14

    nop

    :goto_73
    const/4 v4, 0x1

    goto :goto_a3

    nop

    :goto_74
    invoke-direct {v13}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    goto :goto_dd

    nop

    :goto_75
    sub-long/2addr v9, v7

    goto :goto_9f

    nop

    :goto_76
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    goto :goto_9c

    nop

    :goto_77
    aget-object v14, v11, v14

    goto :goto_d0

    nop

    :goto_78
    const v14, 0x111017b

    goto :goto_1d

    nop

    :goto_79
    iput-object v9, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_1

    nop

    :goto_7a
    invoke-virtual {v9}, Lcom/android/server/location/gnss/GnssManagerService;->onSystemReady()V

    goto :goto_d1

    nop

    :goto_7b
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    goto :goto_8e

    nop

    :goto_7c
    invoke-direct {v15, v13, v4, v6}, Lcom/android/server/location/provider/MockLocationProvider;-><init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    goto :goto_30

    nop

    :goto_7d
    invoke-virtual {v13, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v13

    goto :goto_4a

    nop

    :goto_7e
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    goto :goto_a

    nop

    :goto_7f
    const-string v5, "com.android.location.service.FusedLocationProvider"

    goto :goto_68

    nop

    :goto_80
    iget-object v12, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_52

    nop

    :goto_81
    const-string v3, "no network location provider found"

    goto :goto_ba

    nop

    :goto_82
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    goto :goto_5b

    nop

    :goto_83
    invoke-direct {v7, v8}, Lcom/android/server/location/gnss/GnssConfiguration;-><init>(Landroid/content/Context;)V

    goto :goto_7b

    nop

    :goto_84
    invoke-direct {v3, v5, v6, v4, v7}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    goto :goto_6b

    nop

    :goto_85
    invoke-virtual {v13, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v13

    goto :goto_4

    nop

    :goto_86
    aget-object v14, v11, v14

    goto :goto_60

    nop

    :goto_87
    const/16 v14, 0x9

    goto :goto_b7

    nop

    :goto_88
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto :goto_53

    nop

    :goto_89
    if-eqz v10, :cond_b

    goto :goto_96

    :cond_b
    goto :goto_c3

    nop

    :goto_8a
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_b6

    nop

    :goto_8b
    invoke-virtual {v13, v14}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v13

    goto :goto_71

    nop

    :goto_8c
    iget-object v11, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_ad

    nop

    :goto_8d
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    goto :goto_ac

    nop

    :goto_8e
    invoke-static {v8, v7}, Lcom/android/server/location/gnss/hal/GnssNative;->create(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object v8

    goto :goto_e2

    nop

    :goto_8f
    invoke-virtual {v0, v9}, Lcom/android/server/location/LocationManagerService;->setProxyPopulationDensityProvider(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V

    goto :goto_ae

    nop

    :goto_90
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    goto :goto_e3

    nop

    :goto_91
    new-instance v11, Lcom/android/server/location/provider/LocationProviderManager;

    goto :goto_80

    nop

    :goto_92
    const-string v11, ","

    goto :goto_88

    nop

    :goto_93
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_eb

    nop

    :goto_94
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_d6

    nop

    :goto_95
    goto :goto_2f

    :goto_96
    goto :goto_3d

    nop

    :goto_97
    if-nez v7, :cond_c

    goto :goto_57

    :cond_c
    goto :goto_67

    nop

    :goto_98
    invoke-direct {v0, v12}, Lcom/android/server/location/LocationManagerService;->getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v14

    goto :goto_59

    nop

    :goto_99
    const-string v7, "android.hardware.location"

    goto :goto_19

    nop

    :goto_9a
    const v3, 0x10402fc

    goto :goto_35

    nop

    :goto_9b
    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v7

    goto :goto_51

    nop

    :goto_9c
    invoke-direct {v7, v8}, Lcom/android/server/location/fudger/LocationFudgerCache;-><init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V

    goto :goto_cb

    nop

    :goto_9d
    const-string v8, "fused"

    goto :goto_d3

    nop

    :goto_9e
    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_5f

    nop

    :goto_9f
    long-to-int v9, v9

    goto :goto_37

    nop

    :goto_a0
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_43

    nop

    :goto_a1
    invoke-static {v7}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    move-result-object v7

    goto :goto_b4

    nop

    :goto_a2
    invoke-virtual {v9}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v9

    goto :goto_ee

    nop

    :goto_a3
    const/4 v6, 0x0

    goto :goto_3b

    nop

    :goto_a4
    invoke-direct {v11, v12, v13, v14, v15}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    goto :goto_e6

    nop

    :goto_a5
    const-string v9, "unable to bind to GeofenceProxy"

    goto :goto_1b

    nop

    :goto_a6
    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v1

    goto :goto_48

    nop

    :goto_a7
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a8
    goto :goto_bd

    nop

    :goto_a9
    const/4 v4, 0x1

    goto :goto_ab

    nop

    :goto_aa
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_d4

    nop

    :goto_ab
    xor-int/2addr v3, v4

    goto :goto_54

    nop

    :goto_ac
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    goto :goto_a9

    nop

    :goto_ad
    const v15, 0x10402df

    goto :goto_1a

    nop

    :goto_ae
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    goto :goto_75

    nop

    :goto_af
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_7d

    nop

    :goto_b0
    invoke-direct/range {v11 .. v16}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V

    goto :goto_2

    nop

    :goto_b1
    const-string v5, "no fused location provider found"

    goto :goto_b8

    nop

    :goto_b2
    array-length v8, v2

    goto :goto_6e

    nop

    :goto_b3
    const/4 v14, 0x5

    goto :goto_c5

    nop

    :goto_b4
    iput-object v7, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    goto :goto_6d

    nop

    :goto_b5
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_83

    nop

    :goto_b6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_5

    nop

    :goto_b7
    aget-object v14, v11, v14

    goto :goto_0

    nop

    :goto_b8
    invoke-static {v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b9
    goto :goto_ed

    nop

    :goto_ba
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bb
    goto :goto_25

    nop

    :goto_bc
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_b2

    nop

    :goto_bd
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->populationDensityProvider()Z

    move-result v7

    goto :goto_97

    nop

    :goto_be
    const-string v10, "no population density provider found"

    goto :goto_64

    nop

    :goto_bf
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_c9

    nop

    :goto_c0
    const/high16 v5, 0x180000

    goto :goto_46

    nop

    :goto_c1
    const-string v13, "android.location.provider.action.GNSS_PROVIDER"

    goto :goto_78

    nop

    :goto_c2
    iget-object v15, v0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    goto :goto_a4

    nop

    :goto_c3
    iget-object v11, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_36

    nop

    :goto_c4
    aget-object v10, v2, v9

    goto :goto_92

    nop

    :goto_c5
    aget-object v14, v11, v14

    goto :goto_94

    nop

    :goto_c6
    goto :goto_bb

    :goto_c7
    goto :goto_81

    nop

    :goto_c8
    iget-object v13, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_20

    nop

    :goto_c9
    if-nez v8, :cond_d

    goto :goto_1c

    :cond_d
    goto :goto_e9

    nop

    :goto_ca
    invoke-direct {v5, v7, v8, v9, v10}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    goto :goto_2b

    nop

    :goto_cb
    invoke-virtual {v0, v7}, Lcom/android/server/location/LocationManagerService;->setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V

    :goto_cc
    goto :goto_47

    nop

    :goto_cd
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_a1

    nop

    :goto_ce
    iget-object v13, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    goto :goto_26

    nop

    :goto_cf
    if-nez v5, :cond_e

    goto :goto_21

    :cond_e
    goto :goto_41

    nop

    :goto_d0
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_85

    nop

    :goto_d1
    iget-object v9, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_29

    nop

    :goto_d2
    new-instance v7, Lcom/android/server/location/gnss/GnssConfiguration;

    goto :goto_b5

    nop

    :goto_d3
    const-string v9, "com.android.location.service.FusedLocationProvider"

    goto :goto_b

    nop

    :goto_d4
    invoke-virtual {v13, v14}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v13

    goto :goto_87

    nop

    :goto_d5
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    goto :goto_d8

    nop

    :goto_d6
    invoke-virtual {v13, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v13

    goto :goto_6a

    nop

    :goto_d7
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_de

    nop

    :goto_d8
    const-string v9, "fused"

    goto :goto_45

    nop

    :goto_d9
    const-string v5, "com.android.location.service.v3.NetworkLocationProvider"

    goto :goto_a6

    nop

    :goto_da
    invoke-static {v9}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    move-result-object v9

    goto :goto_8f

    nop

    :goto_db
    invoke-static/range {v7 .. v12}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v3

    goto :goto_2d

    nop

    :goto_dc
    new-instance v7, Lcom/android/server/location/fudger/LocationFudgerCache;

    goto :goto_76

    nop

    :goto_dd
    aget-object v14, v11, v4

    goto :goto_af

    nop

    :goto_de
    invoke-virtual {v13, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v13

    goto :goto_e4

    nop

    :goto_df
    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    goto :goto_49

    nop

    :goto_e0
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_2a

    nop

    :goto_e1
    const v12, 0x11101b8

    goto :goto_9d

    nop

    :goto_e2
    new-instance v9, Lcom/android/server/location/gnss/GnssManagerService;

    goto :goto_9e

    nop

    :goto_e3
    const/4 v10, 0x0

    goto :goto_15

    nop

    :goto_e4
    const/4 v14, 0x4

    goto :goto_1f

    nop

    :goto_e5
    const/16 v14, 0x8

    goto :goto_d

    nop

    :goto_e6
    invoke-virtual {v0, v11, v10}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_63

    nop

    :goto_e7
    const-string v12, "gps"

    goto :goto_c1

    nop

    :goto_e8
    add-int/lit8 v9, v9, 0x1

    goto :goto_73

    nop

    :goto_e9
    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_38

    nop

    :goto_ea
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_82

    nop

    :goto_eb
    const v11, 0x10402da

    goto :goto_e1

    nop

    :goto_ec
    if-nez v7, :cond_f

    goto :goto_cc

    :cond_f
    goto :goto_dc

    nop

    :goto_ed
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    goto :goto_4c

    nop

    :goto_ee
    invoke-static {v8, v9}, Lcom/android/server/location/geofence/GeofenceProxy;->createAndBind(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)Lcom/android/server/location/geofence/GeofenceProxy;

    move-result-object v8

    goto :goto_22

    nop
.end method

.method public registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_0

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ActivityManagerInternal;->logFgsApiBegin(III)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p4, p5, p6}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v3

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->enableLocationBypass()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    nop

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v3

    invoke-static {v3, v2, v4}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v3

    invoke-static {v3, v2, v4}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v3, v5, :cond_4

    if-nez p5, :cond_4

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v5, "LocationManagerService"

    const-string v6, "system location request with no attribution tag"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v3, p2, v1, v2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationListener;)V

    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->handleGpsLocationChangedLocked(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    const-string v4, "gps"

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v4

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v5

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v6

    invoke-interface {v4, v5, v6, p3}, Lcom/android/server/am/SmartPowerServiceStub;->onAcquireLocation(IILandroid/location/ILocationListener;)V

    :cond_6
    return-void
.end method

.method public registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p4, p5, v1}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->enableLocationBypass()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    nop

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-static {v2, v1, v3}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-static {v2, v1, v3}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const-wide/32 v6, 0xa204608

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-static {v6, v7, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v5

    goto :goto_4

    :cond_6
    :goto_3
    move v2, v3

    :goto_4
    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PendingIntent location requests may not use system APIs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    move v3, v5

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p3}, Lcom/android/server/location/provider/LocationProviderManager;->registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public removeGeofence(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->removeGeofence(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    :cond_0
    return-void
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    :cond_0
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    :cond_0
    return-void
.end method

.method public removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-static {p2, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "enable_mezo_mock_locations"

    invoke-static {v2, v1}, Landroid/preference/SettingsMezoHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v2

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/server/location/LocationManagerServiceStub;->removeTestProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->hasProvider()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/server/location/LocationManagerServiceStub;->removeTestProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/geofence/GeofenceManager;->addGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/ILocationListener;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/location/provider/LocationProviderManager;->flush(Landroid/location/ILocationListener;I)V

    return-void
.end method

.method public requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/location/provider/LocationProviderManager;->flush(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfLocationPermission(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v2, v0, v3, p2, p3}, Lcom/android/server/location/LocationManagerServiceStub;->onSpecialExtraCommand(Lcom/android/server/location/provider/LocationProviderManager;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, p3}, Lcom/android/server/location/provider/LocationProviderManager;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object v2

    invoke-virtual {v2, v1, v4, p1}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    return-void
.end method

.method public setAdasGnssLocationEnabledForUser(ZI)V
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "setAdasGnssLocationEnabledForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/location/settings/LocationSettings;->updateUserSettings(ILjava/util/function/Function;)V

    return-void
.end method

.method public setAutomotiveGnssSuspended(Z)V
    .registers 4

    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->setAutomotiveGnssSuspended_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->setAutomotiveGnssSuspended(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAutomotiveGnssSuspended only allowed on automotive devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .registers 4

    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackage_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExtraLocationControllerPackageEnabled(Z)V
    .registers 4

    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackageEnabled_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationEnabledForUser(ZI)V
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "setLocationEnabledForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-interface {v0, p2, p1, v1}, Lcom/android/server/location/LocationManagerServiceStub;->setLocationEnabledForUser(IZI)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/injector/SettingsHelper;->setLocationEnabled(ZI)V

    return-void
.end method

.method protected setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V
    .registers 4

    goto :goto_a

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    goto :goto_1

    nop

    :goto_1
    if-nez v1, :cond_0

    goto :goto_9

    :cond_0
    goto :goto_f

    nop

    :goto_2
    return-void

    :goto_3
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_c

    nop

    :goto_4
    if-eqz v0, :cond_1

    goto :goto_6

    :cond_1
    goto :goto_5

    nop

    :goto_5
    return-void

    :goto_6
    goto :goto_b

    nop

    :goto_7
    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    goto :goto_e

    nop

    :goto_8
    goto :goto_d

    :goto_9
    goto :goto_2

    nop

    :goto_a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->densityBasedCoarseLocations()Z

    move-result v0

    goto :goto_4

    nop

    :goto_b
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    goto :goto_3

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    goto :goto_0

    nop

    :goto_e
    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager;->setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V

    goto :goto_8

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    nop
.end method

.method protected setProxyPopulationDensityProvider(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V
    .registers 3

    goto :goto_2

    nop

    :goto_0
    return-void

    :goto_1
    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    goto :goto_3

    nop

    :goto_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->populationDensityProvider()Z

    move-result v0

    goto :goto_1

    nop

    :goto_3
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    :goto_4
    goto :goto_0

    nop
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-static {p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "enable_mezo_mock_locations"

    invoke-static {v2, v1}, Landroid/preference/SettingsMezoHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProviderAllowed(Z)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-static {p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "enable_mezo_mock_locations"

    invoke-static {v2, v1}, Landroid/preference/SettingsMezoHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v1

    const-string v2, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/server/location/LocationManagerServiceStub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProviderLocation(Landroid/location/Location;)V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->startGnssBatch_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->stopGnssBatch()V

    const-string v5, "gps"

    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, v1, v2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssBatchSize()I

    move-result v4

    int-to-long v6, v4

    mul-long/2addr v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v6

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/location/LocationManagerService;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopGnssBatch()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->stopGnssBatch_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V

    :cond_0
    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    :cond_0
    return-void
.end method

.method public unregisterLocationListener(Landroid/location/ILocationListener;)V
    .registers 6

    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/location/LocationManagerServiceStub;->unregisterLocationCallback(IILjava/lang/Object;)V

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_0

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v2, p1}, Lcom/android/server/location/provider/LocationProviderManager;->unregisterLocationRequest(Landroid/location/ILocationListener;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Lcom/android/server/am/SmartPowerServiceStub;->onReleaseLocation(IILandroid/location/ILocationListener;)V

    return-void
.end method

.method public unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V
    .registers 5

    invoke-static {}, Lcom/android/server/location/LocationManagerServiceStub;->getInstance()Lcom/android/server/location/LocationManagerServiceStub;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/location/LocationManagerServiceStub;->unregisterLocationCallback(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager;->unregisterLocationRequest(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

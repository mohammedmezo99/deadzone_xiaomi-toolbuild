.class public interface abstract Lcom/miui/server/greeze/PolicyManager;
.super Ljava/lang/Object;


# static fields
.field public static final AUROGON_IMMOBULUS_SWITCH_PROPERTY:Ljava/lang/String; = "persist.sys.aurogon.immobulus"

.field public static final CN_MODEL:Z

.field public static final IMMOBULUS_ENABLED:Z

.field public static final mExcludeGoogleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mGoogleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "persist.sys.aurogon.immobulus"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/server/greeze/PolicyManager;->IMMOBULUS_ENABLED:Z

    const-string v0, "ro.miui.region"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/server/greeze/PolicyManager;->CN_MODEL:Z

    new-instance v0, Ljava/util/ArrayList;

    const-string v5, "com.area120.kormo.seeker"

    const-string v6, "com.android.vending"

    const-string v1, "com.andriod.chrome"

    const-string v2, "com.google.ambient.streaming"

    const-string v3, "com.fitbit.FitbitMobile"

    const-string v4, "com.google.earth"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/server/greeze/PolicyManager;->mGoogleApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.google.android.youtube"

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "com.android.chrome"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/server/greeze/PolicyManager;->mExcludeGoogleApps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract allowDeviceLaunchMode()Z
.end method

.method public abstract allowImmobulusMode()Z
.end method

.method public abstract allowLaunchMode()Z
.end method

.method public abstract checkAurogonIntentDenyList(Ljava/lang/String;)Z
.end method

.method public abstract closeSocketForAurogon([I)V
.end method

.method public abstract dealPackageAddRemove(ILjava/lang/String;Z)V
.end method

.method public abstract deferBroadcast(Ljava/lang/String;)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAutoStartApps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImportantApps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAllowBroadcast()Z
.end method

.method public abstract isAllowUid(ILjava/lang/String;)Z
.end method

.method public abstract isAutoStartRestrict(ILjava/lang/String;)Z
.end method

.method public abstract isGoogleApps(Ljava/lang/String;)Z
.end method

.method public abstract isImportant(I)Z
.end method

.method public abstract isJobRestrict(I)Z
.end method

.method public abstract isRestrictBroadcast(I)Z
.end method

.method public abstract isRestrictNet(I)Z
.end method

.method public abstract needCacheBroadcast(Ljava/lang/String;II)Z
.end method

.method public abstract needMonitorNet(ILjava/lang/String;)Z
.end method

.method public abstract noteJobWork(ILjava/lang/String;Z)V
.end method

.method public abstract onUidGone(I)V
.end method

.method public abstract restrictDeviceImmobulus()Z
.end method

.method public abstract setControlAutoAppCloud(Z)V
.end method

.method public abstract supportLaunchOverlap()Z
.end method

.method public abstract timeForLaunch()I
.end method

.method public abstract updateAurogonUidRule(IZ)V
.end method

.class public Lcom/android/server/location/provider/MockLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;


# instance fields
.field private mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/provider/ProviderProperties;",
            "Landroid/location/util/identity/CallerIdentity;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last mock location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/provider/MockLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    goto :goto_0

    nop

    :goto_0
    return-void
.end method

.method protected onFlush(Ljava/lang/Runnable;)V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    return-void

    :goto_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    nop
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 2

    return-void
.end method

.method public setProviderAllowed(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockLocationProvider;->setAllowed(Z)V

    return-void
.end method

.method public setProviderLocation(Landroid/location/Location;)V
    .registers 5

    const/4 v1, 0x1

    const-string v0, "enable_mezo_mock_locations"

    invoke-static {v0, v1}, Landroid/preference/SettingsMezoHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    iput-object v0, p0, Lcom/android/server/location/provider/MockLocationProvider;->mLocation:Landroid/location/Location;

    :try_start_0
    new-array v1, v1, [Landroid/location/Location;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/MockLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_0
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

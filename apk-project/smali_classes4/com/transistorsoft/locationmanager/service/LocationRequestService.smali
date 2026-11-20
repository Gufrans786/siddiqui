.class public Lcom/transistorsoft/locationmanager/service/LocationRequestService;
.super Lcom/transistorsoft/locationmanager/service/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/LocationRequestService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/LocationRequestService;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/location/LocationAvailability;->extractLocationAvailability(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location availability: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/service/LocationRequestService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/LocationRequestService;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "handleLocationResult with no action"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 11
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 12
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/location/LocationResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationResult;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_1

    .line 19
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 20
    invoke-virtual {p1, v5}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v6

    const/4 v7, 0x5

    if-ne v3, v7, :cond_2

    .line 26
    new-instance v0, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;

    invoke-direct {v0, v1, p1}, Lcom/transistorsoft/locationmanager/location/WatchPositionResult;-><init>(ILandroid/location/Location;)V

    invoke-virtual {v6, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onWatchPositionResult(Lcom/transistorsoft/locationmanager/location/WatchPositionResult;)V

    return-void

    .line 28
    :cond_2
    invoke-virtual {v6, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getRequest(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    move-result-object v7

    if-nez v7, :cond_3

    .line 31
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to find SingleLocationRequest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".  Ignored"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->forceStop(Landroid/content/Context;II)V

    .line 33
    invoke-virtual {p0, v2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    return-void

    :cond_3
    if-ne v3, v4, :cond_4

    .line 36
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_4

    .line 37
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Attempt to get motionchange position while disabled"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v7}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->finish()V

    return-void

    .line 42
    :cond_4
    const-string v8, "requestId"

    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    new-instance v5, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;

    invoke-direct {v5, v1, p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;-><init>(ILandroid/location/Location;)V

    .line 45
    invoke-virtual {v6, v5}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onSingleLocationResult(Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V

    .line 47
    invoke-virtual {v7}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    if-eq v3, v1, :cond_5

    if-ne v3, v4, :cond_6

    .line 50
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setLocation(Landroid/location/Location;Z)V

    .line 52
    :cond_6
    invoke-virtual {p0, v2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    :cond_7
    return-void
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/service/LocationRequestService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/LocationRequestService;->d(Landroid/content/Intent;)V

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getRequest(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to find SingleLocationRequest in START action; requestId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".  This is likely from a timed-out location request; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->startUpdatingLocation()V

    return-void
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/transistorsoft/locationmanager/service/LocationRequestService;

    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->stop(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-super {p0, v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Landroid/content/Intent;IZ)Z

    move-result p2

    const/4 v0, 0x3

    if-nez p2, :cond_0

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v1, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/transistorsoft/locationmanager/service/LocationRequestService$a;-><init>(Lcom/transistorsoft/locationmanager/service/LocationRequestService;Landroid/content/Intent;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0
.end method

.method public onTimeout(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/AbstractService;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "start"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 6
    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->cancelRequest(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->onTimeout(II)V

    return-void
.end method

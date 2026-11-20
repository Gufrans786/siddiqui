.class public Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;
.super Lcom/transistorsoft/locationmanager/service/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;,
        Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;,
        Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String; = "stopMonitoringPolygons"


# instance fields
.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private s:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;


# direct methods
.method public static synthetic $r8$lambda$RjJXsdoNsLyMIk-ToBJBCUhsv7M(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->b(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4idtdnbX7gNkoCxocS4RfcWKyQ(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t9et2V3Qey9J1eqBepSykmbmLl4(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDQ2OT3bYH2oAf35yyjUq_mOhB8(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static synthetic a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->handleGeofencingEvent(Landroid/content/Context;Ljava/lang/String;Landroid/location/Location;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 3

    .line 6
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->shouldPersist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    .line 13
    const-class v2, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->hasSubscriberForEvent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->getInstance()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->canUsePersistEvent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, p0, p1, v0}, Lcom/transistorsoft/locationmanager/event/PersistEvent;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 17
    :cond_1
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p1, "Failed to persist location"

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxDaysToPersist()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getPersist()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 25
    :cond_3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->persist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasUrl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush(Z)V

    return-void

    .line 33
    :cond_4
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT FAILURE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->c(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/location/LocationAvailability;->extractLocationAvailability(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object p1

    .line 5
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

.method static synthetic b(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->f(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 11

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/location/LocationResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationResult;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "handleLocationResult received a null LocationResult"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->s:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {v1, v0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a(Landroid/location/Location;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff6666666666666L    # 1.4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->s:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->s:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d()V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->s:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a()V

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->s:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->s:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d()V

    .line 27
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLocations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 30
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isInPolygon: \ud83d\udccd  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", acy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m, spd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    :cond_6
    const-string v4, "-1"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getMonitoredPolygonIdentifiers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v4}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getPolygonState(Ljava/lang/String;)Z

    move-result v3

    .line 33
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    if-eqz v3, :cond_8

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v5, v6

    const/high16 v6, 0x42480000    # 50.0f

    cmpl-float v7, v5, v6

    if-lez v7, :cond_8

    move v9, v6

    goto :goto_3

    :cond_8
    move v9, v5

    .line 45
    :goto_3
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static/range {v4 .. v9}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->isLocationInPolygon(Ljava/lang/String;DDF)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;

    move-result-object v5

    .line 47
    iget v6, v5, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;->confidence:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_9

    iget-boolean v7, v5, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;->centerIsInPolygon:Z

    if-nez v7, :cond_9

    move v7, v9

    goto :goto_4

    :cond_9
    move v7, v8

    :goto_4
    const v10, 0x3ecccccd    # 0.4f

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_a

    .line 49
    iget-boolean v5, v5, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;->centerIsInPolygon:Z

    if-eqz v5, :cond_a

    move v8, v9

    :cond_a
    if-eqz v3, :cond_b

    if-nez v7, :cond_c

    :cond_b
    if-nez v3, :cond_e

    if-eqz v8, :cond_e

    :cond_c
    const/4 v5, 0x3

    .line 54
    invoke-static {v4, v1, v5}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->a(Ljava/lang/String;Landroid/location/Location;I)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->d()V

    .line 56
    invoke-virtual {v5}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->b()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 57
    invoke-static {v4}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->remove(Ljava/lang/String;)V

    xor-int/lit8 v6, v3, 0x1

    .line 58
    invoke-virtual {v0, v4, v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setPolygonState(Ljava/lang/String;Z)V

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    const/4 v9, 0x2

    .line 60
    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, v5, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->location:Landroid/location/Location;

    invoke-static {v3, v4, v5, v9}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->handleGeofencingEvent(Landroid/content/Context;Ljava/lang/String;Landroid/location/Location;I)V

    goto :goto_2

    .line 63
    :cond_e
    invoke-static {v4}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    return-void
.end method

.method private synthetic d(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Halting polygon monitoring after timeout"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->f(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "startUpdatingLocation"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/16 v2, 0x64

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SecurityException while attempting to fetch location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "stopUpdatingLocation"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    if-lt p1, v1, :cond_1

    .line 7
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result p1

    invoke-static {p0, v3, v0, p1}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static handleGeofencingEvent(Landroid/content/Context;Ljava/lang/String;Landroid/location/Location;I)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->find(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to find geofence record in database: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getNotifyOnDwell()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-static {p1, p2, v1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->a(Ljava/lang/String;Landroid/location/Location;I)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;

    .line 15
    new-instance v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;

    new-instance v2, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent$a;)V

    .line 29
    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;)V

    .line 48
    :cond_1
    const-string/jumbo v1, "tslocationmanager_beep_trip_up_dry"

    const-string v2, "ENTER"

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    .line 34
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getNotifyOnDwell()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->a(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->a()V

    .line 38
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->b(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;

    .line 48
    :cond_3
    const-string/jumbo v1, "tslocationmanager_beep_trip_dry"

    const-string v2, "EXIT"

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne p3, v1, :cond_5

    .line 44
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->b(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;

    .line 45
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->remove(Ljava/lang/String;)V

    const-string/jumbo v1, "tslocationmanager_beep_trip_up_echo"

    const-string v2, "DWELL"

    goto :goto_0

    .line 38
    :cond_5
    const-string v2, "UNKNOWN"

    const-string v1, ""

    .line 48
    :goto_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v3, "Geofencing Event: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo p1, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-nez p2, :cond_6

    .line 57
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p1, "Failed to receive location during Polygon geofence event."

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_6
    invoke-static {p0, p2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->applyExtras(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Location;

    .line 62
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 64
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setLocation(Landroid/location/Location;Z)V

    .line 66
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "isMoving"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getOdometer()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v4, "odometer"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 72
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v4

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentLocationProvider()Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    move-result-object v1

    invoke-direct {v3, p0, p2, v4, v1}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 74
    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v2

    invoke-direct {v1, p0, p2, v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    .line 76
    new-instance p2, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;

    invoke-direct {p2, p3, v0, v1}, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;-><init>(ILcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    .line 77
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxRecordsToPersist()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_7

    .line 78
    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->getLocation()Lcom/transistorsoft/locationmanager/location/TSLocation;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    .line 80
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static startMonitoring(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->f(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->a()V

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->stopService(Landroid/content/Context;)V

    return-void
.end method

.method private static stopService(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->stop(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

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

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Ljava/lang/String;I)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    new-instance v2, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;Landroid/content/Context;)V

    const v0, 0x124f80

    invoke-direct {v1, v0, v2}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;-><init>(ILcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$a;)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->s:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->s:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Landroid/content/Intent;IZ)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->d()V

    .line 7
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;-><init>(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

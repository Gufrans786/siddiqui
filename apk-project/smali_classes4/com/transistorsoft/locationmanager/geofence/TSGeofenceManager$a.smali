.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringSignificantLocationChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

.field final synthetic b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->count()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Start monitoring significant location changes"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x66

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 12
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLocationUpdateInterval()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 13
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x96

    :goto_1
    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;

    .line 15
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v4}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getFastestLocationUpdateInterval()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_4

    .line 16
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getFastestLocationUpdateInterval()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_2

    :cond_3
    const/16 v2, 0x68

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 20
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceProximityRadius()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v2, 0xea60

    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;

    .line 27
    :cond_4
    :goto_2
    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 28
    invoke-interface {v0, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 29
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withBackgroundPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException while attempting to requestLocationUpdates: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

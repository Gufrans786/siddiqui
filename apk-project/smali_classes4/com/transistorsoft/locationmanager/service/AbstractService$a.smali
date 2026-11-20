.class Lcom/transistorsoft/locationmanager/service/AbstractService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/AbstractService$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/AbstractService$a;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Failed to fetch lastLocation to create TSLocationManager::FOREGROUND_SERVICE_GEOFENCE"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/AbstractService$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/AbstractService$a;->b:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->pin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/AbstractService$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    add-float/2addr v2, v1

    :cond_0
    move v8, v2

    .line 9
    new-instance v1, Lcom/google/android/gms/location/GeofencingRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    .line 12
    const-string v4, "TSLocationManager::FOREGROUND_SERVICE_GEOFENCE"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v3

    .line 13
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object p1

    const-wide/32 v3, 0x1d4c0

    .line 14
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object p1

    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setLoiteringDelay(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setNotificationResponsiveness(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofence(Lcom/google/android/gms/location/Geofence;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    move-result-object p1

    .line 28
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/AbstractService$a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/service/AbstractService$a;->b:Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/location/GeofencingClient;->addGeofences(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

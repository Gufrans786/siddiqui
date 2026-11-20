.class Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onProviderChange(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

.field final synthetic c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Landroid/location/Location;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->a:Landroid/location/Location;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->b:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c$a;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c$a;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;)V

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    return-void
.end method

.method public onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getLocation()Landroid/location/Location;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->a:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    add-float/2addr v0, v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    add-float/2addr v0, v1

    .line 9
    :cond_1
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Distance from last location: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->b:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringStationaryRegion(Landroid/location/Location;)V

    return-void

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->b:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->requestLocationUpdates()V

    return-void

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringSignificantLocationChanges()V

    return-void
.end method

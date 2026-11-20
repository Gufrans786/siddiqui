.class Lcom/transistorsoft/locationmanager/service/GeofencingService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/service/GeofencingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:I

.field final synthetic c:Lcom/transistorsoft/locationmanager/service/GeofencingService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/service/GeofencingService;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->b:I

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a:Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/GeofencingService$a;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/service/GeofencingService$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->b:I

    return p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 5
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringGeofencesInProximity()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    :cond_0
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSticky()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    :cond_2
    if-eqz v1, :cond_5

    .line 17
    const-string/jumbo v0, "start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    const-string v0, "STATIONARY_GEOFENCE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    invoke-static {v1, v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->a(Lcom/transistorsoft/locationmanager/service/GeofencingService;Lcom/google/android/gms/location/GeofencingEvent;)V

    .line 25
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->b:I

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return-void

    .line 27
    :cond_5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/location/LocationResult;->hasResult(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 28
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/location/LocationResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->a(Lcom/transistorsoft/locationmanager/service/GeofencingService;Lcom/google/android/gms/location/LocationResult;)V

    .line 29
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->b:I

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return-void

    .line 30
    :cond_6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/location/LocationAvailability;->hasLocationAvailability(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/location/LocationAvailability;->extractLocationAvailability(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->a(Lcom/transistorsoft/locationmanager/service/GeofencingService;Lcom/google/android/gms/location/LocationAvailability;)V

    .line 32
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->b:I

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return-void

    .line 33
    :cond_7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 34
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;-><init>(Lcom/transistorsoft/locationmanager/service/GeofencingService$a;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    :cond_8
    return-void
.end method

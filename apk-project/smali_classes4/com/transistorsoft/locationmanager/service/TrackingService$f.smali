.class Lcom/transistorsoft/locationmanager/service/TrackingService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/service/TrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->b:Landroid/content/Context;

    .line 3
    iput-boolean p2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->a:Z

    .line 4
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz p2, :cond_0

    .line 7
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/crash/a;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/crash/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/crash/a;->f()V

    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/crash/a;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/crash/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/crash/a;->h()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/TrackingService;->h()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->a:Z

    if-eqz v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->requestLocationUpdates()V

    return-void

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_4

    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_4

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f3

    if-eq v1, v0, :cond_4

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TSMotionChangeCallback received error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".  Re-executing .changePace("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->a:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->b:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->a:Z

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/TrackingService;->h()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->a:Z

    if-eqz v1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->start(Landroid/content/Context;)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getLocation()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringStationaryRegion(Landroid/location/Location;)V

    .line 19
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUseSignificantChangesOnly()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$f;->b:Landroid/content/Context;

    const-string v0, "motionchange"

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

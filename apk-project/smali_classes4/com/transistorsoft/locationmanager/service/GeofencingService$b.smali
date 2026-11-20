.class Lcom/transistorsoft/locationmanager/service/GeofencingService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/service/GeofencingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

.field private final b:Z

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->c:Landroid/content/Context;

    .line 3
    iput-boolean p2, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->b:Z

    .line 4
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->b:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->start(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->h()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getLocation()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringStationaryRegion(Landroid/location/Location;)V

    .line 8
    iget-boolean p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->b:Z

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->start(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

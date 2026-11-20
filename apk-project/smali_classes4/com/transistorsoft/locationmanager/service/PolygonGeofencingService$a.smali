.class Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:I

.field final synthetic c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->a:Landroid/content/Intent;

    .line 3
    iput p3, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_0
    const-string/jumbo v3, "stop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->c(Landroid/content/Context;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    return-void

    .line 16
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationResult;->hasResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v0, v3}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;Landroid/content/Intent;)V

    .line 18
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    .line 19
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v2

    .line 21
    :goto_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->isEmpty()Z

    move-result v5

    .line 22
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->isLoitering()Z

    move-result v6

    .line 23
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringPolygons()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v5, :cond_5

    if-nez v6, :cond_5

    .line 27
    :cond_4
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 28
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->c(Landroid/content/Context;)V

    .line 32
    :cond_5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringPolygons()Z

    move-result v0

    if-nez v0, :cond_6

    .line 33
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->c(Landroid/content/Context;)V

    .line 37
    :cond_6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    goto :goto_2

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationAvailability;->hasLocationAvailability(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 39
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->b(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;Landroid/content/Intent;)V

    .line 41
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$a;->b:I

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return-void
.end method

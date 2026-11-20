.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;


# direct methods
.method public static synthetic $r8$lambda$k1FkXoPdY_F6aLTeoq8CkPY69Dc(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a()V

    return-void
.end method

.method private constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d$a;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "evaluation buffer timer elapsed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->l(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->m(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->l(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

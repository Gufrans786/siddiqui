.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Landroid/location/Location;)V

    :cond_0
    return-void
.end method

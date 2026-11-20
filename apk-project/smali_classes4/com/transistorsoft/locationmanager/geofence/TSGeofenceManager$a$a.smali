.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field final synthetic b:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic c:Landroid/app/PendingIntent;

.field final synthetic d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;->b:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;->c:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Location permission denied while attempting to startMonitoringSignificantLocationChanges"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;->b:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;->c:Landroid/app/PendingIntent;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a$a;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

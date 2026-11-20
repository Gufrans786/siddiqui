.class public final synthetic Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda8;->f$0:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda8;->f$2:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda8;->f$0:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda8;->f$2:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->$r8$lambda$sWk9O17LAKZtOx-tFeyNeR9sG28(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Void;)V

    return-void
.end method

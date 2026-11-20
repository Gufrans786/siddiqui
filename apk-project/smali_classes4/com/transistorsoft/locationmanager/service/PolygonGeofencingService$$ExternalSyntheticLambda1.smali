.class public final synthetic Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda1;->f$1:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda1;->f$1:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, v1, p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->$r8$lambda$RjJXsdoNsLyMIk-ToBJBCUhsv7M(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V

    return-void
.end method

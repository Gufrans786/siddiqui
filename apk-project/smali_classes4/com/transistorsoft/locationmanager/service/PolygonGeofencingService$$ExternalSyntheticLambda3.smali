.class public final synthetic Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

.field public final synthetic f$2:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda3;->f$1:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda3;->f$2:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda3;->f$1:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$$ExternalSyntheticLambda3;->f$2:Landroid/location/Location;

    invoke-static {v0, v1, v2}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->$r8$lambda$tDQ2OT3bYH2oAf35yyjUq_mOhB8(Landroid/content/Context;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Landroid/location/Location;)V

    return-void
.end method

.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;)V

    return-void
.end method

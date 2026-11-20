.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->reEvaluate()V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->reEvaluate()V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void
.end method

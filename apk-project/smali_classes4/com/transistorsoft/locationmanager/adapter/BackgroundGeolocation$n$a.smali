.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n$a;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;

    iget-object v1, v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofenceCallback;

    invoke-interface {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofenceCallback;->onSuccess(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofenceCallback;

    const-string v1, "404"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofenceCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

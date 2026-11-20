.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/event/GeofenceEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/event/GeofenceEvent;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/event/GeofenceEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$K;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$K;->a:Lcom/transistorsoft/locationmanager/event/GeofenceEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$K;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->k(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$K;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->k(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceCallback;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$K;->a:Lcom/transistorsoft/locationmanager/event/GeofenceEvent;

    invoke-interface {v2, v3}, Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceCallback;->onGeofence(Lcom/transistorsoft/locationmanager/event/GeofenceEvent;)V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

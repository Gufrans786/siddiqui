.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/google/android/gms/location/ActivityTransitionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/ActivityTransitionEvent;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/google/android/gms/location/ActivityTransitionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$D;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$D;->a:Lcom/google/android/gms/location/ActivityTransitionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$D;->a:Lcom/google/android/gms/location/ActivityTransitionEvent;

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;-><init>(Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$D;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->e(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$D;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->e(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transistorsoft/locationmanager/adapter/callback/TSActivityChangeCallback;

    invoke-interface {v3, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSActivityChangeCallback;->onActivityChange(Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;)V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

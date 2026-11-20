.class public Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoiteringEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent$a;
    }
.end annotation


# static fields
.field private static final c:Landroid/os/Handler;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

.field private final b:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent$a;


# direct methods
.method public static synthetic $r8$lambda$h4nxsVGtq1em8TIIn6ZFuONZmU0(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->c()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->c:Landroid/os/Handler;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->d:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->b:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent$a;

    .line 4
    sget-object p2, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLoiteringDelay()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;
    .locals 1

    .line 5
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->d:Ljava/util/Map;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static a(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->d:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->b()Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static b(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->d:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->b:Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent$a;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent$a;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V

    return-void
.end method

.method static d()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->d:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->a()V

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isLoitering()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 8
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method b()Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

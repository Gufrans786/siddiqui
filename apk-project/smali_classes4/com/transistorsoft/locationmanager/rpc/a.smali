.class public Lcom/transistorsoft/locationmanager/rpc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/rpc/a$l;,
        Lcom/transistorsoft/locationmanager/rpc/a$m;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "background_geolocation"

.field private static final f:Ljava/lang/String; = "uploadLog"

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/rpc/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Lcom/transistorsoft/locationmanager/rpc/a$l;


# direct methods
.method public static synthetic $r8$lambda$E_HowBnFjT0lK2abjBIglBMPPMU(Lcom/transistorsoft/locationmanager/rpc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->g()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/rpc/a;->g:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/rpc/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 57
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 60
    :catch_0
    new-instance p1, Lcom/transistorsoft/locationmanager/rpc/a$m;

    const-string v0, "Failed to parse RPC arguments from JSON"

    invoke-direct {p1, v0}, Lcom/transistorsoft/locationmanager/rpc/a$m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;-><init>()V

    .line 63
    const-string v1, "identifier"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setIdentifier(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 64
    :cond_0
    const-string v1, "latitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setLatitude(D)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 65
    :cond_1
    const-string v1, "longitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setLongitude(D)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 66
    :cond_2
    const-string v1, "radius"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setRadius(F)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 67
    :cond_3
    const-string/jumbo v1, "vertices"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 70
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 71
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 72
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Double;

    aput-object v6, v8, v3

    aput-object v5, v8, v7

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setVertices(Ljava/util/List;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 76
    :cond_5
    const-string v1, "notifyOnEntry"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setNotifyOnEntry(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 77
    :cond_6
    const-string v1, "notifyOnExit"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setNotifyOnExit(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 78
    :cond_7
    const-string v1, "notifyOnDwell"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setNotifyOnDwell(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 79
    :cond_8
    const-string v1, "loiteringDelay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setLoiteringDelay(I)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 80
    :cond_9
    const-string v1, "extras"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setExtras(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    .line 81
    :cond_a
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->build()Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/rpc/a;)Lcom/transistorsoft/locationmanager/rpc/a$l;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->d:Lcom/transistorsoft/locationmanager/rpc/a$l;

    return-object p0
.end method

.method private a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 48
    const-class v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Ljava/lang/Class;)V

    .line 51
    :try_start_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->addGeofence(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V

    .line 52
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->d:Lcom/transistorsoft/locationmanager/rpc/a$l;

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/rpc/a$l;->onSuccess()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->d:Lcom/transistorsoft/locationmanager/rpc/a$l;

    new-instance v2, Lcom/transistorsoft/locationmanager/rpc/a$m;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/transistorsoft/locationmanager/rpc/a$m;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/transistorsoft/locationmanager/rpc/a$l;->a(Lcom/transistorsoft/locationmanager/rpc/a$m;)V

    return-void
.end method

.method private a(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 30
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getTrackingMode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setTrackingMode(Ljava/lang/Integer;)V

    .line 34
    new-instance v1, Lcom/transistorsoft/locationmanager/rpc/a$e;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/rpc/a$e;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 45
    invoke-static {v0, p1, v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changeTrackingMode(Landroid/content/Context;ILcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void

    .line 47
    :cond_1
    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->start(Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/rpc/a$l;)V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->a:Ljava/lang/ref/WeakReference;

    .line 24
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/rpc/a;->d:Lcom/transistorsoft/locationmanager/rpc/a$l;

    .line 25
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/rpc/a;->g:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/json/JSONArray;

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Lorg/json/JSONArray;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing RPC actions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 15
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    sget-object p1, Lcom/transistorsoft/locationmanager/rpc/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->b(Landroid/content/Context;)V

    :cond_2
    return-void

    .line 19
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    const-string v1, " expected an argument of type "

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/transistorsoft/locationmanager/rpc/a$m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " but received "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transistorsoft/locationmanager/rpc/a$m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Lcom/transistorsoft/locationmanager/rpc/a$m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " but received null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transistorsoft/locationmanager/rpc/a$m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lorg/json/JSONArray;)V
    .locals 2

    .line 20
    :try_start_0
    sget-object v0, Lcom/transistorsoft/locationmanager/rpc/a;->g:Ljava/util/List;

    new-instance v1, Lcom/transistorsoft/locationmanager/rpc/a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/rpc/a;-><init>(Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/transistorsoft/locationmanager/rpc/a$m; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 22
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/rpc/a$m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 19
    const-class v0, Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Ljava/lang/Class;)V

    .line 21
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 27
    :goto_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->d:Lcom/transistorsoft/locationmanager/rpc/a$l;

    new-instance v2, Lcom/transistorsoft/locationmanager/rpc/a$m;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/transistorsoft/locationmanager/rpc/a$m;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/transistorsoft/locationmanager/rpc/a$l;->a(Lcom/transistorsoft/locationmanager/rpc/a$m;)V

    return-void

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v2, Lcom/transistorsoft/locationmanager/rpc/a$h;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/rpc/a$h;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->addGeofences(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/rpc/a;->g:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    sget-object p0, Lcom/transistorsoft/locationmanager/rpc/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transistorsoft/locationmanager/rpc/a;

    .line 8
    new-instance v2, Lcom/transistorsoft/locationmanager/rpc/a$c;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/rpc/a$c;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/rpc/a$l;)V

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->stop()V

    .line 9
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithBuilder()Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->setMaxRecordsToPersist(Ljava/lang/Integer;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object v1

    .line 13
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->setUrl(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object v1

    .line 14
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->setDebug(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->commit()V

    .line 17
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 20
    new-instance v3, Lcom/transistorsoft/locationmanager/rpc/a$b;

    invoke-direct {v3, p0}, Lcom/transistorsoft/locationmanager/rpc/a$b;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-static {v0, v2, v3}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->destroyTokenForUrl(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    .line 26
    const-string v0, "TSLocationManager"

    const-string v3, "************************************************************************"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Your devices are banned from posting to "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/rpc/a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/rpc/a$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->clear()Z

    return-void
.end method

.method private d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Ljava/lang/Class;)V

    .line 3
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 9
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 10
    new-instance v0, Lcom/transistorsoft/locationmanager/rpc/a$f;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/rpc/a$f;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->changePace(ZLcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->d:Lcom/transistorsoft/locationmanager/rpc/a$l;

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/rpc/a$l;->onSuccess()V

    return-void
.end method

.method private e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/rpc/a$k;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/rpc/a$k;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->destroyLog(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method private f()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/transistorsoft/locationmanager/rpc/a$m;

    const-string v1, "Null Context"

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/rpc/a$m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v1, "tracker.transistorsoft.com:  BANNED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v1, 0x44

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Ljava/lang/Class;)V

    .line 3
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v2, Lcom/transistorsoft/locationmanager/rpc/a$i;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/rpc/a$i;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->removeGeofence(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method private i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    .line 4
    :cond_0
    const-class v0, Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Ljava/lang/Class;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 11
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/rpc/a$j;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/rpc/a$j;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->removeGeofences(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Lcom/transistorsoft/locationmanager/rpc/a$m;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transistorsoft/locationmanager/rpc/a$m;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    const-class v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Ljava/lang/Class;)V

    .line 2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithJSONObject(Lorg/json/JSONObject;)V

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->d:Lcom/transistorsoft/locationmanager/rpc/a$l;

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/rpc/a$l;->onSuccess()V

    return-void
.end method

.method private k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v2, Lcom/transistorsoft/locationmanager/rpc/a$g;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/rpc/a$g;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->setOdometer(Ljava/lang/Float;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method private l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->startSchedule()Z

    return-void
.end method

.method private m()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/rpc/a$d;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/rpc/a$d;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->stop(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method private n()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->stopSchedule()V

    return-void
.end method

.method private o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/rpc/a$m;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->create()Lcom/transistorsoft/locationmanager/data/SQLQuery;

    move-result-object v1

    .line 6
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->f()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/transistorsoft/locationmanager/rpc/a$a;

    invoke-direct {v3, p0}, Lcom/transistorsoft/locationmanager/rpc/a$a;-><init>(Lcom/transistorsoft/locationmanager/rpc/a;)V

    invoke-static {v2, v0, v1, v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->uploadLog(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Unknown command: "

    .line 1
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u26a1\ufe0f[RPC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/rpc/a;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->m()V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(I)V

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "startGeofences"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(I)V

    return-void

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "startSchedule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->l()V

    return-void

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "stopSchedule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->n()V

    return-void

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string v2, "changePace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->d()V

    return-void

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string v2, "setConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->j()V

    return-void

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string v2, "addGeofence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->a()V

    return-void

    .line 20
    :cond_7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string v2, "addGeofences"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->b()V

    return-void

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string v2, "removeGeofence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 23
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->h()V

    return-void

    .line 24
    :cond_9
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string v2, "removeGeofences"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 25
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->i()V

    return-void

    .line 26
    :cond_a
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "uploadLog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 27
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->o()V

    return-void

    .line 28
    :cond_b
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string v2, "destroyLog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 29
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->e()V

    return-void

    .line 30
    :cond_c
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "setOdometer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 31
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->k()V

    return-void

    .line 32
    :cond_d
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string v2, "resetOdometer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 33
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->k()V

    return-void

    .line 34
    :cond_e
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    const-string v2, "ban"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 35
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/rpc/a;->c()V

    return-void

    .line 37
    :cond_f
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->d:Lcom/transistorsoft/locationmanager/rpc/a$l;

    new-instance v2, Lcom/transistorsoft/locationmanager/rpc/a$m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/rpc/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/transistorsoft/locationmanager/rpc/a$m;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/transistorsoft/locationmanager/rpc/a$l;->a(Lcom/transistorsoft/locationmanager/rpc/a$m;)V
    :try_end_0
    .catch Lcom/transistorsoft/locationmanager/rpc/a$m; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 40
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/rpc/a;->d:Lcom/transistorsoft/locationmanager/rpc/a$l;

    invoke-interface {v1, v0}, Lcom/transistorsoft/locationmanager/rpc/a$l;->a(Lcom/transistorsoft/locationmanager/rpc/a$m;)V

    return-void
.end method

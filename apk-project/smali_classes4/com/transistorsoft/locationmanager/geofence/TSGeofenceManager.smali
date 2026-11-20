.class public Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;,
        Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;,
        Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;,
        Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;,
        Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;
    }
.end annotation


# static fields
.field public static final ACTION_STATIONARY_GEOFENCE:Ljava/lang/String; = "STATIONARY_GEOFENCE"

.field public static final MAX_GEOFENCES:I = 0x61

.field public static final MINIMUM_STATIONARY_RADIUS:F = 150.0f

.field private static final s:Ljava/lang/String; = "-->"

.field private static t:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager; = null

.field private static final u:J = 0x3e8L


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofencesChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/location/Location;

.field private e:Landroid/location/Location;

.field private final f:Ljava/util/concurrent/atomic/AtomicLong;

.field private g:Ljava/lang/Runnable;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final j:J

.field private final k:J

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final r:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$1E3j5T5Rqh9Dcs2sEofp2FIAr_E(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1GxeWWTI5hIDM5l9cybiWaJtaJM(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1oAEfxd0i33HbKTFggpZDY2xpX4(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1yU_4OV6yCMXq1_VCkDBX3wB9aI(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2wcrAKV9RjrTV_Mp2-kfNPEfuR4(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Em5vWA24D2t964QocSq-8ICI-iw(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LwmFD1xppa3SXkEjTHzWKxi5X7Q(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TZcsSHVSaokryZrdD-je3VDFmIE(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$YpIj2fh29XgXm_KBiOSuIIUu3Ns(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWk9O17LAKZtOx-tFeyNeR9sG28(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sszchH6a6pj9xkf-Dy9_MS3JRhU(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c:Ljava/util/List;

    .line 5
    new-instance v0, Landroid/location/Location;

    const-string v1, "TSLocationManager"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v6

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {p1, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->r:Landroid/os/Handler;

    const-wide/16 v7, 0x7530

    .line 44
    iput-wide v7, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->j:J

    const-wide/16 v7, 0xfa

    .line 45
    iput-wide v7, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->k:J

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 52
    invoke-virtual {v6}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringSignificantLocationChanges()V

    .line 56
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    return-object p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->t:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->t:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    .line 7
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->t:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d()V

    .line 12
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v1

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 14
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 16
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 17
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static synthetic a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 88
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "TSGeofenceManager is disabled"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 26
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Executed with null location"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Landroid/location/Location;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 42
    invoke-interface {p0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void
.end method

.method private static synthetic a(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$b;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$b;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Landroid/location/Location;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Void;)V
    .locals 1

    .line 31
    sget-object p3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\u2139\ufe0f  GeofencingClient removeGeofences SUCCESS"

    invoke-interface {p3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 33
    iget-object p3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    monitor-enter p3

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d()V

    .line 37
    new-instance p3, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;

    invoke-direct {p3}, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;-><init>()V

    invoke-virtual {p3, p1}, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;->setOff(Ljava/util/List;)Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;)V

    if-eqz p2, :cond_0

    .line 40
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p3, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static synthetic b(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private b(Landroid/location/Location;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static synthetic b(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 16
    invoke-interface {p0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void
.end method

.method private static synthetic b(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GeofencingClient removeGeofences FAILURE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Void;)V
    .locals 1

    .line 5
    sget-object p3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\u2139\ufe0f  GeofencingClient removeGeofences SUCCESS"

    invoke-interface {p3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 7
    iget-object p3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    monitor-enter p3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 9
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d()V

    .line 11
    new-instance p3, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;

    invoke-direct {p3}, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;-><init>()V

    invoke-virtual {p3, p1}, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;->setOff(Ljava/util/List;)Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;)V

    if-eqz p2, :cond_0

    .line 14
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p3, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda3;

    invoke-direct {p3, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda3;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b()Z
    .locals 5

    .line 18
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private synthetic c()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method private static synthetic c(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "mMonitoredIdentifiers"

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2139\ufe0f  Persist monitored geofences: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda4;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static synthetic d(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GeofencingClient removeGeofences FAILURE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda7;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    return-object p0
.end method

.method private e()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u2139\ufe0f  Persist monitored polygons: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v1, "mMonitoredPolygons"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic f(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->reset()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic g(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->t:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->t:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    .line 4
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->t:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic h(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a()V

    return-void
.end method

.method static synthetic i(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d()V

    return-void
.end method

.method static synthetic j(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h()V

    return-void
.end method

.method static synthetic k(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->r:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public _onBootEvent(Lcom/transistorsoft/locationmanager/event/BootEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d()V

    .line 5
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->reEvaluate()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    .line 46
    invoke-interface {p2}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-direct {p0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 59
    invoke-interface {p2}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    :cond_3
    return-void

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringPolygons()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringPolygon(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringPolygon(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_6
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object p1

    .line 73
    invoke-interface {p1, v0}, Lcom/google/android/gms/location/GeofencingClient;->removeGeofences(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda8;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    .line 74
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda9;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public add(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->add(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public add(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence;",
            ">;",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Landroid/content/Context;Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method c(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 5

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stop monitoring geofences"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getIdentifiers()Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    :cond_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringPolygons()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    invoke-virtual {p0, v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringPolygon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    invoke-virtual {p0, v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringPolygon(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_3
    invoke-interface {v0, v1}, Lcom/google/android/gms/location/GeofencingClient;->removeGeofences(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda5;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    .line 26
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda6;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stop()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public evaluate()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method g()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$d;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->g:Ljava/lang/Runnable;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->g:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->k:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public geofenceExists(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$f;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMonitoredPolygonIdentifiers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPolygonState(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getStationaryLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e:Landroid/location/Location;

    return-object v0
.end method

.method public hasGeofences()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMonitoringGeofencesInProximity()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMonitoringInfiniteGeofences()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxMonitoredGeofences()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMonitoringPolygon(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isMonitoringPolygons()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMonitoringStationaryRegion()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onConfigChange(Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "geofenceProximityRadius"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->evaluate()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v1

    if-nez v1, :cond_6

    .line 6
    const-string v1, "geofenceModeHighAccuracy"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->start(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringSignificantLocationChanges()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringStationaryRegion(Landroid/location/Location;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->stop(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setIsMoving(Ljava/lang/Boolean;)V

    .line 18
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringSignificantLocationChanges()V

    .line 19
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->stop(Landroid/content/Context;)V

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringInfiniteGeofences()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringSignificantLocationChanges()V

    .line 23
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringStationaryRegion(Landroid/location/Location;)V

    .line 27
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    const-string v0, "locationUpdateInterval"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "distanceFilter"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "deferTime"

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 30
    :cond_5
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringSignificantLocationChanges()V

    :cond_6
    return-void
.end method

.method public onGeofencesChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofencesChangeCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->reEvaluate()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onMotionChangeEvent(Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringPolygons()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getMonitoredPolygonIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->find(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->startMonitoringPolygon()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->startMonitoring(Landroid/content/Context;)V

    return-void

    .line 10
    :cond_2
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$LoiteringEvent;->isLoitering()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->stop(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onProviderChangeEvent(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->reset()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->evaluate()V

    return-void
.end method

.method public reEvaluate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->g()V

    return-void
.end method

.method public remove(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->remove(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public remove(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Landroid/content/Context;Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeListener(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "geofenceschange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c:Ljava/util/List;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c:Ljava/util/List;

    move-object v2, p2

    check-cast v2, Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofencesChangeCallback;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 6
    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    return-object v0
.end method

.method public removeListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f()V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a()V

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->start()V

    return-void
.end method

.method public setIsMoving(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setLocation(Landroid/location/Location;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->start()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b(Landroid/location/Location;)V

    return-void

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 16
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_4
    const-wide/16 v0, -0x1

    .line 18
    :goto_0
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v4, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    move v4, v5

    .line 19
    :goto_1
    iget-object v7, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    iget-object v7, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-eqz v7, :cond_6

    iget-wide v7, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->j:J

    cmp-long v7, v0, v7

    if-ltz v7, :cond_7

    :cond_6
    move v5, v6

    .line 23
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isMoving: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v7, " | stateChanged: "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v7, " | timerExpired: "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v7, " | elapsed: "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    .line 27
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_8
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->d:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " | d: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 42
    :cond_9
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceProximityRadius()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float p2, v2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    cmpl-float p2, v1, p2

    if-lez p2, :cond_a

    goto :goto_3

    :cond_a
    const/high16 p2, 0x43480000    # 200.0f

    cmpg-float p2, v1, p2

    if-gez p2, :cond_b

    if-nez v4, :cond_b

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_b
    move v6, v4

    :goto_3
    if-nez v5, :cond_d

    if-eqz v6, :cond_c

    goto :goto_4

    .line 60
    :cond_c
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b()Z

    move-result p2

    if-nez p2, :cond_e

    .line 61
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b(Landroid/location/Location;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Landroid/location/Location;)V

    goto :goto_5

    .line 63
    :cond_d
    :goto_4
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Landroid/location/Location;)V

    .line 68
    :cond_e
    :goto_5
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->b(Landroid/location/Location;)V

    return-void
.end method

.method public setPolygonState(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Start monitoring geofences"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDidDeviceReboot()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->reset()V

    goto/16 :goto_3

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "mMonitoredIdentifiers"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 16
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 17
    iget-object v5, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    monitor-enter v5

    .line 18
    :try_start_0
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 23
    :cond_2
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "mMonitoredPolygons"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 26
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v4

    .line 27
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    const-string v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 29
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 30
    aget-object v6, v5, v3

    .line 31
    iget-object v7, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected record for mMonitoredPolygons; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 36
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 37
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getMonitoredPolygonIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->find(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 40
    invoke-virtual {p0, v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringPolygon(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V

    goto :goto_2

    .line 42
    :cond_5
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected to find a monitored-polygon \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in the database but none was found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v3

    .line 45
    :try_start_2
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e()V

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 48
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 49
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 65
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public startMonitoringPolygon(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e()V

    .line 7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->startMonitoringPolygon()V

    .line 8
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->startMonitoring(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startMonitoringSignificantLocationChanges()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/settings/Settings;->isValid(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringInfiniteGeofences()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->start()V

    .line 19
    :cond_4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$a;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public startMonitoringStationaryRegion(Landroid/location/Location;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Cannot monitor stationary-region with \'WhenInUse\' authorization"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringInfiniteGeofences()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStationaryRadius()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    .line 17
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceProximityRadius()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 v0, 0x43160000    # 150.0f

    cmpg-float v3, v2, v0

    if-gez v3, :cond_5

    move v9, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v9, v2

    .line 27
    :goto_2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start monitoring stationary region (radius: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "m "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hAcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    .line 30
    const-string v2, "STATIONARY_GEOFENCE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v4

    .line 31
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    const-wide/16 v3, -0x1

    .line 32
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    const/4 v3, 0x2

    .line 33
    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v0

    .line 36
    new-instance v3, Lcom/google/android/gms/location/GeofencingRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/location/GeofencingRequest$Builder;-><init>()V

    .line 37
    invoke-virtual {v3, v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofence(Lcom/google/android/gms/location/Geofence;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v0

    const/4 v3, 0x0

    .line 41
    :try_start_0
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/location/GeofencingClient;->addGeofences(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    .line 42
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 48
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while attempting to addGeofences: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 50
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SecurityException while attempting to addGeofences: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f()V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$$ExternalSyntheticLambda10;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringSignificantLocationChanges()V

    .line 14
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->stop(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringPolygons()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->stop(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getMonitoredPolygonIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringPolygon(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopMonitoringPolygon(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 7
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->findByIdentifier(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->location:Landroid/location/Location;

    invoke-static {v2, p1, v0, v1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->handleGeofencingEvent(Landroid/content/Context;Ljava/lang/String;Landroid/location/Location;I)V

    .line 12
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->remove(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e()V

    .line 16
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->clearPolygon(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopMonitoringSignificantLocationChanges()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stop monitoring significant location changes"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public stopMonitoringStationaryRegion()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stop monitoring stationary region"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e:Landroid/location/Location;

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a:Landroid/content/Context;

    const-string v2, "STATIONARY_GEOFENCE"

    invoke-static {v1, v2}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/GeofencingClient;->removeGeofences(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

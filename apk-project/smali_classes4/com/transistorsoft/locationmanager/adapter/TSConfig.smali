.class public Lcom/transistorsoft/locationmanager/adapter/TSConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;,
        Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;,
        Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACTIVITY_RECOGNITION_INTERVAL:J = 0x2710L

.field public static final DEFAULT_ALLOW_IDENTICAL_LOCATIONS:Z = false

.field public static final DEFAULT_AUTO_SYNC:Z = true

.field public static final DEFAULT_AUTO_SYNC_THRESHOLD:Ljava/lang/Integer;

.field public static final DEFAULT_BATCH_SYNC:Z = false

.field public static final DEFAULT_DEBUG:Z = false

.field public static final DEFAULT_DEFER_TIME:J = 0x0L

.field public static final DEFAULT_DESIRED_ACCURACY:I = 0x64

.field public static final DEFAULT_DESIRED_ODOMETER_ACCURACY:F = 100.0f

.field public static final DEFAULT_DISABLE_ELASTICITY:Z = false

.field public static final DEFAULT_DISABLE_STOP_DETECTION:Z = false

.field public static final DEFAULT_DISTANCE_FILTER:F = 10.0f

.field public static final DEFAULT_ELASTICITY_MULTIPLIER:F = 1.0f

.field public static final DEFAULT_FASTEST_LOCATION_UPDATE_INTERVAL:J = -0x1L

.field public static final DEFAULT_FOREGROUND_SERVICE:Z = true

.field public static final DEFAULT_GEOFENCE_INITIAL_TRIGGER_ENTRY:Z = true

.field public static final DEFAULT_GEOFENCE_PROXIMITY_RADIUS:J = 0x3e8L

.field public static final DEFAULT_GEOFENCE_TEMPLATE:Ljava/lang/String; = ""

.field public static final DEFAULT_HEARTBEAT_INTERVAL:I = -0x1

.field public static final DEFAULT_HTTP_METHOD:Ljava/lang/String; = "POST"

.field public static final DEFAULT_HTTP_ROOT_PROPERTY:Ljava/lang/String; = "location"

.field public static final DEFAULT_HTTP_TIMEOUT:I = 0xea60

.field public static final DEFAULT_LOCATIONS_ORDER_DIRECTION:Ljava/lang/String; = "ASC"

.field public static final DEFAULT_LOCATION_TEMPLATE:Ljava/lang/String; = ""

.field public static final DEFAULT_LOCATION_TIMEOUT:I = 0x3c

.field public static final DEFAULT_LOCATION_UPDATE_INTERVAL:J = 0x3e8L

.field public static final DEFAULT_LOG_LEVEL:I = 0x0

.field public static final DEFAULT_LOG_MAX_DAYS:I = 0x3

.field public static final DEFAULT_MAIN_ACTIVITY_NAME:Ljava/lang/String;

.field public static final DEFAULT_MAX_BATCH_SIZE:I = -0x1

.field public static final DEFAULT_MAX_DAYS_TO_PERSIST:I = 0x1

.field public static final DEFAULT_MAX_RECORDS_TO_PERSIST:I = -0x1

.field public static final DEFAULT_MINIMUM_ACTIVITY_RECOGNITION_CONFIDENCE:I = 0x4b

.field public static final DEFAULT_SCHEDULE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SPEED_JUMP_FILTER:I = 0x12c

.field public static final DEFAULT_START_ON_BOOT:Z = false

.field public static final DEFAULT_STATIONARY_RADIUS:I = 0x19

.field public static final DEFAULT_STOP_AFTER_ELAPSED_MINUTES:I = 0x0

.field public static final DEFAULT_STOP_ON_STATIONARY:Z = false

.field public static final DEFAULT_STOP_ON_TERMINATE:Z = true

.field public static final DEFAULT_STOP_TIMEOUT:J = 0x5L

.field public static final DEFAULT_TRIGGER_ACTIVITIES:Ljava/lang/String; = "in_vehicle, on_bicycle, on_foot, running, walking"

.field public static final DEFAULT_URL:Ljava/lang/String; = ""

.field public static final MAXIMUM_LOCATION_ACCURACY:Ljava/lang/Float;

.field public static final MINIMUM_STATIONARY_RADIUS:I = 0x19

.field public static final PERSIST_MODE_ALL:I = 0x2

.field public static final PERSIST_MODE_GEOFENCE:I = -0x1

.field public static final PERSIST_MODE_LOCATION:I = 0x1

.field public static final PERSIST_MODE_NONE:I = 0x0

.field public static final TRACKING_MODE_GEOFENCE:I = 0x0

.field public static final TRACKING_MODE_LOCATION:I = 0x1

.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

.field private g:Landroid/content/Context;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Float;

.field private o:Ljava/lang/Boolean;

.field private p:Z

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/String;

.field private t:Lorg/json/JSONObject;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    .line 14
    const-string v2, "TSLocationManager:TSConfig"

    sput-object v2, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->d:Ljava/lang/String;

    const/high16 v2, 0x42c80000    # 100.0f

    .line 16
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sput-object v2, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->MAXIMUM_LOCATION_ACCURACY:Ljava/lang/Float;

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->DEFAULT_AUTO_SYNC_THRESHOLD:Ljava/lang/Integer;

    .line 69
    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->DEFAULT_MAIN_ACTIVITY_NAME:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->DEFAULT_SCHEDULE:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    .line 58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->o:Ljava/lang/Boolean;

    .line 59
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->q:Ljava/lang/Boolean;

    .line 60
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->i:Ljava/lang/Boolean;

    .line 61
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->l:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->j:Ljava/lang/Integer;

    .line 63
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->k:Ljava/lang/Boolean;

    .line 64
    iput-boolean v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->p:Z

    const/4 v1, 0x0

    .line 65
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->n:Ljava/lang/Float;

    .line 66
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->r:Ljava/lang/Boolean;

    .line 67
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->DEFAULT_MAIN_ACTIVITY_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->s:Ljava/lang/String;

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->t:Lorg/json/JSONObject;

    .line 73
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/settings/Settings;->load(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->load()V

    .line 78
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    if-eqz p1, :cond_0

    .line 79
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->E(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->u:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method static synthetic a()Lcom/transistorsoft/locationmanager/adapter/TSConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    return-object v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    .line 4
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;
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

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->r:Ljava/lang/Boolean;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    const-string v2, "in_vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    const-string v2, "on_bicycle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_1
    const-string v2, "on_foot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "running"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x8

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_3
    const-string/jumbo v2, "walking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x7

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_4
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONFIGURE ERROR: Unknown activity-name in #triggerActivities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    const-string/jumbo v3, "tslocationmanager_digi_warn"

    invoke-virtual {v1, v2, v3}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    sget-object v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p2, :cond_6

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 9
    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    .line 10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 11
    :cond_0
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_1

    .line 12
    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 13
    :cond_1
    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_2

    .line 14
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 15
    :cond_2
    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_3

    .line 16
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 17
    :cond_3
    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_4

    .line 18
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 19
    :cond_4
    const-class v2, Lorg/json/JSONObject;

    if-ne v1, v2, :cond_5

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 22
    :cond_5
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Unknown state Type: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    const-string/jumbo v1, "tslocationmanager_music_timpani_error_01"

    invoke-virtual {p1, p2, v1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_6
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;

    .line 6
    invoke-interface {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;->onChange(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/settings/Settings;->isValid(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    monitor-exit v0

    return-void

    .line 11
    :cond_2
    const-string v1, "logLevel"

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->n0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->setLogLevel(I)V

    .line 14
    :cond_3
    const-string v1, "logMaxDays"

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->o0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->setMaxHistory(I)V

    .line 17
    :cond_4
    const-string v1, "notification.channelId"

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->onUpdateChannelId(Landroid/content/Context;)V

    .line 20
    :cond_5
    const-string v1, "notification.channelName"

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->onUpdateChannelName(Landroid/content/Context;)V

    .line 23
    :cond_6
    const-string v1, "configUrl"

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->h0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 24
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->loadConfig(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    .line 33
    :cond_7
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->e()V

    .line 35
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 37
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    const-string/jumbo v3, "triggerActivities"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 40
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->E(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->u:Ljava/util/ArrayList;

    .line 42
    :cond_8
    invoke-direct {p0, v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_9
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic d(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;-><init>(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Lcom/transistorsoft/locationmanager/adapter/TSConfig$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()V
    .locals 5

    const-string/jumbo v0, "\u2139\ufe0f   Persist config, dirty: "

    .line 1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    sget-object v2, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    const-class v2, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v4, v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
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

.method private static f()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    .line 7
    :cond_1
    sget-object p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    return-object p0
.end method

.method public static isLoaded()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static r(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public calculateDistanceFilter(F)F
    .locals 7

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableElasticity()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v1, p1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    div-double/2addr v1, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v5

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    mul-double/2addr v1, v3

    div-double/2addr v1, v3

    double-to-float p1, v1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->c(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->c(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->d(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    return p1

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->c(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getActivityRecognitionInterval()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->q(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAllowIdenticalLocations()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->k(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorization()Lcom/transistorsoft/locationmanager/config/TSAuthorization;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->U(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    move-result-object v0

    return-object v0
.end method

.method public getAutoSync()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->F(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAutoSyncThreshold()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->G(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundPermissionRationale()Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->g0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale;

    move-result-object v0

    return-object v0
.end method

.method public getBatchSync()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->H(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->h0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrashDetector()Lcom/transistorsoft/locationmanager/config/TSCrashDetector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->f0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->m0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDeferTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->i(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredAccuracy()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->translateDesiredAccuracy(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredOdometerAccuracy()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->e(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getDidDeviceReboot()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->p:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDidShowBackgroundPermissionRationale()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDisableAutoSyncOnCellular()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->S(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDisableElasticity()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->j(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDisableLocationAuthorizationAlert()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDisableMotionActivityUpdates()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->t(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDisableProviderChangeRecord()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->T(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDisableStopDetection()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->s(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDistanceFilter()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->c(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getElasticityMultiplier()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->d(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getEnableHeadless()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->l0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getEnableTimestampMeta()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->l(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExtras()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->L(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getFastestLocationUpdateInterval()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->g(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundService()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->d0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getGeofenceInitialTriggerEntry()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->X(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getGeofenceModeHighAccuracy()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->Y(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getGeofenceProximityRadius()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->V(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getGeofenceTemplate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->O(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->K(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getHeadlessJobService()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->k0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeartbeatInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->c0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHttpRootProperty()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->M(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpTimeout()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->R(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getIsMoving()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->b(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAuthorizationRequest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->o(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTemplate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->N(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeout()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->h(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLocationUpdateInterval()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->f(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLocationsOrderDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->Q(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->n0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLogMaxDays()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->o0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMainActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBatchSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->I(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDaysToPersist()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->A(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxMonitoredGeofences()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->W(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRecordsToPersist()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->B(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->D(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumActivityRecognitionConfidence()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->r(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMotionTriggerDelay()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->x(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->e0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v0

    return-object v0
.end method

.method public getOdometer()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->n:Ljava/lang/Float;

    return-object v0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->J(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getPersist()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->y(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPersistMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->z(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPluginForEvent(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->t:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->t:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getSchedule()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->i0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScheduleUseAlarmManager()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->j0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSchedulerEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSpeedJumpFilter()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->m(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStartOnBoot()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getStationaryRadius()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->u(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStopAfterElapsedMinutes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->b0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStopOnStationary()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->w(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getStopOnTerminate()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->Z(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getStopTimeout()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->v(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTriggerActivities()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->E(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->C(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseSignificantChangesOnly()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->n(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasGeofenceTemplate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->O(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeadlessJobService()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->k0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasLocationTemplate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->N(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSchedule()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->i0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTriggerActivity(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->u:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasUrl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->C(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->C(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public incrementOdometer(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->n:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->n:Ljava/lang/Float;

    .line 2
    const-string v0, "odometer"

    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->n:Ljava/lang/Float;

    return-object p1
.end method

.method public isDirty(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->p0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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

.method public isFirstBoot()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLocationTrackingMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    sget-object v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-class v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6
    const-class v3, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    :cond_0
    const-class v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->o:Ljava/lang/Boolean;

    .line 13
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    .line 14
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLogLevel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLogMaxDays()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->initialize(II)V

    .line 15
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->e()V

    .line 16
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 21
    :cond_1
    const-string/jumbo v1, "useCLLocationAccuracy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->r:Ljava/lang/Boolean;

    .line 22
    const-string v1, "mainActivityName"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->s:Ljava/lang/String;

    .line 23
    const-string v1, "enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->i:Ljava/lang/Boolean;

    .line 24
    const-string v1, "schedulerEnabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->l:Ljava/lang/Boolean;

    .line 25
    const-string/jumbo v1, "trackingMode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->j:Ljava/lang/Integer;

    .line 26
    const-string v1, "didShowBackgroundPermissionRationale"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->k:Ljava/lang/Boolean;

    .line 27
    const-string v1, "didDeviceReboot"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->p:Z

    .line 28
    const-string v1, "odometer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->n:Ljava/lang/Float;

    .line 30
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "plugins"

    const-string/jumbo v5, "{}"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->t:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->t:Lorg/json/JSONObject;

    .line 35
    :goto_0
    const-class v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->o:Ljava/lang/Boolean;

    .line 40
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    .line 42
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->o:Ljava/lang/Boolean;

    .line 43
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TSLocationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    .line 49
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->e()V

    goto :goto_1

    .line 53
    :cond_2
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    .line 54
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->e()V

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLogLevel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getLogMaxDays()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->initialize(II)V

    .line 57
    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->getInstance()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->t:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->subscribe(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 58
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->print()V

    .line 59
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/Sensors;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/util/Sensors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/util/Sensors;->print()Ljava/lang/StringBuffer;

    .line 60
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->d()V

    return-void
.end method

.method public loadConfig(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->h0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 5
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    .line 6
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->h0(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->K(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 14
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    const-string v5, "content-type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing headers: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_2
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;-><init>(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public print()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-string v1, "TSLocationManager version: 3.7.0 (444)"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->print()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TSLocationManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :goto_0
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/Sensors;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/util/Sensors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/util/Sensors;->print()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public removeListener(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;

    .line 6
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 16
    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public requestsLocationAlways()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->o(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Always"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->b(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;Z)V

    return-void
.end method

.method public setDidDeviceReboot(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->p:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->p:Z

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "didDeviceReboot"

    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDidShowBackgroundPermissionRationale(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->k:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->k:Ljava/lang/Boolean;

    .line 3
    const-string v0, "didShowBackgroundPermissionRationale"

    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setEnabled(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->i:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->i:Ljava/lang/Boolean;

    .line 4
    const-string v0, "enabled"

    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIsMoving(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->setIsMoving(Ljava/lang/Boolean;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    .line 2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c()V

    return-void
.end method

.method public setMainActivityName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->s:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 2
    const-string v0, "mainActivityName"

    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->s:Ljava/lang/String;

    return-void
.end method

.method public setOdometer(Ljava/lang/Float;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->n:Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->n:Ljava/lang/Float;

    .line 3
    const-string v0, "odometer"

    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setPluginForEvent(ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->t:Lorg/json/JSONObject;

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2
    const-string p1, "plugins"

    iget-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->t:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setSchedulerEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->l:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->l:Ljava/lang/Boolean;

    .line 3
    const-string v0, "schedulerEnabled"

    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTrackingMode(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->j:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->j:Ljava/lang/Integer;

    .line 3
    const-string/jumbo v0, "trackingMode"

    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public shouldPersist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->y(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->B(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getPersistMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_1

    return v1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getGeofence()Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    if-ne v0, v3, :cond_4

    return v3

    :cond_4
    return v1

    :cond_5
    return v3

    :cond_6
    :goto_0
    return v1
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->toJson(Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Z)Lorg/json/JSONObject;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    :try_start_0
    const-string v0, "enabled"

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    const-string v0, "schedulerEnabled"

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getSchedulerEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    const-string v0, "heartbeatEnabled"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->m:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string/jumbo v0, "trackingMode"

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getTrackingMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v0, "didShowBackgroundPermissionRationale"

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDidShowBackgroundPermissionRationale()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v0, "odometer"

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getOdometer()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 10
    const-string v0, "isFirstBoot"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->o:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v0, "didLaunchInBackground"

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->q:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v0, "didDeviceReboot"

    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->p:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public translateDesiredAccuracy(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "translateDesiredAccuracy ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->r:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x2

    const/16 v1, 0x64

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_4

    const/16 v0, 0xa

    const/16 v2, 0x66

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x69

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p1, 0x68

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 24
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public updateWithBuilder()Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->P(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public updateWithJSONObject(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;Lorg/json/JSONObject;)V

    .line 2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c()V

    return-void
.end method

.method public useCLLocationAccuracy(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->r:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_1

    .line 2
    const-string/jumbo v0, "useCLLocationAccuracy"

    invoke-direct {p0, v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->f:Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->r:Ljava/lang/Boolean;

    return-void
.end method

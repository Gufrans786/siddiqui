.class public Lcom/transistorsoft/locationmanager/settings/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ACTIVITY_RECOGNITION_INTERVAL:J = 0x2710L

.field public static final DEFAULT_ALLOW_IDENTICAL_LOCATIONS:Ljava/lang/Boolean;

.field public static final DEFAULT_AUTO_SYNC:Z = true

.field public static final DEFAULT_AUTO_SYNC_THRESHOLD:Ljava/lang/Integer;

.field public static final DEFAULT_BATCH_SYNC:Z = false

.field public static final DEFAULT_DEBUG:Z = false

.field public static final DEFAULT_DEFER_TIME:J = 0x0L

.field public static final DEFAULT_DESIRED_ACCURACY:I = 0x0

.field public static final DEFAULT_DESIRED_ODOMETER_ACCURACY:F = 100.0f

.field public static final DEFAULT_DISABLE_ELASTICITY:Z = false

.field public static final DEFAULT_DISABLE_STOP_DETECTION:Z = false

.field public static final DEFAULT_DISTANCE_FILTER:Ljava/lang/Float;

.field public static final DEFAULT_ELASTICITY_MULTIPLIER:Ljava/lang/Float;

.field public static final DEFAULT_FASTEST_LOCATION_UPDATE_INTERVAL:J = 0x2710L

.field public static final DEFAULT_FORCE_RELOAD:Z = false

.field public static final DEFAULT_FOREGROUND_SERVICE:Z = false

.field public static final DEFAULT_GEOFENCE_INITIAL_TRIGGER_ENTRY:Z = true

.field public static final DEFAULT_GEOFENCE_PROXIMITY_RADIUS:J = 0x3e8L

.field public static final DEFAULT_GEOFENCE_TEMPLATE:Ljava/lang/String; = ""

.field public static final DEFAULT_HEARTBEAT_INTERVAL:I = -0x1

.field public static final DEFAULT_HTTP_METHOD:Ljava/lang/String; = "POST"

.field public static final DEFAULT_HTTP_ROOT_PROPERTY:Ljava/lang/String; = "location"

.field public static final DEFAULT_HTTP_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_LOCATIONS_ORDER_DIRECTION:Ljava/lang/String; = "ASC"

.field public static final DEFAULT_LOCATION_TEMPLATE:Ljava/lang/String; = ""

.field public static final DEFAULT_LOCATION_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_LOCATION_UPDATE_INTERVAL:J = 0x3e8L

.field public static final DEFAULT_LOG_LEVEL:I = 0x5

.field public static final DEFAULT_LOG_MAX_DAYS:I = 0x3

.field public static final DEFAULT_MAX_BATCH_SIZE:I = -0x1

.field public static final DEFAULT_MAX_DAYS_TO_PERSIST:I = 0x1

.field public static final DEFAULT_MAX_RECORDS_TO_PERSIST:I = -0x1

.field public static final DEFAULT_MINIMUM_ACTIVITY_RECOGNITION_CONFIDENCE:I = 0x4b

.field public static final DEFAULT_NOTIFICATION_COLOR:Ljava/lang/String; = ""

.field public static final DEFAULT_NOTIFICATION_ICON:Ljava/lang/String; = ""

.field public static final DEFAULT_NOTIFICATION_PRIORITY:Ljava/lang/Integer;

.field public static final DEFAULT_NOTIFICATION_TEXT:Ljava/lang/String; = "Location Service activated"

.field public static final DEFAULT_NOTIFICATION_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_SCHEDULE:Ljava/lang/String;

.field public static final DEFAULT_START_ON_BOOT:Z = false

.field public static final DEFAULT_STATIONARY_RADIUS:I = 0x19

.field public static final DEFAULT_STOP_AFTER_ELAPSED_MINUTES:I = 0x0

.field public static final DEFAULT_STOP_ON_STATIONARY:Z = false

.field public static final DEFAULT_STOP_ON_TERMINATE:Z = true

.field public static final DEFAULT_STOP_TIMEOUT:J = 0x5L

.field public static final DEFAULT_TRIGGER_ACTIVITIES:Ljava/lang/String; = "in_vehicle, on_bicycle, on_foot, running, walking"

.field public static final DEFAULT_URL:Ljava/lang/String; = ""

.field public static final MAXIMUM_LOCATION_ACCURACY:Ljava/lang/Float;

.field public static final MINIMUM_STATIONARY_RADIUS:Ljava/lang/Integer;

.field public static final TAG:Ljava/lang/String; = "TSLocationManager"

.field public static final TRACKING_MODE_GEOFENCE:Ljava/lang/String; = "geofence"

.field public static final TRACKING_MODE_LOCATION:Ljava/lang/String; = "location"

.field private static a:Landroid/content/SharedPreferences;

.field public static activityRecognitionInterval:Ljava/lang/Long;

.field public static allowIdenticalLocations:Ljava/lang/Boolean;

.field public static autoSync:Ljava/lang/Boolean;

.field public static autoSyncThreshold:Ljava/lang/Integer;

.field private static b:Z

.field public static batchSync:Ljava/lang/Boolean;

.field private static c:Z

.field public static changed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static configureInterval:Ljava/lang/Integer;

.field public static configureUrl:Ljava/lang/String;

.field private static d:Z

.field public static debug:Ljava/lang/Boolean;

.field public static deferTime:Ljava/lang/Long;

.field public static desiredAccuracy:Ljava/lang/Integer;

.field public static desiredOdometerAccuracy:Ljava/lang/Float;

.field public static disableElasticity:Ljava/lang/Boolean;

.field public static disableStopDetection:Ljava/lang/Boolean;

.field public static distanceFilter:Ljava/lang/Float;

.field private static e:Z

.field public static elasticityMultiplier:Ljava/lang/Float;

.field public static enableHeadless:Ljava/lang/Boolean;

.field public static enabled:Ljava/lang/Boolean;

.field public static extras:Lorg/json/JSONObject;

.field private static f:Z

.field public static fastestLocationUpdateInterval:Ljava/lang/Long;

.field public static forceReloadOnBoot:Ljava/lang/Boolean;

.field public static forceReloadOnGeofence:Ljava/lang/Boolean;

.field public static forceReloadOnHeartbeat:Ljava/lang/Boolean;

.field public static forceReloadOnLocationChange:Ljava/lang/Boolean;

.field public static forceReloadOnMotionChange:Ljava/lang/Boolean;

.field public static forceReloadOnSchedule:Ljava/lang/Boolean;

.field public static foregroundService:Ljava/lang/Boolean;

.field private static g:Z

.field public static geofenceInitialTriggerEntry:Ljava/lang/Boolean;

.field public static geofenceProximityRadius:Ljava/lang/Long;

.field public static geofenceTemplate:Ljava/lang/String;

.field private static h:Z

.field public static headers:Lorg/json/JSONObject;

.field public static headlessJobService:Ljava/lang/String;

.field public static heartbeatInterval:Ljava/lang/Integer;

.field public static httpRootProperty:Ljava/lang/String;

.field public static httpTimeout:Ljava/lang/Integer;

.field public static isMoving:Ljava/lang/Boolean;

.field public static locationTemplate:Ljava/lang/String;

.field public static locationTimeout:Ljava/lang/Integer;

.field public static locationUpdateInterval:Ljava/lang/Long;

.field public static locationsOrderDirection:Ljava/lang/String;

.field public static logLevel:Ljava/lang/Integer;

.field public static logMaxDays:Ljava/lang/Integer;

.field public static maxBatchSize:Ljava/lang/Integer;

.field public static maxDaysToPersist:Ljava/lang/Integer;

.field public static maxRecordsToPersist:Ljava/lang/Integer;

.field public static method:Ljava/lang/String;

.field public static minimumActivityRecognitionConfidence:Ljava/lang/Integer;

.field public static notificationColor:Ljava/lang/String;

.field public static notificationIcon:Ljava/lang/String;

.field public static notificationLargeIcon:Ljava/lang/String;

.field public static notificationPriority:Ljava/lang/Integer;

.field public static notificationSmallIcon:Ljava/lang/String;

.field public static notificationText:Ljava/lang/String;

.field public static notificationTitle:Ljava/lang/String;

.field public static odometer:Ljava/lang/Float;

.field public static params:Lorg/json/JSONObject;

.field public static persist:Ljava/lang/Boolean;

.field public static schedule:Lorg/json/JSONArray;

.field public static schedulerEnabled:Ljava/lang/Boolean;

.field public static settings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transistorsoft/locationmanager/settings/a;",
            ">;"
        }
    .end annotation
.end field

.field public static startOnBoot:Ljava/lang/Boolean;

.field public static stationaryRadius:Ljava/lang/Integer;

.field public static stopAfterElapsedMinutes:Ljava/lang/Integer;

.field public static stopOnStationary:Ljava/lang/Boolean;

.field public static stopOnTerminate:Ljava/lang/Boolean;

.field public static stopTimeout:Ljava/lang/Long;

.field public static trackingMode:Ljava/lang/String;

.field public static triggerActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "tslocationmanager"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->MAXIMUM_LOCATION_ACCURACY:Ljava/lang/Float;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->settings:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->changed:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    sput-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->b:Z

    .line 15
    sput-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->c:Z

    .line 16
    sput-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->d:Z

    .line 17
    sput-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->e:Z

    .line 18
    sput-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->f:Z

    .line 19
    sput-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->g:Z

    .line 21
    sput-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->h:Z

    const/high16 v0, 0x41200000    # 10.0f

    .line 24
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->DEFAULT_DISTANCE_FILTER:Ljava/lang/Float;

    const/16 v0, 0x3c

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->DEFAULT_LOCATION_TIMEOUT:Ljava/lang/Integer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->DEFAULT_ELASTICITY_MULTIPLIER:Ljava/lang/Float;

    const/16 v0, 0x19

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->MINIMUM_STATIONARY_RADIUS:Ljava/lang/Integer;

    .line 38
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->DEFAULT_ALLOW_IDENTICAL_LOCATIONS:Ljava/lang/Boolean;

    .line 54
    sput-object v1, Lcom/transistorsoft/locationmanager/settings/Settings;->DEFAULT_AUTO_SYNC_THRESHOLD:Ljava/lang/Integer;

    const v2, 0xea60

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->DEFAULT_HTTP_TIMEOUT:Ljava/lang/Integer;

    .line 70
    sput-object v1, Lcom/transistorsoft/locationmanager/settings/Settings;->DEFAULT_NOTIFICATION_PRIORITY:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 75
    sput-object v1, Lcom/transistorsoft/locationmanager/settings/Settings;->DEFAULT_SCHEDULE:Ljava/lang/String;

    .line 152
    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->debug:Ljava/lang/Boolean;

    const/4 v0, 0x5

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->logLevel:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->logMaxDays:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->foregroundService:Ljava/lang/Boolean;

    .line 5
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->foregroundService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static B()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->geofenceInitialTriggerEntry:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static C()J
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->geofenceProximityRadius:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static D()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->geofenceTemplate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->geofenceTemplate:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static E()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->headers:Lorg/json/JSONObject;

    return-object v0
.end method

.method private static F()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->headlessJobService:Ljava/lang/String;

    return-object v0
.end method

.method private static G()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->heartbeatInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method private static H()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "POST"

    return-object v0
.end method

.method private static I()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->httpRootProperty:Ljava/lang/String;

    return-object v0
.end method

.method private static J()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->httpTimeout:Ljava/lang/Integer;

    return-object v0
.end method

.method private static K()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->isMoving:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static L()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->locationTemplate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->locationTemplate:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static M()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->locationTimeout:Ljava/lang/Integer;

    return-object v0
.end method

.method private static N()J
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->locationUpdateInterval:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static O()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->locationsOrderDirection:Ljava/lang/String;

    const-string v1, "ASC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->locationsOrderDirection:Ljava/lang/String;

    const-string v2, "DESC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid value for locationsOrderDirection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/transistorsoft/locationmanager/settings/Settings;->locationsOrderDirection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 3
    sput-object v1, Lcom/transistorsoft/locationmanager/settings/Settings;->locationsOrderDirection:Ljava/lang/String;

    .line 5
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->locationsOrderDirection:Ljava/lang/String;

    return-object v0
.end method

.method private static P()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->logLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static Q()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->logMaxDays:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static R()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->maxBatchSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static S()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->maxDaysToPersist:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static T()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->maxRecordsToPersist:Ljava/lang/Integer;

    return-object v0
.end method

.method private static U()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->minimumActivityRecognitionConfidence:Ljava/lang/Integer;

    return-object v0
.end method

.method private static V()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->notificationColor:Ljava/lang/String;

    return-object v0
.end method

.method private static W()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->notificationIcon:Ljava/lang/String;

    return-object v0
.end method

.method private static X()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->notificationLargeIcon:Ljava/lang/String;

    return-object v0
.end method

.method private static Y()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->notificationPriority:Ljava/lang/Integer;

    return-object v0
.end method

.method private static Z()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->notificationSmallIcon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->notificationSmallIcon:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->notificationIcon:Ljava/lang/String;

    return-object v0
.end method

.method private static a(F)F
    .locals 7

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-lez v1, :cond_2

    .line 33
    invoke-static {}, Lcom/transistorsoft/locationmanager/settings/Settings;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v1, p0

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    div-double/2addr v1, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v5

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    mul-double/2addr v1, v3

    div-double/2addr v1, v3

    double-to-float p0, v1

    cmpg-float v1, p0, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    .line 40
    :goto_0
    sget-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->distanceFilter:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sget-object v1, Lcom/transistorsoft/locationmanager/settings/Settings;->distanceFilter:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->elasticityMultiplier:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr p0, v1

    return p0

    .line 41
    :cond_2
    :goto_1
    sget-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->distanceFilter:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static a()J
    .locals 2

    .line 52
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->activityRecognitionInterval:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 28
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->changed:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/transistorsoft/locationmanager/settings/a;)Ljava/lang/Object;
    .locals 5

    const-string v0, "Failed to decode JSONArray "

    const-string v1, "Failed to decode JSONObject "

    .line 188
    :try_start_0
    iget v2, p0, Lcom/transistorsoft/locationmanager/settings/a;->a:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    return-object v3

    .line 215
    :pswitch_0
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    sget-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    :catch_0
    move-exception v1

    .line 217
    :try_start_2
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 218
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 219
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 220
    :pswitch_1
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    sget-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_1
    move-exception v0

    .line 222
    :try_start_4
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 223
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    .line 225
    :pswitch_2
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 228
    :pswitch_3
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 229
    :pswitch_4
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 230
    :pswitch_5
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 231
    :pswitch_6
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    :cond_0
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    return-object p0

    .line 266
    :catch_2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to cast setting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Applying defaultValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;Lcom/transistorsoft/locationmanager/settings/a;)Ljava/lang/Object;
    .locals 7

    if-nez p0, :cond_0

    .line 138
    iget-object p0, p1, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    .line 140
    :cond_0
    iget-object v0, p1, Lcom/transistorsoft/locationmanager/settings/a;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 145
    :try_start_0
    iget v2, p1, Lcom/transistorsoft/locationmanager/settings/a;->a:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-class v5, Lcom/transistorsoft/locationmanager/settings/Settings;

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    const/4 v6, 0x4

    if-eq v2, v6, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 156
    :cond_2
    :try_start_1
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    aput-object v4, v2, v3

    invoke-virtual {v5, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_3
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    aput-object v4, v2, v3

    invoke-virtual {v5, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_4
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-virtual {v5, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_5
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v5, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    .line 173
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 174
    :cond_6
    iget-object p0, p1, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 182
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 184
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 186
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private static a(Lorg/json/JSONObject;Lcom/transistorsoft/locationmanager/settings/a;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ": "

    .line 69
    iget-object v1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object p0, p1, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    return-object p0

    .line 74
    :cond_0
    :try_start_0
    iget v3, p1, Lcom/transistorsoft/locationmanager/settings/a;->a:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v3, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_2
    iget-object v3, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_3
    iget-object v3, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float p0, v7

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 89
    :cond_4
    iget-object v3, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iget-object p0, p1, Lcom/transistorsoft/locationmanager/settings/a;->d:Ljava/lang/Object;

    if-nez p0, :cond_5

    goto/16 :goto_2

    .line 105
    :cond_5
    iget p0, p1, Lcom/transistorsoft/locationmanager/settings/a;->a:I

    if-eq p0, v6, :cond_8

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_6

    goto :goto_1

    .line 117
    :cond_6
    move-object p0, v1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p0, p1, Lcom/transistorsoft/locationmanager/settings/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-gez p0, :cond_9

    .line 118
    iget-object v2, p1, Lcom/transistorsoft/locationmanager/settings/a;->d:Ljava/lang/Object;

    goto :goto_1

    .line 119
    :cond_7
    move-object p0, v1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object v3, p1, Lcom/transistorsoft/locationmanager/settings/a;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float p0, p0, v3

    if-gez p0, :cond_9

    .line 120
    iget-object v2, p1, Lcom/transistorsoft/locationmanager/settings/a;->d:Ljava/lang/Object;

    goto :goto_1

    .line 124
    :cond_8
    move-object p0, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object v3, p1, Lcom/transistorsoft/locationmanager/settings/a;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p0, v3, :cond_9

    .line 125
    iget-object v2, p1, Lcom/transistorsoft/locationmanager/settings/a;->d:Ljava/lang/Object;

    :cond_9
    :goto_1
    if-eqz v2, :cond_a

    .line 135
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Enforced minimumValue, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v2

    :cond_a
    :goto_2
    return-object v1

    .line 136
    :catch_0
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid number format for setting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Using defaultValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 137
    iget-object p0, p1, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 54
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 55
    const-string v1, "com.transistorsoft.locationmanager.license"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 59
    sput-boolean v1, Lcom/transistorsoft/locationmanager/settings/Settings;->f:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static a(J)V
    .locals 2

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->geofenceProximityRadius:Ljava/lang/Long;

    .line 43
    sget-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 44
    sget-object p1, Lcom/transistorsoft/locationmanager/settings/Settings;->geofenceProximityRadius:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p1, "geofenceProximityRadius"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static a(Ljava/lang/Boolean;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    sput-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->isMoving:Ljava/lang/Boolean;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v1, "isMoving"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static a(Ljava/lang/Float;)V
    .locals 2

    .line 29
    sput-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->odometer:Ljava/lang/Float;

    .line 30
    sget-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 31
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->odometer:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "odometer"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static a(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->stationaryRadius:Ljava/lang/Integer;

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/transistorsoft/locationmanager/settings/a;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 268
    iget v0, p1, Lcom/transistorsoft/locationmanager/settings/a;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 288
    :pswitch_0
    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 289
    :pswitch_1
    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 290
    :pswitch_2
    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 293
    :pswitch_3
    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 294
    :pswitch_4
    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 295
    :pswitch_5
    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 296
    :pswitch_6
    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 60
    sget-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->g:Z

    if-eqz v0, :cond_0

    .line 62
    const-string p0, "License Validation Failure"

    const-string p1, "BackgroundGeolocation is running in evaluation mode."

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 66
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TSLocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/event/SettingsFailureEvent;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/event/SettingsFailureEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->changed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    sget-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    sget-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/settings/a;

    .line 6
    iget-object v3, v2, Lcom/transistorsoft/locationmanager/settings/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v3, v2, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    :try_start_0
    sget-object v3, Lcom/transistorsoft/locationmanager/settings/Settings;->changed:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {p0, v2}, Lcom/transistorsoft/locationmanager/settings/Settings;->a(Lorg/json/JSONObject;Lcom/transistorsoft/locationmanager/settings/a;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v3, v2}, Lcom/transistorsoft/locationmanager/settings/Settings;->a(Ljava/lang/Object;Lcom/transistorsoft/locationmanager/settings/a;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-static {v4, v2}, Lcom/transistorsoft/locationmanager/settings/Settings;->b(Ljava/lang/Object;Lcom/transistorsoft/locationmanager/settings/a;)V

    .line 15
    invoke-static {v3, v2, v0}, Lcom/transistorsoft/locationmanager/settings/Settings;->a(Ljava/lang/Object;Lcom/transistorsoft/locationmanager/settings/a;Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {}, Lcom/transistorsoft/locationmanager/settings/Settings;->P()I

    move-result p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->setLogLevel(I)V

    .line 22
    invoke-static {}, Lcom/transistorsoft/locationmanager/settings/Settings;->Q()I

    move-result p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->setMaxHistory(I)V

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    .line 27
    sput-boolean p0, Lcom/transistorsoft/locationmanager/settings/Settings;->h:Z

    return-void
.end method

.method private static a(Z)V
    .locals 0

    .line 46
    sput-boolean p0, Lcom/transistorsoft/locationmanager/settings/Settings;->b:Z

    return-void
.end method

.method private static a0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->notificationText:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    .line 26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x2

    const/16 v1, 0x64

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_3

    const/16 v0, 0xa

    const/16 v2, 0x66

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbb8

    if-eq p0, v0, :cond_0

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x69

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x68

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 46
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 47
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static b(F)V
    .locals 0

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->distanceFilter:Ljava/lang/Float;

    return-void
.end method

.method private static b(Ljava/lang/Object;Lcom/transistorsoft/locationmanager/settings/a;)V
    .locals 3

    .line 48
    :try_start_0
    const-class v0, Lcom/transistorsoft/locationmanager/settings/Settings;

    iget-object v1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 54
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to set field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 56
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .line 5
    sput-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->trackingMode:Ljava/lang/String;

    .line 6
    sget-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 7
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->trackingMode:Ljava/lang/String;

    const-string/jumbo v1, "trackingMode"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b(Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->enabled:Ljava/lang/Boolean;

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    const-string v1, "enabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b()Z
    .locals 1

    .line 10
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->allowIdenticalLocations:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    :try_start_0
    const-class v2, Landroid/content/pm/ApplicationInfo;

    const-string v3, "FLAG_DEBUGGABLE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :catch_0
    move-exception p0

    .line 24
    :try_start_1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception p0

    .line 25
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    return v1
.end method

.method private static b0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->notificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p0

    .line 39
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 40
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 47
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 53
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0

    .line 5
    sput-object p0, Lcom/transistorsoft/locationmanager/settings/Settings;->url:Ljava/lang/String;

    return-void
.end method

.method private static c(Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->schedulerEnabled:Ljava/lang/Boolean;

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    const-string v1, "schedulerEnabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static c()Z
    .locals 1

    .line 6
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->autoSync:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "%0"

    .line 7
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/settings/Settings;->b(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/transistorsoft/locationmanager/settings/Settings;->g:Z

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/settings/Settings;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "LICENSE VALIDATION FAILURE"

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 11
    const-string p0, "Failed to find license key in AndroidManifest.  Ensure you\'ve added the key within <application><meta-data android:name=\"com.transistorsoft.locationmanager.license\" android:value=\"<YOUR LICENSE KEY>\" />"

    invoke-static {v2, p0}, Lcom/transistorsoft/locationmanager/settings/Settings;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 15
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/settings/Settings;->v0()V

    .line 18
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--0bac1f565ffae900738c8ed2c2b59f56aea65a86375a27a90a0741693a3e4282"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 25
    :catch_0
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "License validation error"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 27
    :cond_1
    invoke-static {v2, v1}, Lcom/transistorsoft/locationmanager/settings/Settings;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private static c0()Ljava/lang/Float;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->odometer:Ljava/lang/Float;

    return-object v0
.end method

.method private static d()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->autoSyncThreshold:Ljava/lang/Integer;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/util/ArrayList;
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

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    const-string v2, "in_vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    const-string v2, "on_bicycle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    const-string v2, "on_foot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    const-string v2, "running"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x8

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    const-string/jumbo v2, "walking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x7

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
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

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static d0()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method private static e()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->batchSync:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static e0()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->maxRecordsToPersist:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static f()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->configureInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method private static f0()Lorg/json/JSONArray;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->schedule:Lorg/json/JSONArray;

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->configureUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static g0()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->schedulerEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static h()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->debug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static h0()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->startOnBoot:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static i()J
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->deferTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static i0()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    sget-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    sget-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/settings/a;

    .line 5
    sget-object v3, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    iget-object v4, v2, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/settings/Settings;->a(Lcom/transistorsoft/locationmanager/settings/a;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    iget v4, v2, Lcom/transistorsoft/locationmanager/settings/a;->a:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 15
    :goto_1
    :try_start_0
    iget-object v4, v2, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to set \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static isLoaded()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->h:Z

    return v0
.end method

.method public static isValid(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/a/A;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static j()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->desiredAccuracy:Ljava/lang/Integer;

    return-object v0
.end method

.method private static j0()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->stationaryRadius:Ljava/lang/Integer;

    return-object v0
.end method

.method private static k()F
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->desiredOdometerAccuracy:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static k0()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->stopAfterElapsedMinutes:Ljava/lang/Integer;

    return-object v0
.end method

.method private static l()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->b:Z

    return v0
.end method

.method private static l0()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->stopOnStationary:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/a/A;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static m()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->disableElasticity:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static m0()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->stopOnTerminate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static n()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->disableStopDetection:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static n0()J
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->stopTimeout:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static o()F
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->distanceFilter:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static o0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->trackingMode:Ljava/lang/String;

    return-object v0
.end method

.method private static p()F
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->elasticityMultiplier:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static p0()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->triggerActivities:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static q()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->enableHeadless:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static q0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->url:Ljava/lang/String;

    return-object v0
.end method

.method private static r()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static r0()V
    .locals 0

    return-void
.end method

.method private static s()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->extras:Lorg/json/JSONObject;

    return-object v0
.end method

.method private static s0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->trackingMode:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static t()J
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->fastestLocationUpdateInterval:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static t0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2
    const-string v1, "BackgroundGeolocation Settings"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/settings/Settings;->i0()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :goto_0
    const-string/jumbo v1, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private static u()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->forceReloadOnBoot:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static u0()V
    .locals 5

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    sget-object v2, Lcom/transistorsoft/locationmanager/settings/Settings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/settings/a;

    .line 4
    sget-object v3, Lcom/transistorsoft/locationmanager/settings/Settings;->a:Landroid/content/SharedPreferences;

    iget-object v4, v2, Lcom/transistorsoft/locationmanager/settings/a;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/transistorsoft/locationmanager/settings/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v3, v2, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/transistorsoft/locationmanager/settings/Settings;->a(Ljava/lang/Object;Lcom/transistorsoft/locationmanager/settings/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/transistorsoft/locationmanager/settings/Settings;->b(Ljava/lang/Object;Lcom/transistorsoft/locationmanager/settings/a;)V

    .line 8
    iget-object v3, v2, Lcom/transistorsoft/locationmanager/settings/a;->c:Ljava/lang/Object;

    invoke-static {v3, v2, v0}, Lcom/transistorsoft/locationmanager/settings/Settings;->a(Ljava/lang/Object;Lcom/transistorsoft/locationmanager/settings/a;Landroid/content/SharedPreferences$Editor;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static v()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->forceReloadOnGeofence:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static v0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/transistorsoft/locationmanager/settings/Settings;->c:Z

    return-void
.end method

.method private static w()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->forceReloadOnHeartbeat:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static x()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->forceReloadOnLocationChange:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static y()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->forceReloadOnMotionChange:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static z()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/settings/Settings;->forceReloadOnSchedule:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.class public Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;,
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$W;,
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;,
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;,
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Y;,
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;,
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;,
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;,
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;,
        Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_GEOFENCE:Ljava/lang/String; = "addGeofence"

.field public static final ACTION_ADD_GEOFENCES:Ljava/lang/String; = "addGeofences"

.field public static final ACTION_CHANGE_PACE:Ljava/lang/String; = "changePace"

.field public static final ACTION_CLEAR_DATABASE:Ljava/lang/String; = "clearDatabase"

.field public static final ACTION_DESTROY_LOCATION:Ljava/lang/String; = "destroyLocation"

.field public static final ACTION_DESTROY_LOCATIONS:Ljava/lang/String; = "destroyLocations"

.field public static final ACTION_DESTROY_LOG:Ljava/lang/String; = "destroyLog"

.field public static final ACTION_FINISH:Ljava/lang/String; = "finish"

.field public static final ACTION_GEOFENCE_EXISTS:Ljava/lang/String; = "geofenceExists"

.field public static final ACTION_GET_COUNT:Ljava/lang/String; = "getCount"

.field public static final ACTION_GET_CURRENT_POSITION:Ljava/lang/String; = "getCurrentPosition"

.field public static final ACTION_GET_GEOFENCE:Ljava/lang/String; = "getGeofence"

.field public static final ACTION_GET_GEOFENCES:Ljava/lang/String; = "getGeofences"

.field public static final ACTION_GET_LOCATIONS:Ljava/lang/String; = "getLocations"

.field public static final ACTION_GET_ODOMETER:Ljava/lang/String; = "getOdometer"

.field public static final ACTION_GET_PROVIDER_STATE:Ljava/lang/String; = "getProviderState"

.field public static final ACTION_GET_SENSORS:Ljava/lang/String; = "getSensors"

.field public static final ACTION_GOOGLE_PLAY_SERVICES_CONNECT_ERROR:Ljava/lang/String; = "googlePlayServiceConnectError"

.field public static final ACTION_HEARTBEAT:Ljava/lang/String; = "heartbeat"

.field public static final ACTION_HTTP_RESPONSE:Ljava/lang/String; = "http"

.field public static final ACTION_INSERT_LOCATION:Ljava/lang/String; = "insertLocation"

.field public static final ACTION_IS_IGNORING_BATTERY_OPTIMIZATIONS:Ljava/lang/String; = "isIgnoringBatteryOptimizations"

.field public static final ACTION_IS_POWER_SAVE_MODE:Ljava/lang/String; = "isPowerSaveMode"

.field public static final ACTION_LOCATION_ERROR:Ljava/lang/String; = "locationError"

.field public static final ACTION_ON_GEOFENCE:Ljava/lang/String; = "onGeofence"

.field public static final ACTION_ON_MOTION_CHANGE:Ljava/lang/String; = "onMotionChange"

.field public static final ACTION_PLAY_SOUND:Ljava/lang/String; = "playSound"

.field public static final ACTION_REMOVE_GEOFENCE:Ljava/lang/String; = "removeGeofence"

.field public static final ACTION_REMOVE_GEOFENCES:Ljava/lang/String; = "removeGeofences"

.field public static final ACTION_REMOVE_LISTENER:Ljava/lang/String; = "removeListener"

.field public static final ACTION_REQUEST_PERMISSION:Ljava/lang/String; = "requestPermission"

.field public static final ACTION_RESET_ODOMETER:Ljava/lang/String; = "resetOdometer"

.field public static final ACTION_SCHEDULE:Ljava/lang/String; = "schedule"

.field public static final ACTION_SET_CONFIG:Ljava/lang/String; = "setConfig"

.field public static final ACTION_SET_NOTIFICATION:Ljava/lang/String; = "setNotification"

.field public static final ACTION_SET_ODOMETER:Ljava/lang/String; = "setOdometer"

.field public static final ACTION_SHOW_SETTINGS:Ljava/lang/String; = "showSettings"

.field public static final ACTION_START:Ljava/lang/String; = "start"

.field public static final ACTION_START_BACKGROUND_TASK:Ljava/lang/String; = "startBackgroundTask"

.field public static final ACTION_START_GEOFENCES:Ljava/lang/String; = "startGeofences"

.field public static final ACTION_START_ON_BOOT:Ljava/lang/String; = "startOnBoot"

.field public static final ACTION_START_SCHEDULE:Ljava/lang/String; = "startSchedule"

.field public static final ACTION_STOP:Ljava/lang/String; = "stop"

.field public static final ACTION_STOP_BACKGROUND_TASK:Ljava/lang/String; = "stopBackgroundTask"

.field public static final ACTION_STOP_SCHEDULE:Ljava/lang/String; = "stopSchedule"

.field public static final ACTION_STOP_WATCH_POSITION:Ljava/lang/String; = "stopWatchPosition"

.field public static final ACTION_SYNC:Ljava/lang/String; = "sync"

.field public static final ACTION_WATCH_POSITION:Ljava/lang/String; = "watchPosition"

.field public static final EVENT_ACTIVITYCHANGE:Ljava/lang/String; = "activitychange"

.field public static final EVENT_AUTHORIZATION:Ljava/lang/String; = "authorization"

.field public static final EVENT_BOOT:Ljava/lang/String; = "boot"

.field public static final EVENT_CONNECTIVITYCHANGE:Ljava/lang/String; = "connectivitychange"

.field public static final EVENT_ENABLEDCHANGE:Ljava/lang/String; = "enabledchange"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_GEOFENCE:Ljava/lang/String; = "geofence"

.field public static final EVENT_GEOFENCESCHANGE:Ljava/lang/String; = "geofenceschange"

.field public static final EVENT_GEOFENCES_CHANGE:Ljava/lang/String; = "geofenceschange"

.field public static final EVENT_HEARTBEAT:Ljava/lang/String; = "heartbeat"

.field public static final EVENT_HTTP:Ljava/lang/String; = "http"

.field public static final EVENT_LOCATION:Ljava/lang/String; = "location"

.field public static final EVENT_MOTIONCHANGE:Ljava/lang/String; = "motionchange"

.field public static final EVENT_NOTIFICATIONACTION:Ljava/lang/String; = "notificationaction"

.field public static final EVENT_PLAY_SERVICES_CONNECT_ERROR:Ljava/lang/String; = "playservicesconnecterror"

.field public static final EVENT_POWERSAVECHANGE:Ljava/lang/String; = "powersavechange"

.field public static final EVENT_PROVIDERCHANGE:Ljava/lang/String; = "providerchange"

.field public static final EVENT_SCHEDULE:Ljava/lang/String; = "schedule"

.field public static final EVENT_SECURITY_EXCEPTION:Ljava/lang/String; = "securityexception"

.field public static final EVENT_TERMINATE:Ljava/lang/String; = "terminate"

.field public static final FORCE_RELOAD_BOOT:I = 0x6

.field public static final FORCE_RELOAD_GEOFENCE:I = 0x3

.field public static final FORCE_RELOAD_HEARTBEAT:I = 0x4

.field public static final FORCE_RELOAD_LOCATION_CHANGE:I = 0x1

.field public static final FORCE_RELOAD_MOTION_CHANGE:I = 0x2

.field public static final FORCE_RELOAD_SCHEDULE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "TSLocationManager"

.field private static final a:Ljava/lang/String; = "mainActivityInactive"

.field private static b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

.field private static final c:Ljava/util/concurrent/ExecutorService;

.field private static d:Landroid/os/Handler;


# instance fields
.field private final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/event/GeofenceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private f:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

.field private final g:Landroid/content/Context;

.field private h:Landroid/app/Activity;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSEnabledChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSConnectivityChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSHttpResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSHeartbeatCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSActivityChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSPowerSaveChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationProviderChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSScheduleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSPlayServicesConnectErrorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSSecurityExceptionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSNotificationActionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UUjyzcsqgXAFDVlQOv0EbItp9IM(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->c(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xMYVrrhhEdir1znJII8AB7E3gGw(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->e()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->e:I

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->m:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->n:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->o:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->p:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->q:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->r:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->s:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->t:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->u:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->v:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->w:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->x:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->y:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->z:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->A:Ljava/util/List;

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->B:Ljava/util/List;

    .line 634
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    .line 637
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 638
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 643
    :cond_0
    new-instance p1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$W;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$W;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 646
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->isOnMainThread()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 647
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->run()V

    goto :goto_0

    .line 649
    :cond_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
    :goto_0
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google Play Services: connected (version code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->c(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 14
    const-string v0, "location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->m:Ljava/util/List;

    return-object p1

    .line 16
    :cond_0
    const-string v0, "motionchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->n:Ljava/util/List;

    return-object p1

    .line 18
    :cond_1
    const-string v0, "activitychange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->t:Ljava/util/List;

    return-object p1

    .line 20
    :cond_2
    const-string v0, "geofence"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->o:Ljava/util/List;

    return-object p1

    .line 22
    :cond_3
    const-string v0, "providerchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->v:Ljava/util/List;

    return-object p1

    .line 24
    :cond_4
    const-string v0, "heartbeat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->s:Ljava/util/List;

    return-object p1

    .line 26
    :cond_5
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->r:Ljava/util/List;

    return-object p1

    .line 28
    :cond_6
    const-string v0, "schedule"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->w:Ljava/util/List;

    return-object p1

    .line 30
    :cond_7
    const-string v0, "powersavechange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->u:Ljava/util/List;

    return-object p1

    .line 32
    :cond_8
    const-string v0, "enabledchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->p:Ljava/util/List;

    return-object p1

    .line 34
    :cond_9
    const-string v0, "connectivitychange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 35
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->q:Ljava/util/List;

    return-object p1

    .line 36
    :cond_a
    const-string v0, "notificationaction"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 37
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->z:Ljava/util/List;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 99
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Cleared callbacks"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->removeListeners()V

    .line 104
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->removeListeners()V

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(I)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$B;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$B;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/google/android/gms/location/ActivityTransitionEvent;)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$D;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$D;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSActivityChangeCallback;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->t:Ljava/util/List;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    .line 8
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GooglePlayServices unavailable.  resultCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(I)V

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$c;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$c;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withBackgroundPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSConnectivityChangeCallback;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->q:Ljava/util/List;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSEnabledChangeCallback;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->p:Ljava/util/List;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceCallback;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->o:Ljava/util/List;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofencesChangeCallback;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->onGeofencesChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofencesChangeCallback;)V

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSHeartbeatCallback;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->s:Ljava/util/List;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSHttpResponseCallback;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->r:Ljava/util/List;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->m:Ljava/util/List;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationProviderChangeCallback;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->v:Ljava/util/List;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->v:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSNotificationActionCallback;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->z:Ljava/util/List;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->z:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSPlayServicesConnectErrorCallback;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->x:Ljava/util/List;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->x:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSPowerSaveChangeCallback;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->u:Ljava/util/List;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->u:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSScheduleCallback;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->w:Ljava/util/List;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/adapter/callback/TSSecurityExceptionCallback;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->y:Ljava/util/List;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->y:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/transistorsoft/locationmanager/event/GeofenceEvent;)V
    .locals 2

    .line 97
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$K;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$K;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/event/GeofenceEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V
    .locals 2

    .line 96
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$J;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$J;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
    .locals 2

    .line 95
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$I;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$I;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;)V
    .locals 2

    .line 98
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$L;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$L;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 2

    .line 94
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$E;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$E;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$C;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$C;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    .line 4
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->d()V

    .line 6
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
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

.method static synthetic b(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->p:Ljava/util/List;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 20
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "background-geolocation.log.gz"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 19
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$F;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$F;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 3

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    .line 10
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GooglePlayServices unavailable.  resultCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$f;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$f;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withBackgroundPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method private b(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->n:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static c(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->x:Ljava/util/List;

    return-object p0
.end method

.method private c()V
    .locals 0

    return-void
.end method

.method private synthetic c(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->stop(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->w:Ljava/util/List;

    return-object p0
.end method

.method public static deltaT(Ljava/lang/String;)J
    .locals 11

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 3
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 4
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 5
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 9
    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 10
    invoke-virtual {v6, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 11
    invoke-virtual {v6, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 12
    invoke-virtual {v6, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 14
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 15
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 16
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->t:Ljava/util/List;

    return-object p0
.end method

.method private synthetic e()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v1

    const-string v2, "TERMINATE_EVENT"

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setEnabled(Ljava/lang/Boolean;)V

    .line 10
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->stop(Landroid/content/Context;)V

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->stopMonitoring(Landroid/content/Context;)V

    .line 16
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->stop()V

    .line 19
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v2, "MainActivity was destroyed"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopOnTerminate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b()V

    .line 25
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->z:Ljava/util/List;

    return-object p0
.end method

.method public static getBroadcastAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.transistorsoft.locationmanager.event."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
    .locals 1

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->isDead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    .line 5
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->setActivity(Landroid/app/Activity;)V

    .line 8
    :cond_2
    sget-object p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/content/Intent;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p0

    return-object p0
.end method

.method public static getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getUiHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->d:Landroid/os/Handler;

    .line 4
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic i(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->v:Ljava/util/List;

    return-object p0
.end method

.method public static isOnMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->s:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b()V

    return-void
.end method

.method static synthetic n(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic o(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    return-object p0
.end method


# virtual methods
.method public _onActivityTransitionEvent(Lcom/google/android/gms/location/ActivityTransitionEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;

    invoke-direct {v0, p1}, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;-><init>(Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    .line 3
    new-instance v1, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v3, "activitychange"

    invoke-direct {v1, v2, v3, v0}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    return-void
.end method

.method public _onGeofenceEvent(Lcom/transistorsoft/locationmanager/event/GeofenceEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/settings/Settings;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->A:Ljava/util/List;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v2, "geofence"

    invoke-direct {v0, v1, v2, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/event/GeofenceEvent;)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public _onHeartbeat(Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    return-void
.end method

.method public _onHttpResponse(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v2, "http"

    invoke-direct {v0, v1, v2, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->r:Ljava/util/List;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/adapter/callback/TSHttpResponseCallback;

    invoke-interface {v2, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSHttpResponseCallback;->onHttpResponse(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public _onLocationChange(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v2, "location"

    invoke-direct {v0, v1, v2, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    return-void
.end method

.method public _onLocationError(Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string/jumbo v3, "tslocationmanager_digi_warn"

    invoke-virtual {v1, v2, v3}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget v1, p1, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;->errorCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/util/TSNotification;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    iget-object v3, p1, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;->message:Ljava/lang/String;

    const-string v4, "Location services disabled"

    invoke-direct {v1, v2, v4, v3}, Lcom/transistorsoft/locationmanager/util/TSNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_0
    iget p1, p1, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;->errorCode:I

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b(I)V

    return-void
.end method

.method public _onLocationProviderChange(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->f:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v2, "providerchange"

    invoke-direct {v0, v1, v2, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V

    return-void
.end method

.method public _onMotionChange(Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    .line 3
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v2, "motionchange"

    invoke-direct {v0, v1, v2, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;)V

    return-void
.end method

.method public _onScheduleEvent(Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getSchedulerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignored a Schedule event because Scheduler is disabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;)V

    .line 10
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->getState()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "schedule"

    invoke-direct {v0, v1, v2, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    :cond_1
    return-void
.end method

.method public _onSecurityException(Lcom/transistorsoft/locationmanager/event/SecurityExceptionEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BackgroundGeolocation onSecurityException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->y:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/adapter/callback/TSSecurityExceptionCallback;

    invoke-interface {v2, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSSecurityExceptionCallback;->onSecurityException(Lcom/transistorsoft/locationmanager/event/SecurityExceptionEvent;)V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public _onSettingsFailure(Lcom/transistorsoft/locationmanager/event/SettingsFailureEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/util/TSNotification;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    iget-object v3, p1, Lcom/transistorsoft/locationmanager/event/SettingsFailureEvent;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/event/SettingsFailureEvent;->message:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/transistorsoft/locationmanager/util/TSNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public _onTemplateError(Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string/jumbo v2, "tslocationmanager_music_timpani_error_01"

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/util/TSNotification;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "You have an error in your "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;->getTemplateName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/TemplateErrorEvent;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/transistorsoft/locationmanager/util/TSNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addGeofence(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$l;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$l;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->addGeofence(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public addGeofence(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->add(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public addGeofences(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$m;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$m;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->addGeofences(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public addGeofences(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->add(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public changePace(Z)V
    .locals 1

    .line 11
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$h;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$h;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->changePace(ZLcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public changePace(ZLcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-string p1, "BackgroundGeolocation is disabled"

    invoke-interface {p2, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 10
    :cond_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;ZLcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearDatabase(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->destroyLocations(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method d()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    .line 8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->startMonitoring(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 17
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GooglePlayServices unavailable.  resultCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDidDeviceReboot()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->restart(Landroid/content/Context;)V

    .line 30
    :cond_1
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->onChange(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)V

    .line 50
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$v;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$v;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    const-string v2, "geofenceTemplate"

    invoke-virtual {v0, v2, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->onChange(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)V

    .line 56
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$G;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$G;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    const-string v2, "locationTemplate"

    invoke-virtual {v0, v2, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->onChange(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)V

    .line 62
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$M;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$M;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    const-string v2, "heartbeatInterval"

    invoke-virtual {v0, v2, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->onChange(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)V

    .line 70
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$N;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$N;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    const-string v2, "notification.sticky"

    invoke-virtual {v0, v2, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->onChange(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)V

    .line 78
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$O;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$O;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    const-string v2, "locationAuthorizationRequest"

    invoke-virtual {v0, v2, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->onChange(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)V

    .line 89
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$P;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$P;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    const-string v2, "disableMotionActivityUpdates"

    invoke-virtual {v0, v2, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->onChange(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)V

    .line 103
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->init(Landroid/content/Context;)V

    .line 105
    sget-object v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Q;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Q;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public destroyLocation(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$w;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$w;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->destroyLocation(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public destroyLocation(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$x;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$x;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyLocations()V
    .locals 1

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$u;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$u;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->destroyLocations(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public destroyLocations(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyLog()V
    .locals 1

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$t;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$t;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->destroyLog(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public destroyLog(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->destroyLog(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public emailLog(Ljava/lang/String;Landroid/app/Activity;Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->emailLog(Ljava/lang/String;Landroid/app/Activity;Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;)V

    return-void
.end method

.method public fireNotificationActionListeners(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v2, "notificationaction"

    invoke-direct {v0, v1, v2, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$H;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$H;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public geofenceExists(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->geofenceExists(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceExistsCallback;)V

    return-void
.end method

.method public geofenceExists(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSHasGeofenceCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSHasGeofenceCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->h:Landroid/app/Activity;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->c(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->count()I

    move-result v0

    return v0
.end method

.method public getCount(Lcom/transistorsoft/locationmanager/adapter/callback/TSGetCountCallback;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$T;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetCountCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentPosition(Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$i;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$i;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getGeofence(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofenceCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$n;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofenceCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getGeofences(Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofencesCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$U;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetGeofencesCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLocations()Lorg/json/JSONArray;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->c(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->all()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/data/LocationModel;

    .line 4
    iget-object v2, v2, Lcom/transistorsoft/locationmanager/data/LocationModel;->json:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getLocations(Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLocationsCallback;)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLocationsCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLog()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/data/SQLQuery;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/data/SQLQuery;-><init>()V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->getLog(Lcom/transistorsoft/locationmanager/data/SQLQuery;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLog(Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->getLog(Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;)V

    return-void
.end method

.method public getOdometer()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getOdometer()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getProviderState()Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;
    .locals 2

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSensors()Lcom/transistorsoft/locationmanager/util/Sensors;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/Sensors;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/util/Sensors;

    move-result-object v0

    return-object v0
.end method

.method public insertLocation(Lorg/json/JSONObject;Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string p1, "insertLocation params must contain timestamp"

    invoke-interface {p2, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    const-string v0, "coords"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    const-string p1, "insertLocation params must contains a coords {}"

    invoke-interface {p2, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$X;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lorg/json/JSONObject;Lcom/transistorsoft/locationmanager/adapter/callback/TSInsertLocationCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDead()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnoringBatteryOptimizations()Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->getInstance()Lcom/transistorsoft/locationmanager/device/DeviceSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->isIgnoringBatteryOptimization(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isPowerSaveMode()Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->getInstance()Lcom/transistorsoft/locationmanager/device/DeviceSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->isPowerSaveMode(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSActivityChangeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSActivityChangeCallback;)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->h:Landroid/app/Activity;

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stopWatchPosition()V

    .line 6
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->setHeadless(Z)V

    .line 8
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a()V

    .line 10
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda2;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResumed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v0

    const-string v1, "TERMINATE_EVENT"

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnableHeadless()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "TERMINATE_EVENT"

    const-wide/16 v3, 0x1388

    invoke-virtual/range {v1 .. v6}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZZ)V

    :cond_0
    return-void
.end method

.method public onConnectivityChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSConnectivityChangeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSConnectivityChangeCallback;)V

    return-void
.end method

.method public onConnectivityChange(Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->q:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v4, "connectivitychange"

    invoke-direct {v2, v3, v4, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/adapter/callback/TSConnectivityChangeCallback;

    invoke-interface {v2, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSConnectivityChangeCallback;->onConnectivityChange(Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;)V

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onEnabledChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSEnabledChangeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSEnabledChangeCallback;)V

    return-void
.end method

.method public onGeofence(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofenceCallback;)V

    return-void
.end method

.method public onGeofencesChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofencesChangeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSGeofencesChangeCallback;)V

    return-void
.end method

.method public onHeartbeat(Lcom/transistorsoft/locationmanager/adapter/callback/TSHeartbeatCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSHeartbeatCallback;)V

    return-void
.end method

.method public onHttp(Lcom/transistorsoft/locationmanager/adapter/callback/TSHttpResponseCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSHttpResponseCallback;)V

    return-void
.end method

.method public onLocation(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method public onLocationProviderChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationProviderChangeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationProviderChangeCallback;)V

    return-void
.end method

.method public onMotionChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method public onNotificationAction(Lcom/transistorsoft/locationmanager/adapter/callback/TSNotificationActionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSNotificationActionCallback;)V

    return-void
.end method

.method public onPlayServicesConnectError(Lcom/transistorsoft/locationmanager/adapter/callback/TSPlayServicesConnectErrorCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSPlayServicesConnectErrorCallback;)V

    return-void
.end method

.method public onPowerSaveChange(Lcom/transistorsoft/locationmanager/adapter/callback/TSPowerSaveChangeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSPowerSaveChangeCallback;)V

    return-void
.end method

.method public onPowerSaveModeChange(Lcom/transistorsoft/locationmanager/event/PowerSaveModeChangeEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->u:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v4, "powersavechange"

    invoke-direct {v2, v3, v4, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/adapter/callback/TSPowerSaveChangeCallback;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/PowerSaveModeChangeEvent;->isPowerSaveMode()Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transistorsoft/locationmanager/adapter/callback/TSPowerSaveChangeCallback;->onPowerSaveChange(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSchedule(Lcom/transistorsoft/locationmanager/adapter/callback/TSScheduleCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSScheduleCallback;)V

    return-void
.end method

.method public onSecurityException(Lcom/transistorsoft/locationmanager/adapter/callback/TSSecurityExceptionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSSecurityExceptionCallback;)V

    return-void
.end method

.method public persistLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->shouldPersist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    .line 8
    const-class v2, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->hasSubscriberForEvent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->getInstance()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->canUsePersistEvent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, v3, p1, v0}, Lcom/transistorsoft/locationmanager/event/PersistEvent;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Failed to persist location"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxDaysToPersist()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getPersist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Y;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Y;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public ready(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$R;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$R;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    .line 7
    new-instance p1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$b;

    invoke-direct {p1, p0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$b;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->loadConfig(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setPersist(Z)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    .line 22
    invoke-virtual {v0, v3}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setSamples(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    const/16 v1, 0x64

    .line 23
    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setDesiredAccuracy(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    const-wide/32 v1, 0xea60

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->setMaximumAge(Ljava/lang/Long;)Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSCurrentPositionRequest;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentPosition(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->startMonitoring(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasSchedule()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getSchedulerEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->startSchedule()Z

    .line 38
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 40
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setSchedulerEnabled(Ljava/lang/Boolean;)V

    .line 41
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    .line 44
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 45
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->start(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->startGeofences(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    goto :goto_1

    .line 51
    :cond_5
    invoke-interface {p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    .line 55
    :goto_1
    new-instance p1, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public registerPlugin(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->getInstance()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public removeGeofence(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$p;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$p;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->removeGeofence(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public removeGeofence(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->remove(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public removeGeofences()V
    .locals 1

    .line 4
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$r;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$r;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->removeGeofences(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public removeGeofences(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->remove(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public removeGeofences(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$q;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$q;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->removeGeofences(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public removeGeofences(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->remove(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public removeListener(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "geofenceschange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->removeListener(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "authorization"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->removeListener(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    .line 12
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeListener event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-object p2

    .line 14
    :cond_3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to removeListener, event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object p2
.end method

.method public removeListeners()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a()V

    return-void
.end method

.method public removeListeners(Ljava/lang/String;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    const-string v0, "geofenceschange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->removeListeners()V

    return-void

    .line 5
    :cond_0
    const-string v0, "authorization"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->removeListeners()V

    return-void

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 12
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method public requestPermission(Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$y;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$y;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withBackgroundPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public requestPermission(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$z;

    invoke-direct {v1, p0, p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$z;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V

    invoke-static {p1, v0, v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->requestPermission(Landroid/content/Context;Ljava/util/List;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public requestSettings(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->getInstance()Lcom/transistorsoft/locationmanager/device/DeviceSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->request(Landroid/content/Context;Ljava/lang/String;)Lcom/transistorsoft/locationmanager/device/DeviceSettingsRequest;

    move-result-object p1

    return-object p1
.end method

.method public requestTemporaryFullAccuracy(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget p1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->ACCURACY_AUTHORIZATION_FULL:I

    invoke-interface {p2, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;->onSuccess(I)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;

    invoke-direct {v0, p0, p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->requestTemporaryFullAccuracy(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->h:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->h:Landroid/app/Activity;

    return-void
.end method

.method public setBeforeInsertBlock(Lcom/transistorsoft/locationmanager/adapter/callback/TSBeforeInsertBlock;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->setBeforeInsertBlock(Lcom/transistorsoft/locationmanager/adapter/callback/TSBeforeInsertBlock;)V

    return-void
.end method

.method public setOdometer(Ljava/lang/Float;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->isLocationServicesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b(I)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$s;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/location/TSLocationManager;Ljava/lang/Float;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showSettings(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->getInstance()Lcom/transistorsoft/locationmanager/device/DeviceSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/transistorsoft/locationmanager/device/DeviceSettings;->show(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 2

    .line 6
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$d;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$d;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    .line 10
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->a()Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    .line 14
    :cond_0
    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public start(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "Waiting for previous start action to complete"

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public startBackgroundTask(Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->startBackgroundTask(Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V

    return-void
.end method

.method public startGeofences()V
    .locals 2

    .line 6
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$e;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$e;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    .line 11
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->a()Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    move-result-object v0

    .line 14
    :cond_0
    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public startGeofences(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "Waiting for previous start action to complete"

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public startOnBoot()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 5
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GooglePlayServices unavailable.  resultCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->start(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "boot"

    invoke-direct {v1, v2, v3, v0}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    :cond_1
    return-void
.end method

.method public startOnSchedule()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->startMonitoring(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->start(Landroid/content/Context;)V

    return-void
.end method

.method public startSchedule()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasSchedule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->start()V

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Cannot startSchedule; schedule is null"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public startTone(I)V
    .locals 0

    return-void
.end method

.method public startTone(Ljava/lang/String;)V
    .locals 3

    .line 2
    :try_start_0
    const-class v0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->play(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown sound key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 6
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$g;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$g;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->stop(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public stop(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopBackgroundTask(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->stopBackgroundTask(Landroid/content/Context;I)V

    return-void
.end method

.method public stopOnSchedule()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setIsMoving(Ljava/lang/Boolean;)V

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->stopMonitoring(Landroid/content/Context;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->l:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->stop(Landroid/content/Context;)V

    return-void
.end method

.method public stopSchedule()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->stop()V

    return-void
.end method

.method public stopWatchPosition(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$k;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$k;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7
    invoke-interface {p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void
.end method

.method public sync()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sync(Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public watchPosition(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$j;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$j;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

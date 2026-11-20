.class public Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ACTION:Ljava/lang/String; = "GeofenceWorker"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/location/GeofencingEvent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->b:I

    .line 3
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0, p2}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(Lcom/google/android/gms/location/GeofencingEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(J)V
    .locals 2

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$b;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$b;-><init>(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 5

    .line 100
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    :cond_0
    const-string v2, "action"

    const-string v3, "onGeofence"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getOdometer()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "odometer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 109
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 111
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 112
    const-string v4, "scale"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 114
    const-string v4, "battery_level"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 117
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 119
    :goto_1
    const-string v2, "is_charging"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    :cond_3
    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/location/GeofencingEvent;)V
    .locals 9

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8
    const-string/jumbo v1, "tslocationmanager_beep_trip_up_dry"

    const-string v2, "ENTER"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    const-string/jumbo v1, "tslocationmanager_beep_trip_dry"

    const-string v2, "EXIT"

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 14
    const-string/jumbo v1, "tslocationmanager_beep_trip_up_echo"

    const-string v2, "DWELL"

    goto :goto_0

    .line 11
    :cond_2
    const-string v2, "UNKNOWN"

    const-string v1, ""

    .line 17
    :goto_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v3, "Geofencing Event: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/location/Geofence;

    .line 23
    invoke-interface {v3}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 26
    :cond_3
    const-string/jumbo v2, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v1

    .line 31
    invoke-direct {p0, v1}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(Landroid/location/Location;)V

    .line 36
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v4

    .line 41
    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 42
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "isMoving"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getOdometer()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const-string v7, "odometer"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 45
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/transistorsoft/locationmanager/location/TSLocation;

    iget-object v7, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v8

    invoke-virtual {v4}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentLocationProvider()Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    move-result-object v4

    invoke-direct {v6, v7, v1, v8, v4}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/location/Geofence;

    .line 48
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxRecordsToPersist()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_4

    .line 49
    invoke-interface {v4}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->find(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v5

    if-nez v5, :cond_5

    .line 51
    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to find geofence record in database: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 54
    :cond_5
    new-instance v4, Lcom/transistorsoft/locationmanager/location/TSLocation;

    iget-object v6, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v7

    invoke-direct {v4, v6, v1, v7}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    .line 55
    new-instance v6, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;

    invoke-direct {v6, v0, v5, v4}, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;-><init>(ILcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    .line 56
    invoke-virtual {v6}, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->getLocation()Lcom/transistorsoft/locationmanager/location/TSLocation;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    .line 57
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->shouldPersist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-nez v1, :cond_0

    .line 61
    invoke-direct {p0, v2, v3}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(J)V

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    .line 66
    const-class v4, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->hasSubscriberForEvent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->getInstance()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    move-result-object v1

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->canUsePersistEvent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v4, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v4, v5, p1, v0}, Lcom/transistorsoft/locationmanager/event/PersistEvent;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Failed to persist location"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 72
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(J)V

    return-void

    .line 75
    :cond_2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxDaysToPersist()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getPersist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    .line 80
    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/data/LocationDAO;->persist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 83
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$a;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker$a;-><init>(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;)V

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->sync(Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V

    :cond_4
    return-void

    .line 96
    :cond_5
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "INSERT FAILURE"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v2, v3}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(J)V

    return-void

    .line 98
    :cond_6
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transistorsoft/locationmanager/workers/GeofenceWorker;->b:I

    return p0
.end method

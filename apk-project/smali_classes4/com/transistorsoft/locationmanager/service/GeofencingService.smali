.class public Lcom/transistorsoft/locationmanager/service/GeofencingService;
.super Lcom/transistorsoft/locationmanager/service/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/service/GeofencingService$b;,
        Lcom/transistorsoft/locationmanager/service/GeofencingService$a;
    }
.end annotation


# static fields
.field private static final r:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private q:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;


# direct methods
.method public static synthetic $r8$lambda$AhRBjnHD66-As9Wr8glbTDAS1kg(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->b(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/location/GeofencingEvent;Landroid/location/Location;)V
    .locals 26

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Geofencing error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->getErrorCode()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 10
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->reset()V

    return-void

    :cond_0
    :goto_0
    move-object/from16 v6, p0

    goto/16 :goto_8

    .line 13
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 14
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "GeofencingEvent.getTriggeringGeofences() returned null <IGNORED>"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 30
    const-string/jumbo v2, "tslocationmanager_beep_trip_up_dry"

    const-string v5, "ENTER"

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    .line 33
    const-string/jumbo v2, "tslocationmanager_beep_trip_dry"

    const-string v5, "EXIT"

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_6

    .line 36
    const-string/jumbo v2, "tslocationmanager_beep_trip_up_echo"

    const-string v5, "DWELL"

    goto :goto_1

    .line 33
    :cond_6
    const-string v5, "UNKNOWN"

    const-string v2, ""

    .line 39
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v7, "Geofencing Event: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v5

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v7

    .line 45
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object v9

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v10

    .line 51
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string/jumbo v13, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/location/Geofence;

    .line 52
    invoke-interface {v12}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->find(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v14, :cond_8

    if-ne v1, v3, :cond_8

    .line 58
    invoke-virtual {v14}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->isPolygon()Z

    move-result v16

    if-nez v16, :cond_8

    if-eqz v10, :cond_8

    .line 61
    new-array v3, v4, [F

    .line 63
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    .line 64
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    .line 65
    invoke-virtual {v14}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLatitude()D

    move-result-wide v21

    .line 66
    invoke-virtual {v14}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLongitude()D

    move-result-wide v23

    move-object/from16 v25, v3

    .line 67
    invoke-static/range {v17 .. v25}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 75
    aget v3, v25, v15

    .line 76
    invoke-virtual {v14}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getRadius()F

    move-result v15

    .line 77
    invoke-virtual {v10}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    const/16 v18, 0x0

    if-eqz v17, :cond_7

    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v17

    move/from16 v4, v17

    goto :goto_3

    :cond_7
    move/from16 v4, v18

    :goto_3
    cmpl-float v18, v15, v18

    if-lez v18, :cond_8

    add-float v18, v3, v4

    cmpg-float v18, v18, v15

    if-gez v18, :cond_8

    .line 81
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v16, "Ignoring spurious geofence EXIT"

    move-object/from16 v18, v11

    invoke-static/range {v16 .. v16}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v19, v7

    const-string v7, "id="

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "distance="

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "m, accuracy="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m, radius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\ud83d\udccd  Trigger="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 90
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v18

    move-object/from16 v7, v19

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v19, v7

    move-object/from16 v18, v11

    if-eqz v14, :cond_c

    .line 96
    invoke-virtual {v14}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->isPolygon()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 97
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 99
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v4

    const-string/jumbo v7, "tslocationmanager_chime_short_on"

    invoke-virtual {v4, v0, v7}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v5, v14}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringPolygon(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "ENTER containing geofence of Polygon: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 103
    :cond_9
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v4

    const-string/jumbo v7, "tslocationmanager_chime_short_off"

    invoke-virtual {v4, v0, v7}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v14}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v5, v4}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getPolygonState(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    .line 111
    invoke-virtual {v5, v4, v7}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setPolygonState(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v11

    invoke-static {v7, v4, v11, v1}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;->handleGeofencingEvent(Landroid/content/Context;Ljava/lang/String;Landroid/location/Location;I)V

    .line 115
    :cond_a
    invoke-virtual {v14}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringPolygon(Ljava/lang/String;)V

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "EXIT containing geofence of Polygon: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    const/4 v3, 0x1

    .line 119
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    invoke-interface {v12}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    const/4 v3, 0x1

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object v4

    .line 126
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface {v12}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v4, v7}, Lcom/google/android/gms/location/GeofencingClient;->removeGeofences(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    .line 129
    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "Failed to find Geofence: "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_4
    move v4, v3

    move-object/from16 v11, v18

    move-object/from16 v7, v19

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_d
    move-object/from16 v19, v7

    .line 132
    invoke-interface {v9, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 134
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 137
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_0

    .line 141
    :cond_e
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v3

    .line 166
    invoke-static {v0, v3}, Lcom/transistorsoft/locationmanager/location/TSLocation;->applyExtras(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Location;

    .line 168
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v3, v4}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setLocation(Landroid/location/Location;Z)V

    .line 170
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v4

    .line 172
    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 173
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "isMoving"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getOdometer()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const-string v7, "odometer"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 176
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v7

    invoke-virtual {v4}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentLocationProvider()Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    move-result-object v4

    invoke-direct {v6, v0, v3, v7, v4}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 178
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/location/Geofence;

    .line 179
    invoke-interface {v5}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v19

    invoke-virtual {v7, v6}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->find(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v6

    if-nez v6, :cond_f

    .line 181
    sget-object v6, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to find geofence record in database: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_6
    move-object/from16 v19, v7

    goto :goto_5

    .line 184
    :cond_f
    new-instance v5, Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v8

    invoke-direct {v5, v0, v3, v8}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    .line 186
    new-instance v8, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;

    invoke-direct {v8, v1, v6, v5}, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;-><init>(ILcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    .line 187
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxRecordsToPersist()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_10

    .line 188
    invoke-virtual {v8}, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->getLocation()Lcom/transistorsoft/locationmanager/location/TSLocation;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct {v6, v5}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->a(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    goto :goto_7

    :cond_10
    move-object/from16 v6, p0

    .line 190
    :goto_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_6

    :goto_8
    return-void
.end method

.method private a(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 7

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    .line 223
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 225
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setLocation(Landroid/location/Location;Z)V

    .line 227
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->locationAge(Landroid/location/Location;)J

    move-result-wide v2

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const-string v5, "GeofencingService: Proximity evaluator"

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\ud83d\udccd  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", age: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v2

    const-string/jumbo v3, "tslocationmanager_click_tap_done_checkbox5_full_vol"

    invoke-virtual {v2, v0, v3}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableMotionActivityUpdates()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->q:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a(Landroid/location/Location;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3ff6666666666666L    # 1.4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->q:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 245
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->q:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d()V

    return-void

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->q:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a()V

    return-void

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->q:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 253
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->q:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d()V

    :cond_3
    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 4

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 194
    invoke-virtual {v1, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->shouldPersist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 197
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    .line 199
    const-class v3, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->hasSubscriberForEvent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->getInstance()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->canUsePersistEvent(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v3, v0, p1, v1}, Lcom/transistorsoft/locationmanager/event/PersistEvent;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 203
    :cond_1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Failed to persist location"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_2
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxDaysToPersist()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getPersist()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 211
    :cond_3
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->persist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasUrl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 216
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush(Z)V

    return-void

    .line 219
    :cond_4
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INSERT FAILURE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/GeofencingService;Lcom/google/android/gms/location/GeofencingEvent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->b(Lcom/google/android/gms/location/GeofencingEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/GeofencingService;Lcom/google/android/gms/location/GeofencingEvent;Landroid/location/Location;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->a(Lcom/google/android/gms/location/GeofencingEvent;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/GeofencingService;Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->a(Lcom/google/android/gms/location/LocationAvailability;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/service/GeofencingService;Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->a(Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/location/GeofencingEvent;)V
    .locals 12

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Stationary geofence exit fired while disabled <IGNORED>"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringStationaryRegion()V

    return-void

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getStationaryLocation()Landroid/location/Location;

    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 18
    invoke-virtual {v4, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    .line 21
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStationaryRadius()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    .line 22
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceProximityRadius()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v7, 0x43160000    # 150.0f

    cmpg-float v8, v6, v7

    if-gez v8, :cond_3

    move v6, v7

    .line 30
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/location/Location;->hasAccuracy()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    goto :goto_2

    :cond_4
    move v7, v8

    .line 33
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v10, "Stationary EXIT distance evaluation"

    invoke-static {v10}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "distance="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "m, accuracy="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "m, radius="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "m"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\ud83d\udccd  Stationary="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\ud83d\udccd  Trigger="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v4, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    sget-object v4, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    cmpl-float v4, v6, v8

    if-lez v4, :cond_5

    cmpg-float v4, v5, v6

    if-gez v4, :cond_5

    .line 43
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Ignoring spurious stationary geofence EXIT"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringStationaryRegion(Landroid/location/Location;)V

    return-void

    .line 50
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object p1

    .line 51
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, p1, v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setLocation(Landroid/location/Location;Z)V

    .line 53
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_7

    .line 55
    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->applyExtras(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Location;

    .line 56
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "event"

    const-string v6, "motionchange"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "sample"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 58
    new-instance v3, Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v5

    invoke-direct {v3, v0, p1, v5}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    .line 59
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v5, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;

    invoke-direct {v5, v3}, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;-><init>(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    invoke-virtual {v0, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    invoke-virtual {p0, v4}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Z)V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    goto :goto_4

    .line 65
    :cond_6
    invoke-virtual {v1, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringStationaryRegion(Landroid/location/Location;)V

    goto :goto_4

    .line 72
    :cond_7
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasActivityPermission(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_8

    .line 73
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getLastActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v1

    .line 75
    invoke-virtual {v2, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasTriggerActivity(I)Z

    move-result v2

    goto :goto_3

    :cond_8
    move v1, v3

    move v2, v4

    :goto_3
    if-nez v2, :cond_9

    if-ne v1, v3, :cond_a

    .line 81
    :cond_9
    invoke-static {v0, v4}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;Z)V

    .line 84
    :cond_a
    :goto_4
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "tslocationmanager_zap_fast"

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v1, "GeofencingService: Stationary geofence EXIT"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ud83d\udccd  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move p1, v2

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setIsMoving(Ljava/lang/Boolean;)V

    .line 7
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->stop(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringSignificantLocationChanges()V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getNotification()Lcom/transistorsoft/locationmanager/config/TSNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/config/TSNotification;->getSticky()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    const-class v3, Lcom/transistorsoft/locationmanager/service/GeofencingService;

    const-string/jumbo v4, "start"

    invoke-static {p0, v3, v4}, Lcom/transistorsoft/locationmanager/service/AbstractService;->launchService(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->stopService(Landroid/content/Context;)V

    .line 17
    :goto_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->start(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringSignificantLocationChanges()V

    .line 19
    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->setIsMoving(Z)V

    .line 21
    :goto_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 22
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/ForegroundNotification;->a(J)V

    .line 24
    :cond_4
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->isAcquiringMotionChange()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 27
    sget-object v1, Lcom/transistorsoft/locationmanager/service/GeofencingService;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->cancelRequest(I)V

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    :cond_5
    new-instance v1, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;

    invoke-direct {v2, p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/GeofencingService$b;-><init>(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setCallback(Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;

    .line 34
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSMotionChangeRequest;

    move-result-object p0

    .line 35
    sget-object p1, Lcom/transistorsoft/locationmanager/service/GeofencingService;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 37
    invoke-virtual {v0, p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getCurrentPosition(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    return-void
.end method

.method public static getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transistorsoft/locationmanager/service/GeofencingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    if-lt p1, v1, :cond_1

    .line 7
    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/Util;->getPendingIntentFlags(I)I

    move-result p1

    invoke-static {p0, v3, v0, p1}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static isAcquiringMotionChange()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->stopService(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->isAcquiringMotionChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p0

    sget-object v0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->cancelRequest(I)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/transistorsoft/locationmanager/service/GeofencingService;

    invoke-static {p0, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->stop(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-super {p0, v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Ljava/lang/String;I)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    new-instance v2, Lcom/transistorsoft/locationmanager/service/GeofencingService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const v0, 0x124f80

    invoke-direct {v1, v0, v2}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;-><init>(ILcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$a;)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService;->q:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(Landroid/content/Intent;IZ)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x2

    return p1

    .line 7
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;-><init>(Lcom/transistorsoft/locationmanager/service/GeofencingService;Landroid/content/Intent;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    return p1
.end method

.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/location/Location;

.field final synthetic b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;


# direct methods
.method public static synthetic $r8$lambda$n5Y-QiZlmcOSa9_bMgf7QvvG6o8(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;Lcom/transistorsoft/locationmanager/adapter/TSConfig;Ljava/util/List;Ljava/util/List;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/lang/Void;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Ljava/util/List;Ljava/util/List;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r9P5J7b4eh-q27lmey-2rKl9Pu8(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Landroid/location/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->a:Landroid/location/Location;

    return-void
.end method

.method private synthetic a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Ljava/util/List;Ljava/util/List;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/lang/Void;)V
    .locals 2

    .line 1
    iget-object p6, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {p6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->g(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p6

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2
    sget-object p6, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v0, "\u2139\ufe0f  GeofencingClient addGeofences SUCCESS"

    invoke-interface {p6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->isStarted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->start(Landroid/content/Context;)V

    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    .line 9
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_2

    .line 10
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object p6, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_1

    .line 13
    iget-object p6, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {p6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object p6

    monitor-enter p6

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    monitor-exit p6

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 19
    :try_start_1
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\ud83c\udfbe  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 22
    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->i(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V

    .line 25
    const-string/jumbo p1, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 28
    new-instance p1, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;

    invoke-direct {p1, p3, p5}, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 29
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {p2, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;)V

    return-void

    :catchall_1
    move-exception p2

    .line 30
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method private synthetic a(Ljava/lang/Exception;)V
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start monitoring geofences: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    instance-of v1, p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v1, :cond_1

    .line 33
    const-class v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_0

    .line 36
    const-string v0, "Geofence monitoring is forbidden with location permission \'WhenInUse\'"

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_1
    :goto_0
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->h(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V

    .line 44
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    new-instance v0, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;-><init>()V

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceProximityRadius()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    long-to-float v0, v3

    .line 4
    iget-object v3, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    add-float/2addr v0, v3

    float-to-long v3, v0

    .line 6
    :cond_0
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 7
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxMonitoredGeofences()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-lez v0, :cond_3

    if-ge v0, v13, :cond_2

    .line 15
    iget-object v3, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    .line 16
    :try_start_0
    iget-object v3, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 17
    monitor-exit v7

    return-void

    .line 19
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v3, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->all()Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 24
    :cond_2
    iget-object v7, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v7

    long-to-double v3, v3

    iget-object v8, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->a:Landroid/location/Location;

    .line 27
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    iget-object v8, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->a:Landroid/location/Location;

    .line 28
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    move-wide/from16 v16, v3

    move-object v3, v6

    move-object v6, v7

    move-wide/from16 v7, v16

    .line 29
    invoke-virtual/range {v6 .. v13}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->allWithinRadius(DDDI)Ljava/util/List;

    move-result-object v4

    .line 30
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_0
    move-object v3, v6

    .line 41
    :goto_1
    iget-object v4, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->f(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 42
    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    .line 47
    invoke-virtual {v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "TSGeofenceManager monitoring "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v8}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    iget-object v8, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {v8}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->isMonitoringInfiniteGeofences()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " within "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceProximityRadius()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " meters"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    :cond_6
    invoke-static {v6}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v6, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 59
    :try_start_2
    iget-object v8, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v8}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 62
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 65
    :cond_7
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 68
    :cond_8
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 70
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 71
    iget-object v3, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    const/4 v6, 0x0

    invoke-virtual {v3, v15, v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    .line 74
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 75
    new-instance v0, Lcom/google/android/gms/location/GeofencingRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;-><init>()V

    .line 79
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceInitialTriggerEntry()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x5

    .line 80
    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    goto :goto_4

    .line 82
    :cond_a
    invoke-virtual {v0, v7}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    .line 85
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    .line 86
    invoke-virtual {v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->b()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 87
    invoke-virtual {v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofence(Lcom/google/android/gms/location/Geofence;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    goto :goto_5

    .line 90
    :cond_b
    iget-object v7, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$a;

    invoke-direct {v9, v1, v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$a;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)V

    invoke-virtual {v7, v8, v9}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->remove(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    goto :goto_5

    .line 101
    :cond_c
    iget-object v3, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/LocationServices;->getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;

    move-result-object v3

    .line 104
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v0

    iget-object v6, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lcom/google/android/gms/location/GeofencingClient;->addGeofences(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    new-instance v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$$ExternalSyntheticLambda0;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v5

    move-object v6, v15

    move-object v5, v4

    move-object v4, v14

    :try_start_4
    invoke-direct/range {v0 .. v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;Lcom/transistorsoft/locationmanager/adapter/TSConfig;Ljava/util/List;Ljava/util/List;Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 105
    invoke-virtual {v7, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v5, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;)V

    .line 135
    invoke-virtual {v0, v5}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v3, v5

    move-object v4, v14

    move-object v6, v15

    .line 154
    :goto_6
    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object v3, v5

    move-object v4, v14

    move-object v6, v15

    .line 155
    :goto_7
    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SecurityException while attempting to listen to geofences: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_d
    move-object v3, v5

    move-object v6, v15

    move-object v5, v4

    move-object v4, v14

    .line 160
    iget-object v7, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v7}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->g(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v7

    iget-object v8, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->a:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-nez v0, :cond_f

    .line 161
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 162
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 163
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->stop(Landroid/content/Context;)V

    .line 165
    :cond_e
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringStationaryRegion()V

    .line 166
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringSignificantLocationChanges()V

    .line 169
    :cond_f
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    .line 170
    :try_start_5
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 171
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string/jumbo v10, "\ud83c\udfbe  "

    goto :goto_9

    .line 172
    :cond_10
    const-string/jumbo v10, "\ud83d\udd34  "

    :goto_9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 174
    :cond_11
    const-string/jumbo v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 176
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 180
    :goto_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v0, v5

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->c(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_12

    goto :goto_b

    .line 182
    :cond_12
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 184
    new-instance v0, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;

    invoke-direct {v0, v4, v6}, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 185
    iget-object v3, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v3, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;)V

    .line 189
    :cond_13
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getGeofenceModeHighAccuracy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 191
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 193
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 194
    :try_start_6
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 195
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 196
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    if-eqz v0, :cond_14

    .line 197
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setIsMoving(Ljava/lang/Boolean;)V

    .line 198
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->stopService(Landroid/content/Context;)V

    .line 199
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->stopMonitoringSignificantLocationChanges()V

    goto :goto_b

    .line 200
    :cond_14
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 201
    iget-object v0, v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$e;->b:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->startMonitoringSignificantLocationChanges()V

    goto :goto_b

    :catchall_1
    move-exception v0

    .line 202
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_15
    :goto_b
    return-void

    :catchall_2
    move-exception v0

    .line 203
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 204
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

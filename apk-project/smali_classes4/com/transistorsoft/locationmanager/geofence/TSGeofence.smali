.class public Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;,
        Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;,
        Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;
    }
.end annotation


# static fields
.field public static final FIELD_EXTRAS:Ljava/lang/String; = "extras"

.field public static final FIELD_IDENTIFIER:Ljava/lang/String; = "identifier"

.field public static final FIELD_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final FIELD_LOITERING_DELAY:Ljava/lang/String; = "loiteringDelay"

.field public static final FIELD_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final FIELD_NOTIFY_ON_DWELL:Ljava/lang/String; = "notifyOnDwell"

.field public static final FIELD_NOTIFY_ON_ENTRY:Ljava/lang/String; = "notifyOnEntry"

.field public static final FIELD_NOTIFY_ON_EXIT:Ljava/lang/String; = "notifyOnExit"

.field public static final FIELD_RADIUS:Ljava/lang/String; = "radius"

.field public static final FIELD_VERTICES:Ljava/lang/String; = "vertices"

.field public static final MINIMUM_RADIUS:F = 150.0f

.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/String; = "Latitude is required"

.field private static final c:Ljava/lang/String; = "Longitude is required"

.field private static final d:Ljava/lang/String; = "Radius is required"

.field private static final e:Ljava/lang/String; = "Identifier is required"

.field private static final f:Ljava/lang/String; = "A transition-type is required (notifyOnEntry | notifyOnExit | notifyOnDwell)"

.field private static final g:Ljava/lang/String; = "Invalid JSON for extras"


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/Double;

.field private final j:Ljava/lang/Double;

.field private final k:Ljava/lang/Float;

.field private final l:Ljava/lang/Boolean;

.field private final m:Ljava/lang/Boolean;

.field private final n:Ljava/lang/Boolean;

.field private final o:Ljava/lang/Integer;

.field private final p:Ljava/lang/Integer;

.field private final q:Lorg/json/JSONObject;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Lcom/google/android/gms/location/Geofence;

.field private t:Ljava/lang/IllegalArgumentException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "tslocationmanager"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->d(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->h:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->e(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->i:Ljava/lang/Double;

    .line 4
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->f(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->j:Ljava/lang/Double;

    .line 5
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->g(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->k:Ljava/lang/Float;

    .line 6
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->h(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->l:Ljava/lang/Boolean;

    .line 7
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->i(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->m:Ljava/lang/Boolean;

    .line 8
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->j(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->n:Ljava/lang/Boolean;

    .line 9
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->k(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->o:Ljava/lang/Integer;

    .line 10
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->q:Lorg/json/JSONObject;

    .line 11
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->b(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->r:Ljava/util/List;

    .line 12
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->c(Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->p:Ljava/lang/Integer;

    return-void
.end method

.method private static a(Ljava/lang/String;[[D)V
    .locals 1

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->nativeLoadPolygon(Ljava/lang/String;[[D)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a([[D)[D
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->nativeMinimumEnclosingCircle([[D)[D

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;)[[D
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->b(Ljava/util/List;)[[D

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/List;)[[D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;)[[D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    .line 4
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v3, 0x2

    new-array v3, v3, [D

    aput-wide v5, v3, v1

    aput-wide v7, v3, v4

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static clearPolygon(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->nativeClearPolygon(Ljava/lang/String;)V

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

.method public static isLocationInPolygon(Ljava/lang/String;DDF)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;
    .locals 3

    const-string v0, "--> "

    .line 1
    sget-object v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->nativeIsLocationInPolygon(Ljava/lang/String;DDF)[F

    move-result-object p1

    .line 3
    new-instance p2, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;

    const/4 p3, 0x0

    aget p4, p1, p3

    const/4 p5, 0x1

    aget p1, p1, p5

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_0

    move p3, p5

    :cond_0
    invoke-direct {p2, p4, p3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;-><init>(FZ)V

    .line 4
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, ": "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p3, p2, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$LocationInPolygonResult;->confidence:F

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p3, p4

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, "%"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 5
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static native nativeClearPolygon(Ljava/lang/String;)V
.end method

.method private static native nativeIsLocationInPolygon(Ljava/lang/String;DDF)[F
.end method

.method private static native nativeLoadPolygon(Ljava/lang/String;[[D)V
.end method

.method private static native nativeMinimumEnclosingCircle([[D)[D
.end method


# virtual methods
.method a()Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->t:Ljava/lang/IllegalArgumentException;

    return-object v0
.end method

.method b()Z
    .locals 1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->build()Lcom/google/android/gms/location/Geofence;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 8
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->t:Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x0

    return v0
.end method

.method public build()Lcom/google/android/gms/location/Geofence;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->m:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->isPolygon()Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 11
    :cond_1
    new-instance v1, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->h:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v3

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->i:Ljava/lang/Double;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->j:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->o:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/Geofence$Builder;->setLoiteringDelay(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/Geofence$Builder;->setNotificationResponsiveness(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->s:Lcom/google/android/gms/location/Geofence;

    return-object v0
.end method

.method public getExtras()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->q:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->i:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLoiteringDelay()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->j:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNoificationResponsiveness()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->p:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNotifyOnDwell()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNotifyOnEntry()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNotifyOnExit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->k:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getVertices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->r:Ljava/util/List;

    return-object v0
.end method

.method public isPolygon()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startMonitoringPolygon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->r:Ljava/util/List;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->b(Ljava/util/List;)[[D

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->a(Ljava/lang/String;[[D)V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "identifier"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "radius"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->k:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->i:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->j:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "notifyOnEntry"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->l:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "notifyOnExit"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->m:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v1, "notifyOnDwell"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "loiteringDelay"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "extras"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->q:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 14
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 15
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const/4 v5, 0x1

    .line 16
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo v2, "vertices"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 21
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->h:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "radius"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->i:Ljava/lang/Double;

    const-string v2, "latitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->j:Ljava/lang/Double;

    const-string v2, "longitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->l:Ljava/lang/Boolean;

    const-string v2, "notifyOnEntry"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->m:Ljava/lang/Boolean;

    const-string v2, "notifyOnExit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->n:Ljava/lang/Boolean;

    const-string v2, "notifyOnDwell"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->o:Ljava/lang/Integer;

    const-string v2, "loiteringDelay"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->r:Ljava/util/List;

    const-string/jumbo v2, "vertices"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->q:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 14
    :try_start_0
    const-string v2, "extras"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/Util;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 16
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v3, "Failed to convert TSGeofence extras toMap"

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v0
.end method

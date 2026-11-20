.class public Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO; = null

.field private static final d:J = 0x18e3L


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private a(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)Landroid/content/ContentValues;
    .locals 5

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->isPolygon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getVertices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 8
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 9
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v4, 0x1

    .line 10
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 11
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getExtras()Lorg/json/JSONObject;

    move-result-object v2

    .line 16
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    const-string v4, "identifier"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getRadius()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "radius"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 18
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "latitude"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 19
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v4, "sin_latitude"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 20
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "cos_latitude"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 21
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "longitude"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 22
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v4, "sin_longitude"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 23
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "cos_longitude"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 24
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getNotifyOnEntry()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "notifyOnEntry"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getNotifyOnExit()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "notifyOnExit"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 26
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getNotifyOnDwell()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "notifyOnDwell"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 27
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getLoiteringDelay()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "loiteringDelay"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v2, "extras"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "vertices"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->c:Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->c:Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    .line 3
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->c:Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;
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

.method private a(Landroid/database/Cursor;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception;
        }
    .end annotation

    .line 30
    const-string v0, "notifyOnEntry"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 31
    :goto_0
    const-string v3, "notifyOnExit"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 32
    :goto_1
    const-string v4, "notifyOnDwell"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 34
    :goto_2
    const-string/jumbo v5, "vertices"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 36
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_3

    .line 40
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v5, v1

    .line 41
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 42
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 43
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 49
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to parse TSGeofence vertices: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    :cond_3
    new-instance v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    invoke-direct {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;-><init>()V

    .line 54
    const-string v2, "identifier"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setIdentifier(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object v1

    .line 55
    const-string v2, "radius"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setRadius(F)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object v1

    .line 56
    const-string v2, "latitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setLatitude(D)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object v1

    .line 57
    const-string v2, "longitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setLongitude(D)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setNotifyOnEntry(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v3}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setNotifyOnExit(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v4}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setNotifyOnDwell(Z)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object v0

    .line 61
    const-string v1, "loiteringDelay"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setLoiteringDelay(I)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object v0

    .line 62
    const-string v1, "extras"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setExtras(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v6}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->setVertices(Ljava/util/List;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Builder;->build()Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/LocationOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->c:Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->c:Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    .line 4
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->c:Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    return-object p0
.end method


# virtual methods
.method public all()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v12, 0x0

    .line 7
    :try_start_0
    const-string v4, "geofences"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 8
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 10
    :try_start_1
    invoke-direct {p0, v12}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(Landroid/database/Cursor;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_2
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v12, :cond_1

    .line 19
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_1
    throw v0
.end method

.method public allWithinRadius(DDDI)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDI)",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6
    invoke-static {p3, p4}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 7
    invoke-static {p3, p4}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    .line 8
    invoke-static {p5, p6}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 9
    invoke-static {p5, p6}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(D)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v6

    const-wide v6, 0x40b8e30000000000L    # 6371.0

    div-double/2addr p1, v6

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT identifier, radius, latitude, longitude, notifyOnEntry, notifyOnExit, notifyOnDwell, loiteringDelay, extras, vertices, ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " * sin_latitude + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " * cos_latitude * (cos_longitude * "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " + sin_longitude * "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")) AS distance FROM geofences WHERE distance > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ORDER BY distance DESC LIMIT "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 21
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 23
    :try_start_1
    invoke-direct {p0, p2}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(Landroid/database/Cursor;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    :try_start_2
    sget-object p3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    .line 32
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 34
    :cond_1
    throw p1
.end method

.method public count()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    const-string v1, "SELECT count(*) AS count FROM geofences"

    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_0

    .line 12
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_0
    throw v0
.end method

.method public create(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence;",
            ">;)I"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a()V

    .line 22
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    .line 27
    :try_start_0
    invoke-direct {p0, v2}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)Landroid/content/ContentValues;

    move-result-object v3

    .line 28
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p0, v2}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-virtual {p0, v2}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->destroy(Ljava/lang/String;)Z

    .line 32
    :cond_1
    const-string v4, "geofences"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 34
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 41
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 43
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 51
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v1
.end method

.method public create(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)Z
    .locals 7

    const-string v0, "INSERT geofence: "

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a()V

    .line 2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofence;)Landroid/content/ContentValues;

    move-result-object p1

    .line 7
    const-string v4, "identifier"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0, v4}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {p0, v4}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->destroy(Ljava/lang/String;)Z

    .line 11
    :cond_0
    const-string v5, "geofences"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    :try_start_1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-wide v5, v2

    .line 17
    :goto_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception p1

    move-wide v5, v2

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    cmp-long p1, v5, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method public destroy(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a()V

    .line 4
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "geofences"

    const-string v5, "identifier = ?"

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 7
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "\'"

    if-nez v0, :cond_1

    .line 9
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to find geofence \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to find "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to destroy geofence \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FAIL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public destroyAll()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a()V

    .line 4
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5
    const-string v1, "geofences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 7
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v2, "\u2705  "

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b:Ljava/util/List;

    const-string v2, "Destroy all geofences failed"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "FAILED"

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    if-ltz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 11

    if-nez p1, :cond_0

    .line 1
    const-string p1, ""

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x1

    .line 4
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "id"

    const/4 v10, 0x0

    aput-object v1, v2, v10

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    const/4 v7, 0x0

    const-string v8, "1"

    const-string v1, "geofences"

    const-string v3, "identifier=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v9, v10

    .line 6
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v9
.end method

.method public exists(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v4, v10

    .line 9
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v2, v10

    const/4 v7, 0x0

    const-string v8, "1"

    const-string v1, "geofences"

    const-string v3, "identifier IN(?)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move v9, v10

    .line 11
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v9
.end method

.method public find(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x0

    .line 5
    :try_start_0
    const-string v1, "geofences"

    const-string v3, "identifier=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const-string v8, "1"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 8
    :try_start_2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(Landroid/database/Cursor;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v9
    :try_end_2
    .catch Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_3
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v9

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v9

    :catchall_0
    move-exception v0

    move-object v9, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v9, :cond_1

    .line 19
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_1
    throw v0
.end method

.method public find(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 23
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 28
    const-string v1, "geofences"

    const-string v3, "identifier IN(?)"

    const-string v8, "1"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 31
    :try_start_2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a(Landroid/database/Cursor;)Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    move-result-object v0

    .line 32
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/transistorsoft/locationmanager/geofence/TSGeofence$Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    :try_start_3
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v10

    .line 42
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v9

    :catchall_0
    move-exception v0

    move-object v10, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v10, :cond_1

    .line 43
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_1
    throw v0
.end method

.method public getErrors()Ljava/util/List;
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
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b:Ljava/util/List;

    return-object v0
.end method

.method public getIdentifiers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->a()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6
    const-string v2, "SELECT identifier from geofences"

    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 9
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    const-string v1, "identifier"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 11
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    .line 16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_1
    throw v0
.end method

.class public Lcom/transistorsoft/locationmanager/event/GeofenceEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

.field private final b:Lcom/transistorsoft/locationmanager/location/TSLocation;


# direct methods
.method public constructor <init>(ILcom/transistorsoft/locationmanager/geofence/TSGeofence;Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    .line 4
    invoke-virtual {p3, p1, p2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->addGeofencingEvent(ILcom/transistorsoft/locationmanager/geofence/TSGeofence;)V

    return-void
.end method


# virtual methods
.method public getGeofence()Lcom/transistorsoft/locationmanager/geofence/TSGeofence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    return-object v0
.end method

.method public getLocation()Lcom/transistorsoft/locationmanager/location/TSLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "location"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "identifier"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "action"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getGeofenceAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string/jumbo v1, "timestamp"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getGeofenceTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getGeofenceExtras()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    const-string v2, "extras"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 12
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 13
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
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->a:Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getGeofenceAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getGeofenceTimestamp()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    const-string v1, "location"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getGeofenceExtras()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    const-string v2, "extras"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/Util;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 12
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

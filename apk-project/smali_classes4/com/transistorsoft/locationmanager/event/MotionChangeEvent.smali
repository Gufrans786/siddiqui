.class public Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isMoving:Ljava/lang/Boolean;

.field public json:Lorg/json/JSONObject;

.field public location:Lcom/transistorsoft/locationmanager/location/TSLocation;


# direct methods
.method public constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;->location:Lcom/transistorsoft/locationmanager/location/TSLocation;

    return-void
.end method


# virtual methods
.method public getIsMoving()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;->location:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getIsMoving()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/transistorsoft/locationmanager/location/TSLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;->location:Lcom/transistorsoft/locationmanager/location/TSLocation;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "location"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;->location:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "isMoving"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;->location:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->getIsMoving()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 6
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-object v0
.end method

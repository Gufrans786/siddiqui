.class public Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/location/ActivityTransitionEvent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/ActivityTransitionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;->a:Lcom/google/android/gms/location/ActivityTransitionEvent;

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;->a:Lcom/google/android/gms/location/ActivityTransitionEvent;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/Util;->getActivityName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetectedActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;->a:Lcom/google/android/gms/location/ActivityTransitionEvent;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "activity"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;->a:Lcom/google/android/gms/location/ActivityTransitionEvent;

    invoke-virtual {v2}, Lcom/google/android/gms/location/ActivityTransitionEvent;->getActivityType()I

    move-result v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/util/Util;->getActivityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "confidence"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 6
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
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
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;->getActivityName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "confidence"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

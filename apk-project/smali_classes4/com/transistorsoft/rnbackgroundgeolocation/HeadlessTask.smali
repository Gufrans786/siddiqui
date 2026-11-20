.class public Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTask;
.super Ljava/lang/Object;
.source "HeadlessTask.java"


# static fields
.field private static final HEADLESS_TASK_NAME:Ljava/lang/String; = "BackgroundGeolocation"

.field private static final TASK_TIMEOUT:I = 0x1d4c0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onHeadlessEvent$0(Lcom/facebook/react/bridge/ReactContext;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onHeadlessEvent$1(I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onHeadlessEvent$2(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;Ljava/lang/Exception;)V
    .locals 3

    .line 107
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u26a0\ufe0f  HeadlessTaskError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFinishHeadlessTask(Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 125
    :try_start_0
    invoke-static {}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getInstance()Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/FinishHeadlessTaskEvent;->getTaskId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->finishTask(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public onHeadlessEvent(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 36
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\ud83d\udc80  event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 41
    const-string v2, "name"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "terminate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "error"

    const-string v4, "params"

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getTerminateEvent()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 45
    :cond_0
    const-string v2, "location"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getLocationEvent()Lcom/transistorsoft/locationmanager/location/TSLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;->toJson()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    .line 49
    sget-object v5, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 51
    :cond_1
    const-string v2, "motionchange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getMotionChangeEvent()Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/event/MotionChangeEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 53
    :cond_2
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getHttpEvent()Lcom/transistorsoft/locationmanager/http/HttpResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/http/HttpResponse;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 55
    :cond_3
    const-string v2, "providerchange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getProviderChangeEvent()Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 57
    :cond_4
    const-string v2, "activitychange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getActivityChangeEvent()Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/event/ActivityChangeEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 59
    :cond_5
    const-string v2, "schedule"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getScheduleEvent()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 61
    :cond_6
    const-string v2, "boot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 62
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getBootEvent()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 63
    :cond_7
    const-string v2, "geofence"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 64
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getGeofenceEvent()Lcom/transistorsoft/locationmanager/event/GeofenceEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/event/GeofenceEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 65
    :cond_8
    const-string v2, "geofenceschange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 66
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getGeofencesChangeEvent()Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/event/GeofencesChangeEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 67
    :cond_9
    const-string v2, "heartbeat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 68
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getHeartbeatEvent()Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_1

    .line 69
    :cond_a
    const-string v2, "powersavechange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 70
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getPowerSaveChangeEvent()Lcom/transistorsoft/locationmanager/event/PowerSaveModeChangeEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/event/PowerSaveModeChangeEvent;->isPowerSaveMode()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 71
    :cond_b
    const-string v2, "connectivitychange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 72
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getConnectivityChangeEvent()Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_1

    .line 73
    :cond_c
    const-string v2, "enabledchange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 74
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getEnabledChangeEvent()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 75
    :cond_d
    const-string v2, "notificationaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 76
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getNotificationEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_e
    const-string v2, "authorization"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 78
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getAuthorizationEvent()Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_1

    .line 80
    :cond_f
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown Headless Event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unknown event: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_10

    .line 87
    :try_start_1
    invoke-static {v2}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->jsonToMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 89
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :cond_10
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->getInstance()Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v3, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;

    invoke-direct {v3}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;-><init>()V

    const-string v4, "BackgroundGeolocation"

    .line 97
    invoke-virtual {v3, v4}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->setName(Ljava/lang/String;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->setParams(Lcom/facebook/react/bridge/WritableMap;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;

    move-result-object v1

    const v3, 0x1d4c0

    .line 99
    invoke-virtual {v1, v3}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->setTimeout(I)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;

    move-result-object v1

    new-instance v3, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTask$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTask$$ExternalSyntheticLambda0;-><init>()V

    .line 100
    invoke-virtual {v1, v3}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->setOnInvokeCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;

    move-result-object v1

    new-instance v3, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTask$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTask$$ExternalSyntheticLambda1;-><init>()V

    .line 103
    invoke-virtual {v1, v3}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->setOnFinishCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;

    move-result-object v1

    new-instance v3, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTask$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTask$$ExternalSyntheticLambda2;-><init>()V

    .line 106
    invoke-virtual {v1, v3}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->setOnErrorCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->build()Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;

    move-result-object v1

    .line 96
    invoke-virtual {v2, p1, v1}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager;->startTask(Landroid/content/Context;Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 112
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed invoke HeadlessTask "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".  Task ignored:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

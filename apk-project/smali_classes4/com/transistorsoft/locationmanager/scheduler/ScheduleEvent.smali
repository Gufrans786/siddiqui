.class public Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->b:Lorg/json/JSONObject;

    .line 3
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->a:Ljava/lang/Boolean;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u23f0 OneShot event fired: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    .line 35
    const-string v0, "TERMINATE_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance p1, Lcom/transistorsoft/locationmanager/event/TerminateEvent;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/event/TerminateEvent;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-interface {p2}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;->onFinish()V

    goto/16 :goto_0

    .line 38
    :cond_0
    const-string v0, "MOTION_ACTIVITY_CHECK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance p1, Lcom/transistorsoft/locationmanager/event/MotionActivityCheckEvent;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/event/MotionActivityCheckEvent;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-interface {p2}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;->onFinish()V

    goto/16 :goto_0

    .line 41
    :cond_1
    const-string v0, "STOP_AFTER_ELAPSED_MINUTES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance p1, Lcom/transistorsoft/locationmanager/event/StopAfterElapsedMinutesEvent;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/event/StopAfterElapsedMinutesEvent;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-interface {p2}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;->onFinish()V

    goto/16 :goto_0

    .line 44
    :cond_2
    const-string v0, "STOP_TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    new-instance p1, Lcom/transistorsoft/locationmanager/event/StopTimeoutEvent;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/event/StopTimeoutEvent;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-interface {p2}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;->onFinish()V

    goto :goto_0

    .line 47
    :cond_3
    const-string v0, "MOTION_TRIGGER_DELAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    new-instance p1, Lcom/transistorsoft/locationmanager/event/MotionTriggerDelayEvent;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/event/MotionTriggerDelayEvent;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-interface {p2}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;->onFinish()V

    goto :goto_0

    .line 50
    :cond_4
    const-string v0, "START_GEOFENCES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    new-instance p1, Lcom/transistorsoft/locationmanager/event/StartGeofencesEvent;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/event/StartGeofencesEvent;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 52
    :cond_5
    const-string v0, "LAUNCH_FOREGROUND_SERVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53
    new-instance p1, Lcom/transistorsoft/locationmanager/event/LaunchForegroundServiceEvent;

    invoke-direct {p1, p0}, Lcom/transistorsoft/locationmanager/event/LaunchForegroundServiceEvent;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_6
    const-string v0, "http_flush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 55
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/event/HttpFlushEvent;->run(Landroid/content/Context;)V

    goto :goto_0

    .line 56
    :cond_7
    const-string v0, "HEARTBEAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 57
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->onHeartbeat(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_8
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown OneShot event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " <IGNORED>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 61
    :goto_0
    invoke-interface {p2}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent$Callback;->onFinish()V

    return-void
.end method

.method static a(Landroid/content/Context;ZI)V
    .locals 5

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getSchedulerEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->b()V

    .line 7
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p1, "Ignored schedule alarm event (scheduler is disabled)"

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;Landroid/content/Intent;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object v1

    .line 13
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\ud83d\udcc5  Schedule alarm fired!  enabled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", trackingMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setTrackingMode(Ljava/lang/Integer;)V

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->startOnSchedule()V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->stopOnSchedule()V

    .line 24
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v1, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;-><init>(Ljava/lang/Boolean;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 27
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->a(Ljava/util/Calendar;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getState()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/ScheduleEvent;->b:Lorg/json/JSONObject;

    return-object v0
.end method

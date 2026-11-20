.class public Lcom/transistorsoft/locationmanager/service/HeartbeatService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION:Ljava/lang/String; = "HEARTBEAT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->b(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    const-string v1, "heartbeat"

    invoke-direct {v0, p0, v1, p1}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object p1

    .line 9
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    .line 10
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p0

    .line 11
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->count()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->isNetworkAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush()V

    :cond_1
    return-void
.end method

.method public static onHeartbeat(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHeartbeatInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "HEARTBEAT"

    if-gtz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v2

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZ)V

    .line 10
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "\u2764\ufe0f"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    const-string/jumbo v1, "tslocationmanager_peep_note1"

    invoke-virtual {v0, p0, v1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getLastLocation(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHeartbeatInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->stop(Landroid/content/Context;)V

    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start heartbeat ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v1

    const-string v2, "HEARTBEAT"

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object p0

    int-to-long v0, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;JZ)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stop heartbeat"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object p0

    const-string v0, "HEARTBEAT"

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->cancelOneShot(Ljava/lang/String;)V

    return-void
.end method

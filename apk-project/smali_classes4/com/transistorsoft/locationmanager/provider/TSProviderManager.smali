.class public Lcom/transistorsoft/locationmanager/provider/TSProviderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/provider/TSProviderManager$b;
    }
.end annotation


# static fields
.field public static ACCURACY_AUTHORIZATION_FULL:I = 0x0

.field public static ACCURACY_AUTHORIZATION_REDUCED:I = 0x1

.field public static PERMISSION_ALWAYS:I = 0x3

.field public static PERMISSION_DENIED:I = 0x2

.field public static PERMISSION_WHEN_IN_USE:I = 0x4

.field private static c:Lcom/transistorsoft/locationmanager/provider/TSProviderManager;


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private final b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;


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
    new-instance v0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-direct {v0, p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->c:Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->c:Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    .line 3
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->c:Lcom/transistorsoft/locationmanager/provider/TSProviderManager;
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

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 4
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    monitor-enter p2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->elapsed()J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit p2

    return-void

    .line 6
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p2

    .line 9
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Stop monitoring location-provider changes"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->stopMonitoring(Landroid/content/Context;)V

    .line 13
    :cond_1
    new-instance p2, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-direct {p2, p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;-><init>(Landroid/content/Context;)V

    .line 15
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    monitor-enter v0

    .line 16
    :try_start_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-virtual {p2, v1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->equals(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    monitor-exit v0

    return-void

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-virtual {v1, p2}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->update(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V

    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onProviderChange(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V

    .line 24
    const-string v0, "locationsettings"

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->startIfEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location-provider change: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isGPSEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isNetworkEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AP Mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isAirplaneMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->boxRow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 31
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 34
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 35
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/provider/TSProviderManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->c:Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->c:Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    .line 4
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->c:Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    return-object p0
.end method


# virtual methods
.method public onConnectivityChange(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    new-instance p2, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-direct {p2, p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-virtual {v1, p2}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->equals(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startMonitoring(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->b:Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-virtual {v1, p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->init(Landroid/content/Context;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Start monitoring location-provider changes"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    new-instance v1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager$b;-><init>(Lcom/transistorsoft/locationmanager/provider/TSProviderManager$a;)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a:Landroid/content/BroadcastReceiver;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-direct {v0, p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopMonitoring(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->a:Landroid/content/BroadcastReceiver;

    .line 5
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Stop monitoring location-provider changes"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

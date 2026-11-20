.class public Lcom/transistorsoft/locationmanager/http/HttpService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/http/HttpService$e;,
        Lcom/transistorsoft/locationmanager/http/HttpService$f;,
        Lcom/transistorsoft/locationmanager/http/HttpService$g;,
        Lcom/transistorsoft/locationmanager/http/HttpService$d;
    }
.end annotation


# static fields
.field public static final JSON:Lokhttp3/MediaType;

.field private static k:Lcom/transistorsoft/locationmanager/http/HttpService;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Lokhttp3/OkHttpClient;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSAuthorizationCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DzLsg4P3Q333-Z-bXD78sAd2Wq8(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->e()V

    return-void
.end method

.method public static synthetic $r8$lambda$PIHYthMz0tFmwMuWjVcY699BfRo(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/adapter/TSConfig;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ROOp8Erh-6JBEBi5kyxPFvcYe3I(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->b(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sc0DWDRdQY5AV6MSQQTcnuQj1o4(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$bhYpdUQZYLdsYpWkofS1B9IXcJA(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$kAXMFshTRf6ubY_yuCXnnNanYAQ(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$s7lPmt28b05BTYiu2rfrmr95qdU(Lcom/transistorsoft/locationmanager/http/HttpService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/http/HttpService;->JSON:Lokhttp3/MediaType;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/transistorsoft/locationmanager/http/HttpService;->k:Lcom/transistorsoft/locationmanager/http/HttpService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->j:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    .line 20
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 22
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 23
    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 24
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHttpTimeout()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHttpTimeout()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4, v5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->g:Lokhttp3/OkHttpClient;

    .line 28
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    .line 29
    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 32
    :cond_0
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSyncThreshold()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 36
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->startMonitoringConnectivityChanges(Landroid/content/Context;)V

    .line 41
    :cond_1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2}, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda2;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->onStateChange(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnStateChangeCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    return-object p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/http/HttpService;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/http/HttpService;->k:Lcom/transistorsoft/locationmanager/http/HttpService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/http/HttpService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/http/HttpService;->k:Lcom/transistorsoft/locationmanager/http/HttpService;

    .line 10
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/http/HttpService;->k:Lcom/transistorsoft/locationmanager/http/HttpService;
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

.method private a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 77
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 79
    sget-object v1, Lcom/transistorsoft/locationmanager/http/HttpService;->JSON:Lokhttp3/MediaType;

    .line 82
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHeaders()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 86
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 88
    const-string v5, "content-type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 92
    :cond_0
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAuthorization()Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    move-result-object v2

    .line 97
    invoke-virtual {v2, p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->apply(Lokhttp3/Request$Builder;)V

    .line 99
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 100
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->b:Ljava/util/List;

    monitor-enter v0

    .line 130
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->h()V

    .line 134
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->d:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda4;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 146
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasUrl()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V
    .locals 2

    .line 164
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/http/HttpService$c;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService$c;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V
    .locals 4

    .line 153
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->h()V

    .line 155
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/http/HttpResponse;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-string v3, "http_flush"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transistorsoft/locationmanager/scheduler/TSScheduleManager;->oneShot(Ljava/lang/String;J)V

    .line 162
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda5;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/http/HttpResponse;Lcom/transistorsoft/locationmanager/data/LocationModel;)V
    .locals 3

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/http/HttpResponse;->isSuccess()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->destroy(Lcom/transistorsoft/locationmanager/data/LocationModel;)Z

    .line 120
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->g()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 121
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 125
    :cond_0
    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->unlock(Lcom/transistorsoft/locationmanager/data/LocationModel;)Z

    .line 126
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V

    .line 128
    :goto_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->c(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/http/HttpResponse;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transistorsoft/locationmanager/http/HttpResponse;",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/http/HttpResponse;->isSuccess()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->destroyAll(Ljava/util/List;)V

    .line 106
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->f()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 111
    :cond_0
    invoke-virtual {v0, p2}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->unlock(Ljava/util/List;)Z

    .line 112
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V

    .line 114
    :goto_0
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->c(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;Lcom/transistorsoft/locationmanager/data/LocationModel;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpResponse;Lcom/transistorsoft/locationmanager/data/LocationModel;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;Ljava/util/List;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpResponse;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/http/HttpService;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/LocationModel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/LocationModel;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/http/HttpService;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/http/HttpService;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/LocationModel;)V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/data/LocationModel;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-virtual {p2}, Lcom/transistorsoft/locationmanager/data/LocationModel;->getJson()Ljava/lang/Object;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHttpRootProperty()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    .line 24
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/transistorsoft/locationmanager/util/Util;->mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    .line 27
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Appending #params to an HTTP Request of type {Array} is not yet supported.  Specify an #httpRootProperty and send an {Object} request"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 31
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 33
    invoke-static {v3, v0}, Lcom/transistorsoft/locationmanager/util/Util;->mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 37
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->g:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/http/HttpService$f;

    invoke-direct {v0, p0, p2}, Lcom/transistorsoft/locationmanager/http/HttpService$f;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/data/LocationModel;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 39
    :goto_1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/transistorsoft/locationmanager/http/HttpResponse;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/transistorsoft/locationmanager/http/HttpResponse;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 41
    invoke-direct {p0, v0, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpResponse;Lcom/transistorsoft/locationmanager/data/LocationModel;)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " batch ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transistorsoft/locationmanager/data/LocationModel;

    .line 48
    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/data/LocationModel;->getJson()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 53
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getParams()Lorg/json/JSONObject;

    move-result-object v2

    .line 54
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHttpRootProperty()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_3

    .line 59
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Appending #params to an HTTP Request of type {Array} is not yet supported.  Specify an #httpRootProperty and send an {Object} request"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 63
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 65
    invoke-static {v3, v2}, Lcom/transistorsoft/locationmanager/util/Util;->mergeJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 69
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->g:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/http/HttpService$f;

    invoke-direct {v0, p0, p2}, Lcom/transistorsoft/locationmanager/http/HttpService$f;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;Ljava/util/List;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 72
    :goto_2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/transistorsoft/locationmanager/http/HttpResponse;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/transistorsoft/locationmanager/http/HttpResponse;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 74
    invoke-direct {p0, v0, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpResponse;Ljava/util/List;)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->d:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;->onSuccess(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->d:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    .line 152
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/provider/TSProviderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->onConnectivityChange(Landroid/content/Context;Z)V

    .line 168
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->isNetworkAvailable()Z

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 172
    :cond_0
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ud83d\udcf6  Connectivity change: connected? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSyncThreshold()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_1
    new-instance p1, Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;

    invoke-direct {p1, v0}, Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;-><init>(Z)V

    .line 188
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/http/HttpService;Lokhttp3/Response;)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lokhttp3/Response;)Z

    move-result p0

    return p0
.end method

.method private a(Lokhttp3/Response;)Z
    .locals 1

    .line 163
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x133

    if-eq p1, v0, :cond_0

    const/16 v0, 0x134

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private synthetic b()V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush()V

    return-void
.end method

.method private synthetic b(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->d:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object p1, p1, Lcom/transistorsoft/locationmanager/http/HttpResponse;->responseText:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v2, "Caught an Exception trying to reference callback.  It\'s probably already been called <IGNORE>."

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->d:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    .line 10
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/http/HttpService;Lokhttp3/Response;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->b(Lokhttp3/Response;)Z

    move-result p0

    return p0
.end method

.method private b(Lokhttp3/Response;)Z
    .locals 1

    .line 13
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0x133

    if-eq p1, v0, :cond_0

    const/16 v0, 0x134

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/http/HttpService;Lokhttp3/Response;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->c(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Lokhttp3/Response;)Ljava/lang/String;
    .locals 4

    .line 9
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Location"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->j:Ljava/util/List;

    return-object p0
.end method

.method private synthetic c()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda6;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/transistorsoft/locationmanager/http/HttpResponse;)V
    .locals 2

    const-string v0, "background_geolocation"

    .line 3
    iget-object v1, p1, Lcom/transistorsoft/locationmanager/http/HttpResponse;->responseText:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/http/HttpResponse;->responseText:Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transistorsoft/locationmanager/rpc/a;->a(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic d()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush(Z)V

    return-void
.end method

.method static synthetic d(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a()V

    return-void
.end method

.method private synthetic e()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush()V

    return-void
.end method

.method static synthetic e(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxBatchSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->allWithLocking(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a()V

    return-void
.end method

.method static synthetic f(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->g()V

    return-void
.end method

.method static synthetic g(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->first()Lcom/transistorsoft/locationmanager/data/LocationModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/LocationModel;)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/http/HttpService;->k:Lcom/transistorsoft/locationmanager/http/HttpService;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/http/HttpService;->k:Lcom/transistorsoft/locationmanager/http/HttpService;

    .line 4
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/http/HttpService;->k:Lcom/transistorsoft/locationmanager/http/HttpService;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->stopBackgroundTask(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 5

    .line 23
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->d:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDisableAutoSyncOnCellular()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->isConnectedWifi()Z

    move-result v0

    .line 29
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WiFi connected? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->count()I

    move-result v0

    .line 34
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP Service (count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-lt v0, v2, :cond_3

    .line 36
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    new-instance v0, Lcom/transistorsoft/locationmanager/http/HttpService$e;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/http/HttpService$e;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V

    return-void

    .line 42
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a()V

    return-void

    .line 47
    :cond_4
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "HttpService is busy"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public flush(Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/http/HttpService$a;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService$a;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "HttpService is busy"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/http/HttpService$b;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService$b;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    .line 18
    :cond_2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->d:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush(Z)V

    return-void
.end method

.method public flush(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush()V

    return-void
.end method

.method public getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->g:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isConnectedMobile()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isConnectedWifi()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public isNetworkAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onAuthorization(Lcom/transistorsoft/locationmanager/adapter/callback/TSAuthorizationCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->j:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConfigChange(Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    const-string v1, "autoSync"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "params"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "extras"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "headers"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/http/HttpService$$ExternalSyntheticLambda3;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    const-string v1, "autoSyncThreshold"

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/event/ConfigChangeEvent;->isDirty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSyncThreshold()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    return-void
.end method

.method public removeListener(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "authorization"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->j:Ljava/util/List;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->j:Ljava/util/List;

    move-object v1, p2

    check-cast v1, Lcom/transistorsoft/locationmanager/adapter/callback/TSAuthorizationCallback;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 6
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->j:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startMonitoringConnectivityChanges(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Start monitoring connectivity changes"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->i:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 16
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isDefaultNetworkActive()Z

    .line 17
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 19
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/transistorsoft/locationmanager/http/HttpService$g;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/http/HttpService$g;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->i:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopMonitoringConnectivityChanges(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stop monitoring connectivity changes"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->i:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService;->i:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method

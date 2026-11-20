.class Lcom/transistorsoft/locationmanager/logger/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

.field private c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/transistorsoft/locationmanager/data/SQLQuery;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/a;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/logger/a;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    .line 5
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/logger/a;->e:Lcom/transistorsoft/locationmanager/data/SQLQuery;

    .line 7
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object p2

    new-instance p3, Lcom/transistorsoft/locationmanager/logger/a$a;

    invoke-direct {p3, p0}, Lcom/transistorsoft/locationmanager/logger/a$a;-><init>(Lcom/transistorsoft/locationmanager/logger/a;)V

    invoke-virtual {p2, p1, p3}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->startBackgroundTask(Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/logger/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transistorsoft/locationmanager/logger/a;->c:I

    return p0
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/logger/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/transistorsoft/locationmanager/logger/a;->c:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 5
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/a$d;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/logger/a$d;-><init>(Lcom/transistorsoft/locationmanager/logger/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/logger/a;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/logger/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/a$c;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/logger/a$c;-><init>(Lcom/transistorsoft/locationmanager/logger/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/logger/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/logger/a;->a()V

    return-void
.end method

.method static synthetic c(Lcom/transistorsoft/locationmanager/logger/a;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/logger/a;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/a;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    const-string v1, "Null Context"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/logger/a;->e:Lcom/transistorsoft/locationmanager/data/SQLQuery;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLogReader;->getLog(Lcom/transistorsoft/locationmanager/data/SQLQuery;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 12
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/a;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    const-string v3, "Failed to get log"

    invoke-interface {v1, v3}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    .line 13
    iget v1, p0, Lcom/transistorsoft/locationmanager/logger/a;->c:I

    invoke-virtual {v2, v0, v1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->stopBackgroundTask(Landroid/content/Context;I)V

    return-void

    .line 17
    :cond_1
    invoke-static {v0, v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->writeLogFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    .line 19
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/a;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    const-string v3, "Failed to create temp file for upload"

    invoke-interface {v1, v3}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    .line 20
    iget v1, p0, Lcom/transistorsoft/locationmanager/logger/a;->c:I

    invoke-virtual {v2, v0, v1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->stopBackgroundTask(Landroid/content/Context;I)V

    return-void

    .line 25
    :cond_2
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    move-result-object v2

    .line 27
    new-instance v4, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v4}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v4

    .line 28
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/gzip"

    invoke-static {v6}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    invoke-static {v6, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v3

    const-string v6, "files"

    invoke-virtual {v4, v6, v5, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 29
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v5, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 30
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 31
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    const-string v5, "manufacturer"

    invoke-virtual {v3, v5, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 32
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "model"

    invoke-virtual {v3, v5, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 33
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object v2

    const-string v4, "platform"

    invoke-virtual {v3, v4, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v2

    .line 37
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/logger/a;->d:Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 39
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getHeaders()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 44
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 46
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    const-string v5, "content-type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/a;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_4
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/logger/a$b;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/locationmanager/logger/a$b;-><init>(Lcom/transistorsoft/locationmanager/logger/a;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

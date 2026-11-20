.class Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;


# direct methods
.method public static synthetic $r8$lambda$GyrTAlhIwHRFvnx5RYtijM9dA8U(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->b(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SafT_3-1sR8Wep5vw9Hm7qIpkRs(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->e:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic b(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->e:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;

    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;->onSuccess(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->e:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;

    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;->onFailure(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string/jumbo v0, "\ud83d\udd11 Found cached token for "

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a:Landroid/content/Context;

    const-string v3, "TSLocationManager:AuthorizationToken"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 10
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 12
    :try_start_1
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {v3}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->fromJson(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;

    move-result-object v2

    .line 16
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 21
    :catch_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Failed to load Transistor Authorization Token from preferences"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/api/register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/device/DeviceInfo;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    .line 29
    :try_start_2
    const-string v4, "org"

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v4, "uuid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/device/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Ljava/lang/String;)V

    .line 34
    :goto_0
    sget-object v2, Lcom/transistorsoft/locationmanager/http/HttpService;->JSON:Lokhttp3/MediaType;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 36
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 37
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;-><init>(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    :catch_2
    move-exception v0

    .line 42
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TransistorTokenRequest provided bad host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;,
        Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_DESTROY:Ljava/lang/String; = "destroyTransistorToken"

.field public static final ACTION_GET:Ljava/lang/String; = "getTransistorToken"

.field private static final d:Ljava/lang/String; = "TSLocationManager:AuthorizationToken"

.field private static final e:Ljava/lang/String; = "/api/register"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:J


# direct methods
.method public static synthetic $r8$lambda$O0hWzhOuHnU3BAHIts8W_tGkZno(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->a(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sp5QJEKb7rg8ldylhrloC6RoBTY(Ljava/lang/String;Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->a(Ljava/lang/String;Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->c:J

    return-void
.end method

.method private static synthetic a(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 24
    invoke-interface {p0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const-string p0, "TSLocationManager:AuthorizationToken"

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\ud83d\udd11 Destroyed cached token for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 12
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithBuilder()Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object p0

    new-instance p1, Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-direct {p1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->setAuthorization(Lcom/transistorsoft/locationmanager/config/TSAuthorization;)Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$Builder;->commit()V

    if-eqz p2, :cond_1

    .line 22
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 23
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "TransistorAuthorizationToken destroyTokenForHost provided bad host: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static destroyTokenForUrl(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0, p2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static findOrCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;

    const-string v1, "accessToken"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "refreshToken"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "expires"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static hasTokenForHost(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "TSLocationManager:AuthorizationToken"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->c:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "accessToken"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "refreshToken"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "expires"

    iget-wide v2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 7
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->a:Ljava/lang/String;

    const-string v2, "accessToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->b:Ljava/lang/String;

    const-string v2, "refreshToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "expires"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

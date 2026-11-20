.class Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "Failed to get transistor token from host: "

    const-string/jumbo v0, "\ud83d\udd11 Received token from "

    const-string v1, "TransistorTokenRequest provided bad host: "

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    const-string p2, "UNKNOWN_ERROR"

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 12
    :try_start_1
    new-instance p2, Ljava/net/URL;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :try_start_2
    new-instance v1, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;

    const-string v2, "accessToken"

    .line 20
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "refreshToken"

    .line 21
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "expires"

    .line 22
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 24
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->b(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "TSLocationManager:AuthorizationToken"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    invoke-static {p2, v1}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;)V

    return-void

    :catch_0
    move-exception p2

    .line 30
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "error"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p2

    .line 54
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p2

    .line 56
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a$a;->a:Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;->a(Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken$a;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.class Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/TSConfig;->loadConfig(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/TSConfig;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;->b:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load configUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    const-string p1, "Invalid JSON from configUrl: "

    const-string v0, "Received unexpected code "

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    const-string v1, "Received empty response body from configUrl"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;->b:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->updateWithJSONObject(Lorg/json/JSONObject;)V

    .line 9
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "loadConfig success"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    .line 12
    :try_start_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from configUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 27
    :catch_1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$b;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IOException from configUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

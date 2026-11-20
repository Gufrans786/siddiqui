.class Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/config/TSAuthorization;->refreshAuthorizationToken(Landroid/content/Context;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/transistorsoft/locationmanager/config/TSAuthorization;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->c:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->a:Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->c:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->a:Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;ILjava/lang/String;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->c:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->a:Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;

    const-string v1, "NO_RESPONSE_DATA"

    invoke-static {p1, p2, v1, v0}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;ILjava/lang/String;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->c:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->a:Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;

    invoke-static {p1, v1, v2, v0, v3}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;Landroid/content/Context;ILorg/json/JSONObject;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V

    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->c:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->a:Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;

    invoke-static {v0, v1, p1, v2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;ILjava/lang/String;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->c:Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/config/TSAuthorization$a;->a:Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;

    invoke-static {v0, p2, p1, v1}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->a(Lcom/transistorsoft/locationmanager/config/TSAuthorization;ILjava/lang/String;Lcom/transistorsoft/locationmanager/config/TSAuthorization$Callback;)V

    return-void
.end method

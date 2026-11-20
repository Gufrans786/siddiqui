.class public Lcom/transistorsoft/locationmanager/http/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field public responseText:Ljava/lang/String;

.field public status:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->responseText:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->a:Landroid/content/Context;

    .line 6
    iput p2, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->status:I

    if-eqz p3, :cond_0

    .line 8
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->responseText:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->responseText:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->status:I

    return v0
.end method

.method public isSuccess()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->status:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string/jumbo v1, "status"

    iget v2, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "responseText"

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpResponse;->responseText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string/jumbo v1, "success"

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/http/HttpResponse;->isSuccess()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
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

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

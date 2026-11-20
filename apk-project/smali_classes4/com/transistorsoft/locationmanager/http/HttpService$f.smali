.class Lcom/transistorsoft/locationmanager/http/HttpService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/http/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/transistorsoft/locationmanager/data/LocationModel;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field final synthetic d:Lcom/transistorsoft/locationmanager/http/HttpService;


# direct methods
.method public constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/data/LocationModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->c:Z

    .line 9
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->a:Lcom/transistorsoft/locationmanager/data/LocationModel;

    return-void
.end method

.method public constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/data/LocationModel;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->b:Ljava/util/List;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->c:Z

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response: 0, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->isConnectedMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getMaxRecordsToPersist()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->count()I

    move-result v1

    .line 8
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSyncThreshold()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSyncThreshold()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/http/HttpService;->g(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 10
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " is not responding.  Will try again after "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " records."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->g(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSyncThreshold()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 15
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/transistorsoft/locationmanager/http/HttpResponse;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Lcom/transistorsoft/locationmanager/http/HttpResponse;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 17
    iget-boolean p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->c:Z

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->b:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;Ljava/util/List;)V

    return-void

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->a:Lcom/transistorsoft/locationmanager/data/LocationModel;

    invoke-static {p1, p2, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;Lcom/transistorsoft/locationmanager/data/LocationModel;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Lokhttp3/Response;)Z

    move-result p1

    const-string v0, "Response: "

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->g(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSyncThreshold()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 15
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x191

    if-ne p1, v2, :cond_1

    .line 18
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAuthorization()Lcom/transistorsoft/locationmanager/config/TSAuthorization;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/config/TSAuthorization;->canRefreshAuthorizationToken()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v3

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/transistorsoft/locationmanager/http/HttpService$f$a;

    invoke-direct {v5, p0, v2}, Lcom/transistorsoft/locationmanager/http/HttpService$f$a;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService$f;Lcom/transistorsoft/locationmanager/config/TSAuthorization;)V

    invoke-virtual {v3, v4, v5}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->startBackgroundTask(Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x19a

    if-ne p1, v2, :cond_2

    .line 44
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->hasTokenForHost(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/transistorsoft/locationmanager/config/TransistorAuthorizationToken;->destroyTokenForUrl(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    .line 49
    :cond_2
    :goto_1
    sget-object v2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 51
    :goto_2
    new-instance p2, Lcom/transistorsoft/locationmanager/http/HttpResponse;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1, v1}, Lcom/transistorsoft/locationmanager/http/HttpResponse;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->b(Lcom/transistorsoft/locationmanager/http/HttpService;Lokhttp3/Response;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 54
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {p1, p2}, Lcom/transistorsoft/locationmanager/http/HttpService;->c(Lcom/transistorsoft/locationmanager/http/HttpService;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    .line 55
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP Redirect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 56
    iget-boolean p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->c:Z

    if-eqz p2, :cond_4

    .line 57
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->b:Ljava/util/List;

    invoke-static {p2, p1, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 59
    :cond_4
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->a:Lcom/transistorsoft/locationmanager/data/LocationModel;

    invoke-static {p2, p1, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/LocationModel;)V

    return-void

    .line 64
    :cond_5
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (HTTP 301/302 redirects are not permitted since they strip POST data)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/transistorsoft/locationmanager/http/HttpResponse;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " redirect is not permitted"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/transistorsoft/locationmanager/http/HttpResponse;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object p2, p1

    .line 67
    :goto_3
    iget-boolean p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->c:Z

    if-eqz p1, :cond_6

    .line 68
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->b:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;Ljava/util/List;)V

    goto :goto_4

    .line 70
    :cond_6
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->d:Lcom/transistorsoft/locationmanager/http/HttpService;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$f;->a:Lcom/transistorsoft/locationmanager/data/LocationModel;

    invoke-static {p1, p2, v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/http/HttpResponse;Lcom/transistorsoft/locationmanager/data/LocationModel;)V

    :goto_4
    return-void
.end method

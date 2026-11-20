.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a0"
.end annotation


# instance fields
.field private a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;)Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush(Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;)V

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "HTTPService is busy with an existing request."

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    if-eqz v0, :cond_3

    .line 16
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$b;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$b;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->all()Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->destroyAll(Ljava/util/List;)V

    .line 26
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$c;

    invoke-direct {v2, p0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$c;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

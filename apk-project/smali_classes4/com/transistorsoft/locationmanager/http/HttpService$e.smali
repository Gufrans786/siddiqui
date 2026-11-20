.class Lcom/transistorsoft/locationmanager/http/HttpService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/http/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/http/HttpService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->getInstance()Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;

    move-result-object v0

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/http/HttpService$e$a;

    invoke-direct {v2, p0, p1}, Lcom/transistorsoft/locationmanager/http/HttpService$e$a;-><init>(Lcom/transistorsoft/locationmanager/http/HttpService$e;Lcom/transistorsoft/locationmanager/http/HttpService;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager;->startBackgroundTask(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSBackgroundTaskCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getBatchSync()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->e(Lcom/transistorsoft/locationmanager/http/HttpService;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$e;->a:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->f(Lcom/transistorsoft/locationmanager/http/HttpService;)V

    return-void
.end method

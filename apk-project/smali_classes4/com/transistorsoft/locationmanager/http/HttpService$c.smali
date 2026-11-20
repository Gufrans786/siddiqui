.class Lcom/transistorsoft/locationmanager/http/HttpService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

.field final synthetic b:Lcom/transistorsoft/locationmanager/http/HttpService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/http/HttpService;Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$c;->b:Lcom/transistorsoft/locationmanager/http/HttpService;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$c;->a:Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$c;->b:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->a(Lcom/transistorsoft/locationmanager/http/HttpService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/http/HttpService$c;->a:Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

    const-string v3, "authorization"

    invoke-direct {v0, v1, v3, v2}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/http/HttpService$c;->b:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->c(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/http/HttpService$c;->b:Lcom/transistorsoft/locationmanager/http/HttpService;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->c(Lcom/transistorsoft/locationmanager/http/HttpService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/adapter/callback/TSAuthorizationCallback;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/http/HttpService$c;->a:Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;

    invoke-interface {v2, v3}, Lcom/transistorsoft/locationmanager/adapter/callback/TSAuthorizationCallback;->onResponse(Lcom/transistorsoft/locationmanager/event/AuthorizationEvent;)V

    goto :goto_0

    .line 12
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

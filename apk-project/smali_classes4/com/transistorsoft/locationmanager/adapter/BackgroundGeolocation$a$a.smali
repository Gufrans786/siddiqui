.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;->onChange(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->isHeadless()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;

    iget-object v2, v2, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "enabledchange"

    invoke-direct {v1, v2, v3, v0}, Lcom/transistorsoft/locationmanager/event/HeadlessEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/util/HeadlessEventBroadcaster;->post(Lcom/transistorsoft/locationmanager/event/HeadlessEvent;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;

    iget-object v1, v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;

    iget-object v2, v2, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->b(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transistorsoft/locationmanager/adapter/callback/TSEnabledChangeCallback;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/transistorsoft/locationmanager/adapter/callback/TSEnabledChangeCallback;->onEnabledChange(Z)V

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

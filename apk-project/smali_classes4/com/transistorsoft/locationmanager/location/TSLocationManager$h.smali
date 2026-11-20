.class Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/location/TSLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/transistorsoft/locationmanager/location/TSLocation;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/location/TSLocation;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->d:Z

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;Z)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->d:Z

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    .line 16
    iput-boolean p3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->d:Z

    .line 17
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/location/TSLocation;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->d:Z

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    .line 32
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->c:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    invoke-direct {v2, v3, v4, v0}, Lcom/transistorsoft/locationmanager/event/PersistEvent;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/location/TSLocation;

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5, v2, v0}, Lcom/transistorsoft/locationmanager/event/PersistEvent;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->b:Lcom/transistorsoft/locationmanager/location/TSLocation;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->persist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->c:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transistorsoft/locationmanager/location/TSLocation;

    .line 7
    invoke-virtual {v1, v3}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->persist(Lcom/transistorsoft/locationmanager/location/TSLocation;)Z

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getAutoSyncThreshold()Ljava/lang/Integer;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->d:Z

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->count()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/http/HttpService;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/http/HttpService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->d:Z

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/http/HttpService;->flush(Z)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Null Context in PersistTask"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 7
    const-class v1, Lcom/transistorsoft/locationmanager/event/PersistEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->hasSubscriberForEvent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->getInstance()Lcom/transistorsoft/locationmanager/plugin/TSPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/plugin/TSPlugin;->canUsePersistEvent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->a()V

    return-void

    .line 11
    :cond_1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Failed to persist location"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$h;->b()V

    return-void
.end method

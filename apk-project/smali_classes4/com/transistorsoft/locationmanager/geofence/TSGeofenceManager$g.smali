.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Landroid/content/Context;Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->c:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->a:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method

.method private a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->destroyAll()Z

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->destroy(Ljava/lang/String;)Z

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->j(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V

    .line 12
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->reEvaluate()V

    .line 13
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Failed to retrieve Context from WeakReference.  It seems the application process has been destroyed."

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    const-string v1, "Context reference failure"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->count()I

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getIdentifiers()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    new-instance v2, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g$a;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g$a;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$g;)V

    invoke-virtual {v1, v0, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

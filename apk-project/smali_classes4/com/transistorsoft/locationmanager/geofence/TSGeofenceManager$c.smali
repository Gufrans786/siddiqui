.class Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;
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
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence;",
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
            "Lcom/transistorsoft/locationmanager/geofence/TSGeofence;",
            ">;",
            "Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->c:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    const-string v1, "No Geofences provided"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    .line 7
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Geofence argument error \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->a()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->create(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->j(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;

    .line 21
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofence;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    invoke-static {v3, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->d:Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;

    new-instance v2, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c$a;

    invoke-direct {v2, p0}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c$a;-><init>(Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;)V

    invoke-virtual {v1, v0, v2}, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager;->a(Ljava/util/List;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void

    .line 39
    :cond_5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/geofence/TSGeofenceManager$c;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    const-string v1, "INSERT geofences failed"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

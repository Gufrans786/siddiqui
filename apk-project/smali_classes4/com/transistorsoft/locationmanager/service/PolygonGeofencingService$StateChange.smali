.class public Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateChange"
.end annotation


# static fields
.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field public final identifier:Ljava/lang/String;

.field public final location:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->c:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/location/Location;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->identifier:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->location:Landroid/location/Location;

    .line 4
    iput p3, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->b:I

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/location/Location;I)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    return-object v1

    .line 7
    :cond_0
    new-instance v1, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;

    invoke-direct {v1, p0, p1, p2}, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;-><init>(Ljava/lang/String;Landroid/location/Location;I)V

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static a()V
    .locals 2

    .line 13
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static findByIdentifier(Ljava/lang/String;)Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isEmpty()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->a:I

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->a:I

    return v0
.end method

.method d()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[StateChange identifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/PolygonGeofencingService$StateChange;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

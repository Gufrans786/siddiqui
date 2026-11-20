.class Lcom/transistorsoft/locationmanager/location/TSLocationManager$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->onError(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c$a;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c$a;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Landroid/location/Location;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c$a;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c$a;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;

    iget-object p1, p1, Lcom/transistorsoft/locationmanager/location/TSLocationManager$c;->c:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    new-instance v1, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->c(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;-><init>(ILandroid/location/Location;)V

    invoke-virtual {p1, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onSingleLocationResult(Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

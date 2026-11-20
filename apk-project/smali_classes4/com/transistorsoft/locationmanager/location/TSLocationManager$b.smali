.class Lcom/transistorsoft/locationmanager/location/TSLocationManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onProviderChange(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$b;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

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
    new-instance p1, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$b;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;->setSamples(I)Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;

    .line 3
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest$Builder;->build()Lcom/transistorsoft/locationmanager/location/TSProviderChangeRequest;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$b;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->register(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$b;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Landroid/location/Location;

    move-result-object v0

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$b;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->b(Lcom/transistorsoft/locationmanager/location/TSLocationManager;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$b;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    new-instance v2, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->getId()I

    move-result p1

    invoke-direct {v2, p1, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationResult;-><init>(ILandroid/location/Location;)V

    invoke-virtual {v0, v2}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->onSingleLocationResult(Lcom/transistorsoft/locationmanager/location/SingleLocationResult;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

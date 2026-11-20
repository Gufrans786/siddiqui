.class Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$a;->a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$a;->a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->onError(I)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$a;->a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$a;->a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->onError(I)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->isLocationServicesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$a;->a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->onError(I)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest$a;->a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;->startUpdatingLocation()V

    return-void
.end method

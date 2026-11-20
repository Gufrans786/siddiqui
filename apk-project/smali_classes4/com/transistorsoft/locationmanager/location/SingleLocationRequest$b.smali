.class Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->onError(I)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->onError(I)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->isLocationServicesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->onError(I)V

    return-void

    .line 11
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    iget-object v1, v1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    const-class v2, Lcom/transistorsoft/locationmanager/service/LocationRequestService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->a(Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;)I

    move-result v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest$b;->a:Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;

    iget-object v1, v1, Lcom/transistorsoft/locationmanager/location/SingleLocationRequest;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

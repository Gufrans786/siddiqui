.class Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->d(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-interface {v0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-interface {v0}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c$a;-><init>(Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

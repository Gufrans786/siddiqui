.class Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->c(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
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
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-interface {p1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-interface {v0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    invoke-direct {v0}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-interface {v1, v0}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$h;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-interface {v0}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    return-void
.end method

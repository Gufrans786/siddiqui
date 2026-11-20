.class Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/config/TSBackgroundPermissionRationale$CompletionHandler;


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

.field final synthetic c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;->c:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setDidShowBackgroundPermissionRationale(Ljava/lang/Boolean;)V

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-interface {v0}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    invoke-direct {v0}, Lcom/intentfilter/androidpermissions/models/DeniedPermissions;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-interface {v1, v0}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    return-void
.end method

.method public onClickOk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$d;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->b(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

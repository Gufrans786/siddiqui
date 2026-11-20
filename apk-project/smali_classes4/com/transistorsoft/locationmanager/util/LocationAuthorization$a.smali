.class Lcom/transistorsoft/locationmanager/util/LocationAuthorization$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->withBackgroundPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

.field final synthetic b:Lcom/intentfilter/androidpermissions/models/DeniedPermissions;


# direct methods
.method constructor <init>(Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$a;->a:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$a;->b:Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$a;->a:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$a;->b:Lcom/intentfilter/androidpermissions/models/DeniedPermissions;

    invoke-interface {v0, v1}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V

    return-void
.end method

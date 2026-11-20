.class Lcom/transistorsoft/locationmanager/util/LocationAuthorization$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->requestActivityPermission(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$i;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$i;->c:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/intentfilter/androidpermissions/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/intentfilter/androidpermissions/PermissionManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$i;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$i;->c:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-virtual {v0, v1, v2}, Lcom/intentfilter/androidpermissions/PermissionManager;->checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

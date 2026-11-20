.class Lcom/transistorsoft/locationmanager/util/LocationAuthorization$b;
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


# direct methods
.method constructor <init>(Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$b;->a:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$b;->a:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-interface {v0}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    return-void
.end method

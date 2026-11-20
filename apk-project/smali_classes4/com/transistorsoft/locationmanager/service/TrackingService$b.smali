.class Lcom/transistorsoft/locationmanager/service/TrackingService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;->b:Z

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onPermissionGranted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;->b:Z

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    invoke-static {v0, v1, v2}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$b;->c:Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;->onError(Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

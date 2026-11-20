.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->requestTemporaryFullAccuracy(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;

    sget v0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->ACCURACY_AUTHORIZATION_REDUCED:I

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;->onFailure(I)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    new-instance v1, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V

    .line 8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$A;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;

    sget v1, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->ACCURACY_AUTHORIZATION_FULL:I

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;->onSuccess(I)V

    return-void
.end method

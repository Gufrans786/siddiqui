.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->requestPermission(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;)V
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
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$z;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$z;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$z;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;

    sget v0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->PERMISSION_DENIED:I

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;->onFailure(I)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$z;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->hasBackgroundPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->PERMISSION_ALWAYS:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transistorsoft/locationmanager/provider/TSProviderManager;->PERMISSION_WHEN_IN_USE:I

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$z;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;

    invoke-interface {v1, v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSRequestPermissionCallback;->onSuccess(I)V

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$z;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "locationsettings"

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/activity/TSLocationManagerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

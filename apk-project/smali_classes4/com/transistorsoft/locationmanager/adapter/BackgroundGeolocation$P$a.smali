.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$P$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$P;->onChange(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$P;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$P;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$P$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Lcom/intentfilter/androidpermissions/models/DeniedPermissions;)V
    .locals 0

    return-void
.end method

.method public onPermissionGranted()V
    .locals 0

    return-void
.end method

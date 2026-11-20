.class Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;->onPermissionGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c$a;->a:Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c$a;->a:Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;

    iget-object v1, v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/util/LocationAuthorization$c;->b:Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    invoke-static {v1, v0}, Lcom/transistorsoft/locationmanager/util/LocationAuthorization;->a(Landroid/content/Context;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

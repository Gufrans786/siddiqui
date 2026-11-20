.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->geofenceExists(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSHasGeofenceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/callback/TSHasGeofenceCallback;

.field final synthetic c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSHasGeofenceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSHasGeofenceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/data/sqlite/GeofenceDAO;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o$a;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

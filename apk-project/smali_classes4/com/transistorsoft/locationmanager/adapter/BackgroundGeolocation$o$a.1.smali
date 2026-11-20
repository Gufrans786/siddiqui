.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;

    iput-boolean p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o$a;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;

    iget-object v0, v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSHasGeofenceCallback;

    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$o$a;->a:Z

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSHasGeofenceCallback;->onComplete(Z)V

    return-void
.end method

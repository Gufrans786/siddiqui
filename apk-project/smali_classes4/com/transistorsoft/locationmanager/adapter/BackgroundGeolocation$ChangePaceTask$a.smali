.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$b;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$b;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$a;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

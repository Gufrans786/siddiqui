.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$b;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0$b;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$a0;)Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;

    move-result-object v0

    const-string v1, "No network connection"

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSSyncCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

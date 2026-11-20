.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "S"
.end annotation


# instance fields
.field a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->clear()Z

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$S;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

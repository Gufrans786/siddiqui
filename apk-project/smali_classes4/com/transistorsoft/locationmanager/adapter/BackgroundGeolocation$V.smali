.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;
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
    name = "V"
.end annotation


# instance fields
.field private final a:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLocationsCallback;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLocationsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLocationsCallback;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;)Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLocationsCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;->a:Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLocationsCallback;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/data/sqlite/SQLiteLocationDAO;->all()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V$a;

    invoke-direct {v2, p0, v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$V;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;
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
    name = "Z"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

.field final synthetic c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$c;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$c;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$d;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$d;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-object v0
.end method

.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/settings/Settings;->isValid(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$a;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->a:Ljava/lang/String;

    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 9
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getTrackingMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setTrackingMode(Ljava/lang/Integer;)V

    .line 14
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "- Enable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2192 true, trackingMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getTrackingMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TSLocationManager"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$b;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z$b;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;)V

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changeTrackingMode(Landroid/content/Context;ILcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->start(Landroid/content/Context;Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    .line 36
    :goto_1
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$Z;->b()V

    return-void
.end method

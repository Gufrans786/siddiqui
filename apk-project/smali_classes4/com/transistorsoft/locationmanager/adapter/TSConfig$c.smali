.class Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/adapter/TSConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;


# direct methods
.method public static synthetic $r8$lambda$6VFOIjtC8PLPhUj66Sp06Cg3wS8(Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;->a(Z)V

    return-void
.end method

.method private constructor <init>(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transistorsoft/locationmanager/adapter/TSConfig;Lcom/transistorsoft/locationmanager/adapter/TSConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;-><init>(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    return-void
.end method

.method private synthetic a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->c(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->setEnabled(Ljava/lang/Boolean;)V

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Tracking initiated in background with stopOnTerminate: true.  Launch refused."

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->d(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->stop(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;->a:Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->d(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->onActivityDestroy()V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->getInstance()Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig$c$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/adapter/TSConfig$c;)V

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager;->onHeadlessChange(Lcom/transistorsoft/locationmanager/lifecycle/LifecycleManager$OnHeadlessChangeCallback;)V

    return-void
.end method

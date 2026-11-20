.class Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/service/HeartbeatService;->onHeartbeat(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;


# direct methods
.method public static synthetic $r8$lambda$d9mmThI1ERO3_HNnUArC32BoDbo(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->b(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l6QSSZH8YeqLtVk4JrsYDcz-drM(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->b:Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->a(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->b:Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;

    new-instance v2, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/location/TSLocation;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/transistorsoft/locationmanager/service/ActivityRecognitionService;->getMostProbableActivity()Lcom/google/android/gms/location/ActivityTransitionEvent;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/transistorsoft/locationmanager/location/TSLocation;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/location/ActivityTransitionEvent;)V

    .line 2
    const-string p1, "heartbeat"

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->setEvent(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->b:Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;->setLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V

    .line 4
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a;->b:Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;

    new-instance v2, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService$a$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/event/HeartbeatEvent;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

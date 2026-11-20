.class Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/service/GeofencingService$a;


# direct methods
.method public static synthetic $r8$lambda$RKP8U_UKbeHh7-6sI31xlwVgPCI(Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$iQSvDDbYXzYJ8ibu8Ntq3LsiHsU(Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;->a(Landroid/location/Location;)V

    return-void
.end method

.method constructor <init>(Lcom/transistorsoft/locationmanager/service/GeofencingService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;->a:Lcom/transistorsoft/locationmanager/service/GeofencingService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;->a:Lcom/transistorsoft/locationmanager/service/GeofencingService$a;

    iget-object v1, v0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a(Lcom/transistorsoft/locationmanager/service/GeofencingService$a;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->a(Lcom/transistorsoft/locationmanager/service/GeofencingService;Lcom/google/android/gms/location/GeofencingEvent;Landroid/location/Location;)V

    .line 4
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;->a:Lcom/transistorsoft/locationmanager/service/GeofencingService$a;

    iget-object v1, v0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->b(Lcom/transistorsoft/locationmanager/service/GeofencingService$a;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return-void
.end method

.method private synthetic a(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;->a:Lcom/transistorsoft/locationmanager/service/GeofencingService$a;

    iget-object v1, v0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->a(Lcom/transistorsoft/locationmanager/service/GeofencingService$a;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->a(Lcom/transistorsoft/locationmanager/service/GeofencingService;Lcom/google/android/gms/location/GeofencingEvent;Landroid/location/Location;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;->a:Lcom/transistorsoft/locationmanager/service/GeofencingService$a;

    iget-object v0, p1, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->c:Lcom/transistorsoft/locationmanager/service/GeofencingService;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a;->b(Lcom/transistorsoft/locationmanager/service/GeofencingService$a;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transistorsoft/locationmanager/service/AbstractService;->a(I)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/service/GeofencingService$a$a;Landroid/location/Location;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

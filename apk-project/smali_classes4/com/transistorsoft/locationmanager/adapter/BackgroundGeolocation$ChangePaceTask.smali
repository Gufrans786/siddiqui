.class public Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangePaceTask"
.end annotation


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

.field final synthetic c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;ZLcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->a:Ljava/lang/Boolean;

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-void
.end method

.method static synthetic a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-object p0
.end method


# virtual methods
.method public getCallback()Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->b:Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    return-object v0
.end method

.method public getIsMoving()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask$a;-><init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;)V

    .line 14
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->isLocationTrackingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->c:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$ChangePaceTask;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/transistorsoft/locationmanager/service/GeofencingService;->changePace(Landroid/content/Context;ZLcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;)V

    return-void
.end method

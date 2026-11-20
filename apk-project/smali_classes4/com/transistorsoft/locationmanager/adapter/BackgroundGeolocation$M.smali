.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$M;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$M;->a:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/HeartbeatService;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

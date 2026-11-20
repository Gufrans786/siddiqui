.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->watchPosition(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$j;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$j;->a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$j;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$j;->a:Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->watchPosition(Lcom/transistorsoft/locationmanager/location/TSWatchPositionRequest;)V

    return-void
.end method

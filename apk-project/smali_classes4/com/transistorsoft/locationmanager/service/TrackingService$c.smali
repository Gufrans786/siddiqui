.class Lcom/transistorsoft/locationmanager/service/TrackingService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/service/TrackingService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/service/TrackingService;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/service/TrackingService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$c;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$c;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;Landroid/location/Location;)Z

    return-void
.end method

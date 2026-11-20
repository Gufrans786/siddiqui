.class Lcom/transistorsoft/locationmanager/service/TrackingService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/service/TrackingService;->onMotionActivityCheckEvent(Lcom/transistorsoft/locationmanager/event/MotionActivityCheckEvent;)V
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
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "MotionActivityCheck failed to retrieve lastLocation"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    sub-float/2addr v0, v1

    .line 9
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;)Landroid/location/Location;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->elapsedTimeMillis(Landroid/location/Location;Landroid/location/Location;)J

    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Lcom/transistorsoft/locationmanager/service/TrackingService;Landroid/location/Location;)Landroid/location/Location;

    .line 13
    sget-object v3, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Distance from motion-activity check location: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getStationaryRadius()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x19

    if-ge v4, v5, :cond_1

    move v4, v5

    .line 21
    :cond_1
    invoke-virtual {v3}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDistanceFilter()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_5

    int-to-float v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Lcom/transistorsoft/locationmanager/service/TrackingService;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->b(Lcom/transistorsoft/locationmanager/service/TrackingService;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 34
    :cond_3
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->updateLocationRequest()V

    return-void

    .line 35
    :cond_4
    :goto_0
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "MotionActivityCheck fired with no location availability:  Retrying"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;JLandroid/location/Location;)V

    return-void

    .line 39
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;Landroid/location/Location;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 40
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;JLandroid/location/Location;)V

    :cond_6
    return-void

    .line 41
    :cond_7
    :goto_2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MotionActivityCheck failed with null location.  Retrying.\n- lastLocation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\nmotionActivityCheckLocation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/service/TrackingService;->a(Lcom/transistorsoft/locationmanager/service/TrackingService;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/TrackingService$e;->a:Lcom/transistorsoft/locationmanager/service/TrackingService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->updateLocationRequest()V

    return-void
.end method

.class Lcom/transistorsoft/locationmanager/location/TSLocationManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/location/TSLocationManager;->a(Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;

.field final synthetic b:Lcom/transistorsoft/locationmanager/location/TSLocationManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/location/TSLocationManager;Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$f;->b:Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$f;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Failed to acquire stationary location from last-known-location"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$f;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;

    const-string v0, "Failed to acquire stationary location"

    invoke-interface {p1, v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Force acquire stationary location with last-known-location"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 8
    const-string v1, "event"

    const-string v2, "onMotionChange"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$f;->a:Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;

    invoke-interface {v0, p1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;->onLocation(Landroid/location/Location;)V

    return-void
.end method

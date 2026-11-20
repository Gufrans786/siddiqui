.class Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "W"
.end annotation


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$W;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$W;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$W;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getIsMoving()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$W;->b:Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->a(Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/location/TSLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->stopUpdatingLocation()V

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uncaught Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation$W;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 p1, 0x2

    .line 12
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

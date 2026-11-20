.class public interface abstract Lcom/transistorsoft/locationmanager/location/TSLocationManager$LocationCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/location/TSLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onLocation(Landroid/location/Location;)V
.end method

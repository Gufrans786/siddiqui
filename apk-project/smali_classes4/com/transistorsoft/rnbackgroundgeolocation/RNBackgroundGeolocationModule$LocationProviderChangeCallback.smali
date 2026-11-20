.class Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationProviderChangeCallback;
.super Ljava/lang/Object;
.source "RNBackgroundGeolocationModule.java"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationProviderChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationProviderChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;


# direct methods
.method private constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationProviderChangeCallback;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationProviderChangeCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;)V

    return-void
.end method


# virtual methods
.method public onLocationProviderChange(Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;)V
    .locals 3

    .line 203
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 204
    const-string v1, "network"

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isNetworkEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    const-string v1, "gps"

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isGPSEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    const-string v1, "enabled"

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->isEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string v1, "accuracyAuthorization"

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->getAccuracyAuthorization()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/LocationProviderChangeEvent;->getStatus()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 209
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationProviderChangeCallback;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    const-string v1, "providerchange"

    invoke-static {p1, v1, v0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->-$$Nest$msendEvent(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.class Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ConnectivityChangeCallback;
.super Ljava/lang/Object;
.source "RNBackgroundGeolocationModule.java"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSConnectivityChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;


# direct methods
.method private constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ConnectivityChangeCallback;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ConnectivityChangeCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;)V

    return-void
.end method


# virtual methods
.method public onConnectivityChange(Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;)V
    .locals 2

    .line 218
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 219
    const-string v1, "connected"

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/event/ConnectivityChangeEvent;->hasConnection()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$ConnectivityChangeCallback;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    const-string v1, "connectivitychange"

    invoke-static {p1, v1, v0}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->-$$Nest$msendEvent(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

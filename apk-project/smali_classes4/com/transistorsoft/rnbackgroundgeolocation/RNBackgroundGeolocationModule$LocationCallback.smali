.class Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationCallback;
.super Ljava/lang/Object;
.source "RNBackgroundGeolocationModule.java"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;


# direct methods
.method private constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationCallback;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationCallback;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationCallback;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    invoke-static {v0, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->-$$Nest$monLocationError(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Ljava/lang/Integer;)V

    return-void
.end method

.method public onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 2

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$LocationCallback;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    const-string v1, "location"

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/location/TSLocation;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->jsonToMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->-$$Nest$msendEvent(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

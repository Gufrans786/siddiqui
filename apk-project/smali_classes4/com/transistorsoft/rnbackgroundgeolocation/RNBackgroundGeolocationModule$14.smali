.class Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$14;
.super Ljava/lang/Object;
.source "RNBackgroundGeolocationModule.java"

# interfaces
.implements Lcom/transistorsoft/locationmanager/adapter/callback/TSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;->watchPosition(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

.field final synthetic val$failure:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 623
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$14;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$14;->val$failure:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;)V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$14;->val$failure:Lcom/facebook/react/bridge/Callback;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public onLocation(Lcom/transistorsoft/locationmanager/location/TSLocation;)V
    .locals 2

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule$14;->this$0:Lcom/transistorsoft/rnbackgroundgeolocation/RNBackgroundGeolocationModule;

    const-string/jumbo v1, "watchposition"

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

    .line 628
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

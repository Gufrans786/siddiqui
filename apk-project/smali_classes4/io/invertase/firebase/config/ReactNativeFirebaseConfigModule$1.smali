.class Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$1;
.super Ljava/lang/Object;
.source "ReactNativeFirebaseConfigModule.java"

# interfaces
.implements Lcom/google/firebase/remoteconfig/ConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;->onConfigUpdated(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;

.field final synthetic val$appName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$1;->this$0:Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule;

    iput-object p2, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$1;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .locals 5

    .line 208
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 211
    const-string v2, "resultType"

    const-string v3, "error"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "appName"

    iget-object v3, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$1;->val$appName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;->getCode()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    move-result-object v2

    .line 215
    sget-object v3, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$2;->$SwitchMap$com$google$firebase$remoteconfig$FirebaseRemoteConfigException$Code:[I

    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const-string v4, "code"

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 233
    const-string v2, "internal"

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    const-string/jumbo v2, "unknown"

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    const-string v2, "config_update_unavailable"

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    const-string v2, "config_update_not_fetched"

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    const-string v2, "config_update_message_invalid"

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_4
    const-string v2, "config_update_stream_error"

    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    const-string v2, "message"

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "nativeErrorMessage"

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance p1, Lio/invertase/firebase/common/ReactNativeFirebaseEvent;

    const-string v2, "on_config_updated"

    iget-object v3, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$1;->val$appName:Ljava/lang/String;

    invoke-direct {p1, v2, v1, v3}, Lio/invertase/firebase/common/ReactNativeFirebaseEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void
.end method

.method public onUpdate(Lcom/google/firebase/remoteconfig/ConfigUpdate;)V
    .locals 4

    .line 190
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdate;->getUpdatedKeys()Ljava/util/Set;

    move-result-object p1

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-string v2, "appName"

    iget-object v3, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$1;->val$appName:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v2, "resultType"

    const-string/jumbo v3, "success"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v2, "updatedKeys"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v1, Lio/invertase/firebase/common/ReactNativeFirebaseEvent;

    .line 201
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object p1

    iget-object v2, p0, Lio/invertase/firebase/config/ReactNativeFirebaseConfigModule$1;->val$appName:Ljava/lang/String;

    const-string v3, "on_config_updated"

    invoke-direct {v1, v3, p1, v2}, Lio/invertase/firebase/common/ReactNativeFirebaseEvent;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v1}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void
.end method

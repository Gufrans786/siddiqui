.class public Lim/zego/RNZimReactnativeSdkModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNZimReactnativeSdkModule.java"


# static fields
.field private static final Prefix:Ljava/lang/String; = "im.zego.zim.reactnative."


# instance fields
.field private engineMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lim/zego/zim/ZIM;",
            ">;"
        }
    .end annotation
.end field

.field private engineMapForCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lim/zego/zim/ZIM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static bridge synthetic -$$Nest$msendAPIEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lim/zego/RNZimReactnativeSdkModule;->sendAPIEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lim/zego/RNZimReactnativeSdkModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 38
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMapForCallback:Ljava/util/HashMap;

    return-void
.end method

.method private sendAPIEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "im.zego.zim.reactnative."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMapForCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v1, "handle"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string p3, "data"

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 61
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class p3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p2, p3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "im.zego.zim.reactnative."

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public acceptFriendApplication(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6295
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6297
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6301
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;-><init>()V

    .line 6302
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 6303
    const-string v1, "friendAlias"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;->friendAlias:Ljava/lang/String;

    .line 6304
    const-string v1, "friendAttributes"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6305
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6306
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p3

    .line 6307
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6308
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6310
    :cond_2
    iput-object v2, v0, Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;->friendAttributes:Ljava/util/HashMap;

    .line 6313
    :cond_3
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$131;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$131;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->acceptFriendApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;Lim/zego/zim/callback/ZIMFriendApplicationAcceptedCallback;)V

    return-void
.end method

.method public acceptGroupInviteApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5185
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5187
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5191
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupInviteApplicationAcceptConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupInviteApplicationAcceptConfig;-><init>()V

    .line 5192
    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p4

    iput-object p4, v0, Lim/zego/zim/entity/ZIMGroupInviteApplicationAcceptConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5194
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$107;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$107;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->acceptGroupInviteApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupInviteApplicationAcceptConfig;Lim/zego/zim/callback/ZIMGroupInviteApplicationAcceptedCallback;)V

    return-void
.end method

.method public acceptGroupJoinApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5064
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5066
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5070
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupJoinApplicationAcceptConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupJoinApplicationAcceptConfig;-><init>()V

    .line 5071
    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p4

    iput-object p4, v0, Lim/zego/zim/entity/ZIMGroupJoinApplicationAcceptConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5073
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$104;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$104;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->acceptGroupJoinApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupJoinApplicationAcceptConfig;Lim/zego/zim/callback/ZIMGroupJoinApplicationAcceptedCallback;)V

    return-void
.end method

.method public addFriend(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6070
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6072
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6076
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFriendAddConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFriendAddConfig;-><init>()V

    .line 6077
    const-string/jumbo v1, "wording"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMFriendAddConfig;->wording:Ljava/lang/String;

    .line 6078
    const-string v1, "friendAlias"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iput-object v3, v0, Lim/zego/zim/entity/ZIMFriendAddConfig;->friendAlias:Ljava/lang/String;

    .line 6079
    const-string v1, "friendAttributes"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6080
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6081
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p3

    .line 6082
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6083
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6085
    :cond_3
    iput-object v2, v0, Lim/zego/zim/entity/ZIMFriendAddConfig;->friendAttributes:Ljava/util/HashMap;

    .line 6088
    :cond_4
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$125;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$125;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->addFriend(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendAddConfig;Lim/zego/zim/callback/ZIMFriendAddedCallback;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public addMessageReaction(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3056
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3058
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3062
    :cond_0
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p3

    .line 3063
    new-instance v0, Lim/zego/zim/entity/ZIMMessageReactionAddConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageReactionAddConfig;-><init>()V

    if-eqz p4, :cond_2

    .line 3065
    const-string v1, "increaseCount"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {v0, p4}, Lim/zego/zim/entity/ZIMMessageReactionAddConfig;->setIncreaseCount(I)V

    .line 3068
    :cond_2
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$52;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$52;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->addMessageReaction(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageReactionAddConfig;Lim/zego/zim/callback/ZIMMessageReactionAddedCallback;)V

    return-void
.end method

.method public addUsersToBlacklist(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6464
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6466
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6470
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6471
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6472
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6475
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$136;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$136;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->addUsersToBlacklist(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMBlacklistUsersAddedCallback;)V

    return-void
.end method

.method public beginRoomAttributesBatchOperation(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3882
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    return-void

    .line 3887
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;-><init>()V

    if-eqz p3, :cond_4

    .line 3889
    const-string v1, "isUpdateOwner"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;->isUpdateOwner:Z

    .line 3891
    const-string v1, "isDeleteAfterOwnerLeft"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;->isDeleteAfterOwnerLeft:Z

    .line 3892
    const-string v1, "isForce"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_3
    iput-boolean v3, v0, Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;->isForce:Z

    .line 3895
    :cond_4
    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->beginRoomAttributesBatchOperation(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;)V

    return-void
.end method

.method public callAccept(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5391
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5393
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5397
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMCallAcceptConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMCallAcceptConfig;-><init>()V

    if-eqz p3, :cond_2

    .line 5399
    const-string v1, "extendedData"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    iput-object p3, v0, Lim/zego/zim/entity/ZIMCallAcceptConfig;->extendedData:Ljava/lang/String;

    .line 5402
    :cond_2
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$112;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$112;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->callAccept(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallAcceptConfig;Lim/zego/zim/callback/ZIMCallAcceptanceSentCallback;)V

    return-void
.end method

.method public callCancel(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5348
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5350
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5354
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5355
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5356
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5359
    :cond_1
    new-instance p2, Lim/zego/zim/entity/ZIMCallCancelConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMCallCancelConfig;-><init>()V

    if-eqz p4, :cond_3

    .line 5361
    const-string v1, "extendedData"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    iput-object v1, p2, Lim/zego/zim/entity/ZIMCallCancelConfig;->extendedData:Ljava/lang/String;

    .line 5362
    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p4

    iput-object p4, p2, Lim/zego/zim/entity/ZIMCallCancelConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5365
    :cond_3
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$111;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$111;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2, p4}, Lim/zego/zim/ZIM;->callCancel(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMCallCancelConfig;Lim/zego/zim/callback/ZIMCallCancelSentCallback;)V

    return-void
.end method

.method public callEnd(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5489
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5491
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5495
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMCallEndConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMCallEndConfig;-><init>()V

    if-eqz p3, :cond_2

    .line 5497
    const-string v1, "extendedData"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMCallEndConfig;->extendedData:Ljava/lang/String;

    .line 5498
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p3

    iput-object p3, v0, Lim/zego/zim/entity/ZIMCallEndConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5501
    :cond_2
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$115;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$115;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->callEnd(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallEndConfig;Lim/zego/zim/callback/ZIMCallEndSentCallback;)V

    return-void
.end method

.method public callExperimentalAPI(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1093
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1095
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1099
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$3;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$3;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->callExperimentalAPI(Ljava/lang/String;Lim/zego/zim/callback/ZIMExperimentalAPICalledCallback;)V

    return-void
.end method

.method public callInvite(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5294
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5296
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5300
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5301
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5302
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5305
    :cond_1
    new-instance p2, Lim/zego/zim/entity/ZIMCallInviteConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMCallInviteConfig;-><init>()V

    if-eqz p3, :cond_6

    .line 5308
    const-string v1, "mode"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-static {v1}, Lim/zego/zim/enums/ZIMCallInvitationMode;->getZIMCallInvitationMode(I)Lim/zego/zim/enums/ZIMCallInvitationMode;

    move-result-object v1

    iput-object v1, p2, Lim/zego/zim/entity/ZIMCallInviteConfig;->mode:Lim/zego/zim/enums/ZIMCallInvitationMode;

    .line 5309
    const-string/jumbo v1, "timeout"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_3
    const/16 v1, 0x5a

    :goto_2
    iput v1, p2, Lim/zego/zim/entity/ZIMCallInviteConfig;->timeout:I

    .line 5310
    const-string v1, "extendedData"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, ""

    :goto_3
    iput-object v1, p2, Lim/zego/zim/entity/ZIMCallInviteConfig;->extendedData:Ljava/lang/String;

    .line 5311
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object v1

    iput-object v1, p2, Lim/zego/zim/entity/ZIMCallInviteConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5313
    const-string v1, "enableNotReceivedCheck"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_5
    iput-boolean v3, p2, Lim/zego/zim/entity/ZIMCallInviteConfig;->enableNotReceivedCheck:Z

    .line 5316
    :cond_6
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$110;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$110;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2, p3}, Lim/zego/zim/ZIM;->callInvite(Ljava/util/List;Lim/zego/zim/entity/ZIMCallInviteConfig;Lim/zego/zim/callback/ZIMCallInvitationSentCallback;)V

    return-void
.end method

.method public callJoin(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5525
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5527
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5531
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMCallJoinConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMCallJoinConfig;-><init>()V

    if-eqz p3, :cond_2

    .line 5533
    const-string v1, "extendedData"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    iput-object p3, v0, Lim/zego/zim/entity/ZIMCallJoinConfig;->extendedData:Ljava/lang/String;

    .line 5536
    :cond_2
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$116;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$116;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->callJoin(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallJoinConfig;Lim/zego/zim/callback/ZIMCallJoinSentCallback;)V

    return-void
.end method

.method public callQuit(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5453
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5455
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5459
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMCallQuitConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMCallQuitConfig;-><init>()V

    if-eqz p3, :cond_2

    .line 5461
    const-string v1, "extendedData"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMCallQuitConfig;->extendedData:Ljava/lang/String;

    .line 5462
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p3

    iput-object p3, v0, Lim/zego/zim/entity/ZIMCallQuitConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5465
    :cond_2
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$114;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$114;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->callQuit(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallQuitConfig;Lim/zego/zim/callback/ZIMCallQuitSentCallback;)V

    return-void
.end method

.method public callReject(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5422
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5424
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5428
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMCallRejectConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMCallRejectConfig;-><init>()V

    if-eqz p3, :cond_2

    .line 5430
    const-string v1, "extendedData"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    iput-object p3, v0, Lim/zego/zim/entity/ZIMCallRejectConfig;->extendedData:Ljava/lang/String;

    .line 5433
    :cond_2
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$113;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$113;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->callReject(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallRejectConfig;Lim/zego/zim/callback/ZIMCallRejectionSentCallback;)V

    return-void
.end method

.method public callingInvite(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5567
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5569
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5573
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5574
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5575
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5578
    :cond_1
    new-instance p2, Lim/zego/zim/entity/ZIMCallingInviteConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMCallingInviteConfig;-><init>()V

    if-eqz p4, :cond_2

    .line 5580
    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p4

    iput-object p4, p2, Lim/zego/zim/entity/ZIMCallingInviteConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5583
    :cond_2
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$117;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$117;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2, p4}, Lim/zego/zim/ZIM;->callingInvite(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMCallingInviteConfig;Lim/zego/zim/callback/ZIMCallingInvitationSentCallback;)V

    return-void
.end method

.method public cancelSendingMessage(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2718
    iget-object p3, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2720
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2724
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 2725
    new-instance p3, Lim/zego/zim/entity/ZIMSendingMessageCancelConfig;

    invoke-direct {p3}, Lim/zego/zim/entity/ZIMSendingMessageCancelConfig;-><init>()V

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$43;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$43;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->cancelSendingMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMSendingMessageCancelConfig;Lim/zego/zim/callback/ZIMSendingMessageCancelledCallback;)V

    return-void
.end method

.method public checkFriendsRelation(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6184
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6186
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6190
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFriendRelationCheckConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFriendRelationCheckConfig;-><init>()V

    .line 6192
    const-string/jumbo v1, "type"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lim/zego/zim/enums/ZIMFriendRelationCheckType;->getZIMFriendRelationCheckType(I)Lim/zego/zim/enums/ZIMFriendRelationCheckType;

    move-result-object p3

    iput-object p3, v0, Lim/zego/zim/entity/ZIMFriendRelationCheckConfig;->type:Lim/zego/zim/enums/ZIMFriendRelationCheckType;

    .line 6194
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 6195
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6196
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6199
    :cond_2
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$128;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$128;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p3, v0, p2}, Lim/zego/zim/ZIM;->checkFriendsRelation(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMFriendRelationCheckConfig;Lim/zego/zim/callback/ZIMFriendsRelationCheckedCallback;)V

    return-void
.end method

.method public checkUserIsInBlacklist(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6524
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6526
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6530
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$138;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$138;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->checkUserIsInBlacklist(Ljava/lang/String;Lim/zego/zim/callback/ZIMBlacklistCheckedCallback;)V

    return-void
.end method

.method public clearConversationTotalUnreadMessageCount(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2116
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2118
    const-string p1, "-1"

    const-string v0, "no instance"

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2122
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$31;

    invoke-direct {v0, p0, p2}, Lim/zego/RNZimReactnativeSdkModule$31;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0}, Lim/zego/zim/ZIM;->clearConversationTotalUnreadMessageCount(Lim/zego/zim/callback/ZIMConversationTotalUnreadMessageCountClearedCallback;)V

    return-void
.end method

.method public clearConversationUnreadMessageCount(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2083
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2085
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2091
    :cond_0
    invoke-static {p3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p3

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$30;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$30;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 2089
    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->clearConversationUnreadMessageCount(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationUnreadMessageCountClearedCallback;)V

    return-void
.end method

.method public clearLocalFileCache(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1463
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1465
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1469
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFileCacheClearConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFileCacheClearConfig;-><init>()V

    .line 1470
    const-string v1, "endTime"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lim/zego/zim/entity/ZIMFileCacheClearConfig;->endTime:J

    .line 1472
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$15;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$15;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->clearLocalFileCache(Lim/zego/zim/entity/ZIMFileCacheClearConfig;Lim/zego/zim/callback/ZIMFileCacheClearedCallback;)V

    return-void
.end method

.method public createEngine(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 136
    invoke-static {}, Lim/zego/zim/ZIM;->getInstance()Lim/zego/zim/ZIM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lim/zego/zim/ZIM;->destroy()V

    .line 141
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMAppConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMAppConfig;-><init>()V

    .line 142
    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lim/zego/zim/entity/ZIMAppConfig;->appID:J

    .line 143
    iput-object p3, v0, Lim/zego/zim/entity/ZIMAppConfig;->appSign:Ljava/lang/String;

    .line 145
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    invoke-static {v0, p2}, Lim/zego/zim/ZIM;->create(Lim/zego/zim/entity/ZIMAppConfig;Landroid/app/Application;)Lim/zego/zim/ZIM;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 147
    iget-object p3, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object p3, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMapForCallback:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance p1, Lim/zego/RNZimReactnativeSdkModule$1;

    invoke-direct {p1, p0}, Lim/zego/RNZimReactnativeSdkModule$1;-><init>(Lim/zego/RNZimReactnativeSdkModule;)V

    invoke-virtual {p2, p1}, Lim/zego/zim/ZIM;->setEventHandler(Lim/zego/zim/callback/ZIMEventHandler;)V

    :cond_1
    return-void
.end method

.method public createGroup(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4075
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4077
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4081
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$75;

    invoke-direct {v0, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$75;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 4101
    new-instance p5, Lim/zego/zim/entity/ZIMGroupInfo;

    invoke-direct {p5}, Lim/zego/zim/entity/ZIMGroupInfo;-><init>()V

    .line 4102
    const-string v1, "groupID"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p5, Lim/zego/zim/entity/ZIMGroupInfo;->groupID:Ljava/lang/String;

    .line 4103
    const-string v1, "groupName"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iput-object v1, p5, Lim/zego/zim/entity/ZIMGroupInfo;->groupName:Ljava/lang/String;

    .line 4104
    const-string v1, "groupAvatarUrl"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v3

    :goto_1
    iput-object p2, p5, Lim/zego/zim/entity/ZIMGroupInfo;->groupAvatarUrl:Ljava/lang/String;

    .line 4106
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4107
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4108
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_b

    .line 4112
    new-instance p3, Lim/zego/zim/entity/ZIMGroupAdvancedConfig;

    invoke-direct {p3}, Lim/zego/zim/entity/ZIMGroupAdvancedConfig;-><init>()V

    .line 4113
    const-string v1, "groupNotice"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    iput-object v3, p3, Lim/zego/zim/entity/ZIMGroupAdvancedConfig;->groupNotice:Ljava/lang/String;

    .line 4114
    const-string v1, "maxMemberCount"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    iput v1, p3, Lim/zego/zim/entity/ZIMGroupAdvancedConfig;->maxMemberCount:I

    .line 4116
    const-string v1, "joinMode"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    invoke-static {v1}, Lim/zego/zim/enums/ZIMGroupJoinMode;->getZIMGroupJoinMode(I)Lim/zego/zim/enums/ZIMGroupJoinMode;

    move-result-object v1

    iput-object v1, p3, Lim/zego/zim/entity/ZIMGroupAdvancedConfig;->joinMode:Lim/zego/zim/enums/ZIMGroupJoinMode;

    .line 4118
    const-string v1, "inviteMode"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    invoke-static {v1}, Lim/zego/zim/enums/ZIMGroupInviteMode;->getZIMGroupInviteMode(I)Lim/zego/zim/enums/ZIMGroupInviteMode;

    move-result-object v1

    iput-object v1, p3, Lim/zego/zim/entity/ZIMGroupAdvancedConfig;->inviteMode:Lim/zego/zim/enums/ZIMGroupInviteMode;

    .line 4121
    const-string v1, "beInviteMode"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 4120
    :cond_8
    invoke-static {v3}, Lim/zego/zim/enums/ZIMGroupBeInviteMode;->getZIMGroupBeInviteMode(I)Lim/zego/zim/enums/ZIMGroupBeInviteMode;

    move-result-object v1

    iput-object v1, p3, Lim/zego/zim/entity/ZIMGroupAdvancedConfig;->beInviteMode:Lim/zego/zim/enums/ZIMGroupBeInviteMode;

    .line 4124
    const-string v1, "groupAttributes"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4125
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4126
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p4

    invoke-interface {p4}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p4

    .line 4127
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4128
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 4131
    :cond_9
    iput-object v2, p3, Lim/zego/zim/entity/ZIMGroupAdvancedConfig;->groupAttributes:Ljava/util/HashMap;

    .line 4134
    :cond_a
    invoke-virtual {p1, p5, p2, p3, v0}, Lim/zego/zim/ZIM;->createGroup(Lim/zego/zim/entity/ZIMGroupInfo;Ljava/util/List;Lim/zego/zim/entity/ZIMGroupAdvancedConfig;Lim/zego/zim/callback/ZIMGroupCreatedCallback;)V

    return-void

    .line 4136
    :cond_b
    invoke-virtual {p1, p5, p2, v0}, Lim/zego/zim/ZIM;->createGroup(Lim/zego/zim/entity/ZIMGroupInfo;Ljava/util/List;Lim/zego/zim/callback/ZIMGroupCreatedCallback;)V

    return-void
.end method

.method public createRoom(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3413
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3415
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3419
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$59;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$59;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 3432
    new-instance p4, Lim/zego/zim/entity/ZIMRoomInfo;

    invoke-direct {p4}, Lim/zego/zim/entity/ZIMRoomInfo;-><init>()V

    .line 3433
    const-string v1, "roomID"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lim/zego/zim/entity/ZIMRoomInfo;->roomID:Ljava/lang/String;

    .line 3434
    const-string v1, "roomName"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    iput-object p2, p4, Lim/zego/zim/entity/ZIMRoomInfo;->roomName:Ljava/lang/String;

    if-eqz p3, :cond_5

    .line 3437
    new-instance p2, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;-><init>()V

    .line 3439
    const-string v1, "roomDestroyDelayTime"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput v1, p2, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;->roomDestroyDelayTime:I

    .line 3441
    const-string v1, "roomAttributes"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3442
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3443
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p3

    .line 3444
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3445
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3448
    :cond_3
    iput-object v2, p2, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;->roomAttributes:Ljava/util/HashMap;

    .line 3451
    :cond_4
    invoke-virtual {p1, p4, p2, v0}, Lim/zego/zim/ZIM;->createRoom(Lim/zego/zim/entity/ZIMRoomInfo;Lim/zego/zim/entity/ZIMRoomAdvancedConfig;Lim/zego/zim/callback/ZIMRoomCreatedCallback;)V

    return-void

    .line 3453
    :cond_5
    invoke-virtual {p1, p4, v0}, Lim/zego/zim/ZIM;->createRoom(Lim/zego/zim/entity/ZIMRoomInfo;Lim/zego/zim/callback/ZIMRoomCreatedCallback;)V

    return-void
.end method

.method public deleteAllConversationMessages(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2138
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2140
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2144
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMMessageDeleteConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageDeleteConfig;-><init>()V

    if-eqz p2, :cond_2

    .line 2147
    const-string v1, "isAlsoDeleteServerMessage"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, v0, Lim/zego/zim/entity/ZIMMessageDeleteConfig;->isAlsoDeleteServerMessage:Z

    .line 2150
    :cond_2
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$32;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$32;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->deleteAllConversationMessages(Lim/zego/zim/entity/ZIMMessageDeleteConfig;Lim/zego/zim/callback/ZIMConversationMessagesAllDeletedCallback;)V

    return-void
.end method

.method public deleteAllConversations(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1870
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1872
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1876
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMConversationDeleteConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMConversationDeleteConfig;-><init>()V

    if-eqz p2, :cond_2

    .line 1879
    const-string v1, "isAlsoDeleteServerConversation"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1880
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 1881
    :goto_0
    iput-boolean p2, v0, Lim/zego/zim/entity/ZIMConversationDeleteConfig;->isAlsoDeleteServerConversation:Z

    .line 1884
    :cond_2
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$25;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$25;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->deleteAllConversations(Lim/zego/zim/entity/ZIMConversationDeleteConfig;Lim/zego/zim/callback/ZIMConversationsAllDeletedCallback;)V

    return-void
.end method

.method public deleteAllMessage(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2424
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2426
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2430
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMMessageDeleteConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageDeleteConfig;-><init>()V

    if-eqz p4, :cond_2

    .line 2433
    const-string v1, "isAlsoDeleteServerMessage"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    iput-boolean p4, v0, Lim/zego/zim/entity/ZIMMessageDeleteConfig;->isAlsoDeleteServerMessage:Z

    .line 2438
    :cond_2
    invoke-static {p3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p3

    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$36;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$36;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 2436
    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->deleteAllMessage(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageDeleteConfig;Lim/zego/zim/callback/ZIMMessageDeletedCallback;)V

    return-void
.end method

.method public deleteConversation(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1828
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1830
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1834
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMConversationDeleteConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMConversationDeleteConfig;-><init>()V

    if-eqz p4, :cond_2

    .line 1837
    const-string v1, "isAlsoDeleteServerConversation"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1838
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    .line 1839
    :goto_0
    iput-boolean p4, v0, Lim/zego/zim/entity/ZIMConversationDeleteConfig;->isAlsoDeleteServerConversation:Z

    .line 1844
    :cond_2
    invoke-static {p3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p3

    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$24;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$24;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 1842
    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->deleteConversation(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMConversationDeleteConfig;Lim/zego/zim/callback/ZIMConversationDeletedCallback;)V

    return-void
.end method

.method public deleteFriends(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6150
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6152
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6156
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFriendDeleteConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFriendDeleteConfig;-><init>()V

    .line 6157
    const-string/jumbo v1, "type"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lim/zego/zim/enums/ZIMFriendDeleteType;->getZIMFriendDeleteType(I)Lim/zego/zim/enums/ZIMFriendDeleteType;

    move-result-object p3

    iput-object p3, v0, Lim/zego/zim/entity/ZIMFriendDeleteConfig;->type:Lim/zego/zim/enums/ZIMFriendDeleteType;

    .line 6159
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 6160
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6161
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6164
    :cond_2
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$127;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$127;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p3, v0, p2}, Lim/zego/zim/ZIM;->deleteFriends(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMFriendDeleteConfig;Lim/zego/zim/callback/ZIMFriendsDeletedCallback;)V

    return-void
.end method

.method public deleteGroupAttributes(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4528
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4530
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4534
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4535
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4536
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4539
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$88;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$88;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2}, Lim/zego/zim/ZIM;->deleteGroupAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesOperatedCallback;)V

    return-void
.end method

.method public deleteMessageAllReactions(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3117
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3119
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3123
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 3125
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$54;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$54;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->deleteMessageAllReactions(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageReactionsAllDeletedCallback;)V

    return-void
.end method

.method public deleteMessageReaction(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3089
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3091
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3095
    :cond_0
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p3

    .line 3097
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$53;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$53;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->deleteMessageReaction(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageReactionDeletedCallback;)V

    return-void
.end method

.method public deleteMessages(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2373
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lim/zego/zim/ZIM;

    if-nez v0, :cond_0

    .line 2375
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p6, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2379
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2380
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 2381
    check-cast p2, Ljava/util/HashMap;

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 2382
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2385
    :cond_1
    new-instance v4, Lim/zego/zim/entity/ZIMMessageDeleteConfig;

    invoke-direct {v4}, Lim/zego/zim/entity/ZIMMessageDeleteConfig;-><init>()V

    if-eqz p5, :cond_3

    .line 2388
    const-string p1, "isAlsoDeleteServerMessage"

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, v4, Lim/zego/zim/entity/ZIMMessageDeleteConfig;->isAlsoDeleteServerMessage:Z

    .line 2394
    :cond_3
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object v3

    new-instance v5, Lim/zego/RNZimReactnativeSdkModule$35;

    invoke-direct {v5, p0, p6}, Lim/zego/RNZimReactnativeSdkModule$35;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    move-object v2, p3

    .line 2391
    invoke-virtual/range {v0 .. v5}, Lim/zego/zim/ZIM;->deleteMessages(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageDeleteConfig;Lim/zego/zim/callback/ZIMMessageDeletedCallback;)V

    return-void
.end method

.method public deleteRoomAttributes(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3840
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3842
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3846
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3847
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3848
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3851
    :cond_1
    new-instance p2, Lim/zego/zim/entity/ZIMRoomAttributesDeleteConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMRoomAttributesDeleteConfig;-><init>()V

    if-eqz p4, :cond_3

    .line 3853
    const-string v1, "isForce"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    iput-boolean p4, p2, Lim/zego/zim/entity/ZIMRoomAttributesDeleteConfig;->isForce:Z

    .line 3856
    :cond_3
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$70;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$70;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2, p4}, Lim/zego/zim/ZIM;->deleteRoomAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomAttributesDeleteConfig;Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;)V

    return-void
.end method

.method public destroyEngine(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1060
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zim/ZIM;

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {v0}, Lim/zego/zim/ZIM;->destroy()V

    .line 1064
    iget-object v1, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMapForCallback:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dismissGroup(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4192
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4194
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4198
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$78;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$78;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->dismissGroup(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupDismissedCallback;)V

    return-void
.end method

.method public downloadMediaFile(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;ILcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2519
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2521
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p6, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2525
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 2526
    new-instance v0, Lim/zego/zim/entity/ZIMMediaDownloadConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMediaDownloadConfig;-><init>()V

    .line 2527
    const-string v1, "messageInfoIndex"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iput p4, v0, Lim/zego/zim/entity/ZIMMediaDownloadConfig;->messageInfoIndex:I

    .line 2531
    invoke-static {p3}, Lim/zego/zim/enums/ZIMMediaFileType;->getZIMMediaFileType(I)Lim/zego/zim/enums/ZIMMediaFileType;

    move-result-object p3

    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$38;

    invoke-direct {p4, p0, p6, p5}, Lim/zego/RNZimReactnativeSdkModule$38;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    .line 2529
    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->downloadMediaFile(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/enums/ZIMMediaFileType;Lim/zego/zim/entity/ZIMMediaDownloadConfig;Lim/zego/zim/callback/ZIMMediaDownloadedCallback;)V

    return-void
.end method

.method public editMessage(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2282
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2284
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2288
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 2289
    new-instance v0, Lim/zego/zim/entity/ZIMMessageEditConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageEditConfig;-><init>()V

    .line 2291
    new-instance v1, Lim/zego/RNZimReactnativeSdkModule$34;

    invoke-direct {v1, p0, p4, p3}, Lim/zego/RNZimReactnativeSdkModule$34;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v1}, Lim/zego/zim/ZIM;->editMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageEditConfig;Lim/zego/zim/callback/ZIMMessageSentFullCallback;)V

    return-void
.end method

.method public endRoomAttributesBatchOperation(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3900
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3902
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3906
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$71;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$71;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->endRoomAttributesBatchOperation(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomAttributesBatchOperatedCallback;)V

    return-void
.end method

.method public enterRoom(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3459
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3461
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3465
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMRoomInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMRoomInfo;-><init>()V

    .line 3466
    const-string v1, "roomID"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMRoomInfo;->roomID:Ljava/lang/String;

    .line 3467
    const-string v1, "roomName"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    iput-object p2, v0, Lim/zego/zim/entity/ZIMRoomInfo;->roomName:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 3471
    new-instance p2, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;-><init>()V

    .line 3473
    const-string v1, "roomDestroyDelayTime"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput v1, p2, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;->roomDestroyDelayTime:I

    .line 3475
    const-string v1, "roomAttributes"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3476
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3477
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p3

    .line 3478
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3479
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3482
    :cond_3
    iput-object v2, p2, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;->roomAttributes:Ljava/util/HashMap;

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    .line 3486
    :cond_5
    :goto_3
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$60;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$60;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2, p3}, Lim/zego/zim/ZIM;->enterRoom(Lim/zego/zim/entity/ZIMRoomInfo;Lim/zego/zim/entity/ZIMRoomAdvancedConfig;Lim/zego/zim/callback/ZIMRoomEnteredCallback;)V

    return-void
.end method

.method public exportLocalMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2606
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2608
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2612
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMMessageExportConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageExportConfig;-><init>()V

    new-instance v1, Lim/zego/RNZimReactnativeSdkModule$40;

    invoke-direct {v1, p0, p4, p3}, Lim/zego/RNZimReactnativeSdkModule$40;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v1}, Lim/zego/zim/ZIM;->exportLocalMessages(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageExportConfig;Lim/zego/zim/callback/ZIMMessageExportedCallback;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    const-string v1, "prefix"

    const-string v2, "im.zego.zim.reactnative."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "ZIMNativeModule"

    return-object v0
.end method

.method public getVersion(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 79
    invoke-static {}, Lim/zego/zim/ZIM;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public importLocalMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2569
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2571
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2575
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMMessageImportConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageImportConfig;-><init>()V

    new-instance v1, Lim/zego/RNZimReactnativeSdkModule$39;

    invoke-direct {v1, p0, p4, p3}, Lim/zego/RNZimReactnativeSdkModule$39;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v1}, Lim/zego/zim/ZIM;->importLocalMessages(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageImportConfig;Lim/zego/zim/callback/ZIMMessageImportedCallback;)V

    return-void
.end method

.method public insertMessageToLocalDB(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2650
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lim/zego/zim/ZIM;

    if-nez v0, :cond_0

    .line 2652
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p6, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2656
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v1

    .line 2660
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object v3

    new-instance v5, Lim/zego/RNZimReactnativeSdkModule$41;

    invoke-direct {v5, p0, p6}, Lim/zego/RNZimReactnativeSdkModule$41;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    move-object v2, p3

    move-object v4, p5

    .line 2657
    invoke-virtual/range {v0 .. v5}, Lim/zego/zim/ZIM;->insertMessageToLocalDB(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Ljava/lang/String;Lim/zego/zim/callback/ZIMMessageInsertedCallback;)V

    return-void
.end method

.method public inviteUsersIntoGroup(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4788
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4790
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4794
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4795
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4796
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4799
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$96;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$96;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2}, Lim/zego/zim/ZIM;->inviteUsersIntoGroup(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupUsersInvitedCallback;)V

    return-void
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4142
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4144
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4148
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$76;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$76;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->joinGroup(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupJoinedCallback;)V

    return-void
.end method

.method public joinRoom(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3506
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3508
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3512
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$61;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$61;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->joinRoom(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomJoinedCallback;)V

    return-void
.end method

.method public kickGroupMembers(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4826
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4828
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4832
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4833
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4834
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4837
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$97;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$97;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2}, Lim/zego/zim/ZIM;->kickGroupMembers(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberKickedCallback;)V

    return-void
.end method

.method public leaveAllRoom(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3607
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3609
    const-string p1, "-1"

    const-string v0, "no instance"

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3613
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$64;

    invoke-direct {v0, p0, p2}, Lim/zego/RNZimReactnativeSdkModule$64;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0}, Lim/zego/zim/ZIM;->leaveAllRoom(Lim/zego/zim/callback/ZIMRoomAllLeftCallback;)V

    return-void
.end method

.method public leaveGroup(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4167
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4169
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4173
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$77;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$77;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->leaveGroup(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupLeftCallback;)V

    return-void
.end method

.method public leaveRoom(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3582
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3584
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3588
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$63;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$63;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->leaveRoom(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomLeftCallback;)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1116
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1118
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1122
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMLoginConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMLoginConfig;-><init>()V

    .line 1123
    const-string/jumbo v1, "userName"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMLoginConfig;->userName:Ljava/lang/String;

    .line 1124
    const-string v1, "customStatus"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    iput-object v1, v0, Lim/zego/zim/entity/ZIMLoginConfig;->customStatus:Ljava/lang/String;

    .line 1125
    const-string/jumbo v1, "token"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    iput-object v3, v0, Lim/zego/zim/entity/ZIMLoginConfig;->token:Ljava/lang/String;

    .line 1126
    const-string v1, "isOfflineLogin"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, v0, Lim/zego/zim/entity/ZIMLoginConfig;->isOfflineLogin:Z

    .line 1128
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$4;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$4;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->login(Ljava/lang/String;Lim/zego/zim/entity/ZIMLoginConfig;Lim/zego/zim/callback/ZIMLoggedInCallback;)V

    return-void
.end method

.method public logout(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1146
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1148
    const-string p1, "-1"

    const-string v0, "no instance"

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1152
    :cond_0
    invoke-virtual {p1}, Lim/zego/zim/ZIM;->logout()V

    const/4 p1, 0x0

    .line 1154
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public muteGroup(Ljava/lang/String;ZLjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4339
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4341
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4345
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupMuteConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupMuteConfig;-><init>()V

    .line 4346
    const-string v1, "mode"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {v1}, Lim/zego/zim/enums/ZIMGroupMuteMode;->getZIMGroupMuteMode(I)Lim/zego/zim/enums/ZIMGroupMuteMode;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMGroupMuteConfig;->mode:Lim/zego/zim/enums/ZIMGroupMuteMode;

    .line 4347
    const-string v1, "duration"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    iput v3, v0, Lim/zego/zim/entity/ZIMGroupMuteConfig;->duration:I

    .line 4348
    const-string v1, "roles"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4350
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p4

    invoke-interface {p4}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4351
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4353
    :cond_3
    iput-object v2, v0, Lim/zego/zim/entity/ZIMGroupMuteConfig;->roles:Ljava/util/ArrayList;

    .line 4356
    :cond_4
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$83;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$83;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->muteGroup(ZLjava/lang/String;Lim/zego/zim/entity/ZIMGroupMuteConfig;Lim/zego/zim/callback/ZIMGroupMutedCallback;)V

    return-void
.end method

.method public muteGroupMembers(Ljava/lang/String;ZLcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4386
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lim/zego/zim/ZIM;

    if-nez v0, :cond_0

    .line 4388
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p6, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4392
    :cond_0
    new-instance v4, Lim/zego/zim/entity/ZIMGroupMemberMuteConfig;

    invoke-direct {v4}, Lim/zego/zim/entity/ZIMGroupMemberMuteConfig;-><init>()V

    .line 4393
    const-string p1, "duration"

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, v4, Lim/zego/zim/entity/ZIMGroupMemberMuteConfig;->duration:I

    .line 4395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4396
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 4397
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4400
    :cond_2
    new-instance v5, Lim/zego/RNZimReactnativeSdkModule$84;

    invoke-direct {v5, p0, p6}, Lim/zego/RNZimReactnativeSdkModule$84;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    move v1, p2

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lim/zego/zim/ZIM;->muteGroupMembers(ZLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberMuteConfig;Lim/zego/zim/callback/ZIMGroupMembersMutedCallback;)V

    return-void
.end method

.method public pinMessage(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2994
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2996
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3000
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 3001
    new-instance v0, Lim/zego/zim/entity/ZIMMessagePinConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessagePinConfig;-><init>()V

    if-eqz p4, :cond_2

    .line 3003
    const-string v1, "disableAutoReplace"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, v0, Lim/zego/zim/entity/ZIMMessagePinConfig;->disableAutoReplace:Z

    .line 3006
    :cond_2
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$50;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$50;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->pinMessage(Lim/zego/zim/entity/ZIMMessage;ZLim/zego/zim/entity/ZIMMessagePinConfig;Lim/zego/zim/callback/ZIMMessagePinnedCallback;)V

    return-void
.end method

.method public queryBlacklist(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6549
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6551
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6555
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMBlacklistQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMBlacklistQueryConfig;-><init>()V

    .line 6556
    const-string v1, "count"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMBlacklistQueryConfig;->count:I

    .line 6557
    const-string v1, "nextFlag"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    iput v3, v0, Lim/zego/zim/entity/ZIMBlacklistQueryConfig;->nextFlag:I

    .line 6559
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$139;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$139;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryBlacklist(Lim/zego/zim/entity/ZIMBlacklistQueryConfig;Lim/zego/zim/callback/ZIMBlacklistQueriedCallback;)V

    return-void
.end method

.method public queryCallInvitationList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5613
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5615
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5619
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;-><init>()V

    if-eqz p2, :cond_3

    .line 5621
    const-string v1, "count"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;->count:I

    .line 5623
    const-string v1, "nextFlag"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    iput-wide v1, v0, Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;->nextFlag:J

    .line 5626
    :cond_3
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$118;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$118;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryCallInvitationList(Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;Lim/zego/zim/callback/ZIMCallInvitationListQueriedCallback;)V

    return-void
.end method

.method public queryCombineMessageDetail(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2967
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2969
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2973
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    check-cast p2, Lim/zego/zim/entity/ZIMCombineMessage;

    .line 2975
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$49;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$49;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->queryCombineMessageDetail(Lim/zego/zim/entity/ZIMCombineMessage;Lim/zego/zim/callback/ZIMCombineMessageDetailQueriedCallback;)V

    return-void
.end method

.method public queryConversation(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1639
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1641
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1647
    :cond_0
    invoke-static {p3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p3

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$20;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$20;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 1645
    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->queryConversation(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationQueriedCallback;)V

    return-void
.end method

.method public queryConversationList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1665
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1667
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1671
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMConversationQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMConversationQueryConfig;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 1673
    const-string v2, "count"

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput v2, v0, Lim/zego/zim/entity/ZIMConversationQueryConfig;->count:I

    .line 1675
    const-string v2, "nextConversation"

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1676
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertConversationFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMConversation;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 1677
    :goto_1
    iput-object p2, v0, Lim/zego/zim/entity/ZIMConversationQueryConfig;->nextConversation:Lim/zego/zim/entity/ZIMConversation;

    .line 1680
    :cond_3
    new-instance p2, Lim/zego/zim/entity/ZIMConversationFilterOption;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMConversationFilterOption;-><init>()V

    if-eqz p3, :cond_9

    .line 1683
    const-string v2, "isOnlyUnreadConversation"

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_4
    iput-boolean v1, p2, Lim/zego/zim/entity/ZIMConversationFilterOption;->isOnlyUnreadConversation:Z

    .line 1684
    const-string v1, "pinnedFilter"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1685
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->getZIMConversationPinnedFilter(I)Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    move-result-object v1

    iput-object v1, p2, Lim/zego/zim/entity/ZIMConversationFilterOption;->pinnedFilter:Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    .line 1688
    :cond_5
    const-string v1, "marks"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1689
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1691
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1693
    :cond_6
    iput-object v2, p2, Lim/zego/zim/entity/ZIMConversationFilterOption;->marks:Ljava/util/ArrayList;

    .line 1696
    :cond_7
    const-string v1, "conversationTypes"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1697
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1698
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1699
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1701
    :cond_8
    iput-object v2, p2, Lim/zego/zim/entity/ZIMConversationFilterOption;->conversationTypes:Ljava/util/ArrayList;

    .line 1705
    :cond_9
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$21;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$21;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2, p3}, Lim/zego/zim/ZIM;->queryConversationList(Lim/zego/zim/entity/ZIMConversationQueryConfig;Lim/zego/zim/entity/ZIMConversationFilterOption;Lim/zego/zim/callback/ZIMConversationListQueriedCallback;)V

    return-void
.end method

.method public queryConversationPinnedList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1732
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1734
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1738
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMConversationQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMConversationQueryConfig;-><init>()V

    if-eqz p2, :cond_3

    .line 1740
    const-string v1, "count"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMConversationQueryConfig;->count:I

    .line 1742
    const-string v1, "nextConversation"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1743
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertConversationFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMConversation;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 1744
    :goto_1
    iput-object p2, v0, Lim/zego/zim/entity/ZIMConversationQueryConfig;->nextConversation:Lim/zego/zim/entity/ZIMConversation;

    .line 1747
    :cond_3
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$22;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$22;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryConversationPinnedList(Lim/zego/zim/entity/ZIMConversationQueryConfig;Lim/zego/zim/callback/ZIMConversationPinnedListQueriedCallback;)V

    return-void
.end method

.method public queryConversationTotalUnreadMessageCount(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1776
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1778
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1782
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMConversationTotalUnreadMessageCountQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMConversationTotalUnreadMessageCountQueryConfig;-><init>()V

    if-eqz p2, :cond_4

    .line 1785
    const-string v1, "marks"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1786
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1788
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1790
    :cond_1
    iput-object v2, v0, Lim/zego/zim/entity/ZIMConversationTotalUnreadMessageCountQueryConfig;->marks:Ljava/util/ArrayList;

    .line 1793
    :cond_2
    const-string v1, "conversationTypes"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1794
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1796
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1798
    :cond_3
    iput-object v2, v0, Lim/zego/zim/entity/ZIMConversationTotalUnreadMessageCountQueryConfig;->conversationTypes:Ljava/util/ArrayList;

    .line 1802
    :cond_4
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$23;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$23;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryConversationTotalUnreadMessageCount(Lim/zego/zim/entity/ZIMConversationTotalUnreadMessageCountQueryConfig;Lim/zego/zim/callback/ZIMConversationTotalUnreadMessageCountQueriedCallback;)V

    return-void
.end method

.method public queryFriendApplicationList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6427
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6429
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6433
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFriendApplicationListQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFriendApplicationListQueryConfig;-><init>()V

    .line 6434
    const-string v1, "count"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMFriendApplicationListQueryConfig;->count:I

    .line 6435
    const-string v1, "nextFlag"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    iput v3, v0, Lim/zego/zim/entity/ZIMFriendApplicationListQueryConfig;->nextFlag:I

    .line 6437
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$135;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$135;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryFriendApplicationList(Lim/zego/zim/entity/ZIMFriendApplicationListQueryConfig;Lim/zego/zim/callback/ZIMFriendApplicationListQueriedCallback;)V

    return-void
.end method

.method public queryFriendList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6397
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6399
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6403
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFriendListQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFriendListQueryConfig;-><init>()V

    .line 6404
    const-string v1, "count"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMFriendListQueryConfig;->count:I

    .line 6405
    const-string v1, "nextFlag"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    iput v3, v0, Lim/zego/zim/entity/ZIMFriendListQueryConfig;->nextFlag:I

    .line 6407
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$134;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$134;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryFriendList(Lim/zego/zim/entity/ZIMFriendListQueryConfig;Lim/zego/zim/callback/ZIMFriendListQueriedCallback;)V

    return-void
.end method

.method public queryFriendsInfo(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6362
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6364
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6368
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6369
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6370
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6373
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$133;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$133;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryFriendsInfo(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMFriendsInfoQueriedCallback;)V

    return-void
.end method

.method public queryGroupAllAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4604
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4606
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4610
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$90;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$90;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->queryGroupAllAttributes(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesQueriedCallback;)V

    return-void
.end method

.method public queryGroupApplicationList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5257
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5259
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5263
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupApplicationListQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupApplicationListQueryConfig;-><init>()V

    .line 5264
    const-string v1, "count"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMGroupApplicationListQueryConfig;->count:I

    .line 5265
    const-string v1, "nextFlag"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    iput v3, v0, Lim/zego/zim/entity/ZIMGroupApplicationListQueryConfig;->nextFlag:I

    .line 5267
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$109;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$109;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryGroupApplicationList(Lim/zego/zim/entity/ZIMGroupApplicationListQueryConfig;Lim/zego/zim/callback/ZIMGroupApplicationListQueriedCallback;)V

    return-void
.end method

.method public queryGroupAttributes(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4564
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4566
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4570
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4571
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4572
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4575
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$89;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$89;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2}, Lim/zego/zim/ZIM;->queryGroupAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesQueriedCallback;)V

    return-void
.end method

.method public queryGroupInfo(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4440
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4442
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4446
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$85;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$85;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->queryGroupInfo(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupInfoQueriedCallback;)V

    return-void
.end method

.method public queryGroupList(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4217
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4219
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4223
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$79;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$79;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    if-eqz p3, :cond_4

    .line 4239
    new-instance p4, Lim/zego/zim/entity/ZIMGroupListQueryConfig;

    invoke-direct {p4}, Lim/zego/zim/entity/ZIMGroupListQueryConfig;-><init>()V

    .line 4240
    const-string v1, "nextFlag"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, p4, Lim/zego/zim/entity/ZIMGroupListQueryConfig;->nextFlag:J

    .line 4242
    const-string/jumbo v1, "userIDs"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4244
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4245
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4247
    :cond_2
    iput-object v2, p4, Lim/zego/zim/entity/ZIMGroupListQueryConfig;->userIDs:Ljava/util/ArrayList;

    .line 4250
    :cond_3
    invoke-virtual {p1, p2, p4, v0}, Lim/zego/zim/ZIM;->queryGroupList(ILim/zego/zim/entity/ZIMGroupListQueryConfig;Lim/zego/zim/callback/ZIMGroupListQueriedCallback;)V

    return-void

    .line 4252
    :cond_4
    invoke-virtual {p1, v0}, Lim/zego/zim/ZIM;->queryGroupList(Lim/zego/zim/callback/ZIMGroupListQueriedCallback;)V

    return-void
.end method

.method public queryGroupMemberCount(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4465
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4467
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4471
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$86;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$86;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->queryGroupMemberCount(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberCountQueriedCallback;)V

    return-void
.end method

.method public queryGroupMemberInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4761
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4763
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4767
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$95;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$95;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->queryGroupMemberInfo(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberInfoQueriedCallback;)V

    return-void
.end method

.method public queryGroupMemberList(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4868
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4870
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4874
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;-><init>()V

    if-eqz p3, :cond_3

    .line 4876
    const-string v1, "count"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;->count:I

    .line 4877
    const-string v1, "nextFlag"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    iput v3, v0, Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;->nextFlag:I

    .line 4880
    :cond_3
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$98;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$98;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->queryGroupMemberList(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;Lim/zego/zim/callback/ZIMGroupMemberListQueriedCallback;)V

    return-void
.end method

.method public queryGroupMemberMutedList(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4907
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4909
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4913
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;-><init>()V

    if-eqz p3, :cond_3

    .line 4915
    const-string v1, "count"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;->count:I

    .line 4917
    const-string v1, "nextFlag"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    iput-wide v1, v0, Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;->nextFlag:J

    .line 4920
    :cond_3
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$99;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$99;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->queryGroupMemberMutedList(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;Lim/zego/zim/callback/ZIMGroupMemberMutedListQueriedCallback;)V

    return-void
.end method

.method public queryGroupMessageReceiptMemberList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2889
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2891
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p6, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2895
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 2896
    new-instance v0, Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;-><init>()V

    if-eqz p4, :cond_3

    .line 2898
    const-string v1, "count"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;->count:I

    .line 2899
    const-string v1, "nextFlag"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    iput v3, v0, Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;->nextFlag:I

    .line 2902
    :cond_3
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$47;

    invoke-direct {p4, p0, p6}, Lim/zego/RNZimReactnativeSdkModule$47;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    if-eqz p5, :cond_4

    .line 2925
    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->queryGroupMessageReceiptReadMemberList(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;Lim/zego/zim/callback/ZIMGroupMessageReceiptMemberListQueriedCallback;)V

    return-void

    .line 2927
    :cond_4
    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->queryGroupMessageReceiptUnreadMemberList(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;Lim/zego/zim/callback/ZIMGroupMessageReceiptMemberListQueriedCallback;)V

    return-void
.end method

.method public queryHistoryMessage(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2468
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2470
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2474
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMMessageQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageQueryConfig;-><init>()V

    if-eqz p4, :cond_4

    .line 2476
    const-string v1, "count"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMMessageQueryConfig;->count:I

    .line 2477
    const-string v1, "reverse"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_2
    iput-boolean v3, v0, Lim/zego/zim/entity/ZIMMessageQueryConfig;->reverse:Z

    .line 2479
    const-string v1, "nextMessage"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2480
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p4

    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p4

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    .line 2481
    :goto_1
    iput-object p4, v0, Lim/zego/zim/entity/ZIMMessageQueryConfig;->nextMessage:Lim/zego/zim/entity/ZIMMessage;

    .line 2486
    :cond_4
    invoke-static {p3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p3

    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$37;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$37;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 2484
    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->queryHistoryMessage(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageQueryConfig;Lim/zego/zim/callback/ZIMMessageQueriedCallback;)V

    return-void
.end method

.method public queryLocalFileCache(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1434
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1436
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1440
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFileCacheQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFileCacheQueryConfig;-><init>()V

    .line 1441
    const-string v1, "endTime"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lim/zego/zim/entity/ZIMFileCacheQueryConfig;->endTime:J

    .line 1443
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$14;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$14;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryLocalFileCache(Lim/zego/zim/entity/ZIMFileCacheQueryConfig;Lim/zego/zim/callback/ZIMFileCacheQueriedCallback;)V

    return-void
.end method

.method public queryMessageReactionUserList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3147
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3149
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3153
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 3154
    new-instance v0, Lim/zego/zim/entity/ZIMMessageReactionUserQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageReactionUserQueryConfig;-><init>()V

    if-eqz p3, :cond_4

    .line 3156
    const-string v1, "reactionType"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMMessageReactionUserQueryConfig;->reactionType:Ljava/lang/String;

    .line 3157
    const-string v1, "count"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lim/zego/zim/entity/ZIMMessageReactionUserQueryConfig;->count:I

    .line 3159
    const-string v1, "nextFlag"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    :goto_2
    iput-wide v1, v0, Lim/zego/zim/entity/ZIMMessageReactionUserQueryConfig;->nextFlag:J

    .line 3162
    :cond_4
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$55;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$55;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->queryMessageReactionUserList(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageReactionUserQueryConfig;Lim/zego/zim/callback/ZIMMessageReactionUserListQueriedCallback;)V

    return-void
.end method

.method public queryMessageReceiptsInfo(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2837
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2839
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2843
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2844
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2845
    check-cast v1, Ljava/util/HashMap;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v1

    .line 2846
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2852
    :cond_1
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p2

    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$46;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$46;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 2849
    invoke-virtual {p1, v0, p3, p2, p4}, Lim/zego/zim/ZIM;->queryMessageReceiptsInfo(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMMessageReceiptsInfoQueriedCallback;)V

    return-void
.end method

.method public queryMessageRepliedList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3316
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3318
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3322
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 3323
    new-instance v0, Lim/zego/zim/entity/ZIMMessageRepliedListQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageRepliedListQueryConfig;-><init>()V

    if-eqz p3, :cond_3

    .line 3325
    const-string v1, "count"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMMessageRepliedListQueryConfig;->count:I

    .line 3327
    const-string v1, "nextFlag"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    iput-wide v1, v0, Lim/zego/zim/entity/ZIMMessageRepliedListQueryConfig;->nextFlag:J

    .line 3330
    :cond_3
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$57;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$57;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->queryMessageRepliedList(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageRepliedListQueryConfig;Lim/zego/zim/callback/ZIMMessageRepliedListQueriedCallback;)V

    return-void
.end method

.method public queryMessages(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3373
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3375
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3379
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3380
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3381
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3387
    :cond_1
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p2

    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$58;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$58;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 3384
    invoke-virtual {p1, v0, p3, p2, p4}, Lim/zego/zim/ZIM;->queryMessages(Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMMessageQueriedCallback;)V

    return-void
.end method

.method public queryPinnedMessageList(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3030
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3032
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3038
    :cond_0
    invoke-static {p3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p3

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$51;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$51;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 3036
    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->queryPinnedMessageList(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMPinnedMessageListQueriedCallback;)V

    return-void
.end method

.method public queryRoomAllAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3749
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3751
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3755
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$68;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$68;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->queryRoomAllAttributes(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomAttributesQueriedCallback;)V

    return-void
.end method

.method public queryRoomMemberAttributesList(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4028
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4030
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4034
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMRoomMemberAttributesQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMRoomMemberAttributesQueryConfig;-><init>()V

    .line 4035
    const-string v1, "count"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMRoomMemberAttributesQueryConfig;->count:I

    .line 4036
    const-string v1, "nextFlag"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, ""

    :goto_1
    iput-object p3, v0, Lim/zego/zim/entity/ZIMRoomMemberAttributesQueryConfig;->nextFlag:Ljava/lang/String;

    .line 4038
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$74;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$74;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->queryRoomMemberAttributesList(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomMemberAttributesQueryConfig;Lim/zego/zim/callback/ZIMRoomMemberAttributesListQueriedCallback;)V

    return-void
.end method

.method public queryRoomMemberList(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3637
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3639
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3643
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMRoomMemberQueryConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMRoomMemberQueryConfig;-><init>()V

    if-eqz p3, :cond_3

    .line 3645
    const-string v1, "count"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMRoomMemberQueryConfig;->count:I

    .line 3646
    const-string v1, "nextFlag"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, ""

    :goto_1
    iput-object p3, v0, Lim/zego/zim/entity/ZIMRoomMemberQueryConfig;->nextFlag:Ljava/lang/String;

    .line 3649
    :cond_3
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$65;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$65;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->queryRoomMemberList(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomMemberQueryConfig;Lim/zego/zim/callback/ZIMRoomMemberQueriedCallback;)V

    return-void
.end method

.method public queryRoomMembers(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3678
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3680
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3684
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3685
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3686
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3689
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$66;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$66;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2}, Lim/zego/zim/ZIM;->queryRoomMembers(Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomMembersQueriedCallback;)V

    return-void
.end method

.method public queryRoomMembersAttributes(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3989
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3991
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3995
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3996
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3997
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4000
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$73;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$73;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2}, Lim/zego/zim/ZIM;->queryRoomMembersAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomMembersAttributesQueriedCallback;)V

    return-void
.end method

.method public queryRoomOnlineMemberCount(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3723
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3725
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3729
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$67;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$67;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->queryRoomOnlineMemberCount(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomOnlineMemberCountQueriedCallback;)V

    return-void
.end method

.method public querySelfUserInfo(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1404
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1406
    const-string p1, "-1"

    const-string v0, "no instance"

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1410
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$13;

    invoke-direct {v0, p0, p2}, Lim/zego/RNZimReactnativeSdkModule$13;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0}, Lim/zego/zim/ZIM;->querySelfUserInfo(Lim/zego/zim/callback/ZIMSelfUserInfoQueriedCallback;)V

    return-void
.end method

.method public querySubscribedUsersStatus(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1592
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1594
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1598
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1599
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1600
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1603
    :cond_1
    new-instance p2, Lim/zego/zim/entity/ZIMSubscribedUserStatusQueryConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMSubscribedUserStatusQueryConfig;-><init>()V

    .line 1604
    iput-object v0, p2, Lim/zego/zim/entity/ZIMSubscribedUserStatusQueryConfig;->userIDs:Ljava/util/ArrayList;

    .line 1606
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$19;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$19;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->querySubscribedUserStatusList(Lim/zego/zim/entity/ZIMSubscribedUserStatusQueryConfig;Lim/zego/zim/callback/ZIMSubscribedUserStatusListQueriedCallback;)V

    return-void
.end method

.method public queryUsersInfo(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1184
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1186
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1192
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1195
    :cond_1
    new-instance p2, Lim/zego/zim/entity/ZIMUsersInfoQueryConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMUsersInfoQueryConfig;-><init>()V

    if-eqz p3, :cond_3

    .line 1198
    const-string v1, "isQueryFromServer"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p2, Lim/zego/zim/entity/ZIMUsersInfoQueryConfig;->isQueryFromServer:Z

    .line 1201
    :cond_3
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$6;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$6;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2, p3}, Lim/zego/zim/ZIM;->queryUsersInfo(Ljava/util/List;Lim/zego/zim/entity/ZIMUsersInfoQueryConfig;Lim/zego/zim/callback/ZIMUsersInfoQueriedCallback;)V

    return-void
.end method

.method public queryUsersStatus(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1550
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1552
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1556
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1557
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1558
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1561
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$18;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$18;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->queryUsersStatus(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMUsersStatusQueriedCallback;)V

    return-void
.end method

.method public rejectFriendApplication(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6333
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6335
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6339
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFriendApplicationRejectConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFriendApplicationRejectConfig;-><init>()V

    .line 6340
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p3

    iput-object p3, v0, Lim/zego/zim/entity/ZIMFriendApplicationRejectConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 6342
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$132;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$132;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->rejectFriendApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendApplicationRejectConfig;Lim/zego/zim/callback/ZIMFriendApplicationRejectedCallback;)V

    return-void
.end method

.method public rejectGroupInviteApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5226
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5228
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5232
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupInviteApplicationRejectConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupInviteApplicationRejectConfig;-><init>()V

    .line 5233
    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p4

    iput-object p4, v0, Lim/zego/zim/entity/ZIMGroupInviteApplicationRejectConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5235
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$108;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$108;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->rejectGroupInviteApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupInviteApplicationRejectConfig;Lim/zego/zim/callback/ZIMGroupInviteApplicationRejectedCallback;)V

    return-void
.end method

.method public rejectGroupJoinApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5101
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5103
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5107
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupJoinApplicationRejectConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupJoinApplicationRejectConfig;-><init>()V

    .line 5108
    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p4

    iput-object p4, v0, Lim/zego/zim/entity/ZIMGroupJoinApplicationRejectConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5110
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$105;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$105;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->rejectGroupJoinApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupJoinApplicationRejectConfig;Lim/zego/zim/callback/ZIMGroupJoinApplicationRejectedCallback;)V

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public removeUsersFromBlacklist(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6494
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6496
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6500
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6501
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6502
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6505
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$137;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$137;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->removeUsersFromBlacklist(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMBlacklistUsersRemovedCallback;)V

    return-void
.end method

.method public renewToken(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1159
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1161
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1165
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$5;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$5;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->renewToken(Ljava/lang/String;Lim/zego/zim/callback/ZIMTokenRenewedCallback;)V

    return-void
.end method

.method public replyMessage(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3219
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3221
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p6, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3225
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 3226
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p3

    .line 3228
    new-instance v0, Lim/zego/zim/entity/ZIMMessageSendConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageSendConfig;-><init>()V

    if-eqz p4, :cond_7

    .line 3231
    const-string v1, "priority"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3232
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lim/zego/zim/enums/ZIMMessagePriority;->getZIMMessagePriority(I)Lim/zego/zim/enums/ZIMMessagePriority;

    move-result-object v1

    goto :goto_0

    .line 3233
    :cond_1
    sget-object v1, Lim/zego/zim/enums/ZIMMessagePriority;->LOW:Lim/zego/zim/enums/ZIMMessagePriority;

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMMessageSendConfig;->priority:Lim/zego/zim/enums/ZIMMessagePriority;

    .line 3234
    const-string v1, "hasReceipt"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lim/zego/zim/entity/ZIMMessageSendConfig;->hasReceipt:Z

    .line 3235
    const-string v1, "isRetrySend"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lim/zego/zim/entity/ZIMMessageSendConfig;->isRetrySend:Z

    .line 3237
    const-string v1, "isNotifyMentionedUsers"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v0, Lim/zego/zim/entity/ZIMMessageSendConfig;->isNotifyMentionedUsers:Z

    .line 3239
    const-string v1, "disableUnreadMessageCount"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    iput-boolean v1, v0, Lim/zego/zim/entity/ZIMMessageSendConfig;->disableUnreadMessageCount:Z

    .line 3241
    const-string v1, "isAllowMultipleMessagePartialFailed"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_6
    iput-boolean v3, v0, Lim/zego/zim/entity/ZIMMessageSendConfig;->isAllowMultipleMessagePartialFailed:Z

    .line 3242
    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p4

    iput-object p4, v0, Lim/zego/zim/entity/ZIMMessageSendConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 3245
    :cond_7
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$56;

    invoke-direct {p4, p0, p6, p5}, Lim/zego/RNZimReactnativeSdkModule$56;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->replyMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentFullCallback;)V

    return-void
.end method

.method public revokeMessage(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2933
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2935
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2939
    :cond_0
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    .line 2940
    new-instance v0, Lim/zego/zim/entity/ZIMMessageRevokeConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageRevokeConfig;-><init>()V

    if-eqz p3, :cond_2

    .line 2943
    const-string v1, "revokeExtendedData"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMMessageRevokeConfig;->revokeExtendedData:Ljava/lang/String;

    .line 2944
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p3

    iput-object p3, v0, Lim/zego/zim/entity/ZIMMessageRevokeConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 2947
    :cond_2
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$48;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$48;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->revokeMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageRevokeConfig;Lim/zego/zim/callback/ZIMMessageRevokedCallback;)V

    return-void
.end method

.method public searchConversations(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5665
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5667
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5671
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMConversationSearchConfig;-><init>()V

    if-eqz p2, :cond_e

    .line 5673
    const-string v1, "mode"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5674
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lim/zego/zim/enums/ZIMConversationSearchMode;->getZIMConversationSearchMode(I)Lim/zego/zim/enums/ZIMConversationSearchMode;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->mode:Lim/zego/zim/enums/ZIMConversationSearchMode;

    .line 5676
    :cond_1
    const-string v1, "nextFlag"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->nextFlag:I

    .line 5678
    const-string/jumbo v1, "totalConversationCount"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput v1, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->totalConversationCount:I

    .line 5680
    const-string v1, "conversationMessageCount"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_4
    iput v3, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->conversationMessageCount:I

    .line 5682
    const-string/jumbo v1, "startTime"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_5
    move-wide v1, v3

    :goto_2
    iput-wide v1, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->startTime:J

    .line 5683
    const-string v1, "endTime"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    :cond_6
    iput-wide v3, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->endTime:J

    .line 5684
    const-string v1, "keywords"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5685
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5686
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5687
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5689
    :cond_7
    iput-object v2, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->keywords:Ljava/util/ArrayList;

    .line 5691
    :cond_8
    const-string v1, "senderUserIDs"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5692
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5693
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5694
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5696
    :cond_9
    iput-object v2, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->senderUserIDs:Ljava/util/ArrayList;

    .line 5698
    :cond_a
    const-string v1, "messageTypes"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5699
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5700
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5701
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageType;->getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5703
    :cond_b
    iput-object v2, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->messageTypes:Ljava/util/ArrayList;

    .line 5705
    :cond_c
    const-string/jumbo v1, "subMessageTypes"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5706
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5707
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5708
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5710
    :cond_d
    iput-object v2, v0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->subMessageTypes:Ljava/util/ArrayList;

    .line 5714
    :cond_e
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$119;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$119;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->searchLocalConversations(Lim/zego/zim/entity/ZIMConversationSearchConfig;Lim/zego/zim/callback/ZIMConversationsSearchedCallback;)V

    return-void
.end method

.method public searchFriends(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6028
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6030
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6034
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFriendSearchConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFriendSearchConfig;-><init>()V

    if-eqz p2, :cond_5

    .line 6036
    const-string v1, "count"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMFriendSearchConfig;->count:I

    .line 6037
    const-string v1, "nextFlag"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput v1, v0, Lim/zego/zim/entity/ZIMFriendSearchConfig;->nextFlag:I

    .line 6039
    const-string v1, "isAlsoMatchFriendAlias"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_3
    iput-boolean v3, v0, Lim/zego/zim/entity/ZIMFriendSearchConfig;->isAlsoMatchFriendAlias:Z

    .line 6040
    const-string v1, "keywords"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6041
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6042
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6043
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6045
    :cond_4
    iput-object v2, v0, Lim/zego/zim/entity/ZIMFriendSearchConfig;->keywords:Ljava/util/ArrayList;

    .line 6049
    :cond_5
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$124;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$124;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->searchLocalFriends(Lim/zego/zim/entity/ZIMFriendSearchConfig;Lim/zego/zim/callback/ZIMFriendsSearchedCallback;)V

    return-void
.end method

.method public searchGlobalMessages(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5751
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5753
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5757
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageSearchConfig;-><init>()V

    if-eqz p2, :cond_d

    .line 5759
    const-string v1, "count"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->count:I

    .line 5760
    const-string v1, "order"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageOrder;->getZIMMessageOrder(I)Lim/zego/zim/enums/ZIMMessageOrder;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->order:Lim/zego/zim/enums/ZIMMessageOrder;

    .line 5762
    const-string/jumbo v1, "startTime"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_3
    move-wide v1, v3

    :goto_1
    iput-wide v1, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->startTime:J

    .line 5763
    const-string v1, "endTime"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    :cond_4
    iput-wide v3, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->endTime:J

    .line 5764
    const-string v1, "nextMessage"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5765
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->nextMessage:Lim/zego/zim/entity/ZIMMessage;

    .line 5767
    :cond_5
    const-string v1, "keywords"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5768
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5769
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5770
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5772
    :cond_6
    iput-object v2, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->keywords:Ljava/util/ArrayList;

    .line 5774
    :cond_7
    const-string v1, "senderUserIDs"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5775
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5776
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5777
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5779
    :cond_8
    iput-object v2, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->senderUserIDs:Ljava/util/ArrayList;

    .line 5781
    :cond_9
    const-string v1, "messageTypes"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5782
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5783
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5784
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageType;->getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5786
    :cond_a
    iput-object v2, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->messageTypes:Ljava/util/ArrayList;

    .line 5788
    :cond_b
    const-string/jumbo v1, "subMessageTypes"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5789
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5790
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5791
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5793
    :cond_c
    iput-object v2, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->subMessageTypes:Ljava/util/ArrayList;

    .line 5797
    :cond_d
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$120;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$120;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->searchGlobalLocalMessages(Lim/zego/zim/entity/ZIMMessageSearchConfig;Lim/zego/zim/callback/ZIMMessagesGlobalSearchedCallback;)V

    return-void
.end method

.method public searchGroupMembers(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5977
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5979
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5983
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;-><init>()V

    if-eqz p3, :cond_5

    .line 5985
    const-string v1, "count"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;->count:I

    .line 5986
    const-string v1, "nextFlag"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput v1, v0, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;->nextFlag:I

    .line 5988
    const-string v1, "isAlsoMatchGroupMemberNickname"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5989
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 5990
    :cond_3
    iput-boolean v3, v0, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;->isAlsoMatchGroupMemberNickname:Z

    .line 5991
    const-string v1, "keywords"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5992
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5993
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5994
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5996
    :cond_4
    iput-object v2, v0, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;->keywords:Ljava/util/ArrayList;

    .line 6000
    :cond_5
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$123;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$123;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->searchLocalGroupMembers(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;Lim/zego/zim/callback/ZIMGroupMembersSearchedCallback;)V

    return-void
.end method

.method public searchGroups(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5917
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5919
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5923
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupSearchConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupSearchConfig;-><init>()V

    if-eqz p2, :cond_6

    .line 5925
    const-string v1, "count"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMGroupSearchConfig;->count:I

    .line 5926
    const-string v1, "nextFlag"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput v1, v0, Lim/zego/zim/entity/ZIMGroupSearchConfig;->nextFlag:I

    .line 5928
    const-string v1, "isAlsoMatchGroupMemberUserName"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5929
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 5930
    :goto_2
    iput-boolean v1, v0, Lim/zego/zim/entity/ZIMGroupSearchConfig;->isAlsoMatchGroupMemberUserName:Z

    .line 5932
    const-string v1, "isAlsoMatchGroupMemberNickname"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5933
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 5934
    :cond_4
    iput-boolean v3, v0, Lim/zego/zim/entity/ZIMGroupSearchConfig;->isAlsoMatchGroupMemberNickname:Z

    .line 5935
    const-string v1, "keywords"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5936
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5937
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5938
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5940
    :cond_5
    iput-object v2, v0, Lim/zego/zim/entity/ZIMGroupSearchConfig;->keywords:Ljava/util/ArrayList;

    .line 5944
    :cond_6
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$122;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$122;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->searchLocalGroups(Lim/zego/zim/entity/ZIMGroupSearchConfig;Lim/zego/zim/callback/ZIMGroupsSearchedCallback;)V

    return-void
.end method

.method public searchMessages(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5834
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5836
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5840
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageSearchConfig;-><init>()V

    if-eqz p4, :cond_d

    .line 5842
    const-string v1, "count"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->count:I

    .line 5843
    const-string v1, "order"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageOrder;->getZIMMessageOrder(I)Lim/zego/zim/enums/ZIMMessageOrder;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->order:Lim/zego/zim/enums/ZIMMessageOrder;

    .line 5845
    const-string/jumbo v1, "startTime"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_3
    move-wide v1, v3

    :goto_1
    iput-wide v1, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->startTime:J

    .line 5846
    const-string v1, "endTime"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    :cond_4
    iput-wide v3, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->endTime:J

    .line 5847
    const-string v1, "nextMessage"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5848
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->nextMessage:Lim/zego/zim/entity/ZIMMessage;

    .line 5850
    :cond_5
    const-string v1, "keywords"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5851
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5852
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5853
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5855
    :cond_6
    iput-object v2, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->keywords:Ljava/util/ArrayList;

    .line 5857
    :cond_7
    const-string v1, "senderUserIDs"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5858
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5859
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5860
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5862
    :cond_8
    iput-object v2, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->senderUserIDs:Ljava/util/ArrayList;

    .line 5864
    :cond_9
    const-string v1, "messageTypes"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5865
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5866
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5867
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageType;->getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5869
    :cond_a
    iput-object v2, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->messageTypes:Ljava/util/ArrayList;

    .line 5871
    :cond_b
    const-string/jumbo v1, "subMessageTypes"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5872
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5873
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p4

    invoke-interface {p4}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5874
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5876
    :cond_c
    iput-object v2, v0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->subMessageTypes:Ljava/util/ArrayList;

    .line 5882
    :cond_d
    invoke-static {p3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p3

    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$121;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$121;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 5880
    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->searchLocalMessages(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSearchConfig;Lim/zego/zim/callback/ZIMMessagesSearchedCallback;)V

    return-void
.end method

.method public sendConversationMessageReceiptRead(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2748
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2750
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2756
    :cond_0
    invoke-static {p3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p3

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$44;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$44;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 2754
    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->sendConversationMessageReceiptRead(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationMessageReceiptReadSentCallback;)V

    return-void
.end method

.method public sendFriendApplication(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6108
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6110
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6114
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;-><init>()V

    .line 6115
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 6116
    const-string/jumbo v1, "wording"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;->wording:Ljava/lang/String;

    .line 6117
    const-string v1, "friendAlias"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iput-object v3, v0, Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;->friendAlias:Ljava/lang/String;

    .line 6118
    const-string v1, "friendAttributes"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6120
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p3

    .line 6121
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6122
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6124
    :cond_3
    iput-object v2, v0, Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;->friendAttributes:Ljava/util/HashMap;

    .line 6127
    :cond_4
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$126;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$126;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->sendFriendApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;Lim/zego/zim/callback/ZIMFriendApplicationSentCallback;)V

    return-void
.end method

.method public sendGroupInviteApplications(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5138
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5140
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5144
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5145
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5146
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5149
    :cond_1
    new-instance p2, Lim/zego/zim/entity/ZIMGroupInviteApplicationSendConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMGroupInviteApplicationSendConfig;-><init>()V

    .line 5150
    const-string/jumbo v1, "wording"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    iput-object v1, p2, Lim/zego/zim/entity/ZIMGroupInviteApplicationSendConfig;->wording:Ljava/lang/String;

    .line 5151
    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p4

    iput-object p4, p2, Lim/zego/zim/entity/ZIMGroupInviteApplicationSendConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5153
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$106;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$106;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2, p4}, Lim/zego/zim/ZIM;->sendGroupInviteApplications(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupInviteApplicationSendConfig;Lim/zego/zim/callback/ZIMGroupInviteApplicationsSentCallback;)V

    return-void
.end method

.method public sendGroupJoinApplication(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5028
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5030
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5034
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;-><init>()V

    .line 5035
    const-string/jumbo v1, "wording"

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;->wording:Ljava/lang/String;

    .line 5036
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p3

    iput-object p3, v0, Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 5038
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$103;

    invoke-direct {p3, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$103;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0, p3}, Lim/zego/zim/ZIM;->sendGroupJoinApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;Lim/zego/zim/callback/ZIMGroupJoinApplicationSentCallback;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2175
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2177
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p7, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2181
    :cond_0
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    .line 2182
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p2

    move-object v0, p6

    .line 2183
    new-instance p6, Lim/zego/zim/entity/ZIMMessageSendConfig;

    invoke-direct {p6}, Lim/zego/zim/entity/ZIMMessageSendConfig;-><init>()V

    if-eqz p5, :cond_7

    .line 2186
    const-string v1, "priority"

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2187
    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lim/zego/zim/enums/ZIMMessagePriority;->getZIMMessagePriority(I)Lim/zego/zim/enums/ZIMMessagePriority;

    move-result-object v1

    goto :goto_0

    .line 2188
    :cond_1
    sget-object v1, Lim/zego/zim/enums/ZIMMessagePriority;->LOW:Lim/zego/zim/enums/ZIMMessagePriority;

    :goto_0
    iput-object v1, p6, Lim/zego/zim/entity/ZIMMessageSendConfig;->priority:Lim/zego/zim/enums/ZIMMessagePriority;

    .line 2189
    const-string v1, "hasReceipt"

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, p6, Lim/zego/zim/entity/ZIMMessageSendConfig;->hasReceipt:Z

    .line 2190
    const-string v1, "isRetrySend"

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, p6, Lim/zego/zim/entity/ZIMMessageSendConfig;->isRetrySend:Z

    .line 2192
    const-string v1, "isNotifyMentionedUsers"

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p6, Lim/zego/zim/entity/ZIMMessageSendConfig;->isNotifyMentionedUsers:Z

    .line 2194
    const-string v1, "disableUnreadMessageCount"

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    iput-boolean v1, p6, Lim/zego/zim/entity/ZIMMessageSendConfig;->disableUnreadMessageCount:Z

    .line 2196
    const-string v1, "isAllowMultipleMessagePartialFailed"

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_6
    iput-boolean v3, p6, Lim/zego/zim/entity/ZIMMessageSendConfig;->isAllowMultipleMessagePartialFailed:Z

    .line 2197
    invoke-static {p5}, Lim/zego/RNZIMConverter;->convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;

    move-result-object p5

    iput-object p5, p6, Lim/zego/zim/entity/ZIMMessageSendConfig;->pushConfig:Lim/zego/zim/entity/ZIMPushConfig;

    .line 2203
    :cond_7
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p5

    move-object p4, p7

    new-instance p7, Lim/zego/RNZimReactnativeSdkModule$33;

    invoke-direct {p7, p0, p4, v0}, Lim/zego/RNZimReactnativeSdkModule$33;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    .line 2200
    invoke-virtual/range {p2 .. p7}, Lim/zego/zim/ZIM;->sendMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentFullCallback;)V

    return-void
.end method

.method public sendMessageReceiptsRead(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2785
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2787
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2791
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2792
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2793
    check-cast v1, Ljava/util/HashMap;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v1

    .line 2794
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2800
    :cond_1
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p2

    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$45;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$45;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 2797
    invoke-virtual {p1, v0, p3, p2, p4}, Lim/zego/zim/ZIM;->sendMessageReceiptsRead(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMMessageReceiptsReadSentCallback;)V

    return-void
.end method

.method public setAdvancedConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 122
    invoke-static {p1, p2}, Lim/zego/zim/ZIM;->setAdvancedConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCacheConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 112
    new-instance v0, Lim/zego/zim/entity/ZIMCacheConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMCacheConfig;-><init>()V

    .line 113
    const-string v1, "cachePath"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lim/zego/zim/entity/ZIMCacheConfig;->cachePath:Ljava/lang/String;

    .line 117
    :cond_0
    invoke-static {v0}, Lim/zego/zim/ZIM;->setCacheConfig(Lim/zego/zim/entity/ZIMCacheConfig;)V

    return-void
.end method

.method public setConversationDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1947
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1949
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1956
    :cond_0
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p4

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$27;

    invoke-direct {v0, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$27;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 1953
    invoke-virtual {p1, p2, p3, p4, v0}, Lim/zego/zim/ZIM;->setConversationDraft(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationDraftSetCallback;)V

    return-void
.end method

.method public setConversationMark(Ljava/lang/String;IZLcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2027
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2029
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2033
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2034
    invoke-interface {p4}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2035
    check-cast v1, Ljava/util/HashMap;

    const-string v2, "conversationType"

    .line 2036
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 2035
    invoke-static {v2}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object v2

    .line 2038
    new-instance v3, Lim/zego/zim/entity/ZIMConversationBaseInfo;

    invoke-direct {v3}, Lim/zego/zim/entity/ZIMConversationBaseInfo;-><init>()V

    .line 2039
    const-string v4, "conversationID"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lim/zego/zim/entity/ZIMConversationBaseInfo;->conversationID:Ljava/lang/String;

    .line 2040
    iput-object v2, v3, Lim/zego/zim/entity/ZIMConversationBaseInfo;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    .line 2042
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2046
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$29;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$29;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 2045
    invoke-virtual {p1, p2, p3, v0, p4}, Lim/zego/zim/ZIM;->setConversationMark(Ljava/lang/Integer;ZLjava/util/ArrayList;Lim/zego/zim/callback/ZIMConversationMarkSetCallback;)V

    return-void
.end method

.method public setConversationNotificationStatus(Ljava/lang/String;ILjava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1907
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1909
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1914
    :cond_0
    invoke-static {p2}, Lim/zego/zim/enums/ZIMConversationNotificationStatus;->getZIMConversationNotificationStatus(I)Lim/zego/zim/enums/ZIMConversationNotificationStatus;

    move-result-object p2

    .line 1916
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p4

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$26;

    invoke-direct {v0, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$26;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 1913
    invoke-virtual {p1, p2, p3, p4, v0}, Lim/zego/zim/ZIM;->setConversationNotificationStatus(Lim/zego/zim/enums/ZIMConversationNotificationStatus;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationNotificationStatusSetCallback;)V

    return-void
.end method

.method public setGeofencingConfig(Lcom/facebook/react/bridge/ReadableArray;ILcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p2}, Lim/zego/zim/enums/ZIMGeofencingType;->getZIMGeofencingType(I)Lim/zego/zim/enums/ZIMGeofencingType;

    move-result-object p1

    invoke-static {v0, p1}, Lim/zego/zim/ZIM;->setGeofencingConfig(Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMGeofencingType;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public setGroupAttributes(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4492
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4494
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4498
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4499
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4500
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4503
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$87;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$87;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2}, Lim/zego/zim/ZIM;->setGroupAttributes(Ljava/util/HashMap;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesOperatedCallback;)V

    return-void
.end method

.method public setGroupMemberNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4671
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4673
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4677
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$92;

    invoke-direct {v0, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$92;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, p4, v0}, Lim/zego/zim/ZIM;->setGroupMemberNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberNicknameUpdatedCallback;)V

    return-void
.end method

.method public setGroupMemberRole(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4705
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4707
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4711
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$93;

    invoke-direct {v0, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$93;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, p4, v0}, Lim/zego/zim/ZIM;->setGroupMemberRole(ILjava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberRoleUpdatedCallback;)V

    return-void
.end method

.method public setLogConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 98
    new-instance v0, Lim/zego/zim/entity/ZIMLogConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMLogConfig;-><init>()V

    .line 99
    const-string v1, "logPath"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMLogConfig;->logPath:Ljava/lang/String;

    .line 103
    :cond_0
    const-string v1, "logSize"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lim/zego/zim/entity/ZIMLogConfig;->logSize:J

    .line 107
    :cond_1
    invoke-static {v0}, Lim/zego/zim/ZIM;->setLogConfig(Lim/zego/zim/entity/ZIMLogConfig;)V

    return-void
.end method

.method public setRoomAttributes(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3789
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 3791
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3795
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3796
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3797
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3800
    :cond_1
    new-instance p2, Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;-><init>()V

    if-eqz p4, :cond_5

    .line 3802
    const-string v1, "isUpdateOwner"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, p2, Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;->isUpdateOwner:Z

    .line 3804
    const-string v1, "isDeleteAfterOwnerLeft"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, p2, Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;->isDeleteAfterOwnerLeft:Z

    .line 3805
    const-string v1, "isForce"

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_4
    iput-boolean v3, p2, Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;->isForce:Z

    .line 3808
    :cond_5
    new-instance p4, Lim/zego/RNZimReactnativeSdkModule$69;

    invoke-direct {p4, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$69;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2, p4}, Lim/zego/zim/ZIM;->setRoomAttributes(Ljava/util/HashMap;Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;)V

    return-void
.end method

.method public setRoomMembersAttributes(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3932
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lim/zego/zim/ZIM;

    if-nez v0, :cond_0

    .line 3934
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p6, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3938
    :cond_0
    new-instance v4, Lim/zego/zim/entity/ZIMRoomMemberAttributesSetConfig;

    invoke-direct {v4}, Lim/zego/zim/entity/ZIMRoomMemberAttributesSetConfig;-><init>()V

    .line 3940
    const-string p1, "isDeleteAfterOwnerLeft"

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, v4, Lim/zego/zim/entity/ZIMRoomMemberAttributesSetConfig;->isDeleteAfterOwnerLeft:Z

    .line 3942
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3943
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 3944
    invoke-interface {p2, p5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3947
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3948
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 3949
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3952
    :cond_3
    new-instance v5, Lim/zego/RNZimReactnativeSdkModule$72;

    invoke-direct {v5, p0, p6}, Lim/zego/RNZimReactnativeSdkModule$72;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lim/zego/zim/ZIM;->setRoomMembersAttributes(Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomMemberAttributesSetConfig;Lim/zego/zim/callback/ZIMRoomMembersAttributesOperatedCallback;)V

    return-void
.end method

.method public subscribeUsersStatus(Ljava/lang/String;ZLcom/facebook/react/bridge/ReadableArray;ILcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1495
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1497
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1501
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1503
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1507
    new-instance p2, Lim/zego/zim/entity/ZIMUserStatusSubscribeConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMUserStatusSubscribeConfig;-><init>()V

    .line 1508
    iput p4, p2, Lim/zego/zim/entity/ZIMUserStatusSubscribeConfig;->subscriptionDuration:I

    .line 1510
    new-instance p3, Lim/zego/RNZimReactnativeSdkModule$16;

    invoke-direct {p3, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$16;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2, p3}, Lim/zego/zim/ZIM;->subscribeUsersStatus(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMUserStatusSubscribeConfig;Lim/zego/zim/callback/ZIMUsersStatusSubscribedCallback;)V

    return-void

    .line 1527
    :cond_2
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$17;

    invoke-direct {p2, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$17;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->unsubscribeUsersStatus(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMUsersStatusUnsubscribedCallback;)V

    return-void
.end method

.method public switchRoom(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 3538
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lim/zego/zim/ZIM;

    if-nez v0, :cond_0

    .line 3540
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p6, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3544
    :cond_0
    new-instance v5, Lim/zego/RNZimReactnativeSdkModule$62;

    invoke-direct {v5, p0, p6}, Lim/zego/RNZimReactnativeSdkModule$62;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 3557
    new-instance v2, Lim/zego/zim/entity/ZIMRoomInfo;

    invoke-direct {v2}, Lim/zego/zim/entity/ZIMRoomInfo;-><init>()V

    .line 3558
    const-string p1, "roomID"

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lim/zego/zim/entity/ZIMRoomInfo;->roomID:Ljava/lang/String;

    .line 3559
    const-string p1, "roomName"

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, v2, Lim/zego/zim/entity/ZIMRoomInfo;->roomName:Ljava/lang/String;

    .line 3561
    new-instance v4, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;

    invoke-direct {v4}, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;-><init>()V

    if-eqz p5, :cond_4

    .line 3564
    const-string p1, "roomDestroyDelayTime"

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput p1, v4, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;->roomDestroyDelayTime:I

    .line 3566
    const-string p1, "roomAttributes"

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 3567
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 3568
    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p1

    .line 3569
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 3570
    invoke-virtual {p1, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, p6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3573
    :cond_3
    iput-object p3, v4, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;->roomAttributes:Ljava/util/HashMap;

    :cond_4
    move-object v1, p2

    move v3, p4

    .line 3577
    invoke-virtual/range {v0 .. v5}, Lim/zego/zim/ZIM;->switchRoom(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomInfo;ZLim/zego/zim/entity/ZIMRoomAdvancedConfig;Lim/zego/zim/callback/ZIMRoomSwitchedCallback;)V

    return-void
.end method

.method public transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4734
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4736
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4740
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$94;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$94;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupOwnerTransferredCallback;)V

    return-void
.end method

.method public updateConversationPinnedState(Ljava/lang/String;ZLjava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1987
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1989
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1996
    :cond_0
    invoke-static {p4}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object p4

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$28;

    invoke-direct {v0, p0, p5}, Lim/zego/RNZimReactnativeSdkModule$28;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 1993
    invoke-virtual {p1, p2, p3, p4, v0}, Lim/zego/zim/ZIM;->updateConversationPinnedState(ZLjava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationPinnedStateUpdatedCallback;)V

    return-void
.end method

.method public updateFriendAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6233
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6235
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6239
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$129;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$129;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->updateFriendAlias(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMFriendAliasUpdatedCallback;)V

    return-void
.end method

.method public updateFriendAttributes(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 6264
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 6266
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6270
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6271
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6272
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6275
    :cond_1
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$130;

    invoke-direct {p2, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$130;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p3, p2}, Lim/zego/zim/ZIM;->updateFriendAttributes(Ljava/util/HashMap;Ljava/lang/String;Lim/zego/zim/callback/ZIMFriendAttributesUpdatedCallback;)V

    return-void
.end method

.method public updateGroupAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4638
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4640
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4644
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$91;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$91;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->updateGroupAlias(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAliasUpdatedCallback;)V

    return-void
.end method

.method public updateGroupAvatarUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4312
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4314
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4318
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$82;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$82;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->updateGroupAvatarUrl(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAvatarUrlUpdatedCallback;)V

    return-void
.end method

.method public updateGroupBeInviteMode(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 5001
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 5003
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5008
    :cond_0
    invoke-static {p2}, Lim/zego/zim/enums/ZIMGroupBeInviteMode;->getZIMGroupBeInviteMode(I)Lim/zego/zim/enums/ZIMGroupBeInviteMode;

    move-result-object p2

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$102;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$102;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 5007
    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->updateGroupBeInviteMode(Lim/zego/zim/enums/ZIMGroupBeInviteMode;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupBeInviteModeUpdatedCallback;)V

    return-void
.end method

.method public updateGroupInviteMode(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4974
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4976
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4981
    :cond_0
    invoke-static {p2}, Lim/zego/zim/enums/ZIMGroupInviteMode;->getZIMGroupInviteMode(I)Lim/zego/zim/enums/ZIMGroupInviteMode;

    move-result-object p2

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$101;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$101;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 4980
    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->updateGroupInviteMode(Lim/zego/zim/enums/ZIMGroupInviteMode;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupInviteModeUpdatedCallback;)V

    return-void
.end method

.method public updateGroupJoinMode(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4947
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4949
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4954
    :cond_0
    invoke-static {p2}, Lim/zego/zim/enums/ZIMGroupJoinMode;->getZIMGroupJoinMode(I)Lim/zego/zim/enums/ZIMGroupJoinMode;

    move-result-object p2

    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$100;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$100;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    .line 4953
    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->updateGroupJoinMode(Lim/zego/zim/enums/ZIMGroupJoinMode;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupJoinModeUpdatedCallback;)V

    return-void
.end method

.method public updateGroupName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4285
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4287
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4291
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$81;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$81;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->updateGroupName(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupNameUpdatedCallback;)V

    return-void
.end method

.method public updateGroupNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 4258
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 4260
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4264
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$80;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$80;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->updateGroupNotice(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupNoticeUpdatedCallback;)V

    return-void
.end method

.method public updateMessageLocalExtendedData(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 2685
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 2687
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2691
    :cond_0
    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object p3

    .line 2692
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$42;

    invoke-direct {v0, p0, p4}, Lim/zego/RNZimReactnativeSdkModule$42;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3, v0}, Lim/zego/zim/ZIM;->updateMessageLocalExtendedData(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageLocalExtendedDataUpdatedCallback;)V

    return-void
.end method

.method public updateUserAvatarUrl(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1282
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1284
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1288
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$9;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$9;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->updateUserAvatarUrl(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserAvatarUrlUpdatedCallback;)V

    return-void
.end method

.method public updateUserBadge(Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1233
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1235
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1239
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$7;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$7;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->updateUserBadge(ILim/zego/zim/callback/ZIMUserBadgeUpdatedCallback;)V

    return-void
.end method

.method public updateUserCustomStatus(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1334
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1336
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1340
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$11;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$11;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->updateUserCustomStatus(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserCustomStatusUpdatedCallback;)V

    return-void
.end method

.method public updateUserExtendedData(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1308
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1310
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1314
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$10;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$10;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->updateUserExtendedData(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserExtendedDataUpdatedCallback;)V

    return-void
.end method

.method public updateUserName(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1256
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1258
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1262
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$8;

    invoke-direct {v0, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$8;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, v0}, Lim/zego/zim/ZIM;->updateUserName(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserNameUpdatedCallback;)V

    return-void
.end method

.method public updateUserOfflinePushRule(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1360
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1362
    const-string p1, "-1"

    const-string p2, "no instance"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1366
    :cond_0
    new-instance v0, Lim/zego/zim/entity/ZIMUserOfflinePushRule;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMUserOfflinePushRule;-><init>()V

    if-eqz p2, :cond_4

    .line 1368
    const-string v1, "onlinePlatforms"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1369
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1371
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1373
    :cond_1
    iput-object v2, v0, Lim/zego/zim/entity/ZIMUserOfflinePushRule;->onlinePlatforms:Ljava/util/ArrayList;

    .line 1375
    :cond_2
    const-string v1, "notToReceiveOfflinePushPlatforms"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1376
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1378
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1380
    :cond_3
    iput-object v2, v0, Lim/zego/zim/entity/ZIMUserOfflinePushRule;->notToReceiveOfflinePushPlatforms:Ljava/util/ArrayList;

    .line 1384
    :cond_4
    new-instance p2, Lim/zego/RNZimReactnativeSdkModule$12;

    invoke-direct {p2, p0, p3}, Lim/zego/RNZimReactnativeSdkModule$12;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, p2}, Lim/zego/zim/ZIM;->updateUserOfflinePushRule(Lim/zego/zim/entity/ZIMUserOfflinePushRule;Lim/zego/zim/callback/ZIMUserOfflinePushRuleUpdatedCallback;)V

    return-void
.end method

.method public uploadLog(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1071
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/zego/zim/ZIM;

    if-nez p1, :cond_0

    .line 1073
    const-string p1, "-1"

    const-string v0, "no instance"

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1077
    :cond_0
    new-instance v0, Lim/zego/RNZimReactnativeSdkModule$2;

    invoke-direct {v0, p0, p2}, Lim/zego/RNZimReactnativeSdkModule$2;-><init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0}, Lim/zego/zim/ZIM;->uploadLog(Lim/zego/zim/callback/ZIMLogUploadedCallback;)V

    return-void
.end method

.method public writeCustomLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 86
    :try_start_0
    const-class v0, Lim/zego/zim/internal/util/ZIMLogUtil;

    .line 87
    const-string/jumbo v1, "writeCustomLog"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

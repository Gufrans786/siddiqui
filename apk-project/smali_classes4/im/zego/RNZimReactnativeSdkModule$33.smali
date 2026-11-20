.class Lim/zego/RNZimReactnativeSdkModule$33;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMMessageSentFullCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->sendMessage(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/RNZimReactnativeSdkModule;

.field final synthetic val$_handle:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2205
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$33;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$33;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lim/zego/RNZimReactnativeSdkModule$33;->val$_handle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaUploadingProgress(Lim/zego/zim/entity/ZIMMediaMessage;JJ)V
    .locals 3

    .line 2236
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2237
    const-string v1, "handle"

    iget-object v2, p0, Lim/zego/RNZimReactnativeSdkModule$33;->val$_handle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 2240
    invoke-static {p1}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    long-to-double p1, p2

    .line 2241
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    long-to-double p1, p4

    .line 2242
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 2243
    const-string p1, "data"

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 2245
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$33;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p2, "messageLoadingProgress"

    invoke-static {p1, p2, v0}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendAPIEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onMessageAttached(Lim/zego/zim/entity/ZIMMessage;)V
    .locals 3

    .line 2220
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2221
    const-string v1, "handle"

    iget-object v2, p0, Lim/zego/RNZimReactnativeSdkModule$33;->val$_handle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 2224
    invoke-static {p1}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 2225
    const-string p1, "data"

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 2227
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$33;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messageAttachedHook"

    invoke-static {p1, v1, v0}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendAPIEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onMessageSent(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMError;)V
    .locals 2

    .line 2208
    iget-object v0, p2, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_0

    .line 2209
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 2210
    invoke-static {p1}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 2211
    const-string v0, "message"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 2212
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$33;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 2214
    :cond_0
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$33;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v0, p2, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {v0}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMultipleMediaUploadingProgress(Lim/zego/zim/entity/ZIMMultipleMessage;JJIJJ)V
    .locals 3

    .line 2257
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2258
    const-string v1, "handle"

    iget-object v2, p0, Lim/zego/RNZimReactnativeSdkModule$33;->val$_handle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 2261
    invoke-static {p1}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    long-to-double p1, p2

    .line 2262
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    long-to-double p1, p4

    .line 2263
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    int-to-double p1, p6

    .line 2264
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    long-to-double p1, p7

    .line 2265
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    long-to-double p1, p9

    .line 2266
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 2267
    const-string p1, "data"

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 2269
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$33;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p2, "messageLoadingProgress"

    invoke-static {p1, p2, v0}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendAPIEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

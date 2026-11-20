.class Lim/zego/RNZimReactnativeSdkModule$57;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMMessageRepliedListQueriedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->queryMessageRepliedList(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/RNZimReactnativeSdkModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3333
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$57;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$57;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageRepliedListQueried(Ljava/util/ArrayList;JLim/zego/zim/entity/ZIMMessageRootRepliedInfo;Lim/zego/zim/entity/ZIMError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;J",
            "Lim/zego/zim/entity/ZIMMessageRootRepliedInfo;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation

    .line 3341
    iget-object v0, p5, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_1

    .line 3342
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p5

    .line 3343
    iget-object v0, p4, Lim/zego/zim/entity/ZIMMessageRootRepliedInfo;->state:Lim/zego/zim/enums/ZIMMessageRepliedInfoState;

    invoke-virtual {v0}, Lim/zego/zim/enums/ZIMMessageRepliedInfoState;->value()I

    move-result v0

    const-string/jumbo v1, "state"

    invoke-interface {p5, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 3344
    iget v0, p4, Lim/zego/zim/entity/ZIMMessageRootRepliedInfo;->repliedCount:I

    int-to-double v0, v0

    const-string v2, "repliedCount"

    invoke-interface {p5, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 3345
    const-string v0, "senderUserID"

    iget-object v1, p4, Lim/zego/zim/entity/ZIMMessageRootRepliedInfo;->senderUserID:Ljava/lang/String;

    invoke-interface {p5, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    iget-wide v0, p4, Lim/zego/zim/entity/ZIMMessageRootRepliedInfo;->sentTime:J

    long-to-double v0, v0

    const-string v2, "sentTime"

    invoke-interface {p5, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 3347
    iget-object v0, p4, Lim/zego/zim/entity/ZIMMessageRootRepliedInfo;->message:Lim/zego/zim/entity/ZIMMessage;

    if-eqz v0, :cond_0

    .line 3348
    iget-object p4, p4, Lim/zego/zim/entity/ZIMMessageRootRepliedInfo;->message:Lim/zego/zim/entity/ZIMMessage;

    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p4

    const-string v0, "message"

    invoke-interface {p5, v0, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 3351
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p4

    .line 3352
    const-string v0, "nextFlag"

    long-to-double p2, p2

    invoke-interface {p4, v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 3353
    const-string p2, "rootRepliedInfo"

    invoke-interface {p4, p2, p5}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 3354
    const-string p2, "messageList"

    invoke-static {p1}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 3356
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$57;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 3358
    :cond_1
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$57;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p5, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p5, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lim/zego/RNZimReactnativeSdkModule$121;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMMessagesSearchedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->searchMessages(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 5884
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$121;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$121;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessagesSearched(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lim/zego/zim/enums/ZIMConversationType;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Lim/zego/zim/entity/ZIMMessage;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation

    .line 5893
    iget-object v0, p5, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_1

    .line 5894
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p5

    .line 5895
    const-string v0, "conversationID"

    invoke-interface {p5, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5896
    const-string p1, "conversationType"

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result p2

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 5898
    const-string p1, "nextMessage"

    if-eqz p4, :cond_0

    .line 5899
    invoke-static {p4}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 5901
    :cond_0
    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 5904
    :goto_0
    const-string p1, "messageList"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 5906
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$121;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p5}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 5908
    :cond_1
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$121;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p5, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p5, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

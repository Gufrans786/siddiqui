.class Lim/zego/RNZimReactnativeSdkModule$116;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMCallJoinSentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->callJoin(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 5539
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$116;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$116;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallJoinSent(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallJoinSentInfo;Lim/zego/zim/entity/ZIMError;)V
    .locals 2

    .line 5542
    iget-object v0, p3, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_0

    .line 5543
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p3

    .line 5544
    const-string v0, "callID"

    invoke-interface {p3, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5545
    iget-wide v0, p2, Lim/zego/zim/entity/ZIMCallJoinSentInfo;->createTime:J

    long-to-double v0, v0

    const-string p1, "createTime"

    invoke-interface {p3, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 5546
    iget-wide v0, p2, Lim/zego/zim/entity/ZIMCallJoinSentInfo;->joinTime:J

    long-to-double v0, v0

    const-string p1, "joinTime"

    invoke-interface {p3, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 5547
    const-string p1, "extendedData"

    iget-object v0, p2, Lim/zego/zim/entity/ZIMCallJoinSentInfo;->extendedData:Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5548
    iget-object p1, p2, Lim/zego/zim/entity/ZIMCallJoinSentInfo;->callUserList:Ljava/util/ArrayList;

    invoke-static {p1}, Lim/zego/RNZIMConverter;->convertCallUserList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    const-string p2, "callUserList"

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 5550
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$116;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 5552
    :cond_0
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$116;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p3, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lim/zego/RNZimReactnativeSdkModule$64;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMRoomAllLeftCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->leaveAllRoom(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
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

    .line 3614
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$64;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$64;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoomAllLeft(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation

    .line 3617
    iget-object v0, p2, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_1

    .line 3618
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 3620
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 3621
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3622
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 3624
    :cond_0
    const-string p1, "roomIDs"

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 3626
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$64;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 3628
    :cond_1
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$64;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v0, p2, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {v0}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

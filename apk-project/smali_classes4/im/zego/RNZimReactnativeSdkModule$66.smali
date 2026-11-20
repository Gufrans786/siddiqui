.class Lim/zego/RNZimReactnativeSdkModule$66;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMRoomMembersQueriedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->queryRoomMembers(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
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

    .line 3692
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$66;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$66;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoomMembersQueried(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMRoomMemberInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMErrorUserInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation

    .line 3700
    iget-object v0, p4, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_1

    .line 3701
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p4

    .line 3703
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 3704
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMRoomMemberInfo;

    .line 3705
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertRoomMemberInfo(Lim/zego/zim/entity/ZIMRoomMemberInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 3708
    :cond_0
    const-string p2, "roomID"

    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3709
    const-string p1, "memberList"

    invoke-interface {p4, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 3710
    const-string p1, "errorUserList"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertErrorUserInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 3712
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$66;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 3714
    :cond_1
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$66;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p4, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p4, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

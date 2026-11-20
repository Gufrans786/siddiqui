.class Lim/zego/RNZimReactnativeSdkModule$75;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMGroupCreatedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->createGroup(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 4081
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$75;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$75;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCreated(Lim/zego/zim/entity/ZIMGroupFullInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/entity/ZIMGroupFullInfo;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupMemberInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMErrorUserInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation

    .line 4089
    iget-object v0, p4, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_0

    .line 4090
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p4

    .line 4091
    const-string v0, "groupInfo"

    invoke-static {p1}, Lim/zego/RNZIMConverter;->convertGroupFullInfo(Lim/zego/zim/entity/ZIMGroupFullInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 4092
    const-string/jumbo p1, "userList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertGroupMemberInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 4093
    const-string p1, "errorUserList"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertErrorUserInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 4094
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$75;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 4096
    :cond_0
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$75;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p4, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p4, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

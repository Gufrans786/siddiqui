.class Lim/zego/RNZimReactnativeSdkModule$122;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMGroupsSearchedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->searchGroups(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 5946
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$122;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$122;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupsSearched(Ljava/util/ArrayList;ILim/zego/zim/entity/ZIMError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupSearchInfo;",
            ">;I",
            "Lim/zego/zim/entity/ZIMError;",
            ")V"
        }
    .end annotation

    .line 5953
    iget-object v0, p3, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_1

    .line 5954
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p3

    .line 5955
    const-string v0, "nextFlag"

    invoke-interface {p3, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 5957
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 5958
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zim/entity/ZIMGroupSearchInfo;

    .line 5959
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 5960
    iget-object v2, v0, Lim/zego/zim/entity/ZIMGroupSearchInfo;->groupInfo:Lim/zego/zim/entity/ZIMGroupInfo;

    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertGroupInfo(Lim/zego/zim/entity/ZIMGroupInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    const-string v3, "groupInfo"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 5961
    iget-object v0, v0, Lim/zego/zim/entity/ZIMGroupSearchInfo;->userList:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/zego/RNZIMConverter;->convertGroupMemberInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    const-string/jumbo v2, "userList"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 5962
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 5964
    :cond_0
    const-string p1, "groupSearchInfoList"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 5966
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$122;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 5968
    :cond_1
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$122;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p3, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

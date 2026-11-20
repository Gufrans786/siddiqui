.class Lim/zego/RNZimReactnativeSdkModule$1;
.super Lim/zego/zim/callback/ZIMEventHandler;
.source "RNZimReactnativeSdkModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->createEngine(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/RNZimReactnativeSdkModule;


# direct methods
.method constructor <init>(Lim/zego/RNZimReactnativeSdkModule;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    invoke-direct {p0}, Lim/zego/zim/callback/ZIMEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlacklistChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMBlacklistChangeAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMUserInfo;",
            ">;",
            "Lim/zego/zim/enums/ZIMBlacklistChangeAction;",
            ")V"
        }
    .end annotation

    .line 995
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onBlacklistChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMBlacklistChangeAction;)V

    .line 997
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 998
    const-string v1, "action"

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMBlacklistChangeAction;->value()I

    move-result p3

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 999
    const-string/jumbo p3, "userList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertUserInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1001
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "blacklistChanged"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onBroadcastMessageReceived(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMMessage;)V
    .locals 2

    .line 370
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onBroadcastMessageReceived(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMMessage;)V

    .line 372
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 373
    const-string v1, "message"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 375
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "broadcastMessageReceived"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onCallInvitationAccepted(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationAcceptedInfo;Ljava/lang/String;)V
    .locals 2

    .line 952
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallInvitationAccepted(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationAcceptedInfo;Ljava/lang/String;)V

    .line 954
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 955
    const-string v1, "callID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string p3, "invitee"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationAcceptedInfo;->invitee:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string p3, "extendedData"

    iget-object p2, p2, Lim/zego/zim/entity/ZIMCallInvitationAcceptedInfo;->extendedData:Ljava/lang/String;

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "callInvitationAccepted"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onCallInvitationCancelled(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationCancelledInfo;Ljava/lang/String;)V
    .locals 2

    .line 902
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallInvitationCancelled(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationCancelledInfo;Ljava/lang/String;)V

    .line 904
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 905
    const-string v1, "callID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string p3, "inviter"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationCancelledInfo;->inviter:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string p3, "extendedData"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationCancelledInfo;->extendedData:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object p2, p2, Lim/zego/zim/entity/ZIMCallInvitationCancelledInfo;->mode:Lim/zego/zim/enums/ZIMCallInvitationMode;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMCallInvitationMode;->value()I

    move-result p2

    const-string p3, "mode"

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 910
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "callInvitationCancelled"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onCallInvitationCreated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationCreatedInfo;Ljava/lang/String;)V
    .locals 3

    .line 869
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallInvitationCreated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationCreatedInfo;Ljava/lang/String;)V

    .line 871
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 872
    const-string v1, "callID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string/jumbo p3, "timeout"

    iget v1, p2, Lim/zego/zim/entity/ZIMCallInvitationCreatedInfo;->timeout:I

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 874
    const-string p3, "extendedData"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationCreatedInfo;->extendedData:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object p3, p2, Lim/zego/zim/entity/ZIMCallInvitationCreatedInfo;->mode:Lim/zego/zim/enums/ZIMCallInvitationMode;

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMCallInvitationMode;->value()I

    move-result p3

    const-string v1, "mode"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 876
    const-string p3, "caller"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationCreatedInfo;->caller:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-wide v1, p2, Lim/zego/zim/entity/ZIMCallInvitationCreatedInfo;->createTime:J

    long-to-double v1, v1

    const-string p3, "createTime"

    invoke-interface {v0, p3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 878
    iget-object p2, p2, Lim/zego/zim/entity/ZIMCallInvitationCreatedInfo;->callUserList:Ljava/util/ArrayList;

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertCallUserList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    const-string p3, "callUserList"

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 880
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "callInvitationCreated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onCallInvitationEnded(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationEndedInfo;Ljava/lang/String;)V
    .locals 2

    .line 926
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallInvitationEnded(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationEndedInfo;Ljava/lang/String;)V

    .line 928
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 929
    const-string v1, "callID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object p3, p2, Lim/zego/zim/entity/ZIMCallInvitationEndedInfo;->mode:Lim/zego/zim/enums/ZIMCallInvitationMode;

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMCallInvitationMode;->value()I

    move-result p3

    const-string v1, "mode"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 931
    const-string p3, "caller"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationEndedInfo;->caller:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string p3, "operatedUserID"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationEndedInfo;->operatedUserID:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string p3, "extendedData"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationEndedInfo;->extendedData:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-wide p2, p2, Lim/zego/zim/entity/ZIMCallInvitationEndedInfo;->endTime:J

    long-to-double p2, p2

    const-string v1, "endTime"

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 936
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "callInvitationEnded"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onCallInvitationReceived(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;Ljava/lang/String;)V
    .locals 3

    .line 885
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallInvitationReceived(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;Ljava/lang/String;)V

    .line 887
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 888
    const-string v1, "callID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string p3, "inviter"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;->inviter:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string/jumbo p3, "timeout"

    iget v1, p2, Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;->timeout:I

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 891
    const-string p3, "extendedData"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;->extendedData:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object p3, p2, Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;->mode:Lim/zego/zim/enums/ZIMCallInvitationMode;

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMCallInvitationMode;->value()I

    move-result p3

    const-string v1, "mode"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 893
    const-string p3, "caller"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;->caller:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-wide v1, p2, Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;->createTime:J

    long-to-double v1, v1

    const-string p3, "createTime"

    invoke-interface {v0, p3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 895
    iget-object p2, p2, Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;->callUserList:Ljava/util/ArrayList;

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertCallUserList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    const-string p3, "callUserList"

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 897
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "callInvitationReceived"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onCallInvitationRejected(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationRejectedInfo;Ljava/lang/String;)V
    .locals 2

    .line 964
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallInvitationRejected(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationRejectedInfo;Ljava/lang/String;)V

    .line 966
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 967
    const-string v1, "callID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string p3, "invitee"

    iget-object v1, p2, Lim/zego/zim/entity/ZIMCallInvitationRejectedInfo;->invitee:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string p3, "extendedData"

    iget-object p2, p2, Lim/zego/zim/entity/ZIMCallInvitationRejectedInfo;->extendedData:Ljava/lang/String;

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "callInvitationRejected"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onCallInvitationTimeout(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationTimeoutInfo;Ljava/lang/String;)V
    .locals 2

    .line 915
    invoke-super {p0, p1, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallInvitationTimeout(Lim/zego/zim/ZIM;Ljava/lang/String;)V

    .line 917
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 918
    const-string v1, "callID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object p2, p2, Lim/zego/zim/entity/ZIMCallInvitationTimeoutInfo;->mode:Lim/zego/zim/enums/ZIMCallInvitationMode;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMCallInvitationMode;->value()I

    move-result p2

    const-string p3, "mode"

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 921
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "callInvitationTimeout"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onCallInviteesAnsweredTimeout(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 976
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallInviteesAnsweredTimeout(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 978
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 979
    const-string v1, "callID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p3

    .line 981
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 982
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 984
    :cond_0
    const-string p2, "invitees"

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 986
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "callInviteesAnsweredTimeout"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onCallUserStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallUserStateChangeInfo;Ljava/lang/String;)V
    .locals 2

    .line 941
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallUserStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallUserStateChangeInfo;Ljava/lang/String;)V

    .line 943
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 944
    const-string v1, "callID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object p2, p2, Lim/zego/zim/entity/ZIMCallUserStateChangeInfo;->callUserList:Ljava/util/ArrayList;

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertCallUserList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    const-string p3, "callUserList"

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 947
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "callUserStateChanged"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onConnectionStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMConnectionState;Lim/zego/zim/enums/ZIMConnectionEvent;Lorg/json/JSONObject;)V
    .locals 2

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onConnectionStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMConnectionState;Lim/zego/zim/enums/ZIMConnectionEvent;Lorg/json/JSONObject;)V

    .line 172
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "state"

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConnectionState;->value()I

    move-result p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string p2, "event"

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConnectionEvent;->value()I

    move-result p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string p2, "extendedData"

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "connectionStateChanged"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onConversationChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMConversationChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 250
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onConversationChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 252
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 253
    const-string v1, "infoList"

    .line 255
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertConversationChangeInfo(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    .line 253
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 258
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "conversationChanged"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onConversationMessageReceiptChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReceiptInfo;",
            ">;)V"
        }
    .end annotation

    .line 380
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onConversationMessageReceiptChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 382
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 383
    const-string v1, "infos"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageReceiptInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 385
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "conversationMessageReceiptChanged"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onConversationSyncStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMConversationSyncState;)V
    .locals 2

    .line 266
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onConversationSyncStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMConversationSyncState;)V

    .line 268
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 269
    const-string/jumbo v1, "state"

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationSyncState;->value()I

    move-result p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 271
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "conversationSyncStateChanged"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onConversationTotalUnreadMessageCountUpdated(Lim/zego/zim/ZIM;I)V
    .locals 2

    .line 276
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onConversationTotalUnreadMessageCountUpdated(Lim/zego/zim/ZIM;I)V

    .line 278
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 279
    const-string/jumbo v1, "totalUnreadMessageCount"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 281
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "conversationTotalUnreadMessageCountUpdated"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onConversationsAllDeleted(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMConversationsAllDeletedInfo;)V
    .locals 2

    .line 237
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onConversationsAllDeleted(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMConversationsAllDeletedInfo;)V

    .line 239
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 240
    const-string v1, "count"

    iget p2, p2, Lim/zego/zim/entity/ZIMConversationsAllDeletedInfo;->count:I

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 242
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "conversationsAllDeleted"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onError(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMError;)V
    .locals 3

    .line 154
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onError(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMError;)V

    .line 156
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 157
    iget-object v1, p2, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v1, "message"

    iget-object p2, p2, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "error"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onExperimentalEventReceived(Lim/zego/zim/ZIM;Ljava/lang/String;)V
    .locals 2

    .line 182
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onExperimentalEventReceived(Lim/zego/zim/ZIM;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 185
    const-string v1, "data"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "experimentalEventReceived"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onFriendApplicationListChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMFriendApplicationListChangeAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMFriendApplicationInfo;",
            ">;",
            "Lim/zego/zim/enums/ZIMFriendApplicationListChangeAction;",
            ")V"
        }
    .end annotation

    .line 1035
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onFriendApplicationListChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMFriendApplicationListChangeAction;)V

    .line 1037
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1038
    const-string v1, "action"

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMFriendApplicationListChangeAction;->value()I

    move-result p3

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1039
    const-string p3, "applicationList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertFriendApplicationList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1041
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "friendApplicationListChanged"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onFriendApplicationUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMFriendApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1046
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onFriendApplicationUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 1048
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1049
    const-string v1, "applicationList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertFriendApplicationList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1051
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "friendApplicationUpdated"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onFriendInfoUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMFriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1021
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onFriendInfoUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 1023
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1024
    const-string/jumbo v1, "userList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertFriendInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1026
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "friendInfoUpdated"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onFriendListChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMFriendListChangeAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMFriendInfo;",
            ">;",
            "Lim/zego/zim/enums/ZIMFriendListChangeAction;",
            ")V"
        }
    .end annotation

    .line 1010
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onFriendListChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMFriendListChangeAction;)V

    .line 1012
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1013
    const-string v1, "action"

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMFriendListChangeAction;->value()I

    move-result p3

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1014
    const-string p3, "friendList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertFriendInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1016
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "friendListChanged"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupAliasUpdated(Lim/zego/zim/ZIM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 713
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupAliasUpdated(Lim/zego/zim/ZIM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 716
    const-string v1, "groupID"

    invoke-interface {v0, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string p4, "groupAlias"

    invoke-interface {v0, p4, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string p2, "operatedUserID"

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupAliasUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupApplicationListChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMGroupApplicationListChangeAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupApplicationInfo;",
            ">;",
            "Lim/zego/zim/enums/ZIMGroupApplicationListChangeAction;",
            ")V"
        }
    .end annotation

    .line 810
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupApplicationListChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMGroupApplicationListChangeAction;)V

    .line 812
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 813
    const-string v1, "action"

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMGroupApplicationListChangeAction;->value()I

    move-result p3

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 814
    const-string p3, "applicationList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertGroupApplicationList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 816
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupApplicationListChanged"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupApplicationUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 821
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupApplicationUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 823
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 824
    const-string v1, "applicationList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertGroupApplicationList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 826
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "groupApplicationUpdated"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupAttributesUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupAttributesUpdateInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMGroupOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 747
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupAttributesUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 750
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 751
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/entity/ZIMGroupAttributesUpdateInfo;

    .line 752
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 753
    iget-object v4, v2, Lim/zego/zim/entity/ZIMGroupAttributesUpdateInfo;->action:Lim/zego/zim/enums/ZIMGroupAttributesUpdateAction;

    invoke-virtual {v4}, Lim/zego/zim/enums/ZIMGroupAttributesUpdateAction;->value()I

    move-result v4

    const-string v5, "action"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 755
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 756
    iget-object v5, v2, Lim/zego/zim/entity/ZIMGroupAttributesUpdateInfo;->groupAttributes:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 757
    iget-object v7, v2, Lim/zego/zim/entity/ZIMGroupAttributesUpdateInfo;->groupAttributes:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 759
    :cond_0
    const-string v2, "groupAttributes"

    invoke-interface {v3, v2, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 761
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 763
    :cond_1
    const-string p2, "infoList"

    invoke-interface {v0, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 764
    const-string p2, "operatedInfo"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 765
    const-string p2, "groupID"

    invoke-interface {v0, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupAttributesUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupAvatarUrlUpdated(Lim/zego/zim/ZIM;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V
    .locals 2

    .line 696
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupAvatarUrlUpdated(Lim/zego/zim/ZIM;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V

    .line 698
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 699
    const-string v1, "groupID"

    invoke-interface {v0, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string p4, "groupAvatarUrl"

    invoke-interface {v0, p4, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string p2, "operatedInfo"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 703
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupAvatarUrlUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupMemberInfoUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupMemberInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMGroupOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 857
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupMemberInfoUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V

    .line 859
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 860
    const-string/jumbo v1, "userList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertGroupMemberInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 861
    const-string p2, "operatedInfo"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 862
    const-string p2, "groupID"

    invoke-interface {v0, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupMemberInfoUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupMemberStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMGroupMemberState;Lim/zego/zim/enums/ZIMGroupMemberEvent;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Lim/zego/zim/enums/ZIMGroupMemberState;",
            "Lim/zego/zim/enums/ZIMGroupMemberEvent;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupMemberInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMGroupOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 838
    invoke-super/range {p0 .. p6}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupMemberStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMGroupMemberState;Lim/zego/zim/enums/ZIMGroupMemberEvent;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V

    move-object v0, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 840
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 841
    const-string/jumbo v2, "state"

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMGroupMemberState;->value()I

    move-result p3

    invoke-interface {v1, v2, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 842
    const-string p3, "event"

    invoke-virtual {p4}, Lim/zego/zim/enums/ZIMGroupMemberEvent;->value()I

    move-result p4

    invoke-interface {v1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 843
    const-string/jumbo p3, "userList"

    invoke-static {p5}, Lim/zego/RNZIMConverter;->convertGroupMemberInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p4

    invoke-interface {v1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 844
    const-string p3, "operatedInfo"

    invoke-static {p6}, Lim/zego/RNZIMConverter;->convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p4

    invoke-interface {v1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 845
    const-string p3, "groupID"

    invoke-interface {v1, p3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object p3, p1, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p4, "groupMemberStateChanged"

    invoke-static {p3, p4, v1, p2}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupMessageReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessageReceivedInfo;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Lim/zego/zim/entity/ZIMMessageReceivedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 358
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupMessageReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessageReceivedInfo;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 361
    const-string v1, "fromConversationID"

    invoke-interface {v0, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string p4, "info"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertMessageReceivedInfo(Lim/zego/zim/entity/ZIMMessageReceivedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p4, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 363
    const-string p3, "messageList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 365
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupMessageReceived"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupMutedInfoUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMGroupMuteInfo;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V
    .locals 2

    .line 777
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupMutedInfoUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMGroupMuteInfo;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V

    .line 779
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 780
    const-string v1, "mutedInfo"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertGroupMuteInfo(Lim/zego/zim/entity/ZIMGroupMuteInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 781
    const-string p2, "operatedInfo"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 782
    const-string p2, "groupID"

    invoke-interface {v0, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupMutedInfoUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupNameUpdated(Lim/zego/zim/ZIM;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V
    .locals 2

    .line 679
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupNameUpdated(Lim/zego/zim/ZIM;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 682
    const-string v1, "groupID"

    invoke-interface {v0, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string p4, "groupName"

    invoke-interface {v0, p4, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string p2, "operatedInfo"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 686
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupNameUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupNoticeUpdated(Lim/zego/zim/ZIM;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V
    .locals 2

    .line 730
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupNoticeUpdated(Lim/zego/zim/ZIM;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V

    .line 732
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 733
    const-string v1, "groupID"

    invoke-interface {v0, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string p4, "groupNotice"

    invoke-interface {v0, p4, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string p2, "operatedInfo"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 737
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupNoticeUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMGroupState;Lim/zego/zim/enums/ZIMGroupEvent;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Lim/zego/zim/entity/ZIMGroupFullInfo;)V
    .locals 3

    .line 661
    invoke-super/range {p0 .. p5}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMGroupState;Lim/zego/zim/enums/ZIMGroupEvent;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Lim/zego/zim/entity/ZIMGroupFullInfo;)V

    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 663
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 664
    const-string/jumbo v2, "state"

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMGroupState;->value()I

    move-result p3

    invoke-interface {v1, v2, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 665
    const-string p3, "event"

    invoke-virtual {p4}, Lim/zego/zim/enums/ZIMGroupEvent;->value()I

    move-result p4

    invoke-interface {v1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 666
    const-string p3, "operatedInfo"

    invoke-static {p5}, Lim/zego/RNZIMConverter;->convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p4

    invoke-interface {v1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 667
    const-string p3, "groupInfo"

    invoke-static {v0}, Lim/zego/RNZIMConverter;->convertGroupFullInfo(Lim/zego/zim/entity/ZIMGroupFullInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p4

    invoke-interface {v1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 669
    iget-object p3, p1, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p4, "groupStateChanged"

    invoke-static {p3, p4, v1, p2}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onGroupVerifyInfoUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMGroupVerifyInfo;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V
    .locals 2

    .line 794
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupVerifyInfoUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMGroupVerifyInfo;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V

    .line 796
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 797
    const-string/jumbo v1, "verifyInfo"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertGroupVerifyInfo(Lim/zego/zim/entity/ZIMGroupVerifyInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 798
    const-string p2, "operatedInfo"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 799
    const-string p2, "groupID"

    invoke-interface {v0, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "groupVerifyInfoUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onMessageDeleted(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMMessageDeletedInfo;)V
    .locals 3

    .line 507
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessageDeleted(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMMessageDeletedInfo;)V

    .line 509
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 510
    const-string v1, "conversationID"

    iget-object v2, p2, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->conversationID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v1, p2, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v1

    const-string v2, "conversationType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 512
    const-string v1, "isDeleteConversationAllMessage"

    iget-boolean v2, p2, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->isDeleteConversationAllMessage:Z

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    iget-object v1, p2, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->messageDeleteType:Lim/zego/zim/enums/ZIMMessageDeleteType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageDeleteType;->value()I

    move-result v1

    const-string v2, "messageDeleteType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 518
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 519
    iget-object p2, p2, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->messageList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/entity/ZIMMessage;

    .line 520
    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 522
    :cond_0
    const-string p2, "messageList"

    invoke-interface {v0, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 524
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messageDeleted"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onMessageEdited(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 497
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessageEdited(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 499
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 500
    const-string v1, "messageList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 502
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messageEdited"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onMessagePinStatusChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 479
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessagePinStatusChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 481
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 482
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;

    .line 483
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 484
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;->getPinStatus()Lim/zego/zim/enums/ZIMMessagePinStatus;

    move-result-object v3

    invoke-virtual {v3}, Lim/zego/zim/enums/ZIMMessagePinStatus;->value()I

    move-result v3

    const-string v4, "pinStatus"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 485
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;->getMessage()Lim/zego/zim/entity/ZIMMessage;

    move-result-object v1

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v3, "message"

    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 486
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 489
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 490
    const-string v1, "infos"

    invoke-interface {p2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 492
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messagePinStatusChanged"

    invoke-static {v0, v1, p2, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onMessageReactionsChanged(Lim/zego/zim/ZIM;Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;)V
    .locals 9

    .line 414
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessageReactionsChanged(Lim/zego/zim/ZIM;Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;)V

    .line 416
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 418
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 419
    invoke-virtual {p2}, Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;->getReactions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/zego/zim/entity/ZIMMessageReaction;

    .line 420
    invoke-static {v3}, Lim/zego/RNZIMConverter;->convertMessageReaction(Lim/zego/zim/entity/ZIMMessageReaction;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 422
    :cond_0
    const-string v2, "reactions"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 424
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 425
    invoke-virtual {p2}, Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;->getChangeInfoList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;

    .line 426
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 427
    invoke-virtual {v2}, Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;->getMessage()Lim/zego/zim/entity/ZIMMessage;

    move-result-object v4

    invoke-static {v4}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    const-string v5, "message"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 429
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 430
    invoke-virtual {v2}, Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;->getUserChangeInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;

    .line 431
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 432
    const-string/jumbo v7, "userID"

    invoke-virtual {v5}, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->getUserID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v7, "reactionType"

    invoke-virtual {v5}, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->getReactionType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v5}, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->getAction()Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;

    move-result-object v7

    invoke-virtual {v7}, Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;->value()I

    move-result v7

    const-string v8, "action"

    invoke-interface {v6, v8, v7}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 435
    const-string/jumbo v7, "sumCount"

    invoke-virtual {v5}, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->getSumCount()I

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 436
    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 438
    :cond_1
    const-string/jumbo v2, "userChangeInfoList"

    invoke-interface {v3, v2, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 440
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 442
    :cond_2
    const-string p2, "changeInfoList"

    invoke-interface {v0, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 444
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messageReactionsChanged"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onMessageReceiptChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReceiptInfo;",
            ">;)V"
        }
    .end annotation

    .line 390
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessageReceiptChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 392
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 393
    const-string v1, "infos"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageReceiptInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 395
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messageReceiptChanged"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onMessageRepliedCountChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageRootRepliedCountInfo;",
            ">;)V"
        }
    .end annotation

    .line 449
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessageRepliedCountChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 451
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 452
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMMessageRootRepliedCountInfo;

    .line 453
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 454
    const-string v3, "conversationID"

    iget-object v4, v1, Lim/zego/zim/entity/ZIMMessageRootRepliedCountInfo;->conversationID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v3, v1, Lim/zego/zim/entity/ZIMMessageRootRepliedCountInfo;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    invoke-virtual {v3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v3

    const-string v4, "conversationType"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string v3, "count"

    iget v4, v1, Lim/zego/zim/entity/ZIMMessageRootRepliedCountInfo;->count:I

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 457
    iget-wide v3, v1, Lim/zego/zim/entity/ZIMMessageRootRepliedCountInfo;->messageID:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "messageID"

    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 462
    const-string v1, "infos"

    invoke-interface {p2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 464
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messageRepliedCountChanged"

    invoke-static {v0, v1, p2, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onMessageRepliedInfoChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 469
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessageRepliedInfoChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 471
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 472
    const-string v1, "messageList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 474
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messageRepliedInfoChanged"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onMessageRevokeReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMRevokeMessage;",
            ">;)V"
        }
    .end annotation

    .line 400
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessageRevokeReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 402
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 403
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 404
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/entity/ZIMMessage;

    .line 405
    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 407
    :cond_0
    const-string p2, "messageList"

    invoke-interface {v0, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 409
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messageRevokeReceived"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onMessageSentStatusChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageSentStatusChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 532
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessageSentStatusChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 534
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 535
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 536
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/entity/ZIMMessageSentStatusChangeInfo;

    .line 537
    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertMessageSentStatusChangeInfo(Lim/zego/zim/entity/ZIMMessageSentStatusChangeInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 539
    :cond_0
    const-string p2, "infos"

    invoke-interface {v0, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 541
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string v1, "messageSentStatusChanged"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onPeerMessageReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessageReceivedInfo;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Lim/zego/zim/entity/ZIMMessageReceivedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onPeerMessageReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessageReceivedInfo;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 327
    const-string v1, "fromConversationID"

    invoke-interface {v0, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string p4, "info"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertMessageReceivedInfo(Lim/zego/zim/entity/ZIMMessageReceivedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p4, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 329
    const-string p3, "messageList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 331
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "peerMessageReceived"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onReceiveGroupMessage(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 308
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onReceiveGroupMessage(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 311
    const-string v1, "fromConversationID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string p3, "messageList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 314
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "receiveGroupMessage"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onReceivePeerMessage(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 286
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onReceivePeerMessage(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 289
    const-string v1, "fromConversationID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string p3, "messageList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 292
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "receivePeerMessage"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onReceiveRoomMessage(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 297
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onReceiveRoomMessage(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 300
    const-string v1, "fromConversationID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string p3, "messageList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 303
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "receiveRoomMessage"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onRoomAttributesBatchUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 613
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onRoomAttributesBatchUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 616
    const-string v1, "roomID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p3

    .line 619
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;

    .line 620
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 621
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 622
    iget-object v4, v1, Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;->roomAttributes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 623
    iget-object v6, v1, Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;->roomAttributes:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 625
    :cond_0
    iget-object v1, v1, Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;->action:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->value()I

    move-result v1

    const-string v4, "action"

    invoke-interface {v2, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 626
    const-string v1, "roomAttributes"

    invoke-interface {v2, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 627
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 630
    :cond_1
    const-string p2, "infos"

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 632
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "roomAttributesBatchUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onRoomAttributesUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;Ljava/lang/String;)V
    .locals 6

    .line 587
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onRoomAttributesUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 590
    const-string v1, "roomID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p3

    .line 593
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 594
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 595
    iget-object v3, p2, Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;->roomAttributes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 596
    iget-object v5, p2, Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;->roomAttributes:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_0
    iget-object p2, p2, Lim/zego/zim/entity/ZIMRoomAttributesUpdateInfo;->action:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->value()I

    move-result p2

    const-string v3, "action"

    invoke-interface {v1, v3, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 599
    const-string p2, "roomAttributes"

    invoke-interface {v1, p2, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 600
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 602
    const-string p2, "infos"

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 604
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "roomAttributesUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onRoomMemberAttributesUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMRoomOperatedInfo;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMRoomMemberAttributesUpdateInfo;",
            ">;",
            "Lim/zego/zim/entity/ZIMRoomOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 642
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onRoomMemberAttributesUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMRoomOperatedInfo;Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 645
    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertRoomMemberAttributesUpdateInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    .line 646
    const-string v1, "infos"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 647
    const-string p2, "operatedInfo"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertRoomOperatedInfo(Lim/zego/zim/entity/ZIMRoomOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 648
    const-string p2, "roomID"

    invoke-interface {v0, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "roomMemberAttributesUpdated"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onRoomMemberJoined(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMUserInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 546
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onRoomMemberJoined(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 549
    const-string v1, "roomID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string p3, "memberList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertUserInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 552
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "roomMemberJoined"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onRoomMemberLeft(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMUserInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 557
    invoke-super {p0, p1, p2, p3}, Lim/zego/zim/callback/ZIMEventHandler;->onRoomMemberLeft(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 560
    const-string v1, "roomID"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string p3, "memberList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertUserInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 563
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "roomMemberLeft"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onRoomMessageReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessageReceivedInfo;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Lim/zego/zim/entity/ZIMMessageReceivedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Lim/zego/zim/callback/ZIMEventHandler;->onRoomMessageReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessageReceivedInfo;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 344
    const-string v1, "fromConversationID"

    invoke-interface {v0, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string p4, "info"

    invoke-static {p3}, Lim/zego/RNZIMConverter;->convertMessageReceivedInfo(Lim/zego/zim/entity/ZIMMessageReceivedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-interface {v0, p4, p3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 346
    const-string p3, "messageList"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 348
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p3, "roomMessageReceived"

    invoke-static {p2, p3, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onRoomStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMRoomState;Lim/zego/zim/enums/ZIMRoomEvent;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .line 574
    invoke-super/range {p0 .. p5}, Lim/zego/zim/callback/ZIMEventHandler;->onRoomStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMRoomState;Lim/zego/zim/enums/ZIMRoomEvent;Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 576
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 577
    const-string/jumbo v2, "state"

    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMRoomState;->value()I

    move-result p3

    invoke-interface {v1, v2, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 578
    const-string p3, "event"

    invoke-virtual {p4}, Lim/zego/zim/enums/ZIMRoomEvent;->value()I

    move-result p4

    invoke-interface {v1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 579
    const-string p3, "extendedData"

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string p3, "roomID"

    invoke-interface {v1, p3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object p3, p1, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p4, "roomStateChanged"

    invoke-static {p3, p4, v1, p2}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onTokenWillExpire(Lim/zego/zim/ZIM;I)V
    .locals 2

    .line 192
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onTokenWillExpire(Lim/zego/zim/ZIM;I)V

    .line 194
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 195
    const-string v1, "second"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 197
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string/jumbo v1, "tokenWillExpire"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onUserInfoUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMUserFullInfo;)V
    .locals 2

    .line 202
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onUserInfoUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMUserFullInfo;)V

    .line 204
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 205
    const-string v1, "info"

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertUserFullInfo(Lim/zego/zim/entity/ZIMUserFullInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 207
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string/jumbo v1, "userInfoUpdated"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onUserRuleUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMUserRule;)V
    .locals 2

    .line 227
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onUserRuleUpdated(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMUserRule;)V

    .line 229
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 230
    iget-object p2, p2, Lim/zego/zim/entity/ZIMUserRule;->offlinePushRule:Lim/zego/zim/entity/ZIMUserOfflinePushRule;

    invoke-static {p2}, Lim/zego/RNZIMConverter;->convertUserRule(Lim/zego/zim/entity/ZIMUserOfflinePushRule;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    const-string/jumbo v1, "userRule"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 232
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string/jumbo v1, "userRuleUpdated"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

.method public onUserStatusUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/ZIM;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMUserStatus;",
            ">;)V"
        }
    .end annotation

    .line 212
    invoke-super {p0, p1, p2}, Lim/zego/zim/callback/ZIMEventHandler;->onUserStatusUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    .line 214
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 217
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/entity/ZIMUserStatus;

    .line 218
    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertUserStatus(Lim/zego/zim/entity/ZIMUserStatus;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 220
    :cond_0
    const-string/jumbo p2, "userStatusList"

    invoke-interface {v0, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 222
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$1;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string/jumbo v1, "userStatusUpdated"

    invoke-static {p2, v1, v0, p1}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Lim/zego/zim/ZIM;)V

    return-void
.end method

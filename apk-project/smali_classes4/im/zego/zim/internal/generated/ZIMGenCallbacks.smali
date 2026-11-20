.class public interface abstract Lim/zego/zim/internal/generated/ZIMGenCallbacks;
.super Ljava/lang/Object;
.source "ZIMGenCallbacks.java"


# virtual methods
.method public abstract onAllRoomLeft(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomIdList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onBlacklistChanged(JILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "action",
            "userList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBlacklistChecked(JZLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "isUserInBlacklist",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onBlacklistQueried(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "blacklist",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onBlacklistUsersAdded(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userInfoList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onBlacklistUsersRemoved(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userInfoList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onBroadcastMessageReceived(JLim/zego/zim/internal/generated/ZIMGenMessage;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "message"
        }
    .end annotation
.end method

.method public abstract onCallAcceptanceSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onCallCancelSent(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "errorInvitees",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onCallEndSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallEndedSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onCallInvitationAccepted(JLim/zego/zim/internal/generated/ZIMGenCallInvitationAcceptedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation
.end method

.method public abstract onCallInvitationCancelled(JLim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation
.end method

.method public abstract onCallInvitationCreated(JLim/zego/zim/internal/generated/ZIMGenCallInvitationCreatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation
.end method

.method public abstract onCallInvitationEnded(JLim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation
.end method

.method public abstract onCallInvitationReceived(JLim/zego/zim/internal/generated/ZIMGenCallInvitationReceivedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation
.end method

.method public abstract onCallInvitationRejected(JLim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation
.end method

.method public abstract onCallInvitationSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onCallInvitationTimeout(JLim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation
.end method

.method public abstract onCallInviteesAnsweredTimeout(JLjava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "invitees",
            "callID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onCallJoinSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onCallListQueried(JLjava/util/ArrayList;JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callInfos",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallInfo;",
            ">;J",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onCallQuitSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onCallRejectionSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onCallUserStateChanged(JLim/zego/zim/internal/generated/ZIMGenCallUserStateChangeInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "info"
        }
    .end annotation
.end method

.method public abstract onCallingInvitationSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onCombineMessageDetailQueried(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConnectionStateChanged(JIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "state",
            "event",
            "extendedData"
        }
    .end annotation
.end method

.method public abstract onConversationChanged(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationChangeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onConversationDeleted(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationDraftSet(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "type",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationListQueried(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversation;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onConversationMarkSet(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "failedInfos",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onConversationMessageReceiptChanged(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onConversationMessageReceiptReadSent(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationMessagesAllDeleted(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationNotificationStatusSet(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationPinnedListQueried(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversation;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onConversationPinnedStateUpdate(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "type",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationQueried(JLim/zego/zim/internal/generated/ZIMGenConversation;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversation",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationSyncStateChanged(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "state"
        }
    .end annotation
.end method

.method public abstract onConversationTotalUnreadCountQueried(JILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "unreadCount",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationTotalUnreadMessageCountCleared(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationTotalUnreadMessageCountUpdated(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "totalUnreadMessageCount"
        }
    .end annotation
.end method

.method public abstract onConversationUnreadMessageCountCleared(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationsAllDeleted(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onConversationsAllDeletedEvent(JLim/zego/zim/internal/generated/ZIMGenConversationsAllDeletedInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "info"
        }
    .end annotation
.end method

.method public abstract onConversationsSearched(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "globalMessageInfoList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onError(JLim/zego/zim/internal/generated/ZIMGenError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo"
        }
    .end annotation
.end method

.method public abstract onEventGroupAliasUpdated(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupAlias",
            "operatedUserID",
            "groupID"
        }
    .end annotation
.end method

.method public abstract onEventGroupAvatarUrlUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupAvatarUrl",
            "operatedInfo",
            "groupID"
        }
    .end annotation
.end method

.method public abstract onEventGroupNameUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupName",
            "operatedInfo",
            "groupID"
        }
    .end annotation
.end method

.method public abstract onEventGroupNoticeUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupNotice",
            "operatedInfo",
            "groupID"
        }
    .end annotation
.end method

.method public abstract onEventMessageDeleted(JLim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "info"
        }
    .end annotation
.end method

.method public abstract onExperimentalAPICalled(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "result",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onExperimentalEventReceived(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "content"
        }
    .end annotation
.end method

.method public abstract onFileCacheCleared(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onFileCacheQueried(JLim/zego/zim/internal/generated/ZIMGenFileCacheInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "fileCacheInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onFriendAdded(JLim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onFriendAliasUpdated(JLim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onFriendApplicationAccepted(JLim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onFriendApplicationListChange(JILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "action",
            "friendApplicationList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFriendApplicationListQueried(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infoArrayList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendApplicationInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onFriendApplicationRejected(JLim/zego/zim/internal/generated/ZIMGenUserInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "zimUserInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onFriendApplicationSent(JLim/zego/zim/internal/generated/ZIMGenFriendApplicationInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "application",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onFriendApplicationUpdated(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendApplicationList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFriendAttributesUpdated(JLim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onFriendChecked(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendRelationInfoList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onFriendInfoUpdated(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFriendInfosQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfoList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onFriendListChanged(JILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "action",
            "friendInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFriendListQueried(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfoList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onFriendsDeleted(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onFriendsSearched(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfoList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupAliasUpdated(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "groupAlias",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupApplicationListChanged(JLjava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "applicationList",
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupApplicationInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onGroupApplicationListQueried(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "applicationList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupApplicationInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupApplicationUpdated(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "applicationList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGroupAttributesOperated(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "errorKeys",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupAttributesQueried(JLjava/lang/String;Ljava/util/HashMap;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "group",
            "groupAttributes",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupAttributesUpdated(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGroupAvatarUrlUpdated(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "groupAvatarUrl",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupBeInviteModeUpdated(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "mode",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupCreated(JLim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupInfo",
            "userList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupDismissed(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupInfoQueried(JLim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupInviteApplicationsAccepted(JLim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupInfo",
            "inviterUserID",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupInviteApplicationsRejected(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "inviterUserID",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupInviteApplicationsSent(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupInviteModeUpdated(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "mode",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupJoinApplicationAccepted(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "userID",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupJoinApplicationRejected(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "userID",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupJoinApplicationSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupJoinModeUpdated(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "mode",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupJoined(JLim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupLeft(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupListQueried(JLjava/util/ArrayList;JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroup;",
            ">;J",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupMemberCountQueried(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "count",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupMemberInfoQueried(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "userInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupMemberInfoUpdated(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userList",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGroupMemberKicked(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "kickedUserIdList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupMemberListMuted(JLjava/lang/String;ZILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "isMute",
            "duration",
            "mutedMemberIDList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupMemberListQueried(JLjava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "userList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupMemberMutedListQueried(JLjava/lang/String;JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "nextFlag",
            "userList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupMemberNicknameUpdated(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "forUserId",
            "nickName",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupMemberRoleUpdated(JLjava/lang/String;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "forUserId",
            "role",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupMemberStateChanged(JIILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "state",
            "event",
            "userList",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGroupMembersSearched(JLjava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "userList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupMessageReceiptMemberListQueried(JLjava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupid",
            "userList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupMessageReceived(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "info",
            "fromGroupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGroupMuteInfoUpdated(JLim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupMuteInfo",
            "operatedInfo",
            "groupID"
        }
    .end annotation
.end method

.method public abstract onGroupMuted(JLjava/lang/String;ZLim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "isMute",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupNameUpdated(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "groupName",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupNoticeUpdated(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "groupNotice",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupOwnerTransferred(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "toUserId",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onGroupStateChanged(JIILim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "state",
            "event",
            "operatedInfo",
            "groupInfo"
        }
    .end annotation
.end method

.method public abstract onGroupUsersInvited(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "userList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onGroupVerifyInfoUpdated(JLim/zego/zim/internal/generated/ZIMGenGroupVerifyInfo;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "verifyInfo",
            "operatedInfo",
            "groupID"
        }
    .end annotation
.end method

.method public abstract onGroupsSearched(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupSearchInfoList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onLogUploaded(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onLoggedIn(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMediaDownloaded(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMediaDownloadingProgress(JLim/zego/zim/internal/generated/ZIMGenMessage;JJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "currentFileSize",
            "totalFileSize",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMediaUploadingProgress(JLim/zego/zim/internal/generated/ZIMGenMessage;JJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMediaMessage",
            "currentFileSize",
            "totalFileSize",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageAttach(JLim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageDeleted(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageEdited(JLim/zego/zim/internal/generated/ZIMGenError;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "genMessage",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageEditedEvent(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageExported(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageExportingProgress(JJJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "exportedMessageCount",
            "totalMessageCount",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageImported(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageImportingProgress(JJJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "importedMessageCount",
            "totalMessageCount",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageInserted(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageLocalExtendedDataUpdated(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessagePinStatusChanged(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "changeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessagePinned(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageQueried(JLjava/lang/String;ILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "messageList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onMessageReactionAdded(JLim/zego/zim/internal/generated/ZIMGenMessageReaction;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "reaction",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageReactionDeleted(JLim/zego/zim/internal/generated/ZIMGenMessageReaction;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "reaction",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageReactionUsersQueried(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Ljava/util/ArrayList;JILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "reactionType",
            "userInfos",
            "nextFlag",
            "totalCount",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;",
            ">;JI",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onMessageReactionsAllDeleted(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageReactionsChanged(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "reactions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReaction;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageReactionsChangedWithResult(JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "reactions",
            "changeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReaction;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageReceiptChanged(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageReceiptsInfoQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos",
            "errorMessageIds",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onMessageReceiptsReadSent(JLjava/lang/String;ILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "errorMessageIDs",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onMessageRepliedCountChanged(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageRepliedInfoChanged(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "messages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageRepliedListQueried(JLjava/util/ArrayList;JLim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "nextFlag",
            "rootRepliedInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;J",
            "Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onMessageRevokeReceived(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageRevoked(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageSent(JLim/zego/zim/internal/generated/ZIMGenError;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "message",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onMessageSentStatusChanged(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageSentStatusChangeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessagesGlobalSearched(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageLists",
            "nextMessage",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onMessagesSearched(JLjava/lang/String;ILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "messageLists",
            "nextMessage",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onMultipleMediaUploadingProgress(JLim/zego/zim/internal/generated/ZIMGenMessage;JJIJJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMediaMessage",
            "currentFileSize",
            "totalFileSize",
            "messageInfoIndex",
            "currentIndexFileSize",
            "totalIndexFileSize",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onPeerMessageReceived(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "info",
            "fromUserId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPinnedMessageListQueried(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onReceiveGroupMessage(JLjava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "fromGroupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onReceivePeerMessage(JLjava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "fromUserId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onReceiveRoomMessage(JLjava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "fromRoomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRoomAttributesBatchOperated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onRoomAttributesBatchUpdated(JLjava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos",
            "roomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomAttributesUpdateInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRoomAttributesOperated(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "errorKeys",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onRoomAttributesQueried(JLjava/lang/String;Ljava/util/HashMap;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "roomAttributes",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onRoomAttributesUpdated(JLim/zego/zim/internal/generated/ZIMGenRoomAttributesUpdateInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "roomID"
        }
    .end annotation
.end method

.method public abstract onRoomCreated(JLim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onRoomEntered(JLim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onRoomJoined(JLim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onRoomLeft(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onRoomMemberAttributesListQueried(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "infos",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onRoomMemberAttributesUpdated(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenRoomOperatedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos",
            "operatedInfo",
            "roomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesUpdateInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenRoomOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRoomMemberJoined(JLjava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "memberList",
            "roomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRoomMemberLeft(JLjava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "memberList",
            "roomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRoomMemberQueried(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "memberList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onRoomMembersAttributesOperated(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "infos",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onRoomMembersAttributesQueried(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "room",
            "infos",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onRoomMembersQueried(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomID",
            "memberList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onRoomMessageReceived(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "info",
            "fromRoomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRoomOnlineMemberCountQueried(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "count",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onRoomStateChanged(JIILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "state",
            "event",
            "extendedData",
            "roomID"
        }
    .end annotation
.end method

.method public abstract onRoomSwitched(JLim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onSelfUserInfoQueried(JLim/zego/zim/internal/generated/ZIMGenSelfUserInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "selfUserInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onSendingMessageCancelled(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onSubscribedUserStatusListQueried(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userStatusSubscriptionList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onTokenRenewed(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "token",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onTokenWillExpire(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "second"
        }
    .end annotation
.end method

.method public abstract onUserAvatarUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userAvatarUrl",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onUserBadgeUpdated(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onUserCustomStatusUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "customStatus",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onUserExtendedData(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "extendedData",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onUserInfoUpdated(JLim/zego/zim/internal/generated/ZIMGenFullUserInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "info"
        }
    .end annotation
.end method

.method public abstract onUserNameUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userName",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onUserOfflinePushRuleInfoUpdated(JLim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "offlinePushRule",
            "errorInfo",
            "sequence"
        }
    .end annotation
.end method

.method public abstract onUserRuleUpdated(JLim/zego/zim/internal/generated/ZIMGenUserRule;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "userRule"
        }
    .end annotation
.end method

.method public abstract onUserStatusUpdated(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "userStatusList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUsersInfoQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onUsersStatusQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userStatusList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserStatus;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onUsersStatusSubscribed(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onUsersStatusUnsubscribed(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation
.end method

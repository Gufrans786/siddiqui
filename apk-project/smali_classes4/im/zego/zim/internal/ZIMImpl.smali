.class public final Lim/zego/zim/internal/ZIMImpl;
.super Lim/zego/zim/ZIM;
.source "ZIMImpl.java"


# static fields
.field public static final uiHandler:Landroid/os/Handler;

.field private static final zimHandleMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lim/zego/zim/internal/ZIMImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allRoomLeftCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomAllLeftCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklistCheckedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMBlacklistCheckedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklistQueriedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMBlacklistQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklistUsersAddedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMBlacklistUsersAddedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklistUsersRemovedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMBlacklistUsersRemovedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final callAcceptanceSentCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCallAcceptanceSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final callCancelSentCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCallCancelSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final callEndSentCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCallEndSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final callInvitationSentCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCallInvitationSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final callJoinSentCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCallJoinSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final callListQueriedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCallInvitationListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final callQuitSentCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCallQuitSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final callRejectionSentCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCallRejectionSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final callingInvitationSentCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCallingInvitationSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final cancelledSendingMessageCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMSendingMessageCancelledCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final combineMessageDetailQueriedCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMCombineMessageDetailQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final commonCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;

.field public final conversationDeletedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationDeletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationDraftSetCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationDraftSetCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationListQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationMarkSetCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationMarkSetCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationMessageGlobalSearchCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationsSearchedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationMessagesAllDeletedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationMessagesAllDeletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationNotificationStatusSetCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationNotificationStatusSetCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationPinnedListQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationPinnedListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationPinnedStateUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationPinnedStateUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationReceiptReadCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationMessageReceiptReadSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationTotalUnreadMessageCountQueriedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationTotalUnreadMessageCountQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationUnreadMessageCountClearedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationUnreadMessageCountClearedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationsAllDeletedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationsAllDeletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final conversationsAllUnreadMessageCountClearedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMConversationTotalUnreadMessageCountClearedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

.field public final experimentalAPICalledCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMExperimentalAPICalledCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final fileCacheClearedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFileCacheClearedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final fileCacheQueriedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFileCacheQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendAddedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendAddedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendAliasCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendAliasUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendApplicationAcceptedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendApplicationAcceptedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendApplicationListQueriedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendApplicationListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendApplicationRejectedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendApplicationRejectedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendAttributesUpdatedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendAttributesUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendCheckedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendsRelationCheckedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendDeletedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendsDeletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendListQueriedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendQueriedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendsInfoQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final friendSearchedCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendsSearchedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupAliasUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupAliasUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupAttributesOperatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupAttributesOperatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupAttributesQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupAttributesQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupAvatarUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupAvatarUrlUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupBeInviteModeUpdateCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupBeInviteModeUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupCreatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupCreatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupDismissedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupDismissedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupInfoQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupInfoQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupInviteModeUpdateCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupInviteModeUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupJoinModeUpdateCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupJoinModeUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupJoinedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupJoinedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupLeftCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupLeftCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupListQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMemberCountQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMemberCountQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMemberInfoQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMemberInfoQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMemberKickedoutCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMemberKickedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMemberListQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMemberListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMemberMutedListQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMemberMutedListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMemberNicknameUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMemberNicknameUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMemberRoleUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMemberRoleUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMembersMutedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMembersMutedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMembersSearchedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMembersSearchedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMessageReceiptMemberListCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMessageReceiptMemberListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupMutedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupMutedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupNameUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupNameUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupNoticeUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupNoticeUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupOwnerTransferredCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupOwnerTransferredCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupUsersInvitedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupUsersInvitedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final groupsSearchedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMGroupsSearchedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final handle:J

.field public final logUploadedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMLogUploadedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final loggedInCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMLoggedInCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaDownloadedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMediaDownloadedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaMessageSentCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMediaMessageSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageDeletedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageDeletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageExportedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageExportedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageGlobalSearchCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessagesGlobalSearchedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageImportedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageImportedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageInsertedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageInsertedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageLocalExtendedDataUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageLocalExtendedDataUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final messagePinnedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessagePinnedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageReactionAddCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageReactionAddedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageReactionDeleteCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageReactionDeletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageReactionUsersQueryCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageReactionUserListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageReceiptsInfoQueriedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageReceiptsInfoQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageReceiptsReadCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageReceiptsReadSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageRevokedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageRevokedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageSearchCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessagesSearchedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final messageSentCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final onlineCountQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomOnlineMemberCountQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final pinnedMessageListQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMPinnedMessageListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final repliedListQueriedCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageRepliedListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomAllAttributesQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomAttributesQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomAttributesBatchOperatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomAttributesBatchOperatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomAttributesOperatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomCreatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomCreatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomEnteredCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomEnteredCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomJoinedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomJoinedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomLeftCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomLeftCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomMemberAttributesListQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomMemberAttributesListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomMemberQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomMemberQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomMembersAttributesOperatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomMembersAttributesOperatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomMembersAttributesQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomMembersAttributesQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomMembersQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomMembersQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final roomSwitchedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMRoomSwitchedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final selfUserInfoQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMSelfUserInfoQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final sendFriendAddedCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMFriendApplicationSentCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final sentFullCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMMessageSentFullCallback;",
            ">;"
        }
    .end annotation
.end field

.field private sequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final subscribedUserStatusListQueriedCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMSubscribedUserStatusListQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final tokenRenewedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMTokenRenewedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final userAvatarUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUserAvatarUrlUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final userBadgeUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUserBadgeUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final userCustomStatusUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUserCustomStatusUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final userExtendedDataUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUserExtendedDataUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final userNameUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUserNameUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final userOfflinePushRuleInfoUpdatedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUserOfflinePushRuleUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final usersInfoQueriedCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUsersInfoQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final usersStatusQueriedCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUsersStatusQueriedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final usersStatusSubscribedCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUsersStatusSubscribedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final usersStatusUnsubscribedCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lim/zego/zim/callback/ZIMUsersStatusUnsubscribedCallback;",
            ">;"
        }
    .end annotation
.end field

.field zimBridge:Lim/zego/zim/internal/generated/ZIMBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const-string v0, "ZIM"

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    .line 38
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lim/zego/zim/internal/ZIMImpl;->zimHandleMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 378
    :try_start_0
    sget-object v1, Lim/zego/zim/ZIM;->externalSoPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lim/zego/zim/ZIM;->context:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 379
    sget-object v1, Lim/zego/zim/ZIM;->externalSoPath:Ljava/lang/String;

    sget-object v2, Lim/zego/zim/ZIM;->context:Landroid/app/Application;

    invoke-static {v1, v2}, Lim/zego/zim/internal/util/ZIMSysUtil;->loadSpecialLibrary(Ljava/lang/String;Landroid/content/Context;)Z

    return-void

    .line 381
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 384
    const-string v2, "Load ZIM native library failed!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private constructor <init>(JLandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "context"
        }
    .end annotation

    .line 390
    invoke-direct {p0}, Lim/zego/zim/ZIM;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->sequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->experimentalAPICalledCallbacks:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->logUploadedCallbacks:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->loggedInCallbacks:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->tokenRenewedCallbacks:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->userNameUpdatedCallbacks:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->userAvatarUpdatedCallbacks:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->userExtendedDataUpdatedCallbacks:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->userCustomStatusUpdatedCallbacks:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->userOfflinePushRuleInfoUpdatedCallbacks:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->userBadgeUpdatedCallbacks:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->selfUserInfoQueriedCallbacks:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->usersInfoQueriedCallbacks:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageQueriedCallbacks:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageGlobalSearchCallbacks:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageSearchCallbacks:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationMessageGlobalSearchCallbacks:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageLocalExtendedDataUpdatedCallbacks:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageSentCallbacks:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->mediaMessageSentCallbacks:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->mediaDownloadedCallbacks:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messagePinnedCallbacks:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->pinnedMessageListQueriedCallbacks:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomCreatedCallbacks:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomJoinedCallbacks:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomEnteredCallbacks:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomSwitchedCallbacks:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomLeftCallbacks:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->allRoomLeftCallbacks:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->onlineCountQueriedCallbacks:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomMemberQueriedCallbacks:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomMembersQueriedCallbacks:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageDeletedCallbacks:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationMessagesAllDeletedCallbacks:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationListQueriedCallbacks:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationQueriedCallbacks:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationPinnedListQueriedCallbacks:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationPinnedStateUpdatedCallbacks:Ljava/util/HashMap;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationDeletedCallbacks:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationsAllDeletedCallbacks:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationUnreadMessageCountClearedCallbacks:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationsAllUnreadMessageCountClearedCallbacks:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationNotificationStatusSetCallbacks:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomAttributesOperatedCallbacks:Ljava/util/HashMap;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomAttributesBatchOperatedCallbacks:Ljava/util/HashMap;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomAllAttributesQueriedCallbacks:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomMemberAttributesListQueriedCallbacks:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomMembersAttributesOperatedCallbacks:Ljava/util/HashMap;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomMembersAttributesQueriedCallbacks:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupCreatedCallbacks:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupDismissedCallbacks:Ljava/util/HashMap;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupJoinedCallbacks:Ljava/util/HashMap;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupLeftCallbacks:Ljava/util/HashMap;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupUsersInvitedCallbacks:Ljava/util/HashMap;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberKickedoutCallbacks:Ljava/util/HashMap;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupOwnerTransferredCallbacks:Ljava/util/HashMap;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupNameUpdatedCallbacks:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupAvatarUpdatedCallbacks:Ljava/util/HashMap;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupAliasUpdatedCallbacks:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupNoticeUpdatedCallbacks:Ljava/util/HashMap;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupJoinModeUpdateCallbacks:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupInviteModeUpdateCallbacks:Ljava/util/HashMap;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupBeInviteModeUpdateCallbacks:Ljava/util/HashMap;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMutedCallbacks:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMembersMutedCallbacks:Ljava/util/HashMap;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberMutedListQueriedCallbacks:Ljava/util/HashMap;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupInfoQueriedCallbacks:Ljava/util/HashMap;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupAttributesOperatedCallbacks:Ljava/util/HashMap;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupAttributesQueriedCallbacks:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberRoleUpdatedCallbacks:Ljava/util/HashMap;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberNicknameUpdatedCallbacks:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberInfoQueriedCallbacks:Ljava/util/HashMap;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupListQueriedCallbacks:Ljava/util/HashMap;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberListQueriedCallbacks:Ljava/util/HashMap;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberCountQueriedCallbacks:Ljava/util/HashMap;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callInvitationSentCallback:Ljava/util/HashMap;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callingInvitationSentCallback:Ljava/util/HashMap;

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callJoinSentCallback:Ljava/util/HashMap;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callQuitSentCallback:Ljava/util/HashMap;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callEndSentCallback:Ljava/util/HashMap;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callListQueriedCallback:Ljava/util/HashMap;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendAddedCallback:Ljava/util/HashMap;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendCheckedCallback:Ljava/util/HashMap;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendDeletedCallback:Ljava/util/HashMap;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendAliasCallback:Ljava/util/HashMap;

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendQueriedCallback:Ljava/util/HashMap;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendApplicationRejectedCallback:Ljava/util/HashMap;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendListQueriedCallback:Ljava/util/HashMap;

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendApplicationListQueriedCallback:Ljava/util/HashMap;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->blacklistUsersRemovedCallback:Ljava/util/HashMap;

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->blacklistQueriedCallback:Ljava/util/HashMap;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->blacklistCheckedCallback:Ljava/util/HashMap;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendSearchedCallbackHashMap:Ljava/util/HashMap;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->blacklistUsersAddedCallback:Ljava/util/HashMap;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendApplicationAcceptedCallback:Ljava/util/HashMap;

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->friendAttributesUpdatedCallback:Ljava/util/HashMap;

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->sendFriendAddedCallback:Ljava/util/HashMap;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callCancelSentCallback:Ljava/util/HashMap;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callAcceptanceSentCallback:Ljava/util/HashMap;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callRejectionSentCallback:Ljava/util/HashMap;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageInsertedCallback:Ljava/util/HashMap;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageRevokedCallbacks:Ljava/util/HashMap;

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageReceiptsReadCallback:Ljava/util/HashMap;

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationReceiptReadCallback:Ljava/util/HashMap;

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageImportedCallback:Ljava/util/HashMap;

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageExportedCallback:Ljava/util/HashMap;

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->fileCacheClearedCallback:Ljava/util/HashMap;

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->fileCacheQueriedCallback:Ljava/util/HashMap;

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationDraftSetCallback:Ljava/util/HashMap;

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationMarkSetCallback:Ljava/util/HashMap;

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationTotalUnreadMessageCountQueriedCallback:Ljava/util/HashMap;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageReceiptsInfoQueriedCallback:Ljava/util/HashMap;

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageReactionAddCallbackHashMap:Ljava/util/HashMap;

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageReactionDeleteCallbackHashMap:Ljava/util/HashMap;

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->combineMessageDetailQueriedCallbackHashMap:Ljava/util/HashMap;

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageReactionUsersQueryCallbackHashMap:Ljava/util/HashMap;

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMessageReceiptMemberListCallback:Ljava/util/HashMap;

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupsSearchedCallbacks:Ljava/util/HashMap;

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMembersSearchedCallbacks:Ljava/util/HashMap;

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->sentFullCallbackHashMap:Ljava/util/HashMap;

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->cancelledSendingMessageCallbackHashMap:Ljava/util/HashMap;

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->repliedListQueriedCallbackHashMap:Ljava/util/HashMap;

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->usersStatusQueriedCallbackHashMap:Ljava/util/HashMap;

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->usersStatusSubscribedCallbackHashMap:Ljava/util/HashMap;

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->usersStatusUnsubscribedCallbackHashMap:Ljava/util/HashMap;

    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->subscribedUserStatusListQueriedCallbackHashMap:Ljava/util/HashMap;

    .line 391
    iput-wide p1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 392
    iput-object p3, p0, Lim/zego/zim/internal/ZIMImpl;->context:Landroid/content/Context;

    .line 393
    new-instance p3, Lim/zego/zim/internal/generated/ZIMBridge;

    invoke-direct {p3}, Lim/zego/zim/internal/generated/ZIMBridge;-><init>()V

    iput-object p3, p0, Lim/zego/zim/internal/ZIMImpl;->zimBridge:Lim/zego/zim/internal/generated/ZIMBridge;

    .line 394
    sget-object p3, Lim/zego/zim/internal/ZIMImpl;->zimHandleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static native create(JLjava/lang/String;Landroid/content/Context;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appID",
            "appSign",
            "context"
        }
    .end annotation
.end method

.method public static createZIM(Lim/zego/zim/entity/ZIMAppConfig;Landroid/content/Context;)Lim/zego/zim/ZIM;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "context"
        }
    .end annotation

    .line 413
    const-string v0, "2.28.0.4046"

    invoke-static {}, Lim/zego/zim/internal/ZIMImpl;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    .line 424
    new-instance p0, Lim/zego/zim/entity/ZIMAppConfig;

    invoke-direct {p0}, Lim/zego/zim/entity/ZIMAppConfig;-><init>()V

    .line 427
    :cond_0
    invoke-static {p1}, Lim/zego/zim/internal/util/ZIMLogUtil;->setContext(Landroid/content/Context;)V

    .line 428
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMAppConfig;->appID:J

    iget-object p0, p0, Lim/zego/zim/entity/ZIMAppConfig;->appSign:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lim/zego/zim/internal/ZIMImpl;->create(JLjava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    .line 431
    new-instance p0, Lim/zego/zim/internal/ZIMImpl;

    invoke-direct {p0, v0, v1, p1}, Lim/zego/zim/internal/ZIMImpl;-><init>(JLandroid/content/Context;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 420
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "[ZEGO] Android application context not set!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 414
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "[ZEGO] The version of SDK jar and native shared library (.so) does not match!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private genSeq()I
    .locals 1

    .line 484
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->sequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public static getInstance(J)Lim/zego/zim/internal/ZIMImpl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 405
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->zimHandleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lim/zego/zim/internal/ZIMImpl;

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 409
    invoke-static {}, Lim/zego/zim/internal/generated/ZIMGenMethod;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZIMInstance()Lim/zego/zim/internal/ZIMImpl;
    .locals 4

    .line 398
    invoke-static {}, Lim/zego/zim/internal/generated/ZIMGenMethod;->getInstance()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 402
    :cond_0
    sget-object v2, Lim/zego/zim/internal/ZIMImpl;->zimHandleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zim/internal/ZIMImpl;

    return-object v0
.end method

.method public static setAdvancedConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 446
    invoke-static {p0, p1}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setAdvancedConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCacheConfig(Lim/zego/zim/entity/ZIMCacheConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 464
    iget-object p0, p0, Lim/zego/zim/entity/ZIMCacheConfig;->cachePath:Ljava/lang/String;

    invoke-static {p0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setCacheConfig(Ljava/lang/String;)V

    return-void
.end method

.method public static setGeofencingConfig(Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMGeofencingType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "areaList",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lim/zego/zim/enums/ZIMGeofencingType;",
            ")Z"
        }
    .end annotation

    .line 450
    invoke-virtual {p1}, Lim/zego/zim/enums/ZIMGeofencingType;->value()I

    move-result p1

    invoke-static {p1, p0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setGeofencingConfig(ILjava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static setLogConfig(Lim/zego/zim/entity/ZIMLogConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lim/zego/zim/entity/ZIMLogConfig;->logPath:Ljava/lang/String;

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMLogConfig;->logSize:J

    invoke-static {v0, v1, v2}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setLogConfig(Ljava/lang/String;J)V

    return-void
.end method

.method public static setPushID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pushID"
        }
    .end annotation

    .line 437
    invoke-static {p0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setPushID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptFriendApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;Lim/zego/zim/callback/ZIMFriendApplicationAcceptedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "config",
            "callback"
        }
    .end annotation

    .line 1524
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1525
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendApplicationAcceptedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1527
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMFriendApplicationAcceptConfig(Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;)Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;

    move-result-object p2

    .line 1526
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->acceptFriendApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;I)V

    return-void
.end method

.method public acceptGroupInviteApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupInviteApplicationAcceptConfig;Lim/zego/zim/callback/ZIMGroupInviteApplicationAcceptedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inviterUserID",
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1187
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1188
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1191
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGroupInviteApplicationAcceptConfig(Lim/zego/zim/entity/ZIMGroupInviteApplicationAcceptConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationAcceptConfig;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    .line 1189
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->acceptGroupInviteApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationAcceptConfig;I)V

    return-void
.end method

.method public acceptGroupJoinApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupJoinApplicationAcceptConfig;Lim/zego/zim/callback/ZIMGroupJoinApplicationAcceptedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1154
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1155
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1158
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGenGroupJoinApplicationAcceptConfig(Lim/zego/zim/entity/ZIMGroupJoinApplicationAcceptConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationAcceptConfig;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    .line 1156
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->acceptGroupJoinApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationAcceptConfig;I)V

    return-void
.end method

.method public addFriend(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendAddConfig;Lim/zego/zim/callback/ZIMFriendAddedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "config",
            "callback"
        }
    .end annotation

    .line 1461
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1462
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendAddedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMFriendAddConfig(Lim/zego/zim/entity/ZIMFriendAddConfig;)Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;

    move-result-object p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->addFriend(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;I)V

    return-void
.end method

.method public addMessageReaction(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageReactionAddedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reactionType",
            "message",
            "callback"
        }
    .end annotation

    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0, p1, p2, v0, p3}, Lim/zego/zim/internal/ZIMImpl;->addMessageReaction(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageReactionAddConfig;Lim/zego/zim/callback/ZIMMessageReactionAddedCallback;)V

    return-void
.end method

.method public addMessageReaction(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageReactionAddConfig;Lim/zego/zim/callback/ZIMMessageReactionAddedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reactionType",
            "message",
            "config",
            "callback"
        }
    .end annotation

    .line 779
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 780
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageReactionAddCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v3

    .line 782
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMMessageReactionAddConfig(Lim/zego/zim/entity/ZIMMessageReactionAddConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageReactionAddConfig;

    move-result-object v4

    move-object v2, p1

    .line 781
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->addMessageReaction(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageReactionAddConfig;I)V

    return-void
.end method

.method public addUsersToBlacklist(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMBlacklistUsersAddedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/callback/ZIMBlacklistUsersAddedCallback;",
            ")V"
        }
    .end annotation

    .line 1562
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1563
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->blacklistUsersAddedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->addUsersToBlacklist(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public beginRoomAttributesBatchOperation(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomID",
            "config"
        }
    .end annotation

    .line 958
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 959
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 961
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->roomAttributesBatchOperationConfigToGenRoomAttributesBatchOperationConfig(Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomAttributesBatchOperationConfig;

    move-result-object p2

    .line 959
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->beginRoomAttributesBatchOperation(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomAttributesBatchOperationConfig;I)V

    return-void
.end method

.method public callAccept(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallAcceptConfig;Lim/zego/zim/callback/ZIMCallAcceptanceSentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callID",
            "config",
            "callback"
        }
    .end annotation

    .line 1400
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1401
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->callAcceptanceSentCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenCallAcceptConfig(Lim/zego/zim/entity/ZIMCallAcceptConfig;)Lim/zego/zim/internal/generated/ZIMGenCallAcceptConfig;

    move-result-object p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->callAccept(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallAcceptConfig;I)V

    return-void
.end method

.method public callCancel(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMCallCancelConfig;Lim/zego/zim/callback/ZIMCallCancelSentCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "invitees",
            "callID",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/entity/ZIMCallCancelConfig;",
            "Lim/zego/zim/callback/ZIMCallCancelSentCallback;",
            ")V"
        }
    .end annotation

    .line 1391
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1392
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callCancelSentCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1394
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenCallCancelConfig(Lim/zego/zim/entity/ZIMCallCancelConfig;)Lim/zego/zim/internal/generated/ZIMGenCallCancelConfig;

    move-result-object v4

    move-object v3, p2

    .line 1393
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->callCancel(JLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallCancelConfig;I)V

    return-void
.end method

.method public callEnd(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallEndConfig;Lim/zego/zim/callback/ZIMCallEndSentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callID",
            "config",
            "callback"
        }
    .end annotation

    .line 1435
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1436
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->callEndSentCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenCallEndConfig(Lim/zego/zim/entity/ZIMCallEndConfig;)Lim/zego/zim/internal/generated/ZIMGenCallEndConfig;

    move-result-object p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->callEnd(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallEndConfig;I)V

    return-void
.end method

.method public callExperimentalAPI(Ljava/lang/String;Lim/zego/zim/callback/ZIMExperimentalAPICalledCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "callback"
        }
    .end annotation

    .line 520
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 521
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->experimentalAPICalledCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->callExperimentalAPI(JLjava/lang/String;I)V

    return-void
.end method

.method public callInvite(Ljava/util/List;Lim/zego/zim/entity/ZIMCallInviteConfig;Lim/zego/zim/callback/ZIMCallInvitationSentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "invitees",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMCallInviteConfig;",
            "Lim/zego/zim/callback/ZIMCallInvitationSentCallback;",
            ")V"
        }
    .end annotation

    .line 1382
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1383
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->callInvitationSentCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1385
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenCallInviteConfig(Lim/zego/zim/entity/ZIMCallInviteConfig;)Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;

    move-result-object p2

    .line 1384
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->callInvite(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;I)V

    return-void
.end method

.method public callJoin(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallJoinConfig;Lim/zego/zim/callback/ZIMCallJoinSentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callID",
            "config",
            "callback"
        }
    .end annotation

    .line 1418
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1419
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->callJoinSentCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenCallJoinConfig(Lim/zego/zim/entity/ZIMCallJoinConfig;)Lim/zego/zim/internal/generated/ZIMGenCallJoinConfig;

    move-result-object p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->callJoin(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallJoinConfig;I)V

    return-void
.end method

.method public callQuit(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallQuitConfig;Lim/zego/zim/callback/ZIMCallQuitSentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callID",
            "config",
            "callback"
        }
    .end annotation

    .line 1427
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1428
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->callQuitSentCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenCallQuitConfig(Lim/zego/zim/entity/ZIMCallQuitConfig;)Lim/zego/zim/internal/generated/ZIMGenCallQuitConfig;

    move-result-object p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->callQuit(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallQuitConfig;I)V

    return-void
.end method

.method public callReject(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallRejectConfig;Lim/zego/zim/callback/ZIMCallRejectionSentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callID",
            "config",
            "callback"
        }
    .end annotation

    .line 1409
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1410
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->callRejectionSentCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenCallRejectConfig(Lim/zego/zim/entity/ZIMCallRejectConfig;)Lim/zego/zim/internal/generated/ZIMGenCallRejectConfig;

    move-result-object p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->callReject(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallRejectConfig;I)V

    return-void
.end method

.method public callingInvite(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMCallingInviteConfig;Lim/zego/zim/callback/ZIMCallingInvitationSentCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "invitees",
            "callID",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/entity/ZIMCallingInviteConfig;",
            "Lim/zego/zim/callback/ZIMCallingInvitationSentCallback;",
            ")V"
        }
    .end annotation

    .line 1443
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1444
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->callingInvitationSentCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1446
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenCallingInviteConfig(Lim/zego/zim/entity/ZIMCallingInviteConfig;)Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;

    move-result-object v4

    move-object v2, p2

    .line 1445
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->callingInvite(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;I)V

    return-void
.end method

.method public cancelSendingMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMSendingMessageCancelConfig;Lim/zego/zim/callback/ZIMSendingMessageCancelledCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "config",
            "callback"
        }
    .end annotation

    .line 717
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 718
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->cancelledSendingMessageCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 721
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object p1

    .line 722
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->cancelSendingMessageConfigToGenCancelSendingMessageConfig(Lim/zego/zim/entity/ZIMSendingMessageCancelConfig;)Lim/zego/zim/internal/generated/ZIMGenSendingMessageCancelConfig;

    move-result-object p2

    .line 720
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->cancelSendingMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenSendingMessageCancelConfig;I)V

    return-void
.end method

.method public checkFriendsRelation(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMFriendRelationCheckConfig;Lim/zego/zim/callback/ZIMFriendsRelationCheckedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMFriendRelationCheckConfig;",
            "Lim/zego/zim/callback/ZIMFriendsRelationCheckedCallback;",
            ")V"
        }
    .end annotation

    .line 1490
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1491
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendCheckedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1493
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMFriendCheckConfig(Lim/zego/zim/entity/ZIMFriendRelationCheckConfig;)Lim/zego/zim/internal/generated/ZIMGenFriendCheckConfig;

    move-result-object p2

    .line 1492
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->checkFriendsRelation(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenFriendCheckConfig;I)V

    return-void
.end method

.method public checkUserIsInBlacklist(Ljava/lang/String;Lim/zego/zim/callback/ZIMBlacklistCheckedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userID",
            "callback"
        }
    .end annotation

    .line 1586
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1587
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->blacklistCheckedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->checkUserIsInBlacklist(JLjava/lang/String;I)V

    return-void
.end method

.method public clearConversationTotalUnreadMessageCount(Lim/zego/zim/callback/ZIMConversationTotalUnreadMessageCountClearedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1833
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1834
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationsAllUnreadMessageCountClearedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->clearConversationTotalUnreadMessageCount(JI)V

    return-void
.end method

.method public clearConversationUnreadMessageCount(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationUnreadMessageCountClearedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "type",
            "callback"
        }
    .end annotation

    .line 1824
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1825
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationUnreadMessageCountClearedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->clearConversationUnreadMessageCount(JLjava/lang/String;II)V

    return-void
.end method

.method public clearLocalFileCache(Lim/zego/zim/entity/ZIMFileCacheClearConfig;Lim/zego/zim/callback/ZIMFileCacheClearedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1878
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1879
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->fileCacheClearedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenFileCacheClearConfig(Lim/zego/zim/entity/ZIMFileCacheClearConfig;)Lim/zego/zim/internal/generated/ZIMGenFileCacheClearConfig;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->clearLocalFileCache(JLim/zego/zim/internal/generated/ZIMGenFileCacheClearConfig;I)V

    return-void
.end method

.method public createGroup(Lim/zego/zim/entity/ZIMGroupInfo;Ljava/util/List;Lim/zego/zim/callback/ZIMGroupCreatedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupInfo",
            "userIDList",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/entity/ZIMGroupInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/callback/ZIMGroupCreatedCallback;",
            ")V"
        }
    .end annotation

    .line 1017
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1018
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupCreatedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->groupInfoToGenGroupInfo(Lim/zego/zim/entity/ZIMGroupInfo;)Lim/zego/zim/internal/generated/ZIMGenGroupInfo;

    move-result-object v2

    .line 1020
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 p1, 0x0

    .line 1021
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->groupAdvancedConfigToGenGroupAdvancedConfig(Lim/zego/zim/entity/ZIMGroupAdvancedConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;

    move-result-object v4

    .line 1019
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->createGroup(JLim/zego/zim/internal/generated/ZIMGenGroupInfo;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;I)V

    return-void
.end method

.method public createGroup(Lim/zego/zim/entity/ZIMGroupInfo;Ljava/util/List;Lim/zego/zim/entity/ZIMGroupAdvancedConfig;Lim/zego/zim/callback/ZIMGroupCreatedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupInfo",
            "userIDList",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/entity/ZIMGroupInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMGroupAdvancedConfig;",
            "Lim/zego/zim/callback/ZIMGroupCreatedCallback;",
            ")V"
        }
    .end annotation

    .line 1028
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1029
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupCreatedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->groupInfoToGenGroupInfo(Lim/zego/zim/entity/ZIMGroupInfo;)Lim/zego/zim/internal/generated/ZIMGenGroupInfo;

    move-result-object v2

    .line 1031
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1032
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->groupAdvancedConfigToGenGroupAdvancedConfig(Lim/zego/zim/entity/ZIMGroupAdvancedConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;

    move-result-object v4

    .line 1030
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->createGroup(JLim/zego/zim/internal/generated/ZIMGenGroupInfo;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;I)V

    return-void
.end method

.method public createRoom(Lim/zego/zim/entity/ZIMRoomInfo;Lim/zego/zim/callback/ZIMRoomCreatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "roomInfo",
            "callback"
        }
    .end annotation

    .line 847
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 848
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomCreatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    const/4 p2, 0x0

    .line 850
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->roomAdvancedConfigToGenRoomAdvancedConfig(Lim/zego/zim/entity/ZIMRoomAdvancedConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;

    move-result-object p2

    .line 851
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->roomInfoToGenRoomInfo(Lim/zego/zim/entity/ZIMRoomInfo;)Lim/zego/zim/internal/generated/ZIMGenRoomInfo;

    move-result-object p1

    .line 849
    invoke-static {v1, v2, p2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->createRoom(JLim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;Lim/zego/zim/internal/generated/ZIMGenRoomInfo;I)V

    return-void
.end method

.method public createRoom(Lim/zego/zim/entity/ZIMRoomInfo;Lim/zego/zim/entity/ZIMRoomAdvancedConfig;Lim/zego/zim/callback/ZIMRoomCreatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomInfo",
            "config",
            "callback"
        }
    .end annotation

    .line 857
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 858
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomCreatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 860
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->roomAdvancedConfigToGenRoomAdvancedConfig(Lim/zego/zim/entity/ZIMRoomAdvancedConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;

    move-result-object p2

    .line 861
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->roomInfoToGenRoomInfo(Lim/zego/zim/entity/ZIMRoomInfo;)Lim/zego/zim/internal/generated/ZIMGenRoomInfo;

    move-result-object p1

    .line 859
    invoke-static {v1, v2, p2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->createRoom(JLim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;Lim/zego/zim/internal/generated/ZIMGenRoomInfo;I)V

    return-void
.end method

.method public deleteAllConversationMessages(Lim/zego/zim/entity/ZIMMessageDeleteConfig;Lim/zego/zim/callback/ZIMConversationMessagesAllDeletedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1736
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1737
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationMessagesAllDeletedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1739
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageDeleteConfig(Lim/zego/zim/entity/ZIMMessageDeleteConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;

    move-result-object p1

    .line 1738
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteAllConversationMessages(JLim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;I)V

    return-void
.end method

.method public deleteAllConversations(Lim/zego/zim/entity/ZIMConversationDeleteConfig;Lim/zego/zim/callback/ZIMConversationsAllDeletedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1814
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1815
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationsAllDeletedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1817
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenConversationDeleteConfig(Lim/zego/zim/entity/ZIMConversationDeleteConfig;)Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;

    move-result-object p1

    .line 1816
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteAllConversations(JLim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;I)V

    return-void
.end method

.method public deleteAllMessage(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageDeleteConfig;Lim/zego/zim/callback/ZIMMessageDeletedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "type",
            "config",
            "callback"
        }
    .end annotation

    .line 1727
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1728
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageDeletedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v3

    .line 1730
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageDeleteConfig(Lim/zego/zim/entity/ZIMMessageDeleteConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;

    move-result-object v4

    move-object v2, p1

    .line 1729
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteAllMessage(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;I)V

    return-void
.end method

.method public deleteConversation(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMConversationDeleteConfig;Lim/zego/zim/callback/ZIMConversationDeletedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "type",
            "config",
            "callback"
        }
    .end annotation

    .line 1805
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1806
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationDeletedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v3

    .line 1808
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenConversationDeleteConfig(Lim/zego/zim/entity/ZIMConversationDeleteConfig;)Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;

    move-result-object v4

    move-object v2, p1

    .line 1807
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteConversation(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;I)V

    return-void
.end method

.method public deleteFriends(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMFriendDeleteConfig;Lim/zego/zim/callback/ZIMFriendsDeletedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMFriendDeleteConfig;",
            "Lim/zego/zim/callback/ZIMFriendsDeletedCallback;",
            ")V"
        }
    .end annotation

    .line 1480
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1481
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendDeletedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1483
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMFriendDeleteConfig(Lim/zego/zim/entity/ZIMFriendDeleteConfig;)Lim/zego/zim/internal/generated/ZIMGenFriendDeleteConfig;

    move-result-object p2

    .line 1482
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteFriends(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenFriendDeleteConfig;I)V

    return-void
.end method

.method public deleteGroupAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesOperatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keys",
            "groupID",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/callback/ZIMGroupAttributesOperatedCallback;",
            ")V"
        }
    .end annotation

    .line 1232
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1233
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupAttributesOperatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteGroupAttributes(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public deleteMessageAllReactions(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageReactionsAllDeletedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "callback"
        }
    .end annotation

    .line 798
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 799
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteMessageAllReactions(JLim/zego/zim/internal/generated/ZIMGenMessage;I)V

    return-void
.end method

.method public deleteMessageReaction(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageReactionDeletedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reactionType",
            "message",
            "callback"
        }
    .end annotation

    .line 789
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 790
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->messageReactionDeleteCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 792
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object p2

    .line 791
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteMessageReaction(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V

    return-void
.end method

.method public deleteMessages(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageDeleteConfig;Lim/zego/zim/callback/ZIMMessageDeletedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageList",
            "conversationID",
            "type",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/enums/ZIMConversationType;",
            "Lim/zego/zim/entity/ZIMMessageDeleteConfig;",
            "Lim/zego/zim/callback/ZIMMessageDeletedCallback;",
            ")V"
        }
    .end annotation

    .line 1716
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v6

    .line 1717
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageDeletedCallbacks:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1719
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->zimMessageListToGenMessageList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1720
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    invoke-static {p4}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageDeleteConfig(Lim/zego/zim/entity/ZIMMessageDeleteConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;

    move-result-object v5

    move-object v3, p2

    .line 1718
    invoke-static/range {v0 .. v6}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteMessages(JLjava/util/ArrayList;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;I)V

    return-void
.end method

.method public deleteRoomAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomAttributesDeleteConfig;Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keys",
            "roomID",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/entity/ZIMRoomAttributesDeleteConfig;",
            "Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;",
            ")V"
        }
    .end annotation

    .line 948
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 949
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomAttributesOperatedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 951
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 952
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->roomAttributesDeleteConfigToGenRoomAttributesDeleteConfig(Lim/zego/zim/entity/ZIMRoomAttributesDeleteConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;

    move-result-object v4

    move-object v3, p2

    .line 950
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->deleteRoomAttributes(JLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;I)V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 441
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->zimHandleMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/generated/ZIMGenMethod;->destroy(J)V

    return-void
.end method

.method public dismissGroup(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupDismissedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupID",
            "callback"
        }
    .end annotation

    .line 1038
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1039
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupDismissedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->dismissGroup(JLjava/lang/String;I)V

    return-void
.end method

.method public downloadMediaFile(Lim/zego/zim/entity/ZIMMediaMessage;Lim/zego/zim/enums/ZIMMediaFileType;Lim/zego/zim/callback/ZIMMediaDownloadedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "type",
            "callback"
        }
    .end annotation

    .line 728
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 730
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->mediaDownloadedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMMediaFileType;->value()I

    move-result v3

    const/4 p1, 0x0

    .line 732
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMGenMediaDownloadConfig(Lim/zego/zim/entity/ZIMMediaDownloadConfig;)Lim/zego/zim/internal/generated/ZIMGenMediaDownloadConfig;

    move-result-object v4

    .line 731
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->downloadMediaFile(JLim/zego/zim/internal/generated/ZIMGenMessage;ILim/zego/zim/internal/generated/ZIMGenMediaDownloadConfig;I)V

    return-void
.end method

.method public downloadMediaFile(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/enums/ZIMMediaFileType;Lim/zego/zim/entity/ZIMMediaDownloadConfig;Lim/zego/zim/callback/ZIMMediaDownloadedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "fileType",
            "config",
            "callback"
        }
    .end annotation

    .line 739
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 740
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->mediaDownloadedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 743
    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMMediaFileType;->value()I

    move-result v3

    .line 744
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMGenMediaDownloadConfig(Lim/zego/zim/entity/ZIMMediaDownloadConfig;)Lim/zego/zim/internal/generated/ZIMGenMediaDownloadConfig;

    move-result-object v4

    .line 742
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->downloadMediaFile(JLim/zego/zim/internal/generated/ZIMGenMessage;ILim/zego/zim/internal/generated/ZIMGenMediaDownloadConfig;I)V

    return-void
.end method

.method public editMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageEditConfig;Lim/zego/zim/callback/ZIMMessageSentFullCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "config",
            "callback"
        }
    .end annotation

    .line 705
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 706
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->sentFullCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getMessageID()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getLocalMessageID()J

    move-result-wide v1

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    .line 708
    iget-object p3, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_0
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object p1

    .line 711
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->editConfigToGenEditConfig(Lim/zego/zim/entity/ZIMMessageEditConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageEditConfig;

    move-result-object p2

    .line 710
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->editMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageEditConfig;I)V

    return-void
.end method

.method public endRoomAttributesBatchOperation(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomAttributesBatchOperatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomID",
            "callback"
        }
    .end annotation

    .line 969
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 970
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomAttributesBatchOperatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->endRoomAttributesBatchOperation(JLjava/lang/String;I)V

    return-void
.end method

.method public enterRoom(Lim/zego/zim/entity/ZIMRoomInfo;Lim/zego/zim/entity/ZIMRoomAdvancedConfig;Lim/zego/zim/callback/ZIMRoomEnteredCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomInfo",
            "config",
            "callback"
        }
    .end annotation

    .line 874
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 875
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomEnteredCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->roomInfoToGenRoomInfo(Lim/zego/zim/entity/ZIMRoomInfo;)Lim/zego/zim/internal/generated/ZIMGenRoomInfo;

    move-result-object p1

    .line 877
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->roomAdvancedConfigToGenRoomAdvancedConfig(Lim/zego/zim/entity/ZIMRoomAdvancedConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;

    move-result-object p2

    .line 876
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->enterRoom(JLim/zego/zim/internal/generated/ZIMGenRoomInfo;Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;I)V

    return-void
.end method

.method public exportLocalMessages(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageExportConfig;Lim/zego/zim/callback/ZIMMessageExportedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "folderPath",
            "config",
            "callback"
        }
    .end annotation

    .line 1870
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1871
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->messageExportedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1873
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageExportConfig(Lim/zego/zim/entity/ZIMMessageExportConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageExportConfig;

    move-result-object p2

    .line 1872
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->exportLocalMessages(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageExportConfig;I)V

    return-void
.end method

.method public importLocalMessages(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageImportConfig;Lim/zego/zim/callback/ZIMMessageImportedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "folderPath",
            "config",
            "callback"
        }
    .end annotation

    .line 1862
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1863
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->messageImportedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1865
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageImportConfig(Lim/zego/zim/entity/ZIMMessageImportConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageImportConfig;

    move-result-object p2

    .line 1864
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->importLocalMessages(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageImportConfig;I)V

    return-void
.end method

.method public insertMessageToLocalDB(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Ljava/lang/String;Lim/zego/zim/callback/ZIMMessageInsertedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "conversationID",
            "conversationType",
            "senderUserID",
            "callback"
        }
    .end annotation

    .line 1604
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v6

    .line 1605
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageInsertedCallback:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getMessageID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getLocalMessageID()J

    move-result-wide v0

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    .line 1607
    iget-object p5, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    :cond_0
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 1611
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    move-object v3, p2

    move-object v5, p4

    .line 1610
    invoke-static/range {v0 .. v6}, Lim/zego/zim/internal/generated/ZIMGenMethod;->insertMessageToLocalDB(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public inviteUsersIntoGroup(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupUsersInvitedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "groupID",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/callback/ZIMGroupUsersInvitedCallback;",
            ")V"
        }
    .end annotation

    .line 1060
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1061
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupUsersInvitedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->inviteUsersIntoGroup(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public joinGroup(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupJoinedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupID",
            "callback"
        }
    .end annotation

    .line 1045
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1046
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupJoinedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->joinGroup(JLjava/lang/String;I)V

    return-void
.end method

.method public joinRoom(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomJoinedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "roomID",
            "callback"
        }
    .end annotation

    .line 866
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 867
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomJoinedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->joinRoom(JLjava/lang/String;I)V

    return-void
.end method

.method public kickGroupMembers(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberKickedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "groupID",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/callback/ZIMGroupMemberKickedCallback;",
            ")V"
        }
    .end annotation

    .line 1069
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1070
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberKickedoutCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->kickGroupMembers(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public leaveAllRoom(Lim/zego/zim/callback/ZIMRoomAllLeftCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 902
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 903
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->allRoomLeftCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->leaveAllRoom(JI)V

    return-void
.end method

.method public leaveGroup(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupLeftCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupID",
            "callback"
        }
    .end annotation

    .line 1052
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1053
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupLeftCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->leaveGroup(JLjava/lang/String;I)V

    return-void
.end method

.method public leaveRoom(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomLeftCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomID",
            "callback"
        }
    .end annotation

    .line 895
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 896
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomLeftCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->leaveRoom(JLjava/lang/String;I)V

    return-void
.end method

.method public login(Lim/zego/zim/entity/ZIMUserInfo;Lim/zego/zim/callback/ZIMLoggedInCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userInfo",
            "callback"
        }
    .end annotation

    .line 474
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 475
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->loggedInCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance p2, Lim/zego/zim/entity/ZIMLoginConfig;

    invoke-direct {p2}, Lim/zego/zim/entity/ZIMLoginConfig;-><init>()V

    .line 477
    iget-object v1, p1, Lim/zego/zim/entity/ZIMUserInfo;->userName:Ljava/lang/String;

    iput-object v1, p2, Lim/zego/zim/entity/ZIMLoginConfig;->userName:Ljava/lang/String;

    .line 478
    const-string v1, ""

    iput-object v1, p2, Lim/zego/zim/entity/ZIMLoginConfig;->token:Ljava/lang/String;

    const/4 v1, 0x0

    .line 479
    iput-boolean v1, p2, Lim/zego/zim/entity/ZIMLoginConfig;->isOfflineLogin:Z

    .line 480
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    iget-object p1, p1, Lim/zego/zim/entity/ZIMUserInfo;->userID:Ljava/lang/String;

    .line 481
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->loginConfigToGenLoginConfig(Lim/zego/zim/entity/ZIMLoginConfig;)Lim/zego/zim/internal/generated/ZIMGenLoginConfig;

    move-result-object p2

    .line 480
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->login(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenLoginConfig;I)V

    return-void
.end method

.method public login(Lim/zego/zim/entity/ZIMUserInfo;Ljava/lang/String;Lim/zego/zim/callback/ZIMLoggedInCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userInfo",
            "token",
            "callback"
        }
    .end annotation

    .line 488
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 489
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->loggedInCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance p3, Lim/zego/zim/entity/ZIMLoginConfig;

    invoke-direct {p3}, Lim/zego/zim/entity/ZIMLoginConfig;-><init>()V

    .line 491
    iget-object v1, p1, Lim/zego/zim/entity/ZIMUserInfo;->userName:Ljava/lang/String;

    iput-object v1, p3, Lim/zego/zim/entity/ZIMLoginConfig;->userName:Ljava/lang/String;

    .line 492
    iput-object p2, p3, Lim/zego/zim/entity/ZIMLoginConfig;->token:Ljava/lang/String;

    const/4 p2, 0x0

    .line 493
    iput-boolean p2, p3, Lim/zego/zim/entity/ZIMLoginConfig;->isOfflineLogin:Z

    .line 494
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    iget-object p1, p1, Lim/zego/zim/entity/ZIMUserInfo;->userID:Ljava/lang/String;

    .line 495
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->loginConfigToGenLoginConfig(Lim/zego/zim/entity/ZIMLoginConfig;)Lim/zego/zim/internal/generated/ZIMGenLoginConfig;

    move-result-object p2

    .line 494
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->login(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenLoginConfig;I)V

    return-void
.end method

.method public login(Ljava/lang/String;Lim/zego/zim/entity/ZIMLoginConfig;Lim/zego/zim/callback/ZIMLoggedInCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "config",
            "callback"
        }
    .end annotation

    .line 500
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 501
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->loggedInCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->loginConfigToGenLoginConfig(Lim/zego/zim/entity/ZIMLoginConfig;)Lim/zego/zim/internal/generated/ZIMGenLoginConfig;

    move-result-object p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->login(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenLoginConfig;I)V

    return-void
.end method

.method public logout()V
    .locals 2

    .line 508
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/generated/ZIMGenMethod;->logout(J)V

    return-void
.end method

.method public muteGroup(ZLjava/lang/String;Lim/zego/zim/entity/ZIMGroupMuteConfig;Lim/zego/zim/callback/ZIMGroupMutedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isMute",
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1274
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1275
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMutedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1277
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->groupMuteConfigToGenGroupAdvancedConfig(Lim/zego/zim/entity/ZIMGroupMuteConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;

    move-result-object v4

    move v2, p1

    move-object v3, p2

    .line 1276
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->muteGroup(JZLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;I)V

    return-void
.end method

.method public muteGroupMembers(ZLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberMuteConfig;Lim/zego/zim/callback/ZIMGroupMembersMutedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isMute",
            "userIDs",
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/entity/ZIMGroupMemberMuteConfig;",
            "Lim/zego/zim/callback/ZIMGroupMembersMutedCallback;",
            ")V"
        }
    .end annotation

    .line 1284
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v6

    .line 1285
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMembersMutedCallbacks:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1288
    invoke-static {p4}, Lim/zego/zim/internal/generated/ZIMCovert;->groupMemberMuteConfigToGenGroupMemberMuteConfig(Lim/zego/zim/entity/ZIMGroupMemberMuteConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupMemberMuteConfig;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1286
    invoke-static/range {v0 .. v6}, Lim/zego/zim/internal/generated/ZIMGenMethod;->muteGroupMemberList(JZLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberMuteConfig;I)V

    return-void
.end method

.method public pinMessage(Lim/zego/zim/entity/ZIMMessage;ZLim/zego/zim/callback/ZIMMessagePinnedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "isPinned",
            "callback"
        }
    .end annotation

    .line 818
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 819
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messagePinnedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    new-instance p3, Lim/zego/zim/entity/ZIMMessagePinConfig;

    invoke-direct {p3}, Lim/zego/zim/entity/ZIMMessagePinConfig;-><init>()V

    .line 821
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 822
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMPinMessageConfig(Lim/zego/zim/entity/ZIMMessagePinConfig;)Lim/zego/zim/internal/generated/ZIMGenPinMessageConfig;

    move-result-object v4

    move v3, p2

    .line 821
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->pinMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;ZLim/zego/zim/internal/generated/ZIMGenPinMessageConfig;I)V

    return-void
.end method

.method public pinMessage(Lim/zego/zim/entity/ZIMMessage;ZLim/zego/zim/entity/ZIMMessagePinConfig;Lim/zego/zim/callback/ZIMMessagePinnedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "isPinned",
            "config",
            "callback"
        }
    .end annotation

    .line 828
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 829
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messagePinnedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 831
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMPinMessageConfig(Lim/zego/zim/entity/ZIMMessagePinConfig;)Lim/zego/zim/internal/generated/ZIMGenPinMessageConfig;

    move-result-object v4

    move v3, p2

    .line 830
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->pinMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;ZLim/zego/zim/internal/generated/ZIMGenPinMessageConfig;I)V

    return-void
.end method

.method public queryBlacklist(Lim/zego/zim/entity/ZIMBlacklistQueryConfig;Lim/zego/zim/callback/ZIMBlacklistQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1578
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1579
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->blacklistQueriedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMBlacklistQueryConfig(Lim/zego/zim/entity/ZIMBlacklistQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenBlacklistQueryConfig;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryBlacklist(JLim/zego/zim/internal/generated/ZIMGenBlacklistQueryConfig;I)V

    return-void
.end method

.method public queryCallInvitationList(Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;Lim/zego/zim/callback/ZIMCallInvitationListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1452
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1453
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->callListQueriedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenQueryCallListConfig(Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenQueryCallListConfig;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryCallList(JLim/zego/zim/internal/generated/ZIMGenQueryCallListConfig;I)V

    return-void
.end method

.method public queryCombineMessageDetail(Lim/zego/zim/entity/ZIMCombineMessage;Lim/zego/zim/callback/ZIMCombineMessageDetailQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "callback"
        }
    .end annotation

    .line 1675
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1676
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->combineMessageDetailQueriedCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryCombineMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;I)V

    return-void
.end method

.method public queryConversation(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "callback"
        }
    .end annotation

    .line 1764
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1765
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryConversation(JLjava/lang/String;II)V

    return-void
.end method

.method public queryConversationList(Lim/zego/zim/entity/ZIMConversationQueryConfig;Lim/zego/zim/callback/ZIMConversationListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1745
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1746
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationListQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1748
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenConversationQueryConfig(Lim/zego/zim/entity/ZIMConversationQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;

    move-result-object p1

    .line 1747
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryConversationList(JLim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;I)V

    return-void
.end method

.method public queryConversationList(Lim/zego/zim/entity/ZIMConversationQueryConfig;Lim/zego/zim/entity/ZIMConversationFilterOption;Lim/zego/zim/callback/ZIMConversationListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "option",
            "callback"
        }
    .end annotation

    .line 1754
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1755
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationListQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1757
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenConversationQueryConfig(Lim/zego/zim/entity/ZIMConversationQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;

    move-result-object p1

    .line 1758
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenConversationFilterOption(Lim/zego/zim/entity/ZIMConversationFilterOption;)Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;

    move-result-object p2

    .line 1756
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryConversationListWithConfig(JLim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;I)V

    return-void
.end method

.method public queryConversationPinnedList(Lim/zego/zim/entity/ZIMConversationQueryConfig;Lim/zego/zim/callback/ZIMConversationPinnedListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1773
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1774
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationPinnedListQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1776
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenConversationQueryConfig(Lim/zego/zim/entity/ZIMConversationQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;

    move-result-object p1

    .line 1775
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryConversationPinnedList(JLim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;I)V

    return-void
.end method

.method public queryConversationTotalUnreadMessageCount(Lim/zego/zim/entity/ZIMConversationTotalUnreadMessageCountQueryConfig;Lim/zego/zim/callback/ZIMConversationTotalUnreadMessageCountQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1785
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1786
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationTotalUnreadMessageCountQueriedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1788
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenConversationTotalUnreadCountQueryConfig(Lim/zego/zim/entity/ZIMConversationTotalUnreadMessageCountQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenConversationTotalUnreadCountQueryConfig;

    move-result-object p1

    .line 1787
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryConversationTotalUnreadCount(JLim/zego/zim/internal/generated/ZIMGenConversationTotalUnreadCountQueryConfig;I)V

    return-void
.end method

.method public queryFriendApplicationList(Lim/zego/zim/entity/ZIMFriendApplicationListQueryConfig;Lim/zego/zim/callback/ZIMFriendApplicationListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1553
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1554
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendApplicationListQueriedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1556
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMFriendApplicationListQueryConfig(Lim/zego/zim/entity/ZIMFriendApplicationListQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenFriendApplicationListQueryConfig;

    move-result-object p1

    .line 1555
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryFriendApplicationList(JLim/zego/zim/internal/generated/ZIMGenFriendApplicationListQueryConfig;I)V

    return-void
.end method

.method public queryFriendList(Lim/zego/zim/entity/ZIMFriendListQueryConfig;Lim/zego/zim/callback/ZIMFriendListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1544
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1545
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendListQueriedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMFriendListQueryConfig(Lim/zego/zim/entity/ZIMFriendListQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenFriendListQueryConfig;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryFriendList(JLim/zego/zim/internal/generated/ZIMGenFriendListQueryConfig;I)V

    return-void
.end method

.method public queryFriendsInfo(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMFriendsInfoQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/callback/ZIMFriendsInfoQueriedCallback;",
            ")V"
        }
    .end annotation

    .line 1516
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1517
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendQueriedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryFriendsInfo(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public queryGroupAllAttributes(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupID",
            "callback"
        }
    .end annotation

    .line 1250
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1251
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupAttributesQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupAllAttributes(JLjava/lang/String;I)V

    return-void
.end method

.method public queryGroupApplicationList(Lim/zego/zim/entity/ZIMGroupApplicationListQueryConfig;Lim/zego/zim/callback/ZIMGroupApplicationListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1208
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1209
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1211
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGroupApplicationListQueryConfig(Lim/zego/zim/entity/ZIMGroupApplicationListQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;

    move-result-object p1

    .line 1210
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupApplicationList(JLim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;I)V

    return-void
.end method

.method public queryGroupAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keys",
            "groupID",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/callback/ZIMGroupAttributesQueriedCallback;",
            ")V"
        }
    .end annotation

    .line 1241
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1242
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupAttributesQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupAttributes(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public queryGroupInfo(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupInfoQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupID",
            "callback"
        }
    .end annotation

    .line 1216
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1217
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupInfoQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupInfo(JLjava/lang/String;I)V

    return-void
.end method

.method public queryGroupList(ILim/zego/zim/entity/ZIMGroupListQueryConfig;Lim/zego/zim/callback/ZIMGroupListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "config",
            "callback"
        }
    .end annotation

    .line 1319
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1320
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupListQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1322
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGenGroupListQueryConfig(Lim/zego/zim/entity/ZIMGroupListQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;

    move-result-object p2

    .line 1321
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupListByCount(JILim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;I)V

    return-void
.end method

.method public queryGroupList(Lim/zego/zim/callback/ZIMGroupListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1311
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1312
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupListQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupList(JI)V

    return-void
.end method

.method public queryGroupMemberCount(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberCountQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupID",
            "callback"
        }
    .end annotation

    .line 1336
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1337
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberCountQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupMemberCount(JLjava/lang/String;I)V

    return-void
.end method

.method public queryGroupMemberInfo(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberInfoQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1304
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1305
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberInfoQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupMemberInfo(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public queryGroupMemberList(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;Lim/zego/zim/callback/ZIMGroupMemberListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1328
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1329
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberListQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1331
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenGroupMemberQueryConfig(Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;

    move-result-object p2

    .line 1330
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupMemberList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;I)V

    return-void
.end method

.method public queryGroupMemberMutedList(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;Lim/zego/zim/callback/ZIMGroupMemberMutedListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1294
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1295
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberMutedListQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1297
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenGroupMemberMutedListQueryConfig(Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupMemberMutedListQueryConfig;

    move-result-object p2

    .line 1296
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupMemberMutedList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberMutedListQueryConfig;I)V

    return-void
.end method

.method public queryGroupMessageReceiptReadMemberList(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;Lim/zego/zim/callback/ZIMGroupMessageReceiptMemberListQueriedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1345
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1346
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMessageReceiptMemberListCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1348
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 1349
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGroupMessageReceiptMemberQueryConfig(Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupMessageReceiptMemberQueryConfig;

    move-result-object v4

    move-object v3, p2

    .line 1347
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupMessageReceiptReadMemberList(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMessageReceiptMemberQueryConfig;I)V

    return-void
.end method

.method public queryGroupMessageReceiptUnreadMemberList(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;Lim/zego/zim/callback/ZIMGroupMessageReceiptMemberListQueriedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1356
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1357
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMessageReceiptMemberListCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1359
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 1360
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGroupMessageReceiptMemberQueryConfig(Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupMessageReceiptMemberQueryConfig;

    move-result-object v4

    move-object v3, p2

    .line 1358
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryGroupMessageReceiptUnReadMemberList(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMessageReceiptMemberQueryConfig;I)V

    return-void
.end method

.method public queryHistoryMessage(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageQueryConfig;Lim/zego/zim/callback/ZIMMessageQueriedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "config",
            "callback"
        }
    .end annotation

    .line 1619
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1620
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v3

    .line 1622
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getMessageQueryConfig(Lim/zego/zim/entity/ZIMMessageQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;

    move-result-object v4

    move-object v2, p1

    .line 1621
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryHistoryMessage(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;I)V

    return-void
.end method

.method public queryLocalFileCache(Lim/zego/zim/entity/ZIMFileCacheQueryConfig;Lim/zego/zim/callback/ZIMFileCacheQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1887
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1888
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->fileCacheQueriedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenFileCacheQueryConfig(Lim/zego/zim/entity/ZIMFileCacheQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenFileCacheQueryConfig;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryLocalFileCache(JLim/zego/zim/internal/generated/ZIMGenFileCacheQueryConfig;I)V

    return-void
.end method

.method public queryMessageReactionUserList(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageReactionUserQueryConfig;Lim/zego/zim/callback/ZIMMessageReactionUserListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "config",
            "callback"
        }
    .end annotation

    .line 808
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 809
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->messageReactionUsersQueryCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 811
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object p1

    .line 812
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageReactionUserQueryConfig(Lim/zego/zim/entity/ZIMMessageReactionUserQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserQueryConfig;

    move-result-object p2

    .line 810
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryMessageReactionUserList(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserQueryConfig;I)V

    return-void
.end method

.method public queryMessageReceiptsInfo(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMMessageReceiptsInfoQueriedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageList",
            "conversationID",
            "conversationType",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/enums/ZIMConversationType;",
            "Lim/zego/zim/callback/ZIMMessageReceiptsInfoQueriedCallback;",
            ")V"
        }
    .end annotation

    .line 762
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 763
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageReceiptsInfoQueriedCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 765
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->zimMessageListToGenMessageList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 766
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    move-object v3, p2

    .line 764
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryMessageReceiptsInfo(JLjava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method public queryMessageRepliedList(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageRepliedListQueryConfig;Lim/zego/zim/callback/ZIMMessageRepliedListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "config",
            "callback"
        }
    .end annotation

    .line 1695
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1696
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->repliedListQueriedCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object p1

    .line 1698
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenRepliedListQueryConfig(Lim/zego/zim/entity/ZIMMessageRepliedListQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenRepliedListQueryConfig;

    move-result-object p2

    .line 1697
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryRepliedMessageList(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenRepliedListQueryConfig;I)V

    return-void
.end method

.method public queryMessages(Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMMessageQueriedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageSeqs",
            "conversationID",
            "conversationType",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/enums/ZIMConversationType;",
            "Lim/zego/zim/callback/ZIMMessageQueriedCallback;",
            ")V"
        }
    .end annotation

    .line 1706
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1707
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1709
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    move-object v2, p1

    move-object v3, p2

    .line 1708
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryMessages(JLjava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method public queryPinnedMessageList(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMPinnedMessageListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "callback"
        }
    .end annotation

    .line 837
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 838
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->pinnedMessageListQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result p2

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryPinnedMessageList(JLjava/lang/String;II)V

    return-void
.end method

.method public queryRoomAllAttributes(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomAttributesQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomID",
            "callback"
        }
    .end annotation

    .line 976
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 977
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomAllAttributesQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryRoomAllAttributes(JLjava/lang/String;I)V

    return-void
.end method

.method public queryRoomMemberAttributesList(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomMemberAttributesQueryConfig;Lim/zego/zim/callback/ZIMRoomMemberAttributesListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomID",
            "config",
            "callback"
        }
    .end annotation

    .line 1006
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1007
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomMemberAttributesListQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1010
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->roomMemberAttributesQueryConfigToGenRoomMemberAttributesQueryConfig(Lim/zego/zim/entity/ZIMRoomMemberAttributesQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesQueryConfig;

    move-result-object p2

    .line 1008
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryRoomMemberAttributesList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesQueryConfig;I)V

    return-void
.end method

.method public queryRoomMemberList(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomMemberQueryConfig;Lim/zego/zim/callback/ZIMRoomMemberQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomID",
            "config",
            "callback"
        }
    .end annotation

    .line 910
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 911
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomMemberQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 913
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->roomMemberQueryConfigToGenRoomMemberQueryConfig(Lim/zego/zim/entity/ZIMRoomMemberQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomMemberQueryConfig;

    move-result-object p2

    .line 912
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryRoomMemberList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomMemberQueryConfig;I)V

    return-void
.end method

.method public queryRoomMembers(Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomMembersQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "roomId",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/callback/ZIMRoomMembersQueriedCallback;",
            ")V"
        }
    .end annotation

    .line 920
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 921
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomMembersQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryRoomMembers(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public queryRoomMembersAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomMembersAttributesQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "roomID",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/callback/ZIMRoomMembersAttributesQueriedCallback;",
            ")V"
        }
    .end annotation

    .line 996
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 997
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->roomMembersAttributesQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryRoomMembersAttributes(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public queryRoomOnlineMemberCount(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomOnlineMemberCountQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomID",
            "callback"
        }
    .end annotation

    .line 928
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 929
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->onlineCountQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryRoomOnlineMemberCount(JLjava/lang/String;I)V

    return-void
.end method

.method public querySelfUserInfo(Lim/zego/zim/callback/ZIMSelfUserInfoQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 616
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 617
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->selfUserInfoQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->querySelfUserInfo(JI)V

    return-void
.end method

.method public querySubscribedUserStatusList(Lim/zego/zim/entity/ZIMSubscribedUserStatusQueryConfig;Lim/zego/zim/callback/ZIMSubscribedUserStatusListQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 598
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 599
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->subscribedUserStatusListQueriedCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 601
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGenSubscribedUserStatusQueryConfig(Lim/zego/zim/entity/ZIMSubscribedUserStatusQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenSubscribedUserStatusQueryConfig;

    move-result-object p1

    .line 600
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->querySubscribedUserStatusList(JLim/zego/zim/internal/generated/ZIMGenSubscribedUserStatusQueryConfig;I)V

    return-void
.end method

.method public queryUsersInfo(Ljava/util/List;Lim/zego/zim/entity/ZIMUsersInfoQueryConfig;Lim/zego/zim/callback/ZIMUsersInfoQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userIDList",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMUsersInfoQueryConfig;",
            "Lim/zego/zim/callback/ZIMUsersInfoQueriedCallback;",
            ")V"
        }
    .end annotation

    .line 607
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 608
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->usersInfoQueriedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 610
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->usersInfoQueryConfigToGenUsersInfoQueryConfig(Lim/zego/zim/entity/ZIMUsersInfoQueryConfig;)Lim/zego/zim/internal/generated/ZIMGenUsersInfoQueryConfig;

    move-result-object p2

    .line 609
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryUsersInfo(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenUsersInfoQueryConfig;I)V

    return-void
.end method

.method public queryUsersStatus(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMUsersStatusQueriedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/callback/ZIMUsersStatusQueriedCallback;",
            ")V"
        }
    .end annotation

    .line 573
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 574
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->usersStatusQueriedCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->queryUsersStatus(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public rejectFriendApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendApplicationRejectConfig;Lim/zego/zim/callback/ZIMFriendApplicationRejectedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "config",
            "callback"
        }
    .end annotation

    .line 1534
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1535
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendApplicationRejectedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1537
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMFriendApplicationRejectConfig(Lim/zego/zim/entity/ZIMFriendApplicationRejectConfig;)Lim/zego/zim/internal/generated/ZIMGenFriendApplicationRejectConfig;

    move-result-object p2

    .line 1536
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->rejectFriendApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendApplicationRejectConfig;I)V

    return-void
.end method

.method public rejectGroupInviteApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupInviteApplicationRejectConfig;Lim/zego/zim/callback/ZIMGroupInviteApplicationRejectedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inviterUserID",
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1198
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1199
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1202
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGroupInviteApplicationRejectConfig(Lim/zego/zim/entity/ZIMGroupInviteApplicationRejectConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationRejectConfig;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    .line 1200
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->rejectGroupInviteApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationRejectConfig;I)V

    return-void
.end method

.method public rejectGroupJoinApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupJoinApplicationRejectConfig;Lim/zego/zim/callback/ZIMGroupJoinApplicationRejectedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1165
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1166
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1169
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGenGroupJoinApplicationRejectConfig(Lim/zego/zim/entity/ZIMGroupJoinApplicationRejectConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    .line 1167
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->rejectGroupJoinApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;I)V

    return-void
.end method

.method public removeUsersFromBlacklist(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMBlacklistUsersRemovedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/callback/ZIMBlacklistUsersRemovedCallback;",
            ")V"
        }
    .end annotation

    .line 1570
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1571
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->blacklistUsersRemovedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->removeUsersFromBlacklist(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public renewToken(Ljava/lang/String;Lim/zego/zim/callback/ZIMTokenRenewedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "callback"
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 514
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->tokenRenewedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->renewToken(JLjava/lang/String;I)V

    return-void
.end method

.method public replyMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentFullCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "repliedMessage",
            "config",
            "callback"
        }
    .end annotation

    .line 1683
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1684
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->sentFullCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getMessageID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getLocalMessageID()J

    move-result-wide v0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    .line 1686
    iget-object p4, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    :cond_0
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 1689
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v3

    .line 1690
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->sendConfigToGenSendConfig(Lim/zego/zim/entity/ZIMMessageSendConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;

    move-result-object v4

    .line 1688
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->replyMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public revokeMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageRevokeConfig;Lim/zego/zim/callback/ZIMMessageRevokedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "config",
            "callback"
        }
    .end annotation

    .line 1666
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1667
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->messageRevokedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object p1

    .line 1669
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageRevokeConfig(Lim/zego/zim/entity/ZIMMessageRevokeConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;

    move-result-object p2

    .line 1668
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->revokeMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;I)V

    return-void
.end method

.method public searchGlobalLocalMessages(Lim/zego/zim/entity/ZIMMessageSearchConfig;Lim/zego/zim/callback/ZIMMessagesGlobalSearchedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1638
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1639
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->messageGlobalSearchCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1641
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageSearchConfig(Lim/zego/zim/entity/ZIMMessageSearchConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;

    move-result-object p1

    .line 1640
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->searchGlobalLocalMessages(JLim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;I)V

    return-void
.end method

.method public searchLocalConversations(Lim/zego/zim/entity/ZIMConversationSearchConfig;Lim/zego/zim/callback/ZIMConversationsSearchedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1647
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1648
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationMessageGlobalSearchCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1650
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageGlobalSearchConfig(Lim/zego/zim/entity/ZIMConversationSearchConfig;)Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;

    move-result-object p1

    .line 1649
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->searchLocalConversations(JLim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;I)V

    return-void
.end method

.method public searchLocalFriends(Lim/zego/zim/entity/ZIMFriendSearchConfig;Lim/zego/zim/callback/ZIMFriendsSearchedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1594
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1595
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendSearchedCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMFriendSearchConfig(Lim/zego/zim/entity/ZIMFriendSearchConfig;)Lim/zego/zim/internal/generated/ZIMGenFriendSearchConfig;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->searchLocalFriends(JLim/zego/zim/internal/generated/ZIMGenFriendSearchConfig;I)V

    return-void
.end method

.method public searchLocalGroupMembers(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;Lim/zego/zim/callback/ZIMGroupMembersSearchedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1373
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1374
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupMembersSearchedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1376
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGroupMemberSearchConfig(Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;

    move-result-object p2

    .line 1375
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->searchGroupMembers(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;I)V

    return-void
.end method

.method public searchLocalGroups(Lim/zego/zim/entity/ZIMGroupSearchConfig;Lim/zego/zim/callback/ZIMGroupsSearchedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "callback"
        }
    .end annotation

    .line 1365
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1366
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupsSearchedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGroupSearchConfig(Lim/zego/zim/entity/ZIMGroupSearchConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupSearchConfig;

    move-result-object p1

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->searchGroups(JLim/zego/zim/internal/generated/ZIMGenGroupSearchConfig;I)V

    return-void
.end method

.method public searchLocalMessages(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSearchConfig;Lim/zego/zim/callback/ZIMMessagesSearchedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "config",
            "callback"
        }
    .end annotation

    .line 1629
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1630
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageSearchCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v3

    .line 1632
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessageSearchConfig(Lim/zego/zim/entity/ZIMMessageSearchConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;

    move-result-object v4

    move-object v2, p1

    .line 1631
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->searchLocalMessages(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;I)V

    return-void
.end method

.method public sendConversationMessageReceiptRead(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationMessageReceiptReadSentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "callback"
        }
    .end annotation

    .line 1853
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1854
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->conversationReceiptReadCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1856
    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result p2

    .line 1855
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendConversationMessageReceiptRead(JLjava/lang/String;II)V

    return-void
.end method

.method public sendFriendApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;Lim/zego/zim/callback/ZIMFriendApplicationSentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "applyUser",
            "config",
            "callback"
        }
    .end annotation

    .line 1470
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1471
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->sendFriendAddedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1473
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenZIMSendFriendApplicationConfig(Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;)Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;

    move-result-object p2

    .line 1472
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendFriendApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;I)V

    return-void
.end method

.method public sendGroupInviteApplications(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupInviteApplicationSendConfig;Lim/zego/zim/callback/ZIMGroupInviteApplicationsSentCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/entity/ZIMGroupInviteApplicationSendConfig;",
            "Lim/zego/zim/callback/ZIMGroupInviteApplicationsSentCallback;",
            ")V"
        }
    .end annotation

    .line 1176
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1177
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1179
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1180
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGenGroupInviteApplicationSendConfig(Lim/zego/zim/entity/ZIMGroupInviteApplicationSendConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationSendConfig;

    move-result-object v4

    move-object v3, p2

    .line 1178
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendGroupInviteApplications(JLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationSendConfig;I)V

    return-void
.end method

.method public sendGroupJoinApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;Lim/zego/zim/callback/ZIMGroupJoinApplicationSentCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupID",
            "config",
            "callback"
        }
    .end annotation

    .line 1143
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1144
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->commonCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1146
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGenGroupJoinApplicationSendConfig(Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;)Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationSendConfig;

    move-result-object p2

    .line 1145
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendGroupJoinApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationSendConfig;I)V

    return-void
.end method

.method public sendGroupMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "toGroupID",
            "config",
            "callback"
        }
    .end annotation

    .line 650
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 651
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageSentCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getMessageID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getLocalMessageID()J

    move-result-wide v0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    .line 653
    iget-object p4, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_0
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 656
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->sendConfigToGenSendConfig(Lim/zego/zim/entity/ZIMMessageSendConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;

    move-result-object v4

    move-object v3, p2

    .line 655
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendGroupMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public sendMediaMessage(Lim/zego/zim/entity/ZIMMediaMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMediaMessageSentCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "toConversationID",
            "conversationType",
            "config",
            "callback"
        }
    .end annotation

    .line 677
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v6

    .line 678
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->mediaMessageSentCallbacks:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMediaMessage;->getMessageID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMediaMessage;->getLocalMessageID()J

    move-result-wide v0

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    .line 680
    iget-object p5, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_0
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 683
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    .line 684
    invoke-static {p4}, Lim/zego/zim/internal/generated/ZIMCovert;->sendConfigToGenSendConfig(Lim/zego/zim/entity/ZIMMessageSendConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;

    move-result-object v5

    move-object v3, p2

    .line 682
    invoke-static/range {v0 .. v6}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendMediaMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public sendMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "toConversationID",
            "conversationType",
            "config",
            "callback"
        }
    .end annotation

    .line 663
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v6

    .line 664
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageSentCallbacks:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getMessageID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getLocalMessageID()J

    move-result-wide v0

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    .line 666
    iget-object p5, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_0
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 669
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    .line 670
    invoke-static {p4}, Lim/zego/zim/internal/generated/ZIMCovert;->sendConfigToGenSendConfig(Lim/zego/zim/entity/ZIMMessageSendConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;

    move-result-object v5

    move-object v3, p2

    .line 668
    invoke-static/range {v0 .. v6}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public sendMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentFullCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "toConversationID",
            "conversationType",
            "config",
            "callback"
        }
    .end annotation

    .line 691
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v6

    .line 692
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->sentFullCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getMessageID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getLocalMessageID()J

    move-result-wide v0

    cmp-long p5, v0, v2

    if-eqz p5, :cond_1

    :cond_0
    iget-boolean p5, p4, Lim/zego/zim/entity/ZIMMessageSendConfig;->isRetrySend:Z

    if-eqz p5, :cond_2

    .line 695
    :cond_1
    iget-object p5, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_2
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 698
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    .line 699
    invoke-static {p4}, Lim/zego/zim/internal/generated/ZIMCovert;->sendConfigToGenSendConfig(Lim/zego/zim/entity/ZIMMessageSendConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;

    move-result-object v5

    move-object v3, p2

    .line 697
    invoke-static/range {v0 .. v6}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public sendMessageReceiptsRead(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMMessageReceiptsReadSentCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageList",
            "conversationID",
            "conversationType",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/enums/ZIMConversationType;",
            "Lim/zego/zim/callback/ZIMMessageReceiptsReadSentCallback;",
            ")V"
        }
    .end annotation

    .line 751
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 752
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageReceiptsReadCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 754
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->zimMessageListToGenMessageList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 755
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    move-object v3, p2

    .line 753
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendMessageReceiptsRead(JLjava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method public sendPeerMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "toUserID",
            "config",
            "callback"
        }
    .end annotation

    .line 626
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 627
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageSentCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getMessageID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getLocalMessageID()J

    move-result-wide v0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    .line 629
    iget-object p4, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_0
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 632
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->sendConfigToGenSendConfig(Lim/zego/zim/entity/ZIMMessageSendConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;

    move-result-object v4

    move-object v3, p2

    .line 631
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendPeerMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public sendRoomMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "toRoomID",
            "config",
            "callback"
        }
    .end annotation

    .line 638
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 639
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->messageSentCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getMessageID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lim/zego/zim/entity/ZIMMessage;->getLocalMessageID()J

    move-result-wide v0

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    .line 641
    iget-object p4, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_0
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object v2

    .line 644
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->sendConfigToGenSendConfig(Lim/zego/zim/entity/ZIMMessageSendConfig;)Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;

    move-result-object v4

    move-object v3, p2

    .line 643
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->sendRoomMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public setConversationDraft(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationDraftSetCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "draft",
            "conversationID",
            "conversationType",
            "callback"
        }
    .end annotation

    .line 1896
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1897
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationDraftSetCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1899
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    move-object v2, p1

    move-object v3, p2

    .line 1898
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setConversationDraft(JLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public setConversationMark(Ljava/lang/Integer;ZLjava/util/ArrayList;Lim/zego/zim/callback/ZIMConversationMarkSetCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "markType",
            "enable",
            "infos",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMConversationBaseInfo;",
            ">;",
            "Lim/zego/zim/callback/ZIMConversationMarkSetCallback;",
            ")V"
        }
    .end annotation

    .line 1905
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1906
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationMarkSetCallback:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1909
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1910
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->zimConversationBaseInfoListToGenConversationBaseInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    move v3, p2

    .line 1908
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setConversationMark(JIZLjava/util/ArrayList;I)V

    return-void
.end method

.method public setConversationNotificationStatus(Lim/zego/zim/enums/ZIMConversationNotificationStatus;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationNotificationStatusSetCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "conversationID",
            "type",
            "callback"
        }
    .end annotation

    .line 1843
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1844
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationNotificationStatusSetCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p1}, Lim/zego/zim/enums/ZIMConversationNotificationStatus;->value()I

    move-result v2

    .line 1846
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    move-object v3, p2

    .line 1845
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setConversationNotificationStatus(JILjava/lang/String;II)V

    return-void
.end method

.method public setEventHandler(Lim/zego/zim/callback/ZIMEventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    return-void
.end method

.method public setGroupAttributes(Ljava/util/HashMap;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesOperatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupAttributes",
            "groupID",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/callback/ZIMGroupAttributesOperatedCallback;",
            ")V"
        }
    .end annotation

    .line 1224
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1225
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupAttributesOperatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setGroupAttributes(JLjava/util/HashMap;Ljava/lang/String;I)V

    return-void
.end method

.method public setGroupMemberNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberNicknameUpdatedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nickname",
            "forUserID",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1266
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1267
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberNicknameUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setGroupMemberNickname(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setGroupMemberRole(ILjava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberRoleUpdatedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "role",
            "forUserID",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1258
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1259
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->groupMemberRoleUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setGroupMemberRole(JILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setRoomAttributes(Ljava/util/HashMap;Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomAttributes",
            "roomID",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;",
            "Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;",
            ")V"
        }
    .end annotation

    .line 937
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 938
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomAttributesOperatedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 941
    invoke-static {p3}, Lim/zego/zim/internal/generated/ZIMCovert;->roomAttributesSetConfigToGenRoomAttributesSetConfig(Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    .line 939
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setRoomAttributes(JLjava/util/HashMap;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;I)V

    return-void
.end method

.method public setRoomMembersAttributes(Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomMemberAttributesSetConfig;Lim/zego/zim/callback/ZIMRoomMembersAttributesOperatedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "attributes",
            "userIDs",
            "roomID",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/entity/ZIMRoomMemberAttributesSetConfig;",
            "Lim/zego/zim/callback/ZIMRoomMembersAttributesOperatedCallback;",
            ")V"
        }
    .end annotation

    .line 985
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v6

    .line 986
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomMembersAttributesOperatedCallbacks:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 988
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 989
    invoke-static {p4}, Lim/zego/zim/internal/generated/ZIMCovert;->roomMemberAttributesSetConfigToGenRoomMemberAttributesSetConfig(Lim/zego/zim/entity/ZIMRoomMemberAttributesSetConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;

    move-result-object v5

    move-object v2, p1

    move-object v4, p3

    .line 987
    invoke-static/range {v0 .. v6}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setRoomMembersAttributes(JLjava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;I)V

    return-void
.end method

.method public subscribeUsersStatus(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMUserStatusSubscribeConfig;Lim/zego/zim/callback/ZIMUsersStatusSubscribedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "config",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/entity/ZIMUserStatusSubscribeConfig;",
            "Lim/zego/zim/callback/ZIMUsersStatusSubscribedCallback;",
            ")V"
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 582
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->usersStatusSubscribedCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 584
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGenUserStatusSubscribeConfig(Lim/zego/zim/entity/ZIMUserStatusSubscribeConfig;)Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;

    move-result-object p2

    .line 583
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->subscribeUsersStatus(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;I)V

    return-void
.end method

.method public switchRoom(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomInfo;ZLim/zego/zim/entity/ZIMRoomAdvancedConfig;Lim/zego/zim/callback/ZIMRoomSwitchedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromRoomID",
            "toRoomInfo",
            "isCreateWhenRoomNotExisted",
            "config",
            "callback"
        }
    .end annotation

    .line 885
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v6

    .line 886
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->roomSwitchedCallbacks:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 888
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->roomInfoToGenRoomInfo(Lim/zego/zim/entity/ZIMRoomInfo;)Lim/zego/zim/internal/generated/ZIMGenRoomInfo;

    move-result-object v3

    .line 889
    invoke-static {p4}, Lim/zego/zim/internal/generated/ZIMCovert;->roomAdvancedConfigToGenRoomAdvancedConfig(Lim/zego/zim/entity/ZIMRoomAdvancedConfig;)Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;

    move-result-object v5

    move-object v2, p1

    move v4, p3

    .line 887
    invoke-static/range {v0 .. v6}, Lim/zego/zim/internal/generated/ZIMGenMethod;->switchRoom(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomInfo;ZLim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;I)V

    return-void
.end method

.method public transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupOwnerTransferredCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "toUserID",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1078
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1079
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupOwnerTransferredCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->transferGroupOwner(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public unsubscribeUsersStatus(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMUsersStatusUnsubscribedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIDs",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/callback/ZIMUsersStatusUnsubscribedCallback;",
            ")V"
        }
    .end annotation

    .line 590
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 591
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->usersStatusUnsubscribedCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->unsubscribeUserStatus(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public updateConversationPinnedState(ZLjava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationPinnedStateUpdatedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isPinned",
            "conversationID",
            "conversationType",
            "callback"
        }
    .end annotation

    .line 1795
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v5

    .line 1796
    iget-object v0, p0, Lim/zego/zim/internal/ZIMImpl;->conversationPinnedStateUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    iget-wide v0, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1798
    invoke-virtual {p3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v4

    move v2, p1

    move-object v3, p2

    .line 1797
    invoke-static/range {v0 .. v5}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateConversationPinnedState(JZLjava/lang/String;II)V

    return-void
.end method

.method public updateFriendAlias(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMFriendAliasUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "friendAlias",
            "userID",
            "callback"
        }
    .end annotation

    .line 1499
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1500
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendAliasCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateFriendAlias(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateFriendAttributes(Ljava/util/HashMap;Ljava/lang/String;Lim/zego/zim/callback/ZIMFriendAttributesUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "friendAttributes",
            "userID",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/callback/ZIMFriendAttributesUpdatedCallback;",
            ")V"
        }
    .end annotation

    .line 1507
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1508
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->friendAttributesUpdatedCallback:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateFriendAttributes(JLjava/util/HashMap;Ljava/lang/String;I)V

    return-void
.end method

.method public updateGroupAlias(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAliasUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupAlias",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1094
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1095
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupAliasUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateGroupAlias(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateGroupAvatarUrl(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAvatarUrlUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupAvatarUrl",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1102
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1103
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupAvatarUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateGroupAvatarUrl(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateGroupBeInviteMode(Lim/zego/zim/enums/ZIMGroupBeInviteMode;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupBeInviteModeUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1134
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1135
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupBeInviteModeUpdateCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p1}, Lim/zego/zim/enums/ZIMGroupBeInviteMode;->value()I

    move-result p1

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateGroupBeInviteMode(JILjava/lang/String;I)V

    return-void
.end method

.method public updateGroupInviteMode(Lim/zego/zim/enums/ZIMGroupInviteMode;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupInviteModeUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1126
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1127
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupInviteModeUpdateCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p1}, Lim/zego/zim/enums/ZIMGroupInviteMode;->value()I

    move-result p1

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateGroupInviteMode(JILjava/lang/String;I)V

    return-void
.end method

.method public updateGroupJoinMode(Lim/zego/zim/enums/ZIMGroupJoinMode;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupJoinModeUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1118
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1119
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupJoinModeUpdateCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-virtual {p1}, Lim/zego/zim/enums/ZIMGroupJoinMode;->value()I

    move-result p1

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateGroupJoinMode(JILjava/lang/String;I)V

    return-void
.end method

.method public updateGroupName(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupNameUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupName",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1086
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1087
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupNameUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateGroupName(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateGroupNotice(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupNoticeUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupNotice",
            "groupID",
            "callback"
        }
    .end annotation

    .line 1110
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1111
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->groupNoticeUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateGroupNotice(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateMessageLocalExtendedData(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageLocalExtendedDataUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localExtendedData",
            "message",
            "callback"
        }
    .end annotation

    .line 1656
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 1657
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->messageLocalExtendedDataUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 1660
    invoke-static {p2}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenMessage(Lim/zego/zim/entity/ZIMMessage;)Lim/zego/zim/internal/generated/ZIMGenMessage;

    move-result-object p2

    .line 1659
    invoke-static {v1, v2, p1, p2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateMessageLocalExtendedData(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V

    return-void
.end method

.method public updateUserAvatarUrl(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserAvatarUrlUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userAvatarUrl",
            "callback"
        }
    .end annotation

    .line 534
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 535
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->userAvatarUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateUserAvatarUrl(JLjava/lang/String;I)V

    return-void
.end method

.method public updateUserBadge(ILim/zego/zim/callback/ZIMUserBadgeUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "badge",
            "callback"
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 566
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->userBadgeUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateUserBadge(JII)V

    return-void
.end method

.method public updateUserCustomStatus(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserCustomStatusUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customStatus",
            "callback"
        }
    .end annotation

    .line 550
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 551
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->userCustomStatusUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateUserCustomStatus(JLjava/lang/String;I)V

    return-void
.end method

.method public updateUserExtendedData(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserExtendedDataUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extendedData",
            "callback"
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 543
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->userExtendedDataUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateUserExtendedData(JLjava/lang/String;I)V

    return-void
.end method

.method public updateUserName(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserNameUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "callback"
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 528
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->userNameUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateUserName(JLjava/lang/String;I)V

    return-void
.end method

.method public updateUserOfflinePushRule(Lim/zego/zim/entity/ZIMUserOfflinePushRule;Lim/zego/zim/callback/ZIMUserOfflinePushRuleUpdatedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offlinePushRule",
            "callback"
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 559
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->userOfflinePushRuleInfoUpdatedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    .line 561
    invoke-static {p1}, Lim/zego/zim/internal/generated/ZIMCovert;->getGenUserOfflinePushRule(Lim/zego/zim/entity/ZIMUserOfflinePushRule;)Lim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;

    move-result-object p1

    .line 560
    invoke-static {v1, v2, p1, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->updateUserOfflinePushRule(JLim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;I)V

    return-void
.end method

.method public uploadLog(Lim/zego/zim/callback/ZIMLogUploadedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 458
    invoke-direct {p0}, Lim/zego/zim/internal/ZIMImpl;->genSeq()I

    move-result v0

    .line 459
    iget-object v1, p0, Lim/zego/zim/internal/ZIMImpl;->logUploadedCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-wide v1, p0, Lim/zego/zim/internal/ZIMImpl;->handle:J

    invoke-static {v1, v2, v0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->uploadLog(JI)V

    return-void
.end method

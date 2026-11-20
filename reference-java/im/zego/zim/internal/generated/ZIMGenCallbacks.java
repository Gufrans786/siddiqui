package im.zego.zim.internal.generated;

import java.util.ArrayList;
import java.util.HashMap;

public interface ZIMGenCallbacks {
    void onAllRoomLeft(long handle, ArrayList<String> roomIdList, ZIMGenError errorInfo, int sequence);

    void onBlacklistChanged(long handle, int action, ArrayList<ZIMGenUserInfo> userList);

    void onBlacklistChecked(long handle, boolean isUserInBlacklist, ZIMGenError errorInfo, int sequence);

    void onBlacklistQueried(long handle, ArrayList<ZIMGenUserInfo> blacklist, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onBlacklistUsersAdded(long handle, ArrayList<ZIMGenErrorUserInfo> userInfoList, ZIMGenError errorInfo, int sequence);

    void onBlacklistUsersRemoved(long handle, ArrayList<ZIMGenErrorUserInfo> userInfoList, ZIMGenError errorInfo, int sequence);

    void onBroadcastMessageReceived(long handle, ZIMGenMessage message);

    void onCallAcceptanceSent(long handle, String callId, ZIMGenError errorInfo, int sequence);

    void onCallCancelSent(long handle, String callId, ArrayList<String> errorInvitees, ZIMGenError errorInfo, int sequence);

    void onCallEndSent(long handle, String callId, ZIMGenCallEndedSentInfo info, ZIMGenError errorInfo, int sequence);

    void onCallInvitationAccepted(long handle, ZIMGenCallInvitationAcceptedInfo info, String callID);

    void onCallInvitationCancelled(long handle, ZIMGenCallInvitationCancelledInfo info, String callID);

    void onCallInvitationCreated(long handle, ZIMGenCallInvitationCreatedInfo info, String callID);

    void onCallInvitationEnded(long handle, ZIMGenCallInvitationEndedInfo info, String callID);

    void onCallInvitationReceived(long handle, ZIMGenCallInvitationReceivedInfo info, String callID);

    void onCallInvitationRejected(long handle, ZIMGenCallInvitationRejectedInfo info, String callID);

    void onCallInvitationSent(long handle, String callId, ZIMGenCallInvitationSentInfo info, ZIMGenError errorInfo, int sequence);

    void onCallInvitationTimeout(long handle, ZIMGenCallInvitationTimeoutInfo info, String callID);

    void onCallInviteesAnsweredTimeout(long handle, ArrayList<String> invitees, String callID);

    void onCallJoinSent(long handle, String callId, ZIMGenCallJoinSentInfo info, ZIMGenError errorInfo, int sequence);

    void onCallListQueried(long handle, ArrayList<ZIMGenCallInfo> callInfos, long nextFlag, ZIMGenError errorInfo, int sequence);

    void onCallQuitSent(long handle, String callId, ZIMGenCallQuitSentInfo info, ZIMGenError errorInfo, int sequence);

    void onCallRejectionSent(long handle, String callId, ZIMGenError errorInfo, int sequence);

    void onCallUserStateChanged(long handle, ZIMGenCallUserStateChangeInfo info);

    void onCallingInvitationSent(long handle, String callId, ZIMGenCallingInvitationSentInfo info, ZIMGenError errorInfo, int sequence);

    void onCombineMessageDetailQueried(long handle, ZIMGenMessage genMessage, ZIMGenError errorInfo, int sequence);

    void onConnectionStateChanged(long handle, int state, int event, String extendedData);

    void onConversationChanged(long handle, ArrayList<ZIMGenConversationChangeInfo> conversationChangeInfoList);

    void onConversationDeleted(long handle, String conversationId, int conversationType, ZIMGenError errorInfo, int sequence);

    void onConversationDraftSet(long handle, String conversationID, int type, ZIMGenError errorInfo, int sequence);

    void onConversationListQueried(long handle, ArrayList<ZIMGenConversation> conversationList, ZIMGenError errorInfo, int sequence);

    void onConversationMarkSet(long handle, ArrayList<ZIMGenConversationBaseInfo> failedInfos, ZIMGenError errorInfo, int sequence);

    void onConversationMessageReceiptChanged(long handle, ArrayList<ZIMGenMessageReceiptInfo> infos);

    void onConversationMessageReceiptReadSent(long handle, String conversationId, int conversationType, ZIMGenError errorInfo, int sequence);

    void onConversationMessagesAllDeleted(long handle, ZIMGenError errorInfo, int sequence);

    void onConversationNotificationStatusSet(long handle, String conversationId, int conversationType, ZIMGenError errorInfo, int sequence);

    void onConversationPinnedListQueried(long handle, ArrayList<ZIMGenConversation> conversationList, ZIMGenError errorInfo, int sequence);

    void onConversationPinnedStateUpdate(long handle, String conversationID, int type, ZIMGenError errorInfo, int sequence);

    void onConversationQueried(long handle, ZIMGenConversation conversation, ZIMGenError errorInfo, int sequence);

    void onConversationSyncStateChanged(long handle, int state);

    void onConversationTotalUnreadCountQueried(long handle, int unreadCount, ZIMGenError errorInfo, int sequence);

    void onConversationTotalUnreadMessageCountCleared(long handle, ZIMGenError errorInfo, int sequence);

    void onConversationTotalUnreadMessageCountUpdated(long handle, int totalUnreadMessageCount);

    void onConversationUnreadMessageCountCleared(long handle, String conversationId, int conversationType, ZIMGenError errorInfo, int sequence);

    void onConversationsAllDeleted(long handle, ZIMGenError errorInfo, int sequence);

    void onConversationsAllDeletedEvent(long handle, ZIMGenConversationsAllDeletedInfo info);

    void onConversationsSearched(long handle, ArrayList<ZIMGenConversationSearchInfo> globalMessageInfoList, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onError(long handle, ZIMGenError errorInfo);

    void onEventGroupAliasUpdated(long handle, String groupAlias, String operatedUserID, String groupID);

    void onEventGroupAvatarUrlUpdated(long handle, String groupAvatarUrl, ZIMGenGroupOperatedInfo operatedInfo, String groupID);

    void onEventGroupNameUpdated(long handle, String groupName, ZIMGenGroupOperatedInfo operatedInfo, String groupID);

    void onEventGroupNoticeUpdated(long handle, String groupNotice, ZIMGenGroupOperatedInfo operatedInfo, String groupID);

    void onEventMessageDeleted(long handle, ZIMGenMessageDeletedInfo info);

    void onExperimentalAPICalled(long handle, String result, ZIMGenError errorInfo, int sequence);

    void onExperimentalEventReceived(long handle, String content);

    void onFileCacheCleared(long handle, ZIMGenError errorInfo, int sequence);

    void onFileCacheQueried(long handle, ZIMGenFileCacheInfo fileCacheInfo, ZIMGenError errorInfo, int sequence);

    void onFriendAdded(long handle, ZIMGenFriendInfo friendInfo, ZIMGenError errorInfo, int sequence);

    void onFriendAliasUpdated(long handle, ZIMGenFriendInfo friendInfo, ZIMGenError errorInfo, int sequence);

    void onFriendApplicationAccepted(long handle, ZIMGenFriendInfo friendInfo, ZIMGenError errorInfo, int sequence);

    void onFriendApplicationListChange(long handle, int action, ArrayList<ZIMGenFriendApplicationInfo> friendApplicationList);

    void onFriendApplicationListQueried(long handle, ArrayList<ZIMGenFriendApplicationInfo> infoArrayList, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onFriendApplicationRejected(long handle, ZIMGenUserInfo zimUserInfo, ZIMGenError errorInfo, int sequence);

    void onFriendApplicationSent(long handle, ZIMGenFriendApplicationInfo application, ZIMGenError errorInfo, int sequence);

    void onFriendApplicationUpdated(long handle, ArrayList<ZIMGenFriendApplicationInfo> friendApplicationList);

    void onFriendAttributesUpdated(long handle, ZIMGenFriendInfo friendInfo, ZIMGenError errorInfo, int sequence);

    void onFriendChecked(long handle, ArrayList<ZIMGenFriendRelationInfo> friendRelationInfoList, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onFriendInfoUpdated(long handle, ArrayList<ZIMGenFriendInfo> friendInfoList);

    void onFriendInfosQueried(long handle, ArrayList<ZIMGenFriendInfo> friendInfoList, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onFriendListChanged(long handle, int action, ArrayList<ZIMGenFriendInfo> friendInfoList);

    void onFriendListQueried(long handle, ArrayList<ZIMGenFriendInfo> friendInfoList, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onFriendsDeleted(long handle, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onFriendsSearched(long handle, ArrayList<ZIMGenFriendInfo> friendInfoList, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onGroupAliasUpdated(long handle, String groupId, String groupAlias, ZIMGenError errorInfo, int sequence);

    void onGroupApplicationListChanged(long handle, ArrayList<ZIMGenGroupApplicationInfo> applicationList, int action);

    void onGroupApplicationListQueried(long handle, ArrayList<ZIMGenGroupApplicationInfo> applicationList, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onGroupApplicationUpdated(long handle, ArrayList<ZIMGenGroupApplicationInfo> applicationList);

    void onGroupAttributesOperated(long handle, String groupId, ArrayList<String> errorKeys, ZIMGenError errorInfo, int sequence);

    void onGroupAttributesQueried(long handle, String group, HashMap<String, String> groupAttributes, ZIMGenError errorInfo, int sequence);

    void onGroupAttributesUpdated(long handle, ArrayList<ZIMGenGroupAttributesUpdateInfo> infos, ZIMGenGroupOperatedInfo operatedInfo, String groupID);

    void onGroupAvatarUrlUpdated(long handle, String groupId, String groupAvatarUrl, ZIMGenError errorInfo, int sequence);

    void onGroupBeInviteModeUpdated(long handle, String groupID, int mode, ZIMGenError errorInfo, int sequence);

    void onGroupCreated(long handle, ZIMGenFullGroupInfo groupInfo, ArrayList<ZIMGenGroupMemberInfo> userList, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onGroupDismissed(long handle, String groupId, ZIMGenError errorInfo, int sequence);

    void onGroupInfoQueried(long handle, ZIMGenFullGroupInfo groupInfo, ZIMGenError errorInfo, int sequence);

    void onGroupInviteApplicationsAccepted(long handle, ZIMGenFullGroupInfo groupInfo, String inviterUserID, ZIMGenError errorInfo, int sequence);

    void onGroupInviteApplicationsRejected(long handle, String groupID, String inviterUserID, ZIMGenError errorInfo, int sequence);

    void onGroupInviteApplicationsSent(long handle, String groupID, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onGroupInviteModeUpdated(long handle, String groupID, int mode, ZIMGenError errorInfo, int sequence);

    void onGroupJoinApplicationAccepted(long handle, String groupID, String userID, ZIMGenError errorInfo, int sequence);

    void onGroupJoinApplicationRejected(long handle, String groupID, String userID, ZIMGenError errorInfo, int sequence);

    void onGroupJoinApplicationSent(long handle, String groupID, ZIMGenError errorInfo, int sequence);

    void onGroupJoinModeUpdated(long handle, String groupID, int mode, ZIMGenError errorInfo, int sequence);

    void onGroupJoined(long handle, ZIMGenFullGroupInfo groupInfo, ZIMGenError errorInfo, int sequence);

    void onGroupLeft(long handle, String groupId, ZIMGenError errorInfo, int sequence);

    void onGroupListQueried(long handle, ArrayList<ZIMGenGroup> groupList, long nextFlag, ZIMGenError errorInfo, int sequence);

    void onGroupMemberCountQueried(long handle, String groupId, int count, ZIMGenError errorInfo, int sequence);

    void onGroupMemberInfoQueried(long handle, String groupId, ZIMGenGroupMemberInfo userInfo, ZIMGenError errorInfo, int sequence);

    void onGroupMemberInfoUpdated(long handle, ArrayList<ZIMGenGroupMemberInfo> userList, ZIMGenGroupOperatedInfo operatedInfo, String groupID);

    void onGroupMemberKicked(long handle, String groupId, ArrayList<String> kickedUserIdList, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onGroupMemberListMuted(long handle, String groupID, boolean isMute, int duration, ArrayList<String> mutedMemberIDList, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onGroupMemberListQueried(long handle, String groupId, ArrayList<ZIMGenGroupMemberInfo> userList, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onGroupMemberMutedListQueried(long handle, String groupID, long nextFlag, ArrayList<ZIMGenGroupMemberInfo> userList, ZIMGenError errorInfo, int sequence);

    void onGroupMemberNicknameUpdated(long handle, String groupId, String forUserId, String nickName, ZIMGenError errorInfo, int sequence);

    void onGroupMemberRoleUpdated(long handle, String groupId, String forUserId, int role, ZIMGenError errorInfo, int sequence);

    void onGroupMemberStateChanged(long handle, int state, int event, ArrayList<ZIMGenGroupMemberInfo> userList, ZIMGenGroupOperatedInfo operatedInfo, String groupID);

    void onGroupMembersSearched(long handle, String groupId, ArrayList<ZIMGenGroupMemberInfo> userList, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onGroupMessageReceiptMemberListQueried(long handle, String groupid, ArrayList<ZIMGenGroupMemberInfo> userList, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onGroupMessageReceived(long handle, ArrayList<ZIMGenMessage> messageList, ZIMGenMessageReceivedInfo info, String fromGroupID);

    void onGroupMuteInfoUpdated(long handle, ZIMGenGroupMuteInfo groupMuteInfo, ZIMGenGroupOperatedInfo operatedInfo, String groupID);

    void onGroupMuted(long handle, String groupID, boolean isMute, ZIMGenGroupMuteInfo info, ZIMGenError errorInfo, int sequence);

    void onGroupNameUpdated(long handle, String groupId, String groupName, ZIMGenError errorInfo, int sequence);

    void onGroupNoticeUpdated(long handle, String groupId, String groupNotice, ZIMGenError errorInfo, int sequence);

    void onGroupOwnerTransferred(long handle, String groupId, String toUserId, ZIMGenError errorInfo, int sequence);

    void onGroupStateChanged(long handle, int state, int event, ZIMGenGroupOperatedInfo operatedInfo, ZIMGenFullGroupInfo groupInfo);

    void onGroupUsersInvited(long handle, String groupId, ArrayList<ZIMGenGroupMemberInfo> userList, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onGroupVerifyInfoUpdated(long handle, ZIMGenGroupVerifyInfo verifyInfo, ZIMGenGroupOperatedInfo operatedInfo, String groupID);

    void onGroupsSearched(long handle, ArrayList<ZIMGenGroupSearchInfo> groupSearchInfoList, int nextFlag, ZIMGenError errorInfo, int sequence);

    void onLogUploaded(long handle, ZIMGenError errorInfo, int sequence);

    void onLoggedIn(long handle, ZIMGenError errorInfo, int sequence);

    void onMediaDownloaded(long handle, ZIMGenMessage message, ZIMGenError errorInfo, int sequence);

    void onMediaDownloadingProgress(long handle, ZIMGenMessage message, long currentFileSize, long totalFileSize, int sequence);

    void onMediaUploadingProgress(long handle, ZIMGenMessage genMediaMessage, long currentFileSize, long totalFileSize, int sequence);

    void onMessageAttach(long handle, ZIMGenMessage genMessage, int sequence);

    void onMessageDeleted(long handle, String conversationID, int conversationType, ZIMGenError errorInfo, int sequence);

    void onMessageEdited(long handle, ZIMGenError errorInfo, ZIMGenMessage genMessage, int sequence);

    void onMessageEditedEvent(long handle, ArrayList<ZIMGenMessage> messageList);

    void onMessageExported(long handle, ZIMGenError errorInfo, int sequence);

    void onMessageExportingProgress(long handle, long exportedMessageCount, long totalMessageCount, int sequence);

    void onMessageImported(long handle, ZIMGenError errorInfo, int sequence);

    void onMessageImportingProgress(long handle, long importedMessageCount, long totalMessageCount, int sequence);

    void onMessageInserted(long handle, ZIMGenMessage message, ZIMGenError errorInfo, int sequence);

    void onMessageLocalExtendedDataUpdated(long handle, ZIMGenMessage message, ZIMGenError errorInfo, int sequence);

    void onMessagePinStatusChanged(long handle, ArrayList<ZIMGenMessagePinStatusChangeInfo> changeInfoList);

    void onMessagePinned(long handle, ZIMGenError errorInfo, int sequence);

    void onMessageQueried(long handle, String conversationID, int conversationType, ArrayList<ZIMGenMessage> messageList, ZIMGenError errorInfo, int sequence);

    void onMessageReactionAdded(long handle, ZIMGenMessageReaction reaction, ZIMGenError errorInfo, int sequence);

    void onMessageReactionDeleted(long handle, ZIMGenMessageReaction reaction, ZIMGenError errorInfo, int sequence);

    void onMessageReactionUsersQueried(long handle, ZIMGenMessage genMessage, String reactionType, ArrayList<ZIMGenMessageReactionUserFullInfo> userInfos, long nextFlag, int totalCount, ZIMGenError errorInfo, int sequence);

    void onMessageReactionsAllDeleted(long handle, ZIMGenError errorInfo, int sequence);

    void onMessageReactionsChanged(long handle, ArrayList<ZIMGenMessageReaction> reactions);

    void onMessageReactionsChangedWithResult(long handle, ArrayList<ZIMGenMessageReaction> reactions, ArrayList<ZIMGenMessageReactionChangeInfo> changeInfoList);

    void onMessageReceiptChanged(long handle, ArrayList<ZIMGenMessageReceiptInfo> infos);

    void onMessageReceiptsInfoQueried(long handle, ArrayList<ZIMGenMessageReceiptInfo> infos, ArrayList<Long> errorMessageIds, ZIMGenError errorInfo, int sequence);

    void onMessageReceiptsReadSent(long handle, String conversationID, int conversationType, ArrayList<Long> errorMessageIDs, ZIMGenError errorInfo, int sequence);

    void onMessageRepliedCountChanged(long handle, ArrayList<ZIMGenMessageRootRepliedCountInfo> infos);

    void onMessageRepliedInfoChanged(long handle, ArrayList<ZIMGenMessage> messages);

    void onMessageRepliedListQueried(long handle, ArrayList<ZIMGenMessage> messageList, long nextFlag, ZIMGenMessageRootRepliedInfo rootRepliedInfo, ZIMGenError errorInfo, int sequence);

    void onMessageRevokeReceived(long handle, ArrayList<ZIMGenMessage> messageList);

    void onMessageRevoked(long handle, ZIMGenMessage message, ZIMGenError errorInfo, int sequence);

    void onMessageSent(long handle, ZIMGenError errorInfo, ZIMGenMessage message, int sequence);

    void onMessageSentStatusChanged(long handle, ArrayList<ZIMGenMessageSentStatusChangeInfo> messageSentStatusChangeInfoList);

    void onMessagesGlobalSearched(long handle, ArrayList<ZIMGenMessage> messageLists, ZIMGenMessage nextMessage, ZIMGenError errorInfo, int sequence);

    void onMessagesSearched(long handle, String conversationID, int conversationType, ArrayList<ZIMGenMessage> messageLists, ZIMGenMessage nextMessage, ZIMGenError errorInfo, int sequence);

    void onMultipleMediaUploadingProgress(long handle, ZIMGenMessage genMediaMessage, long currentFileSize, long totalFileSize, int messageInfoIndex, long currentIndexFileSize, long totalIndexFileSize, int sequence);

    void onPeerMessageReceived(long handle, ArrayList<ZIMGenMessage> messageList, ZIMGenMessageReceivedInfo info, String fromUserId);

    void onPinnedMessageListQueried(long handle, ArrayList<ZIMGenMessage> messageList, ZIMGenError errorInfo, int sequence);

    void onReceiveGroupMessage(long handle, ArrayList<ZIMGenMessage> messageList, String fromGroupID);

    void onReceivePeerMessage(long handle, ArrayList<ZIMGenMessage> messageList, String fromUserId);

    void onReceiveRoomMessage(long handle, ArrayList<ZIMGenMessage> messageList, String fromRoomID);

    void onRoomAttributesBatchOperated(long handle, String roomId, ZIMGenError errorInfo, int sequence);

    void onRoomAttributesBatchUpdated(long handle, ArrayList<ZIMGenRoomAttributesUpdateInfo> infos, String roomID);

    void onRoomAttributesOperated(long handle, String roomId, ArrayList<String> errorKeys, ZIMGenError errorInfo, int sequence);

    void onRoomAttributesQueried(long handle, String roomId, HashMap<String, String> roomAttributes, ZIMGenError errorInfo, int sequence);

    void onRoomAttributesUpdated(long handle, ZIMGenRoomAttributesUpdateInfo info, String roomID);

    void onRoomCreated(long handle, ZIMGenFullRoomInfo roomInfo, ZIMGenError errorInfo, int sequence);

    void onRoomEntered(long handle, ZIMGenFullRoomInfo roomInfo, ZIMGenError errorInfo, int sequence);

    void onRoomJoined(long handle, ZIMGenFullRoomInfo roomInfo, ZIMGenError errorInfo, int sequence);

    void onRoomLeft(long handle, String roomId, ZIMGenError errorInfo, int sequence);

    void onRoomMemberAttributesListQueried(long handle, String roomId, ArrayList<ZIMGenRoomMemberAttributesInfo> infos, String nextFlag, ZIMGenError errorInfo, int sequence);

    void onRoomMemberAttributesUpdated(long handle, ArrayList<ZIMGenRoomMemberAttributesUpdateInfo> infos, ZIMGenRoomOperatedInfo operatedInfo, String roomID);

    void onRoomMemberJoined(long handle, ArrayList<ZIMGenUserInfo> memberList, String roomID);

    void onRoomMemberLeft(long handle, ArrayList<ZIMGenUserInfo> memberList, String roomID);

    void onRoomMemberQueried(long handle, String roomId, ArrayList<ZIMGenUserInfo> memberList, String nextFlag, ZIMGenError errorInfo, int sequence);

    void onRoomMembersAttributesOperated(long handle, String roomId, ArrayList<ZIMGenRoomMemberAttributesOperatedInfo> infos, ArrayList<String> errorUserList, ZIMGenError errorInfo, int sequence);

    void onRoomMembersAttributesQueried(long handle, String room, ArrayList<ZIMGenRoomMemberAttributesInfo> infos, ZIMGenError errorInfo, int sequence);

    void onRoomMembersQueried(long handle, String roomID, ArrayList<ZIMGenRoomMemberInfo> memberList, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onRoomMessageReceived(long handle, ArrayList<ZIMGenMessage> messageList, ZIMGenMessageReceivedInfo info, String fromRoomID);

    void onRoomOnlineMemberCountQueried(long handle, String roomId, int count, ZIMGenError errorInfo, int sequence);

    void onRoomStateChanged(long handle, int state, int event, String extendedData, String roomID);

    void onRoomSwitched(long handle, ZIMGenFullRoomInfo roomInfo, ZIMGenError errorInfo, int sequence);

    void onSelfUserInfoQueried(long handle, ZIMGenSelfUserInfo selfUserInfo, ZIMGenError errorInfo, int sequence);

    void onSendingMessageCancelled(long handle, ZIMGenError errorInfo, int sequence);

    void onSubscribedUserStatusListQueried(long handle, ArrayList<ZIMGenUserStatusSubscription> userStatusSubscriptionList, ZIMGenError errorInfo, int sequence);

    void onTokenRenewed(long handle, String token, ZIMGenError errorInfo, int sequence);

    void onTokenWillExpire(long handle, int second);

    void onUserAvatarUpdated(long handle, String userAvatarUrl, ZIMGenError errorInfo, int sequence);

    void onUserBadgeUpdated(long handle, ZIMGenError errorInfo, int sequence);

    void onUserCustomStatusUpdated(long handle, String customStatus, ZIMGenError errorInfo, int sequence);

    void onUserExtendedData(long handle, String extendedData, ZIMGenError errorInfo, int sequence);

    void onUserInfoUpdated(long handle, ZIMGenFullUserInfo info);

    void onUserNameUpdated(long handle, String userName, ZIMGenError errorInfo, int sequence);

    void onUserOfflinePushRuleInfoUpdated(long handle, ZIMGenUserOfflinePushRule offlinePushRule, ZIMGenError errorInfo, int sequence);

    void onUserRuleUpdated(long handle, ZIMGenUserRule userRule);

    void onUserStatusUpdated(long handle, ArrayList<ZIMGenUserStatus> userStatusList);

    void onUsersInfoQueried(long handle, ArrayList<ZIMGenFullUserInfo> userList, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onUsersStatusQueried(long handle, ArrayList<ZIMGenUserStatus> userStatusList, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onUsersStatusSubscribed(long handle, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);

    void onUsersStatusUnsubscribed(long handle, ArrayList<ZIMGenErrorUserInfo> errorUserList, ZIMGenError errorInfo, int sequence);
}

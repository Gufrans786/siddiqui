package im.zego.zim;

import android.app.Application;
import im.zego.zim.callback.ZIMBlacklistCheckedCallback;
import im.zego.zim.callback.ZIMBlacklistQueriedCallback;
import im.zego.zim.callback.ZIMBlacklistUsersAddedCallback;
import im.zego.zim.callback.ZIMBlacklistUsersRemovedCallback;
import im.zego.zim.callback.ZIMCallAcceptanceSentCallback;
import im.zego.zim.callback.ZIMCallCancelSentCallback;
import im.zego.zim.callback.ZIMCallEndSentCallback;
import im.zego.zim.callback.ZIMCallInvitationListQueriedCallback;
import im.zego.zim.callback.ZIMCallInvitationSentCallback;
import im.zego.zim.callback.ZIMCallJoinSentCallback;
import im.zego.zim.callback.ZIMCallQuitSentCallback;
import im.zego.zim.callback.ZIMCallRejectionSentCallback;
import im.zego.zim.callback.ZIMCallingInvitationSentCallback;
import im.zego.zim.callback.ZIMCombineMessageDetailQueriedCallback;
import im.zego.zim.callback.ZIMConversationDeletedCallback;
import im.zego.zim.callback.ZIMConversationDraftSetCallback;
import im.zego.zim.callback.ZIMConversationListQueriedCallback;
import im.zego.zim.callback.ZIMConversationMarkSetCallback;
import im.zego.zim.callback.ZIMConversationMessageReceiptReadSentCallback;
import im.zego.zim.callback.ZIMConversationMessagesAllDeletedCallback;
import im.zego.zim.callback.ZIMConversationNotificationStatusSetCallback;
import im.zego.zim.callback.ZIMConversationPinnedListQueriedCallback;
import im.zego.zim.callback.ZIMConversationPinnedStateUpdatedCallback;
import im.zego.zim.callback.ZIMConversationQueriedCallback;
import im.zego.zim.callback.ZIMConversationTotalUnreadMessageCountClearedCallback;
import im.zego.zim.callback.ZIMConversationTotalUnreadMessageCountQueriedCallback;
import im.zego.zim.callback.ZIMConversationUnreadMessageCountClearedCallback;
import im.zego.zim.callback.ZIMConversationsAllDeletedCallback;
import im.zego.zim.callback.ZIMConversationsSearchedCallback;
import im.zego.zim.callback.ZIMEventHandler;
import im.zego.zim.callback.ZIMExperimentalAPICalledCallback;
import im.zego.zim.callback.ZIMFileCacheClearedCallback;
import im.zego.zim.callback.ZIMFileCacheQueriedCallback;
import im.zego.zim.callback.ZIMFriendAddedCallback;
import im.zego.zim.callback.ZIMFriendAliasUpdatedCallback;
import im.zego.zim.callback.ZIMFriendApplicationAcceptedCallback;
import im.zego.zim.callback.ZIMFriendApplicationListQueriedCallback;
import im.zego.zim.callback.ZIMFriendApplicationRejectedCallback;
import im.zego.zim.callback.ZIMFriendApplicationSentCallback;
import im.zego.zim.callback.ZIMFriendAttributesUpdatedCallback;
import im.zego.zim.callback.ZIMFriendListQueriedCallback;
import im.zego.zim.callback.ZIMFriendsDeletedCallback;
import im.zego.zim.callback.ZIMFriendsInfoQueriedCallback;
import im.zego.zim.callback.ZIMFriendsRelationCheckedCallback;
import im.zego.zim.callback.ZIMFriendsSearchedCallback;
import im.zego.zim.callback.ZIMGroupAliasUpdatedCallback;
import im.zego.zim.callback.ZIMGroupApplicationListQueriedCallback;
import im.zego.zim.callback.ZIMGroupAttributesOperatedCallback;
import im.zego.zim.callback.ZIMGroupAttributesQueriedCallback;
import im.zego.zim.callback.ZIMGroupAvatarUrlUpdatedCallback;
import im.zego.zim.callback.ZIMGroupBeInviteModeUpdatedCallback;
import im.zego.zim.callback.ZIMGroupCreatedCallback;
import im.zego.zim.callback.ZIMGroupDismissedCallback;
import im.zego.zim.callback.ZIMGroupInfoQueriedCallback;
import im.zego.zim.callback.ZIMGroupInviteApplicationAcceptedCallback;
import im.zego.zim.callback.ZIMGroupInviteApplicationRejectedCallback;
import im.zego.zim.callback.ZIMGroupInviteApplicationsSentCallback;
import im.zego.zim.callback.ZIMGroupInviteModeUpdatedCallback;
import im.zego.zim.callback.ZIMGroupJoinApplicationAcceptedCallback;
import im.zego.zim.callback.ZIMGroupJoinApplicationRejectedCallback;
import im.zego.zim.callback.ZIMGroupJoinApplicationSentCallback;
import im.zego.zim.callback.ZIMGroupJoinModeUpdatedCallback;
import im.zego.zim.callback.ZIMGroupJoinedCallback;
import im.zego.zim.callback.ZIMGroupLeftCallback;
import im.zego.zim.callback.ZIMGroupListQueriedCallback;
import im.zego.zim.callback.ZIMGroupMemberCountQueriedCallback;
import im.zego.zim.callback.ZIMGroupMemberInfoQueriedCallback;
import im.zego.zim.callback.ZIMGroupMemberKickedCallback;
import im.zego.zim.callback.ZIMGroupMemberListQueriedCallback;
import im.zego.zim.callback.ZIMGroupMemberMutedListQueriedCallback;
import im.zego.zim.callback.ZIMGroupMemberNicknameUpdatedCallback;
import im.zego.zim.callback.ZIMGroupMemberRoleUpdatedCallback;
import im.zego.zim.callback.ZIMGroupMembersMutedCallback;
import im.zego.zim.callback.ZIMGroupMembersSearchedCallback;
import im.zego.zim.callback.ZIMGroupMessageReceiptMemberListQueriedCallback;
import im.zego.zim.callback.ZIMGroupMutedCallback;
import im.zego.zim.callback.ZIMGroupNameUpdatedCallback;
import im.zego.zim.callback.ZIMGroupNoticeUpdatedCallback;
import im.zego.zim.callback.ZIMGroupOwnerTransferredCallback;
import im.zego.zim.callback.ZIMGroupUsersInvitedCallback;
import im.zego.zim.callback.ZIMGroupsSearchedCallback;
import im.zego.zim.callback.ZIMLogUploadedCallback;
import im.zego.zim.callback.ZIMLoggedInCallback;
import im.zego.zim.callback.ZIMMediaDownloadedCallback;
import im.zego.zim.callback.ZIMMediaMessageSentCallback;
import im.zego.zim.callback.ZIMMessageDeletedCallback;
import im.zego.zim.callback.ZIMMessageExportedCallback;
import im.zego.zim.callback.ZIMMessageImportedCallback;
import im.zego.zim.callback.ZIMMessageInsertedCallback;
import im.zego.zim.callback.ZIMMessageLocalExtendedDataUpdatedCallback;
import im.zego.zim.callback.ZIMMessagePinnedCallback;
import im.zego.zim.callback.ZIMMessageQueriedCallback;
import im.zego.zim.callback.ZIMMessageReactionAddedCallback;
import im.zego.zim.callback.ZIMMessageReactionDeletedCallback;
import im.zego.zim.callback.ZIMMessageReactionUserListQueriedCallback;
import im.zego.zim.callback.ZIMMessageReactionsAllDeletedCallback;
import im.zego.zim.callback.ZIMMessageReceiptsInfoQueriedCallback;
import im.zego.zim.callback.ZIMMessageReceiptsReadSentCallback;
import im.zego.zim.callback.ZIMMessageRepliedListQueriedCallback;
import im.zego.zim.callback.ZIMMessageRevokedCallback;
import im.zego.zim.callback.ZIMMessageSentCallback;
import im.zego.zim.callback.ZIMMessageSentFullCallback;
import im.zego.zim.callback.ZIMMessagesGlobalSearchedCallback;
import im.zego.zim.callback.ZIMMessagesSearchedCallback;
import im.zego.zim.callback.ZIMPinnedMessageListQueriedCallback;
import im.zego.zim.callback.ZIMRoomAllLeftCallback;
import im.zego.zim.callback.ZIMRoomAttributesBatchOperatedCallback;
import im.zego.zim.callback.ZIMRoomAttributesOperatedCallback;
import im.zego.zim.callback.ZIMRoomAttributesQueriedCallback;
import im.zego.zim.callback.ZIMRoomCreatedCallback;
import im.zego.zim.callback.ZIMRoomEnteredCallback;
import im.zego.zim.callback.ZIMRoomJoinedCallback;
import im.zego.zim.callback.ZIMRoomLeftCallback;
import im.zego.zim.callback.ZIMRoomMemberAttributesListQueriedCallback;
import im.zego.zim.callback.ZIMRoomMemberQueriedCallback;
import im.zego.zim.callback.ZIMRoomMembersAttributesOperatedCallback;
import im.zego.zim.callback.ZIMRoomMembersAttributesQueriedCallback;
import im.zego.zim.callback.ZIMRoomMembersQueriedCallback;
import im.zego.zim.callback.ZIMRoomOnlineMemberCountQueriedCallback;
import im.zego.zim.callback.ZIMRoomSwitchedCallback;
import im.zego.zim.callback.ZIMSelfUserInfoQueriedCallback;
import im.zego.zim.callback.ZIMSendingMessageCancelledCallback;
import im.zego.zim.callback.ZIMSubscribedUserStatusListQueriedCallback;
import im.zego.zim.callback.ZIMTokenRenewedCallback;
import im.zego.zim.callback.ZIMUserAvatarUrlUpdatedCallback;
import im.zego.zim.callback.ZIMUserBadgeUpdatedCallback;
import im.zego.zim.callback.ZIMUserCustomStatusUpdatedCallback;
import im.zego.zim.callback.ZIMUserExtendedDataUpdatedCallback;
import im.zego.zim.callback.ZIMUserNameUpdatedCallback;
import im.zego.zim.callback.ZIMUserOfflinePushRuleUpdatedCallback;
import im.zego.zim.callback.ZIMUsersInfoQueriedCallback;
import im.zego.zim.callback.ZIMUsersStatusQueriedCallback;
import im.zego.zim.callback.ZIMUsersStatusSubscribedCallback;
import im.zego.zim.callback.ZIMUsersStatusUnsubscribedCallback;
import im.zego.zim.entity.ZIMAppConfig;
import im.zego.zim.entity.ZIMBlacklistQueryConfig;
import im.zego.zim.entity.ZIMCacheConfig;
import im.zego.zim.entity.ZIMCallAcceptConfig;
import im.zego.zim.entity.ZIMCallCancelConfig;
import im.zego.zim.entity.ZIMCallEndConfig;
import im.zego.zim.entity.ZIMCallInvitationQueryConfig;
import im.zego.zim.entity.ZIMCallInviteConfig;
import im.zego.zim.entity.ZIMCallJoinConfig;
import im.zego.zim.entity.ZIMCallQuitConfig;
import im.zego.zim.entity.ZIMCallRejectConfig;
import im.zego.zim.entity.ZIMCallingInviteConfig;
import im.zego.zim.entity.ZIMCombineMessage;
import im.zego.zim.entity.ZIMConversationBaseInfo;
import im.zego.zim.entity.ZIMConversationDeleteConfig;
import im.zego.zim.entity.ZIMConversationFilterOption;
import im.zego.zim.entity.ZIMConversationQueryConfig;
import im.zego.zim.entity.ZIMConversationSearchConfig;
import im.zego.zim.entity.ZIMConversationTotalUnreadMessageCountQueryConfig;
import im.zego.zim.entity.ZIMFileCacheClearConfig;
import im.zego.zim.entity.ZIMFileCacheQueryConfig;
import im.zego.zim.entity.ZIMFriendAddConfig;
import im.zego.zim.entity.ZIMFriendApplicationAcceptConfig;
import im.zego.zim.entity.ZIMFriendApplicationListQueryConfig;
import im.zego.zim.entity.ZIMFriendApplicationRejectConfig;
import im.zego.zim.entity.ZIMFriendApplicationSendConfig;
import im.zego.zim.entity.ZIMFriendDeleteConfig;
import im.zego.zim.entity.ZIMFriendListQueryConfig;
import im.zego.zim.entity.ZIMFriendRelationCheckConfig;
import im.zego.zim.entity.ZIMFriendSearchConfig;
import im.zego.zim.entity.ZIMGroupAdvancedConfig;
import im.zego.zim.entity.ZIMGroupApplicationListQueryConfig;
import im.zego.zim.entity.ZIMGroupInfo;
import im.zego.zim.entity.ZIMGroupInviteApplicationAcceptConfig;
import im.zego.zim.entity.ZIMGroupInviteApplicationRejectConfig;
import im.zego.zim.entity.ZIMGroupInviteApplicationSendConfig;
import im.zego.zim.entity.ZIMGroupJoinApplicationAcceptConfig;
import im.zego.zim.entity.ZIMGroupJoinApplicationRejectConfig;
import im.zego.zim.entity.ZIMGroupJoinApplicationSendConfig;
import im.zego.zim.entity.ZIMGroupListQueryConfig;
import im.zego.zim.entity.ZIMGroupMemberMuteConfig;
import im.zego.zim.entity.ZIMGroupMemberMutedListQueryConfig;
import im.zego.zim.entity.ZIMGroupMemberQueryConfig;
import im.zego.zim.entity.ZIMGroupMemberSearchConfig;
import im.zego.zim.entity.ZIMGroupMessageReceiptMemberQueryConfig;
import im.zego.zim.entity.ZIMGroupMuteConfig;
import im.zego.zim.entity.ZIMGroupSearchConfig;
import im.zego.zim.entity.ZIMLogConfig;
import im.zego.zim.entity.ZIMLoginConfig;
import im.zego.zim.entity.ZIMMediaDownloadConfig;
import im.zego.zim.entity.ZIMMediaMessage;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.entity.ZIMMessageDeleteConfig;
import im.zego.zim.entity.ZIMMessageEditConfig;
import im.zego.zim.entity.ZIMMessageExportConfig;
import im.zego.zim.entity.ZIMMessageImportConfig;
import im.zego.zim.entity.ZIMMessagePinConfig;
import im.zego.zim.entity.ZIMMessageQueryConfig;
import im.zego.zim.entity.ZIMMessageReactionAddConfig;
import im.zego.zim.entity.ZIMMessageReactionUserQueryConfig;
import im.zego.zim.entity.ZIMMessageRepliedListQueryConfig;
import im.zego.zim.entity.ZIMMessageRevokeConfig;
import im.zego.zim.entity.ZIMMessageSearchConfig;
import im.zego.zim.entity.ZIMMessageSendConfig;
import im.zego.zim.entity.ZIMRoomAdvancedConfig;
import im.zego.zim.entity.ZIMRoomAttributesBatchOperationConfig;
import im.zego.zim.entity.ZIMRoomAttributesDeleteConfig;
import im.zego.zim.entity.ZIMRoomAttributesSetConfig;
import im.zego.zim.entity.ZIMRoomInfo;
import im.zego.zim.entity.ZIMRoomMemberAttributesQueryConfig;
import im.zego.zim.entity.ZIMRoomMemberAttributesSetConfig;
import im.zego.zim.entity.ZIMRoomMemberQueryConfig;
import im.zego.zim.entity.ZIMSendingMessageCancelConfig;
import im.zego.zim.entity.ZIMSubscribedUserStatusQueryConfig;
import im.zego.zim.entity.ZIMUserInfo;
import im.zego.zim.entity.ZIMUserOfflinePushRule;
import im.zego.zim.entity.ZIMUserStatusSubscribeConfig;
import im.zego.zim.entity.ZIMUsersInfoQueryConfig;
import im.zego.zim.enums.ZIMConversationNotificationStatus;
import im.zego.zim.enums.ZIMConversationType;
import im.zego.zim.enums.ZIMGeofencingType;
import im.zego.zim.enums.ZIMGroupBeInviteMode;
import im.zego.zim.enums.ZIMGroupInviteMode;
import im.zego.zim.enums.ZIMGroupJoinMode;
import im.zego.zim.enums.ZIMMediaFileType;
import im.zego.zim.internal.ZIMImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public abstract class ZIM {
    protected static Application context;
    protected static String externalSoPath;

    public abstract void acceptFriendApplication(String userID, ZIMFriendApplicationAcceptConfig config, ZIMFriendApplicationAcceptedCallback callback);

    public abstract void acceptGroupInviteApplication(String inviterUserID, String groupID, ZIMGroupInviteApplicationAcceptConfig config, ZIMGroupInviteApplicationAcceptedCallback callback);

    public abstract void acceptGroupJoinApplication(String userID, String groupID, ZIMGroupJoinApplicationAcceptConfig config, ZIMGroupJoinApplicationAcceptedCallback callback);

    public abstract void addFriend(String userID, ZIMFriendAddConfig config, ZIMFriendAddedCallback callback);

    public abstract void addMessageReaction(String reactionType, ZIMMessage message, ZIMMessageReactionAddedCallback callback);

    public abstract void addMessageReaction(String reactionType, ZIMMessage message, ZIMMessageReactionAddConfig config, ZIMMessageReactionAddedCallback callback);

    public abstract void addUsersToBlacklist(ArrayList<String> userIDs, ZIMBlacklistUsersAddedCallback callback);

    public abstract void beginRoomAttributesBatchOperation(String roomID, ZIMRoomAttributesBatchOperationConfig config);

    public abstract void callAccept(String callID, ZIMCallAcceptConfig config, ZIMCallAcceptanceSentCallback callback);

    public abstract void callCancel(List<String> invitees, String callID, ZIMCallCancelConfig config, ZIMCallCancelSentCallback callback);

    public abstract void callEnd(String callID, ZIMCallEndConfig config, ZIMCallEndSentCallback callback);

    public abstract void callExperimentalAPI(String params, ZIMExperimentalAPICalledCallback callback);

    public abstract void callInvite(List<String> invitees, ZIMCallInviteConfig config, ZIMCallInvitationSentCallback callback);

    public abstract void callJoin(String callID, ZIMCallJoinConfig config, ZIMCallJoinSentCallback callback);

    public abstract void callQuit(String callID, ZIMCallQuitConfig config, ZIMCallQuitSentCallback callback);

    public abstract void callReject(String callID, ZIMCallRejectConfig config, ZIMCallRejectionSentCallback callback);

    public abstract void callingInvite(List<String> invitees, String callID, ZIMCallingInviteConfig config, ZIMCallingInvitationSentCallback callback);

    public abstract void cancelSendingMessage(ZIMMessage message, ZIMSendingMessageCancelConfig config, ZIMSendingMessageCancelledCallback callback);

    public abstract void checkFriendsRelation(ArrayList<String> userIDs, ZIMFriendRelationCheckConfig config, ZIMFriendsRelationCheckedCallback callback);

    public abstract void checkUserIsInBlacklist(String userID, ZIMBlacklistCheckedCallback callback);

    public abstract void clearConversationTotalUnreadMessageCount(ZIMConversationTotalUnreadMessageCountClearedCallback callback);

    public abstract void clearConversationUnreadMessageCount(String conversationID, ZIMConversationType conversationType, ZIMConversationUnreadMessageCountClearedCallback callback);

    public abstract void clearLocalFileCache(ZIMFileCacheClearConfig config, ZIMFileCacheClearedCallback callback);

    public abstract void createGroup(ZIMGroupInfo groupInfo, List<String> userIDs, ZIMGroupCreatedCallback callback);

    public abstract void createGroup(ZIMGroupInfo groupInfo, List<String> userIDs, ZIMGroupAdvancedConfig config, ZIMGroupCreatedCallback callback);

    public abstract void createRoom(ZIMRoomInfo roomInfo, ZIMRoomCreatedCallback callback);

    public abstract void createRoom(ZIMRoomInfo roomInfo, ZIMRoomAdvancedConfig config, ZIMRoomCreatedCallback callback);

    public abstract void deleteAllConversationMessages(ZIMMessageDeleteConfig config, ZIMConversationMessagesAllDeletedCallback callback);

    public abstract void deleteAllConversations(ZIMConversationDeleteConfig config, ZIMConversationsAllDeletedCallback callback);

    public abstract void deleteAllMessage(String conversationID, ZIMConversationType conversationType, ZIMMessageDeleteConfig config, ZIMMessageDeletedCallback callback);

    public abstract void deleteConversation(String conversationID, ZIMConversationType conversationType, ZIMConversationDeleteConfig config, ZIMConversationDeletedCallback callback);

    public abstract void deleteFriends(ArrayList<String> userIDs, ZIMFriendDeleteConfig config, ZIMFriendsDeletedCallback callback);

    public abstract void deleteGroupAttributes(List<String> keys, String groupID, ZIMGroupAttributesOperatedCallback callback);

    public abstract void deleteMessageAllReactions(ZIMMessage message, ZIMMessageReactionsAllDeletedCallback callback);

    public abstract void deleteMessageReaction(String reactionType, ZIMMessage message, ZIMMessageReactionDeletedCallback callback);

    public abstract void deleteMessages(List<ZIMMessage> messageList, String conversationID, ZIMConversationType conversationType, ZIMMessageDeleteConfig config, ZIMMessageDeletedCallback callback);

    public abstract void deleteRoomAttributes(List<String> keys, String roomID, ZIMRoomAttributesDeleteConfig config, ZIMRoomAttributesOperatedCallback callback);

    public abstract void destroy();

    public abstract void dismissGroup(String groupID, ZIMGroupDismissedCallback callback);

    public abstract void downloadMediaFile(ZIMMediaMessage message, ZIMMediaFileType fileType, ZIMMediaDownloadedCallback callback);

    public abstract void downloadMediaFile(ZIMMessage message, ZIMMediaFileType fileType, ZIMMediaDownloadConfig config, ZIMMediaDownloadedCallback callback);

    public abstract void editMessage(ZIMMessage message, ZIMMessageEditConfig config, ZIMMessageSentFullCallback callback);

    public abstract void endRoomAttributesBatchOperation(String roomID, ZIMRoomAttributesBatchOperatedCallback callback);

    public abstract void enterRoom(ZIMRoomInfo roomInfo, ZIMRoomAdvancedConfig config, ZIMRoomEnteredCallback callback);

    public abstract void exportLocalMessages(String folderPath, ZIMMessageExportConfig config, ZIMMessageExportedCallback callback);

    public abstract void importLocalMessages(String folderPath, ZIMMessageImportConfig config, ZIMMessageImportedCallback callback);

    public abstract void insertMessageToLocalDB(ZIMMessage message, String conversationID, ZIMConversationType conversationType, String senderUserID, ZIMMessageInsertedCallback callback);

    public abstract void inviteUsersIntoGroup(List<String> userIDs, String groupID, ZIMGroupUsersInvitedCallback callback);

    public abstract void joinGroup(String groupID, ZIMGroupJoinedCallback callback);

    public abstract void joinRoom(String roomID, ZIMRoomJoinedCallback callback);

    public abstract void kickGroupMembers(List<String> userIDs, String groupID, ZIMGroupMemberKickedCallback callback);

    public abstract void leaveAllRoom(ZIMRoomAllLeftCallback callback);

    public abstract void leaveGroup(String groupID, ZIMGroupLeftCallback callback);

    public abstract void leaveRoom(String roomID, ZIMRoomLeftCallback callback);

    public abstract void login(ZIMUserInfo userInfo, ZIMLoggedInCallback callback);

    public abstract void login(ZIMUserInfo userInfo, String token, ZIMLoggedInCallback callback);

    public abstract void login(String userID, ZIMLoginConfig config, ZIMLoggedInCallback callback);

    public abstract void logout();

    public abstract void muteGroup(boolean isMute, String groupID, ZIMGroupMuteConfig config, ZIMGroupMutedCallback callback);

    public abstract void muteGroupMembers(boolean isMute, ArrayList<String> userIDs, String groupID, ZIMGroupMemberMuteConfig config, ZIMGroupMembersMutedCallback callback);

    public abstract void pinMessage(ZIMMessage message, boolean isPinned, ZIMMessagePinnedCallback callback);

    public abstract void pinMessage(ZIMMessage message, boolean isPinned, ZIMMessagePinConfig config, ZIMMessagePinnedCallback callback);

    public abstract void queryBlacklist(ZIMBlacklistQueryConfig config, ZIMBlacklistQueriedCallback callback);

    public abstract void queryCallInvitationList(ZIMCallInvitationQueryConfig config, ZIMCallInvitationListQueriedCallback callback);

    public abstract void queryCombineMessageDetail(ZIMCombineMessage message, ZIMCombineMessageDetailQueriedCallback callback);

    public abstract void queryConversation(String conversationID, ZIMConversationType conversationType, ZIMConversationQueriedCallback callback);

    public abstract void queryConversationList(ZIMConversationQueryConfig config, ZIMConversationListQueriedCallback callback);

    public abstract void queryConversationList(ZIMConversationQueryConfig config, ZIMConversationFilterOption option, ZIMConversationListQueriedCallback callback);

    public abstract void queryConversationPinnedList(ZIMConversationQueryConfig config, ZIMConversationPinnedListQueriedCallback callback);

    public abstract void queryConversationTotalUnreadMessageCount(ZIMConversationTotalUnreadMessageCountQueryConfig config, ZIMConversationTotalUnreadMessageCountQueriedCallback callback);

    public abstract void queryFriendApplicationList(ZIMFriendApplicationListQueryConfig config, ZIMFriendApplicationListQueriedCallback callback);

    public abstract void queryFriendList(ZIMFriendListQueryConfig config, ZIMFriendListQueriedCallback callback);

    public abstract void queryFriendsInfo(ArrayList<String> userIDs, ZIMFriendsInfoQueriedCallback callback);

    public abstract void queryGroupAllAttributes(String groupID, ZIMGroupAttributesQueriedCallback callback);

    public abstract void queryGroupApplicationList(ZIMGroupApplicationListQueryConfig config, ZIMGroupApplicationListQueriedCallback callback);

    public abstract void queryGroupAttributes(List<String> keys, String groupID, ZIMGroupAttributesQueriedCallback callback);

    public abstract void queryGroupInfo(String groupID, ZIMGroupInfoQueriedCallback callback);

    public abstract void queryGroupList(int count, ZIMGroupListQueryConfig config, ZIMGroupListQueriedCallback callback);

    public abstract void queryGroupList(ZIMGroupListQueriedCallback callback);

    public abstract void queryGroupMemberCount(String groupID, ZIMGroupMemberCountQueriedCallback callback);

    public abstract void queryGroupMemberInfo(String userID, String groupID, ZIMGroupMemberInfoQueriedCallback callback);

    public abstract void queryGroupMemberList(String groupID, ZIMGroupMemberQueryConfig config, ZIMGroupMemberListQueriedCallback callback);

    public abstract void queryGroupMemberMutedList(String groupID, ZIMGroupMemberMutedListQueryConfig config, ZIMGroupMemberMutedListQueriedCallback callback);

    public abstract void queryGroupMessageReceiptReadMemberList(ZIMMessage message, String groupID, ZIMGroupMessageReceiptMemberQueryConfig config, ZIMGroupMessageReceiptMemberListQueriedCallback callback);

    public abstract void queryGroupMessageReceiptUnreadMemberList(ZIMMessage message, String groupID, ZIMGroupMessageReceiptMemberQueryConfig config, ZIMGroupMessageReceiptMemberListQueriedCallback callback);

    public abstract void queryHistoryMessage(String conversationID, ZIMConversationType conversationType, ZIMMessageQueryConfig config, ZIMMessageQueriedCallback callback);

    public abstract void queryLocalFileCache(ZIMFileCacheQueryConfig config, ZIMFileCacheQueriedCallback callback);

    public abstract void queryMessageReactionUserList(ZIMMessage message, ZIMMessageReactionUserQueryConfig config, ZIMMessageReactionUserListQueriedCallback callback);

    public abstract void queryMessageReceiptsInfo(List<ZIMMessage> messageList, String conversationID, ZIMConversationType conversationType, ZIMMessageReceiptsInfoQueriedCallback callback);

    public abstract void queryMessageRepliedList(ZIMMessage message, ZIMMessageRepliedListQueryConfig config, ZIMMessageRepliedListQueriedCallback callback);

    public abstract void queryMessages(ArrayList<Long> messageSeqs, String conversationID, ZIMConversationType conversationType, ZIMMessageQueriedCallback callback);

    public abstract void queryPinnedMessageList(String conversationID, ZIMConversationType conversationType, ZIMPinnedMessageListQueriedCallback callback);

    public abstract void queryRoomAllAttributes(String roomID, ZIMRoomAttributesQueriedCallback callback);

    public abstract void queryRoomMemberAttributesList(String roomID, ZIMRoomMemberAttributesQueryConfig config, ZIMRoomMemberAttributesListQueriedCallback callback);

    public abstract void queryRoomMemberList(String roomID, ZIMRoomMemberQueryConfig config, ZIMRoomMemberQueriedCallback callback);

    public abstract void queryRoomMembers(ArrayList<String> userIDs, String roomID, ZIMRoomMembersQueriedCallback callback);

    public abstract void queryRoomMembersAttributes(List<String> userIDs, String roomID, ZIMRoomMembersAttributesQueriedCallback callback);

    public abstract void queryRoomOnlineMemberCount(String roomID, ZIMRoomOnlineMemberCountQueriedCallback callback);

    public abstract void querySelfUserInfo(ZIMSelfUserInfoQueriedCallback callback);

    public abstract void querySubscribedUserStatusList(ZIMSubscribedUserStatusQueryConfig config, ZIMSubscribedUserStatusListQueriedCallback callback);

    public abstract void queryUsersInfo(List<String> userIDList, ZIMUsersInfoQueryConfig config, ZIMUsersInfoQueriedCallback callback);

    public abstract void queryUsersStatus(ArrayList<String> userIDs, ZIMUsersStatusQueriedCallback callback);

    public abstract void rejectFriendApplication(String userID, ZIMFriendApplicationRejectConfig config, ZIMFriendApplicationRejectedCallback callback);

    public abstract void rejectGroupInviteApplication(String inviterUserID, String groupID, ZIMGroupInviteApplicationRejectConfig config, ZIMGroupInviteApplicationRejectedCallback callback);

    public abstract void rejectGroupJoinApplication(String userID, String groupID, ZIMGroupJoinApplicationRejectConfig config, ZIMGroupJoinApplicationRejectedCallback callback);

    public abstract void removeUsersFromBlacklist(ArrayList<String> userIDs, ZIMBlacklistUsersRemovedCallback callback);

    public abstract void renewToken(String token, ZIMTokenRenewedCallback callback);

    public abstract void replyMessage(ZIMMessage message, ZIMMessage repliedMessage, ZIMMessageSendConfig config, ZIMMessageSentFullCallback callback);

    public abstract void revokeMessage(ZIMMessage message, ZIMMessageRevokeConfig config, ZIMMessageRevokedCallback callback);

    public abstract void searchGlobalLocalMessages(ZIMMessageSearchConfig config, ZIMMessagesGlobalSearchedCallback callback);

    public abstract void searchLocalConversations(ZIMConversationSearchConfig config, ZIMConversationsSearchedCallback callback);

    public abstract void searchLocalFriends(ZIMFriendSearchConfig config, ZIMFriendsSearchedCallback callback);

    public abstract void searchLocalGroupMembers(String groupID, ZIMGroupMemberSearchConfig config, ZIMGroupMembersSearchedCallback callback);

    public abstract void searchLocalGroups(ZIMGroupSearchConfig config, ZIMGroupsSearchedCallback callback);

    public abstract void searchLocalMessages(String conversationID, ZIMConversationType conversationType, ZIMMessageSearchConfig config, ZIMMessagesSearchedCallback callback);

    public abstract void sendConversationMessageReceiptRead(String conversationID, ZIMConversationType conversationType, ZIMConversationMessageReceiptReadSentCallback callback);

    public abstract void sendFriendApplication(String userID, ZIMFriendApplicationSendConfig config, ZIMFriendApplicationSentCallback callback);

    public abstract void sendGroupInviteApplications(List<String> userIDs, String groupID, ZIMGroupInviteApplicationSendConfig config, ZIMGroupInviteApplicationsSentCallback callback);

    public abstract void sendGroupJoinApplication(String groupID, ZIMGroupJoinApplicationSendConfig config, ZIMGroupJoinApplicationSentCallback callback);

    public abstract void sendGroupMessage(ZIMMessage message, String toGroupID, ZIMMessageSendConfig config, ZIMMessageSentCallback callback);

    public abstract void sendMediaMessage(ZIMMediaMessage message, String toConversationID, ZIMConversationType conversationType, ZIMMessageSendConfig config, ZIMMediaMessageSentCallback callback);

    public abstract void sendMessage(ZIMMessage message, String toConversationID, ZIMConversationType conversationType, ZIMMessageSendConfig config, ZIMMessageSentCallback callback);

    public abstract void sendMessage(ZIMMessage message, String toConversationID, ZIMConversationType conversationType, ZIMMessageSendConfig config, ZIMMessageSentFullCallback callback);

    public abstract void sendMessageReceiptsRead(List<ZIMMessage> messageList, String conversationID, ZIMConversationType conversationType, ZIMMessageReceiptsReadSentCallback callback);

    public abstract void sendPeerMessage(ZIMMessage message, String toUserID, ZIMMessageSendConfig config, ZIMMessageSentCallback callback);

    public abstract void sendRoomMessage(ZIMMessage message, String toRoomID, ZIMMessageSendConfig config, ZIMMessageSentCallback callback);

    public abstract void setConversationDraft(String draft, String conversationID, ZIMConversationType conversationType, ZIMConversationDraftSetCallback callback);

    public abstract void setConversationMark(Integer markType, boolean enable, ArrayList<ZIMConversationBaseInfo> conversationInfos, ZIMConversationMarkSetCallback callback);

    public abstract void setConversationNotificationStatus(ZIMConversationNotificationStatus status, String conversationID, ZIMConversationType conversationType, ZIMConversationNotificationStatusSetCallback callback);

    public abstract void setEventHandler(ZIMEventHandler handler);

    public abstract void setGroupAttributes(HashMap<String, String> groupAttributes, String groupID, ZIMGroupAttributesOperatedCallback callback);

    public abstract void setGroupMemberNickname(String nickname, String forUserID, String groupID, ZIMGroupMemberNicknameUpdatedCallback callback);

    public abstract void setGroupMemberRole(int role, String forUserID, String groupID, ZIMGroupMemberRoleUpdatedCallback callback);

    public abstract void setRoomAttributes(HashMap<String, String> roomAttributes, String roomID, ZIMRoomAttributesSetConfig config, ZIMRoomAttributesOperatedCallback callback);

    public abstract void setRoomMembersAttributes(HashMap<String, String> attributes, List<String> userIDs, String roomID, ZIMRoomMemberAttributesSetConfig config, ZIMRoomMembersAttributesOperatedCallback callback);

    public abstract void subscribeUsersStatus(ArrayList<String> userIDs, ZIMUserStatusSubscribeConfig config, ZIMUsersStatusSubscribedCallback callback);

    public abstract void switchRoom(String fromRoomID, ZIMRoomInfo toRoomInfo, boolean isCreateWhenRoomNotExisted, ZIMRoomAdvancedConfig config, ZIMRoomSwitchedCallback callback);

    public abstract void transferGroupOwner(String toUserID, String groupID, ZIMGroupOwnerTransferredCallback callback);

    public abstract void unsubscribeUsersStatus(ArrayList<String> userIDs, ZIMUsersStatusUnsubscribedCallback callback);

    public abstract void updateConversationPinnedState(boolean isPinned, String conversationID, ZIMConversationType conversationType, ZIMConversationPinnedStateUpdatedCallback callback);

    public abstract void updateFriendAlias(String friendAlias, String userID, ZIMFriendAliasUpdatedCallback callback);

    public abstract void updateFriendAttributes(HashMap<String, String> friendAttributes, String userID, ZIMFriendAttributesUpdatedCallback callback);

    public abstract void updateGroupAlias(String groupAlias, String groupID, ZIMGroupAliasUpdatedCallback callback);

    public abstract void updateGroupAvatarUrl(String groupAvatarUrl, String groupID, ZIMGroupAvatarUrlUpdatedCallback callback);

    public abstract void updateGroupBeInviteMode(ZIMGroupBeInviteMode mode, String groupID, ZIMGroupBeInviteModeUpdatedCallback callback);

    public abstract void updateGroupInviteMode(ZIMGroupInviteMode mode, String groupID, ZIMGroupInviteModeUpdatedCallback callback);

    public abstract void updateGroupJoinMode(ZIMGroupJoinMode mode, String groupID, ZIMGroupJoinModeUpdatedCallback callback);

    public abstract void updateGroupName(String groupName, String groupID, ZIMGroupNameUpdatedCallback callback);

    public abstract void updateGroupNotice(String groupNotice, String groupID, ZIMGroupNoticeUpdatedCallback callback);

    public abstract void updateMessageLocalExtendedData(String localExtendedData, ZIMMessage message, ZIMMessageLocalExtendedDataUpdatedCallback callback);

    public abstract void updateUserAvatarUrl(String userAvatarUrl, ZIMUserAvatarUrlUpdatedCallback callback);

    public abstract void updateUserBadge(int badge, ZIMUserBadgeUpdatedCallback callback);

    public abstract void updateUserCustomStatus(String customStatus, ZIMUserCustomStatusUpdatedCallback callback);

    public abstract void updateUserExtendedData(String extendedData, ZIMUserExtendedDataUpdatedCallback callback);

    public abstract void updateUserName(String userName, ZIMUserNameUpdatedCallback callback);

    public abstract void updateUserOfflinePushRule(ZIMUserOfflinePushRule offlinePushRule, ZIMUserOfflinePushRuleUpdatedCallback callback);

    public abstract void uploadLog(ZIMLogUploadedCallback callback);

    public static String getVersion() {
        return ZIMImpl.getVersion();
    }

    public static ZIM create(long appID, Application application) {
        ZIMAppConfig zIMAppConfig = new ZIMAppConfig();
        zIMAppConfig.appID = appID;
        return ZIMImpl.createZIM(zIMAppConfig, application);
    }

    public static ZIM create(ZIMAppConfig config, Application application) {
        return ZIMImpl.createZIM(config, application);
    }

    public static ZIM getInstance() {
        return ZIMImpl.getZIMInstance();
    }

    public static void setAdvancedConfig(String key, String value) {
        ZIMImpl.setAdvancedConfig(key, value);
    }

    public static boolean setGeofencingConfig(ArrayList<Integer> areaList, ZIMGeofencingType type) {
        return ZIMImpl.setGeofencingConfig(areaList, type);
    }

    public static void setLogConfig(ZIMLogConfig config) {
        ZIMImpl.setLogConfig(config);
    }

    public static void setCacheConfig(ZIMCacheConfig config) {
        ZIMImpl.setCacheConfig(config);
    }

    public static void setSoCustomPath(String fullPath, Application application) {
        externalSoPath = fullPath;
        context = application;
    }
}

package im.zego.zim.internal.generated;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public interface ZIMGenMethod {
    static void setCallbacks(ZIMGenCallbacks callbacks) {
        CppProxy.setCallbacks(callbacks);
    }

    static void login(long handle, String userID, ZIMGenLoginConfig config, int sequence) {
        CppProxy.login(handle, userID, config, sequence);
    }

    static void sendPeerMessage(long handle, ZIMGenMessage genMessage, String toUserId, ZIMGenMessageSendConfig sendConfig, int sequence) {
        CppProxy.sendPeerMessage(handle, genMessage, toUserId, sendConfig, sequence);
    }

    static String getVersion() {
        return CppProxy.getVersion();
    }

    static long getInstance() {
        return CppProxy.getInstance();
    }

    static void destroy(long handle) {
        CppProxy.destroy(handle);
    }

    static void setPushID(String pushId) {
        CppProxy.setPushID(pushId);
    }

    static boolean setGeofencingConfig(int type, ArrayList<Integer> areaList) {
        return CppProxy.setGeofencingConfig(type, areaList);
    }

    static void setAdvancedConfig(String key, String value) {
        CppProxy.setAdvancedConfig(key, value);
    }

    static void setLogConfig(String logPath, long logSize) {
        CppProxy.setLogConfig(logPath, logSize);
    }

    static void setCacheConfig(String cachePath) {
        CppProxy.setCacheConfig(cachePath);
    }

    static void uploadLog(long handle, int sequence) {
        CppProxy.uploadLog(handle, sequence);
    }

    static void logout(long handle) {
        CppProxy.logout(handle);
    }

    static void renewToken(long handle, String token, int sequence) {
        CppProxy.renewToken(handle, token, sequence);
    }

    static void callExperimentalAPI(long handle, String params, int sequence) {
        CppProxy.callExperimentalAPI(handle, params, sequence);
    }

    static void updateUserName(long handle, String name, int sequence) {
        CppProxy.updateUserName(handle, name, sequence);
    }

    static void updateUserAvatarUrl(long handle, String userAvatarUrl, int sequence) {
        CppProxy.updateUserAvatarUrl(handle, userAvatarUrl, sequence);
    }

    static void updateUserExtendedData(long handle, String extendedData, int sequence) {
        CppProxy.updateUserExtendedData(handle, extendedData, sequence);
    }

    static void updateUserOfflinePushRule(long handle, ZIMGenUserOfflinePushRule offlinePushRule, int sequence) {
        CppProxy.updateUserOfflinePushRule(handle, offlinePushRule, sequence);
    }

    static void updateUserBadge(long handle, int badge, int sequence) {
        CppProxy.updateUserBadge(handle, badge, sequence);
    }

    static void querySelfUserInfo(long handle, int sequence) {
        CppProxy.querySelfUserInfo(handle, sequence);
    }

    static void queryUsersInfo(long handle, ArrayList<String> userIdList, ZIMGenUsersInfoQueryConfig genUserInfoQueryConfig, int sequence) {
        CppProxy.queryUsersInfo(handle, userIdList, genUserInfoQueryConfig, sequence);
    }

    static void queryUsersStatus(long handle, ArrayList<String> userIDs, int sequence) {
        CppProxy.queryUsersStatus(handle, userIDs, sequence);
    }

    static void subscribeUsersStatus(long handle, ArrayList<String> userIDs, ZIMGenUserStatusSubscribeConfig config, int sequence) {
        CppProxy.subscribeUsersStatus(handle, userIDs, config, sequence);
    }

    static void unsubscribeUserStatus(long handle, ArrayList<String> userIDs, int sequence) {
        CppProxy.unsubscribeUserStatus(handle, userIDs, sequence);
    }

    static void querySubscribedUserStatusList(long handle, ZIMGenSubscribedUserStatusQueryConfig config, int sequence) {
        CppProxy.querySubscribedUserStatusList(handle, config, sequence);
    }

    static void updateUserCustomStatus(long handle, String customStatus, int sequence) {
        CppProxy.updateUserCustomStatus(handle, customStatus, sequence);
    }

    static void queryConversationList(long handle, ZIMGenConversationQueryConfig genConfig, int sequence) {
        CppProxy.queryConversationList(handle, genConfig, sequence);
    }

    static void deleteConversation(long handle, String conversationID, int type, ZIMGenConversationDeleteConfig genConfig, int sequence) {
        CppProxy.deleteConversation(handle, conversationID, type, genConfig, sequence);
    }

    static void deleteAllConversations(long handle, ZIMGenConversationDeleteConfig genConfig, int sequence) {
        CppProxy.deleteAllConversations(handle, genConfig, sequence);
    }

    static void clearConversationUnreadMessageCount(long handle, String conversationId, int type, int sequence) {
        CppProxy.clearConversationUnreadMessageCount(handle, conversationId, type, sequence);
    }

    static void clearConversationTotalUnreadMessageCount(long handle, int sequence) {
        CppProxy.clearConversationTotalUnreadMessageCount(handle, sequence);
    }

    static void setConversationNotificationStatus(long handle, int status, String conversationId, int type, int sequence) {
        CppProxy.setConversationNotificationStatus(handle, status, conversationId, type, sequence);
    }

    static void sendConversationMessageReceiptRead(long handle, String conversationID, int conversationType, int sequence) {
        CppProxy.sendConversationMessageReceiptRead(handle, conversationID, conversationType, sequence);
    }

    static void queryConversationPinnedList(long handle, ZIMGenConversationQueryConfig genConfig, int sequence) {
        CppProxy.queryConversationPinnedList(handle, genConfig, sequence);
    }

    static void updateConversationPinnedState(long handle, boolean isPinned, String conversationID, int type, int sequence) {
        CppProxy.updateConversationPinnedState(handle, isPinned, conversationID, type, sequence);
    }

    static void queryConversation(long handle, String conversationID, int conversationType, int sequence) {
        CppProxy.queryConversation(handle, conversationID, conversationType, sequence);
    }

    static void setConversationDraft(long handle, String draft, String conversationID, int conversationType, int sequence) {
        CppProxy.setConversationDraft(handle, draft, conversationID, conversationType, sequence);
    }

    static void setConversationMark(long handle, int markType, boolean enable, ArrayList<ZIMGenConversationBaseInfo> infos, int sequence) {
        CppProxy.setConversationMark(handle, markType, enable, infos, sequence);
    }

    static void queryConversationListWithConfig(long handle, ZIMGenConversationQueryConfig genConfig, ZIMGenConversationFilterOption genOption, int sequence) {
        CppProxy.queryConversationListWithConfig(handle, genConfig, genOption, sequence);
    }

    static void queryConversationTotalUnreadCount(long handle, ZIMGenConversationTotalUnreadCountQueryConfig genConfig, int sequence) {
        CppProxy.queryConversationTotalUnreadCount(handle, genConfig, sequence);
    }

    static void sendRoomMessage(long handle, ZIMGenMessage genMessage, String toRoomId, ZIMGenMessageSendConfig sendConfig, int sequence) {
        CppProxy.sendRoomMessage(handle, genMessage, toRoomId, sendConfig, sequence);
    }

    static void sendGroupMessage(long handle, ZIMGenMessage genMessage, String toGroupId, ZIMGenMessageSendConfig sendConfig, int sequence) {
        CppProxy.sendGroupMessage(handle, genMessage, toGroupId, sendConfig, sequence);
    }

    static void sendMessage(long handle, ZIMGenMessage genMessage, String toConversationId, int conversationType, ZIMGenMessageSendConfig sendConfig, int sequence) {
        CppProxy.sendMessage(handle, genMessage, toConversationId, conversationType, sendConfig, sequence);
    }

    static void sendMediaMessage(long handle, ZIMGenMessage genMediaMessage, String toConversationId, int conversationType, ZIMGenMessageSendConfig sendConfig, int sequence) {
        CppProxy.sendMediaMessage(handle, genMediaMessage, toConversationId, conversationType, sendConfig, sequence);
    }

    static void downloadMediaFile(long handle, ZIMGenMessage genMediaMessage, int fileType, ZIMGenMediaDownloadConfig genConfig, int sequence) {
        CppProxy.downloadMediaFile(handle, genMediaMessage, fileType, genConfig, sequence);
    }

    static void sendMessageReceiptsRead(long handle, ArrayList<ZIMGenMessage> genMessageList, String conversationID, int conversationType, int sequence) {
        CppProxy.sendMessageReceiptsRead(handle, genMessageList, conversationID, conversationType, sequence);
    }

    static void queryMessageReceiptsInfo(long handle, ArrayList<ZIMGenMessage> genMessageList, String conversationID, int conversationType, int sequence) {
        CppProxy.queryMessageReceiptsInfo(handle, genMessageList, conversationID, conversationType, sequence);
    }

    static void insertMessageToLocalDB(long handle, ZIMGenMessage message, String conversationID, int conversationType, String senderUserId, int sequence) {
        CppProxy.insertMessageToLocalDB(handle, message, conversationID, conversationType, senderUserId, sequence);
    }

    static void queryHistoryMessage(long handle, String conversationID, int conversationType, ZIMGenMessageQueryConfig genConfig, int sequence) {
        CppProxy.queryHistoryMessage(handle, conversationID, conversationType, genConfig, sequence);
    }

    static void revokeMessage(long handle, ZIMGenMessage message, ZIMGenMessageRevokeConfig genConfig, int sequence) {
        CppProxy.revokeMessage(handle, message, genConfig, sequence);
    }

    static void deleteMessages(long handle, ArrayList<ZIMGenMessage> messageList, String conversationID, int type, ZIMGenMessageDeleteConfig genConfig, int sequence) {
        CppProxy.deleteMessages(handle, messageList, conversationID, type, genConfig, sequence);
    }

    static void deleteAllMessage(long handle, String conversationID, int type, ZIMGenMessageDeleteConfig genConfig, int sequence) {
        CppProxy.deleteAllMessage(handle, conversationID, type, genConfig, sequence);
    }

    static void deleteAllConversationMessages(long handle, ZIMGenMessageDeleteConfig genConfig, int sequence) {
        CppProxy.deleteAllConversationMessages(handle, genConfig, sequence);
    }

    static void updateMessageLocalExtendedData(long handle, String localExtendedData, ZIMGenMessage genMessage, int sequence) {
        CppProxy.updateMessageLocalExtendedData(handle, localExtendedData, genMessage, sequence);
    }

    static void addMessageReaction(long handle, String reactionType, ZIMGenMessage genMessage, ZIMGenMessageReactionAddConfig genConfig, int sequence) {
        CppProxy.addMessageReaction(handle, reactionType, genMessage, genConfig, sequence);
    }

    static void deleteMessageReaction(long handle, String reactionType, ZIMGenMessage genMessage, int sequence) {
        CppProxy.deleteMessageReaction(handle, reactionType, genMessage, sequence);
    }

    static void deleteMessageAllReactions(long handle, ZIMGenMessage genMessage, int sequence) {
        CppProxy.deleteMessageAllReactions(handle, genMessage, sequence);
    }

    static void queryMessageReactionUserList(long handle, ZIMGenMessage genMessage, ZIMGenMessageReactionUserQueryConfig config, int sequence) {
        CppProxy.queryMessageReactionUserList(handle, genMessage, config, sequence);
    }

    static void queryCombineMessage(long handle, ZIMGenMessage genMessage, int sequence) {
        CppProxy.queryCombineMessage(handle, genMessage, sequence);
    }

    static void replyMessage(long handle, ZIMGenMessage genMessage, ZIMGenMessage genRepliedMessage, ZIMGenMessageSendConfig sendConfig, int sequence) {
        CppProxy.replyMessage(handle, genMessage, genRepliedMessage, sendConfig, sequence);
    }

    static void queryRepliedMessageList(long handle, ZIMGenMessage genMessage, ZIMGenRepliedListQueryConfig genConfig, int sequence) {
        CppProxy.queryRepliedMessageList(handle, genMessage, genConfig, sequence);
    }

    static void queryMessages(long handle, ArrayList<Long> messageSeq, String conversationID, int conversationType, int sequence) {
        CppProxy.queryMessages(handle, messageSeq, conversationID, conversationType, sequence);
    }

    static void editMessage(long handle, ZIMGenMessage genMessage, ZIMGenMessageEditConfig genConfig, int sequence) {
        CppProxy.editMessage(handle, genMessage, genConfig, sequence);
    }

    static void cancelSendingMessage(long handle, ZIMGenMessage genMessage, ZIMGenSendingMessageCancelConfig genConfig, int sequence) {
        CppProxy.cancelSendingMessage(handle, genMessage, genConfig, sequence);
    }

    static void pinMessage(long handle, ZIMGenMessage genMessage, boolean isPinned, ZIMGenPinMessageConfig config, int sequence) {
        CppProxy.pinMessage(handle, genMessage, isPinned, config, sequence);
    }

    static void queryPinnedMessageList(long handle, String conversationID, int conversationType, int sequence) {
        CppProxy.queryPinnedMessageList(handle, conversationID, conversationType, sequence);
    }

    static void searchLocalMessages(long handle, String conversationID, int conversationType, ZIMGenMessageSearchConfig config, int sequence) {
        CppProxy.searchLocalMessages(handle, conversationID, conversationType, config, sequence);
    }

    static void searchLocalConversations(long handle, ZIMGenConversationSearchConfig config, int sequence) {
        CppProxy.searchLocalConversations(handle, config, sequence);
    }

    static void searchGlobalLocalMessages(long handle, ZIMGenMessageSearchConfig config, int sequence) {
        CppProxy.searchGlobalLocalMessages(handle, config, sequence);
    }

    static void createRoom(long handle, ZIMGenRoomAdvancedConfig genConfig, ZIMGenRoomInfo roomInfo, int sequence) {
        CppProxy.createRoom(handle, genConfig, roomInfo, sequence);
    }

    static void enterRoom(long handle, ZIMGenRoomInfo roomInfo, ZIMGenRoomAdvancedConfig genConfig, int sequence) {
        CppProxy.enterRoom(handle, roomInfo, genConfig, sequence);
    }

    static void joinRoom(long handle, String roomId, int sequence) {
        CppProxy.joinRoom(handle, roomId, sequence);
    }

    static void switchRoom(long handle, String fromRoomId, ZIMGenRoomInfo toRoomInfo, boolean isCreateWhenRoomNotExisted, ZIMGenRoomAdvancedConfig genConfig, int sequence) {
        CppProxy.switchRoom(handle, fromRoomId, toRoomInfo, isCreateWhenRoomNotExisted, genConfig, sequence);
    }

    static void leaveRoom(long handle, String roomId, int sequence) {
        CppProxy.leaveRoom(handle, roomId, sequence);
    }

    static void leaveAllRoom(long handle, int sequence) {
        CppProxy.leaveAllRoom(handle, sequence);
    }

    static void queryRoomMemberList(long handle, String roomId, ZIMGenRoomMemberQueryConfig genConfig, int sequence) {
        CppProxy.queryRoomMemberList(handle, roomId, genConfig, sequence);
    }

    static void queryRoomOnlineMemberCount(long handle, String roomId, int sequence) {
        CppProxy.queryRoomOnlineMemberCount(handle, roomId, sequence);
    }

    static void setRoomAttributes(long handle, HashMap<String, String> roomAttributes, String roomId, ZIMGenRoomAttributesSetConfig genConfig, int sequence) {
        CppProxy.setRoomAttributes(handle, roomAttributes, roomId, genConfig, sequence);
    }

    static void deleteRoomAttributes(long handle, ArrayList<String> keys, String roomId, ZIMGenRoomAttributesDeleteConfig genConfig, int sequence) {
        CppProxy.deleteRoomAttributes(handle, keys, roomId, genConfig, sequence);
    }

    static void beginRoomAttributesBatchOperation(long handle, String roomId, ZIMGenRoomAttributesBatchOperationConfig genConfig, int sequence) {
        CppProxy.beginRoomAttributesBatchOperation(handle, roomId, genConfig, sequence);
    }

    static void endRoomAttributesBatchOperation(long handle, String roomId, int sequence) {
        CppProxy.endRoomAttributesBatchOperation(handle, roomId, sequence);
    }

    static void queryRoomAllAttributes(long handle, String roomId, int sequence) {
        CppProxy.queryRoomAllAttributes(handle, roomId, sequence);
    }

    static void setRoomMembersAttributes(long handle, HashMap<String, String> attributes, ArrayList<String> userId, String roomId, ZIMGenRoomMemberAttributesSetConfig genConfig, int sequence) {
        CppProxy.setRoomMembersAttributes(handle, attributes, userId, roomId, genConfig, sequence);
    }

    static void queryRoomMembersAttributes(long handle, ArrayList<String> userIds, String roomId, int sequence) {
        CppProxy.queryRoomMembersAttributes(handle, userIds, roomId, sequence);
    }

    static void queryRoomMemberAttributesList(long handle, String roomid, ZIMGenRoomMemberAttributesQueryConfig genConfig, int sequence) {
        CppProxy.queryRoomMemberAttributesList(handle, roomid, genConfig, sequence);
    }

    static void queryRoomMembers(long handle, ArrayList<String> userIDs, String roomID, int sequence) {
        CppProxy.queryRoomMembers(handle, userIDs, roomID, sequence);
    }

    static void createGroup(long handle, ZIMGenGroupInfo groupInfo, ArrayList<String> userIdList, ZIMGenGroupAdvancedConfig genConfig, int sequence) {
        CppProxy.createGroup(handle, groupInfo, userIdList, genConfig, sequence);
    }

    static void dismissGroup(long handle, String groupId, int sequence) {
        CppProxy.dismissGroup(handle, groupId, sequence);
    }

    static void joinGroup(long handle, String groupId, int sequence) {
        CppProxy.joinGroup(handle, groupId, sequence);
    }

    static void leaveGroup(long handle, String groupId, int sequence) {
        CppProxy.leaveGroup(handle, groupId, sequence);
    }

    static void inviteUsersIntoGroup(long handle, ArrayList<String> userIds, String groupId, int sequence) {
        CppProxy.inviteUsersIntoGroup(handle, userIds, groupId, sequence);
    }

    static void kickGroupMembers(long handle, ArrayList<String> userIds, String groupId, int sequence) {
        CppProxy.kickGroupMembers(handle, userIds, groupId, sequence);
    }

    static void transferGroupOwner(long handle, String toUserId, String groupId, int sequence) {
        CppProxy.transferGroupOwner(handle, toUserId, groupId, sequence);
    }

    static void updateGroupName(long handle, String groupName, String groupId, int sequence) {
        CppProxy.updateGroupName(handle, groupName, groupId, sequence);
    }

    static void updateGroupAvatarUrl(long handle, String groupAvatarUrl, String groupId, int sequence) {
        CppProxy.updateGroupAvatarUrl(handle, groupAvatarUrl, groupId, sequence);
    }

    static void updateGroupAlias(long handle, String groupAlias, String groupId, int sequence) {
        CppProxy.updateGroupAlias(handle, groupAlias, groupId, sequence);
    }

    static void updateGroupNotice(long handle, String groupNotice, String groupId, int sequence) {
        CppProxy.updateGroupNotice(handle, groupNotice, groupId, sequence);
    }

    static void updateGroupJoinMode(long handler, int mode, String groupID, int sequence) {
        CppProxy.updateGroupJoinMode(handler, mode, groupID, sequence);
    }

    static void updateGroupInviteMode(long handler, int mode, String groupID, int sequence) {
        CppProxy.updateGroupInviteMode(handler, mode, groupID, sequence);
    }

    static void updateGroupBeInviteMode(long handler, int mode, String groupID, int sequence) {
        CppProxy.updateGroupBeInviteMode(handler, mode, groupID, sequence);
    }

    static void sendGroupJoinApplication(long handler, String groupID, ZIMGenGroupJoinApplicationSendConfig config, int sequence) {
        CppProxy.sendGroupJoinApplication(handler, groupID, config, sequence);
    }

    static void acceptGroupJoinApplication(long handler, String userID, String groupID, ZIMGenGroupJoinApplicationAcceptConfig config, int sequence) {
        CppProxy.acceptGroupJoinApplication(handler, userID, groupID, config, sequence);
    }

    static void rejectGroupJoinApplication(long handler, String userID, String groupID, ZIMGenGroupJoinApplicationRejectConfig config, int sequence) {
        CppProxy.rejectGroupJoinApplication(handler, userID, groupID, config, sequence);
    }

    static void sendGroupInviteApplications(long handler, ArrayList<String> userIDs, String groupID, ZIMGenGroupInviteApplicationSendConfig config, int sequence) {
        CppProxy.sendGroupInviteApplications(handler, userIDs, groupID, config, sequence);
    }

    static void acceptGroupInviteApplication(long handler, String inviterUserID, String groupID, ZIMGenGroupInviteApplicationAcceptConfig config, int sequence) {
        CppProxy.acceptGroupInviteApplication(handler, inviterUserID, groupID, config, sequence);
    }

    static void rejectGroupInviteApplication(long handler, String inviterUserID, String groupID, ZIMGenGroupInviteApplicationRejectConfig config, int sequence) {
        CppProxy.rejectGroupInviteApplication(handler, inviterUserID, groupID, config, sequence);
    }

    static void queryGroupApplicationList(long handler, ZIMGenGroupApplicationListQueryConfig config, int sequence) {
        CppProxy.queryGroupApplicationList(handler, config, sequence);
    }

    static void muteGroup(long handle, boolean isMute, String groupID, ZIMGenGroupMuteConfig config, int sequence) {
        CppProxy.muteGroup(handle, isMute, groupID, config, sequence);
    }

    static void muteGroupMemberList(long handle, boolean isMute, ArrayList<String> userIDs, String groupID, ZIMGenGroupMemberMuteConfig config, int sequence) {
        CppProxy.muteGroupMemberList(handle, isMute, userIDs, groupID, config, sequence);
    }

    static void queryGroupMemberMutedList(long handle, String groupID, ZIMGenGroupMemberMutedListQueryConfig config, int sequence) {
        CppProxy.queryGroupMemberMutedList(handle, groupID, config, sequence);
    }

    static void queryGroupInfo(long handle, String groupId, int sequence) {
        CppProxy.queryGroupInfo(handle, groupId, sequence);
    }

    static void setGroupAttributes(long handle, HashMap<String, String> groupAttributes, String groupId, int sequence) {
        CppProxy.setGroupAttributes(handle, groupAttributes, groupId, sequence);
    }

    static void deleteGroupAttributes(long handle, ArrayList<String> groupAttributes, String groupId, int sequence) {
        CppProxy.deleteGroupAttributes(handle, groupAttributes, groupId, sequence);
    }

    static void queryGroupAttributes(long handle, ArrayList<String> groupAttributes, String groupId, int sequence) {
        CppProxy.queryGroupAttributes(handle, groupAttributes, groupId, sequence);
    }

    static void queryGroupAllAttributes(long handle, String groupId, int sequence) {
        CppProxy.queryGroupAllAttributes(handle, groupId, sequence);
    }

    static void setGroupMemberRole(long handle, int role, String forUserId, String groupId, int sequence) {
        CppProxy.setGroupMemberRole(handle, role, forUserId, groupId, sequence);
    }

    static void setGroupMemberNickname(long handle, String nickName, String forUserId, String groupId, int sequence) {
        CppProxy.setGroupMemberNickname(handle, nickName, forUserId, groupId, sequence);
    }

    static void queryGroupMemberInfo(long handle, String userId, String groupId, int sequence) {
        CppProxy.queryGroupMemberInfo(handle, userId, groupId, sequence);
    }

    static void queryGroupList(long handle, int sequence) {
        CppProxy.queryGroupList(handle, sequence);
    }

    static void queryGroupListByCount(long handle, int count, ZIMGenGroupListQueryConfig config, int sequence) {
        CppProxy.queryGroupListByCount(handle, count, config, sequence);
    }

    static void queryGroupMemberList(long handle, String groupId, ZIMGenGroupMemberQueryConfig genConfig, int sequence) {
        CppProxy.queryGroupMemberList(handle, groupId, genConfig, sequence);
    }

    static void queryGroupMemberCount(long handle, String groupId, int sequence) {
        CppProxy.queryGroupMemberCount(handle, groupId, sequence);
    }

    static void queryGroupMessageReceiptReadMemberList(long handle, ZIMGenMessage message, String groupId, ZIMGenGroupMessageReceiptMemberQueryConfig genConfig, int sequence) {
        CppProxy.queryGroupMessageReceiptReadMemberList(handle, message, groupId, genConfig, sequence);
    }

    static void queryGroupMessageReceiptUnReadMemberList(long handle, ZIMGenMessage message, String groupId, ZIMGenGroupMessageReceiptMemberQueryConfig genConfig, int sequence) {
        CppProxy.queryGroupMessageReceiptUnReadMemberList(handle, message, groupId, genConfig, sequence);
    }

    static void searchGroups(long handle, ZIMGenGroupSearchConfig genConfig, int sequence) {
        CppProxy.searchGroups(handle, genConfig, sequence);
    }

    static void searchGroupMembers(long handle, String groupId, ZIMGenGroupMemberSearchConfig genConfig, int sequence) {
        CppProxy.searchGroupMembers(handle, groupId, genConfig, sequence);
    }

    static void callInvite(long handle, ArrayList<String> invitees, ZIMGenCallInviteConfig genConfig, int sequence) {
        CppProxy.callInvite(handle, invitees, genConfig, sequence);
    }

    static void callingInvite(long handle, String callId, ArrayList<String> invitees, ZIMGenCallingInviteConfig genConfig, int sequence) {
        CppProxy.callingInvite(handle, callId, invitees, genConfig, sequence);
    }

    static void callJoin(long handle, String callId, ZIMGenCallJoinConfig genConfig, int sequence) {
        CppProxy.callJoin(handle, callId, genConfig, sequence);
    }

    static void callQuit(long handle, String callId, ZIMGenCallQuitConfig genConfig, int sequence) {
        CppProxy.callQuit(handle, callId, genConfig, sequence);
    }

    static void callEnd(long handle, String callId, ZIMGenCallEndConfig genConfig, int sequence) {
        CppProxy.callEnd(handle, callId, genConfig, sequence);
    }

    static void queryCallList(long handle, ZIMGenQueryCallListConfig genConfig, int sequence) {
        CppProxy.queryCallList(handle, genConfig, sequence);
    }

    static void callCancel(long handle, ArrayList<String> invitees, String callId, ZIMGenCallCancelConfig genConfig, int sequence) {
        CppProxy.callCancel(handle, invitees, callId, genConfig, sequence);
    }

    static void callAccept(long handle, String callId, ZIMGenCallAcceptConfig genConfig, int sequence) {
        CppProxy.callAccept(handle, callId, genConfig, sequence);
    }

    static void callReject(long handle, String callId, ZIMGenCallRejectConfig genConfig, int sequence) {
        CppProxy.callReject(handle, callId, genConfig, sequence);
    }

    static void importLocalMessages(long handle, String folderPath, ZIMGenMessageImportConfig genConfig, int sequence) {
        CppProxy.importLocalMessages(handle, folderPath, genConfig, sequence);
    }

    static void exportLocalMessages(long handle, String folderPath, ZIMGenMessageExportConfig genConfig, int sequence) {
        CppProxy.exportLocalMessages(handle, folderPath, genConfig, sequence);
    }

    static void clearLocalFileCache(long handle, ZIMGenFileCacheClearConfig genConfig, int sequence) {
        CppProxy.clearLocalFileCache(handle, genConfig, sequence);
    }

    static void queryLocalFileCache(long handle, ZIMGenFileCacheQueryConfig genConfig, int sequence) {
        CppProxy.queryLocalFileCache(handle, genConfig, sequence);
    }

    static void addFriend(long handle, String userId, ZIMGenFriendAddConfig config, int sequence) {
        CppProxy.addFriend(handle, userId, config, sequence);
    }

    static void sendFriendApplication(long handle, String userId, ZIMGenFriendApplicationSendConfig config, int sequence) {
        CppProxy.sendFriendApplication(handle, userId, config, sequence);
    }

    static void deleteFriends(long handle, ArrayList<String> userIds, ZIMGenFriendDeleteConfig config, int sequence) {
        CppProxy.deleteFriends(handle, userIds, config, sequence);
    }

    static void checkFriendsRelation(long handle, ArrayList<String> userIds, ZIMGenFriendCheckConfig config, int sequence) {
        CppProxy.checkFriendsRelation(handle, userIds, config, sequence);
    }

    static void updateFriendAlias(long handle, String friendAlias, String userID, int sequence) {
        CppProxy.updateFriendAlias(handle, friendAlias, userID, sequence);
    }

    static void updateFriendAttributes(long handle, HashMap<String, String> attributes, String userID, int sequence) {
        CppProxy.updateFriendAttributes(handle, attributes, userID, sequence);
    }

    static void queryFriendsInfo(long handle, ArrayList<String> userIds, int sequence) {
        CppProxy.queryFriendsInfo(handle, userIds, sequence);
    }

    static void acceptFriendApplication(long handle, String userID, ZIMGenFriendApplicationAcceptConfig config, int sequence) {
        CppProxy.acceptFriendApplication(handle, userID, config, sequence);
    }

    static void rejectFriendApplication(long handle, String userID, ZIMGenFriendApplicationRejectConfig config, int sequence) {
        CppProxy.rejectFriendApplication(handle, userID, config, sequence);
    }

    static void queryFriendList(long handle, ZIMGenFriendListQueryConfig config, int sequence) {
        CppProxy.queryFriendList(handle, config, sequence);
    }

    static void queryFriendApplicationList(long handle, ZIMGenFriendApplicationListQueryConfig config, int sequence) {
        CppProxy.queryFriendApplicationList(handle, config, sequence);
    }

    static void addUsersToBlacklist(long handle, ArrayList<String> userIds, int sequence) {
        CppProxy.addUsersToBlacklist(handle, userIds, sequence);
    }

    static void removeUsersFromBlacklist(long handle, ArrayList<String> userIds, int sequence) {
        CppProxy.removeUsersFromBlacklist(handle, userIds, sequence);
    }

    static void queryBlacklist(long handle, ZIMGenBlacklistQueryConfig config, int sequence) {
        CppProxy.queryBlacklist(handle, config, sequence);
    }

    static void checkUserIsInBlacklist(long handle, String userID, int sequence) {
        CppProxy.checkUserIsInBlacklist(handle, userID, sequence);
    }

    static void searchLocalFriends(long handle, ZIMGenFriendSearchConfig config, int sequence) {
        CppProxy.searchLocalFriends(handle, config, sequence);
    }

    public static final class CppProxy implements ZIMGenMethod {
        private final AtomicBoolean destroyed = new AtomicBoolean(false);
        private final long nativeRef;

        public static native void acceptFriendApplication(long handle, String userID, ZIMGenFriendApplicationAcceptConfig config, int sequence);

        public static native void acceptGroupInviteApplication(long handler, String inviterUserID, String groupID, ZIMGenGroupInviteApplicationAcceptConfig config, int sequence);

        public static native void acceptGroupJoinApplication(long handler, String userID, String groupID, ZIMGenGroupJoinApplicationAcceptConfig config, int sequence);

        public static native void addFriend(long handle, String userId, ZIMGenFriendAddConfig config, int sequence);

        public static native void addMessageReaction(long handle, String reactionType, ZIMGenMessage genMessage, ZIMGenMessageReactionAddConfig genConfig, int sequence);

        public static native void addUsersToBlacklist(long handle, ArrayList<String> userIds, int sequence);

        public static native void beginRoomAttributesBatchOperation(long handle, String roomId, ZIMGenRoomAttributesBatchOperationConfig genConfig, int sequence);

        public static native void callAccept(long handle, String callId, ZIMGenCallAcceptConfig genConfig, int sequence);

        public static native void callCancel(long handle, ArrayList<String> invitees, String callId, ZIMGenCallCancelConfig genConfig, int sequence);

        public static native void callEnd(long handle, String callId, ZIMGenCallEndConfig genConfig, int sequence);

        public static native void callExperimentalAPI(long handle, String params, int sequence);

        public static native void callInvite(long handle, ArrayList<String> invitees, ZIMGenCallInviteConfig genConfig, int sequence);

        public static native void callJoin(long handle, String callId, ZIMGenCallJoinConfig genConfig, int sequence);

        public static native void callQuit(long handle, String callId, ZIMGenCallQuitConfig genConfig, int sequence);

        public static native void callReject(long handle, String callId, ZIMGenCallRejectConfig genConfig, int sequence);

        public static native void callingInvite(long handle, String callId, ArrayList<String> invitees, ZIMGenCallingInviteConfig genConfig, int sequence);

        public static native void cancelSendingMessage(long handle, ZIMGenMessage genMessage, ZIMGenSendingMessageCancelConfig genConfig, int sequence);

        public static native void checkFriendsRelation(long handle, ArrayList<String> userIds, ZIMGenFriendCheckConfig config, int sequence);

        public static native void checkUserIsInBlacklist(long handle, String userID, int sequence);

        public static native void clearConversationTotalUnreadMessageCount(long handle, int sequence);

        public static native void clearConversationUnreadMessageCount(long handle, String conversationId, int type, int sequence);

        public static native void clearLocalFileCache(long handle, ZIMGenFileCacheClearConfig genConfig, int sequence);

        public static native void createGroup(long handle, ZIMGenGroupInfo groupInfo, ArrayList<String> userIdList, ZIMGenGroupAdvancedConfig genConfig, int sequence);

        public static native void createRoom(long handle, ZIMGenRoomAdvancedConfig genConfig, ZIMGenRoomInfo roomInfo, int sequence);

        public static native void deleteAllConversationMessages(long handle, ZIMGenMessageDeleteConfig genConfig, int sequence);

        public static native void deleteAllConversations(long handle, ZIMGenConversationDeleteConfig genConfig, int sequence);

        public static native void deleteAllMessage(long handle, String conversationID, int type, ZIMGenMessageDeleteConfig genConfig, int sequence);

        public static native void deleteConversation(long handle, String conversationID, int type, ZIMGenConversationDeleteConfig genConfig, int sequence);

        public static native void deleteFriends(long handle, ArrayList<String> userIds, ZIMGenFriendDeleteConfig config, int sequence);

        public static native void deleteGroupAttributes(long handle, ArrayList<String> groupAttributes, String groupId, int sequence);

        public static native void deleteMessageAllReactions(long handle, ZIMGenMessage genMessage, int sequence);

        public static native void deleteMessageReaction(long handle, String reactionType, ZIMGenMessage genMessage, int sequence);

        public static native void deleteMessages(long handle, ArrayList<ZIMGenMessage> messageList, String conversationID, int type, ZIMGenMessageDeleteConfig genConfig, int sequence);

        public static native void deleteRoomAttributes(long handle, ArrayList<String> keys, String roomId, ZIMGenRoomAttributesDeleteConfig genConfig, int sequence);

        public static native void destroy(long handle);

        public static native void dismissGroup(long handle, String groupId, int sequence);

        public static native void downloadMediaFile(long handle, ZIMGenMessage genMediaMessage, int fileType, ZIMGenMediaDownloadConfig genConfig, int sequence);

        public static native void editMessage(long handle, ZIMGenMessage genMessage, ZIMGenMessageEditConfig genConfig, int sequence);

        public static native void endRoomAttributesBatchOperation(long handle, String roomId, int sequence);

        public static native void enterRoom(long handle, ZIMGenRoomInfo roomInfo, ZIMGenRoomAdvancedConfig genConfig, int sequence);

        public static native void exportLocalMessages(long handle, String folderPath, ZIMGenMessageExportConfig genConfig, int sequence);

        public static native long getInstance();

        public static native String getVersion();

        public static native void importLocalMessages(long handle, String folderPath, ZIMGenMessageImportConfig genConfig, int sequence);

        public static native void insertMessageToLocalDB(long handle, ZIMGenMessage message, String conversationID, int conversationType, String senderUserId, int sequence);

        public static native void inviteUsersIntoGroup(long handle, ArrayList<String> userIds, String groupId, int sequence);

        public static native void joinGroup(long handle, String groupId, int sequence);

        public static native void joinRoom(long handle, String roomId, int sequence);

        public static native void kickGroupMembers(long handle, ArrayList<String> userIds, String groupId, int sequence);

        public static native void leaveAllRoom(long handle, int sequence);

        public static native void leaveGroup(long handle, String groupId, int sequence);

        public static native void leaveRoom(long handle, String roomId, int sequence);

        public static native void login(long handle, String userID, ZIMGenLoginConfig config, int sequence);

        public static native void logout(long handle);

        public static native void muteGroup(long handle, boolean isMute, String groupID, ZIMGenGroupMuteConfig config, int sequence);

        public static native void muteGroupMemberList(long handle, boolean isMute, ArrayList<String> userIDs, String groupID, ZIMGenGroupMemberMuteConfig config, int sequence);

        private native void nativeDestroy(long nativeRef);

        public static native void pinMessage(long handle, ZIMGenMessage genMessage, boolean isPinned, ZIMGenPinMessageConfig config, int sequence);

        public static native void queryBlacklist(long handle, ZIMGenBlacklistQueryConfig config, int sequence);

        public static native void queryCallList(long handle, ZIMGenQueryCallListConfig genConfig, int sequence);

        public static native void queryCombineMessage(long handle, ZIMGenMessage genMessage, int sequence);

        public static native void queryConversation(long handle, String conversationID, int conversationType, int sequence);

        public static native void queryConversationList(long handle, ZIMGenConversationQueryConfig genConfig, int sequence);

        public static native void queryConversationListWithConfig(long handle, ZIMGenConversationQueryConfig genConfig, ZIMGenConversationFilterOption genOption, int sequence);

        public static native void queryConversationPinnedList(long handle, ZIMGenConversationQueryConfig genConfig, int sequence);

        public static native void queryConversationTotalUnreadCount(long handle, ZIMGenConversationTotalUnreadCountQueryConfig genConfig, int sequence);

        public static native void queryFriendApplicationList(long handle, ZIMGenFriendApplicationListQueryConfig config, int sequence);

        public static native void queryFriendList(long handle, ZIMGenFriendListQueryConfig config, int sequence);

        public static native void queryFriendsInfo(long handle, ArrayList<String> userIds, int sequence);

        public static native void queryGroupAllAttributes(long handle, String groupId, int sequence);

        public static native void queryGroupApplicationList(long handler, ZIMGenGroupApplicationListQueryConfig config, int sequence);

        public static native void queryGroupAttributes(long handle, ArrayList<String> groupAttributes, String groupId, int sequence);

        public static native void queryGroupInfo(long handle, String groupId, int sequence);

        public static native void queryGroupList(long handle, int sequence);

        public static native void queryGroupListByCount(long handle, int count, ZIMGenGroupListQueryConfig config, int sequence);

        public static native void queryGroupMemberCount(long handle, String groupId, int sequence);

        public static native void queryGroupMemberInfo(long handle, String userId, String groupId, int sequence);

        public static native void queryGroupMemberList(long handle, String groupId, ZIMGenGroupMemberQueryConfig genConfig, int sequence);

        public static native void queryGroupMemberMutedList(long handle, String groupID, ZIMGenGroupMemberMutedListQueryConfig config, int sequence);

        public static native void queryGroupMessageReceiptReadMemberList(long handle, ZIMGenMessage message, String groupId, ZIMGenGroupMessageReceiptMemberQueryConfig genConfig, int sequence);

        public static native void queryGroupMessageReceiptUnReadMemberList(long handle, ZIMGenMessage message, String groupId, ZIMGenGroupMessageReceiptMemberQueryConfig genConfig, int sequence);

        public static native void queryHistoryMessage(long handle, String conversationID, int conversationType, ZIMGenMessageQueryConfig genConfig, int sequence);

        public static native void queryLocalFileCache(long handle, ZIMGenFileCacheQueryConfig genConfig, int sequence);

        public static native void queryMessageReactionUserList(long handle, ZIMGenMessage genMessage, ZIMGenMessageReactionUserQueryConfig config, int sequence);

        public static native void queryMessageReceiptsInfo(long handle, ArrayList<ZIMGenMessage> genMessageList, String conversationID, int conversationType, int sequence);

        public static native void queryMessages(long handle, ArrayList<Long> messageSeq, String conversationID, int conversationType, int sequence);

        public static native void queryPinnedMessageList(long handle, String conversationID, int conversationType, int sequence);

        public static native void queryRepliedMessageList(long handle, ZIMGenMessage genMessage, ZIMGenRepliedListQueryConfig genConfig, int sequence);

        public static native void queryRoomAllAttributes(long handle, String roomId, int sequence);

        public static native void queryRoomMemberAttributesList(long handle, String roomid, ZIMGenRoomMemberAttributesQueryConfig genConfig, int sequence);

        public static native void queryRoomMemberList(long handle, String roomId, ZIMGenRoomMemberQueryConfig genConfig, int sequence);

        public static native void queryRoomMembers(long handle, ArrayList<String> userIDs, String roomID, int sequence);

        public static native void queryRoomMembersAttributes(long handle, ArrayList<String> userIds, String roomId, int sequence);

        public static native void queryRoomOnlineMemberCount(long handle, String roomId, int sequence);

        public static native void querySelfUserInfo(long handle, int sequence);

        public static native void querySubscribedUserStatusList(long handle, ZIMGenSubscribedUserStatusQueryConfig config, int sequence);

        public static native void queryUsersInfo(long handle, ArrayList<String> userIdList, ZIMGenUsersInfoQueryConfig genUserInfoQueryConfig, int sequence);

        public static native void queryUsersStatus(long handle, ArrayList<String> userIDs, int sequence);

        public static native void rejectFriendApplication(long handle, String userID, ZIMGenFriendApplicationRejectConfig config, int sequence);

        public static native void rejectGroupInviteApplication(long handler, String inviterUserID, String groupID, ZIMGenGroupInviteApplicationRejectConfig config, int sequence);

        public static native void rejectGroupJoinApplication(long handler, String userID, String groupID, ZIMGenGroupJoinApplicationRejectConfig config, int sequence);

        public static native void removeUsersFromBlacklist(long handle, ArrayList<String> userIds, int sequence);

        public static native void renewToken(long handle, String token, int sequence);

        public static native void replyMessage(long handle, ZIMGenMessage genMessage, ZIMGenMessage genRepliedMessage, ZIMGenMessageSendConfig sendConfig, int sequence);

        public static native void revokeMessage(long handle, ZIMGenMessage message, ZIMGenMessageRevokeConfig genConfig, int sequence);

        public static native void searchGlobalLocalMessages(long handle, ZIMGenMessageSearchConfig config, int sequence);

        public static native void searchGroupMembers(long handle, String groupId, ZIMGenGroupMemberSearchConfig genConfig, int sequence);

        public static native void searchGroups(long handle, ZIMGenGroupSearchConfig genConfig, int sequence);

        public static native void searchLocalConversations(long handle, ZIMGenConversationSearchConfig config, int sequence);

        public static native void searchLocalFriends(long handle, ZIMGenFriendSearchConfig config, int sequence);

        public static native void searchLocalMessages(long handle, String conversationID, int conversationType, ZIMGenMessageSearchConfig config, int sequence);

        public static native void sendConversationMessageReceiptRead(long handle, String conversationID, int conversationType, int sequence);

        public static native void sendFriendApplication(long handle, String userId, ZIMGenFriendApplicationSendConfig config, int sequence);

        public static native void sendGroupInviteApplications(long handler, ArrayList<String> userIDs, String groupID, ZIMGenGroupInviteApplicationSendConfig config, int sequence);

        public static native void sendGroupJoinApplication(long handler, String groupID, ZIMGenGroupJoinApplicationSendConfig config, int sequence);

        public static native void sendGroupMessage(long handle, ZIMGenMessage genMessage, String toGroupId, ZIMGenMessageSendConfig sendConfig, int sequence);

        public static native void sendMediaMessage(long handle, ZIMGenMessage genMediaMessage, String toConversationId, int conversationType, ZIMGenMessageSendConfig sendConfig, int sequence);

        public static native void sendMessage(long handle, ZIMGenMessage genMessage, String toConversationId, int conversationType, ZIMGenMessageSendConfig sendConfig, int sequence);

        public static native void sendMessageReceiptsRead(long handle, ArrayList<ZIMGenMessage> genMessageList, String conversationID, int conversationType, int sequence);

        public static native void sendPeerMessage(long handle, ZIMGenMessage genMessage, String toUserId, ZIMGenMessageSendConfig sendConfig, int sequence);

        public static native void sendRoomMessage(long handle, ZIMGenMessage genMessage, String toRoomId, ZIMGenMessageSendConfig sendConfig, int sequence);

        public static native void setAdvancedConfig(String key, String value);

        public static native void setCacheConfig(String cachePath);

        public static native void setCallbacks(ZIMGenCallbacks callbacks);

        public static native void setConversationDraft(long handle, String draft, String conversationID, int conversationType, int sequence);

        public static native void setConversationMark(long handle, int markType, boolean enable, ArrayList<ZIMGenConversationBaseInfo> infos, int sequence);

        public static native void setConversationNotificationStatus(long handle, int status, String conversationId, int type, int sequence);

        public static native boolean setGeofencingConfig(int type, ArrayList<Integer> areaList);

        public static native void setGroupAttributes(long handle, HashMap<String, String> groupAttributes, String groupId, int sequence);

        public static native void setGroupMemberNickname(long handle, String nickName, String forUserId, String groupId, int sequence);

        public static native void setGroupMemberRole(long handle, int role, String forUserId, String groupId, int sequence);

        public static native void setLogConfig(String logPath, long logSize);

        public static native void setPushID(String pushId);

        public static native void setRoomAttributes(long handle, HashMap<String, String> roomAttributes, String roomId, ZIMGenRoomAttributesSetConfig genConfig, int sequence);

        public static native void setRoomMembersAttributes(long handle, HashMap<String, String> attributes, ArrayList<String> userId, String roomId, ZIMGenRoomMemberAttributesSetConfig genConfig, int sequence);

        public static native void subscribeUsersStatus(long handle, ArrayList<String> userIDs, ZIMGenUserStatusSubscribeConfig config, int sequence);

        public static native void switchRoom(long handle, String fromRoomId, ZIMGenRoomInfo toRoomInfo, boolean isCreateWhenRoomNotExisted, ZIMGenRoomAdvancedConfig genConfig, int sequence);

        public static native void transferGroupOwner(long handle, String toUserId, String groupId, int sequence);

        public static native void unsubscribeUserStatus(long handle, ArrayList<String> userIDs, int sequence);

        public static native void updateConversationPinnedState(long handle, boolean isPinned, String conversationID, int type, int sequence);

        public static native void updateFriendAlias(long handle, String friendAlias, String userID, int sequence);

        public static native void updateFriendAttributes(long handle, HashMap<String, String> attributes, String userID, int sequence);

        public static native void updateGroupAlias(long handle, String groupAlias, String groupId, int sequence);

        public static native void updateGroupAvatarUrl(long handle, String groupAvatarUrl, String groupId, int sequence);

        public static native void updateGroupBeInviteMode(long handler, int mode, String groupID, int sequence);

        public static native void updateGroupInviteMode(long handler, int mode, String groupID, int sequence);

        public static native void updateGroupJoinMode(long handler, int mode, String groupID, int sequence);

        public static native void updateGroupName(long handle, String groupName, String groupId, int sequence);

        public static native void updateGroupNotice(long handle, String groupNotice, String groupId, int sequence);

        public static native void updateMessageLocalExtendedData(long handle, String localExtendedData, ZIMGenMessage genMessage, int sequence);

        public static native void updateUserAvatarUrl(long handle, String userAvatarUrl, int sequence);

        public static native void updateUserBadge(long handle, int badge, int sequence);

        public static native void updateUserCustomStatus(long handle, String customStatus, int sequence);

        public static native void updateUserExtendedData(long handle, String extendedData, int sequence);

        public static native void updateUserName(long handle, String name, int sequence);

        public static native void updateUserOfflinePushRule(long handle, ZIMGenUserOfflinePushRule offlinePushRule, int sequence);

        public static native void uploadLog(long handle, int sequence);

        private CppProxy(long nativeRef) {
            if (nativeRef == 0) {
                throw new RuntimeException("nativeRef is zero");
            }
            this.nativeRef = nativeRef;
        }

        public void _djinni_private_destroy() {
            if (this.destroyed.getAndSet(true)) {
                return;
            }
            nativeDestroy(this.nativeRef);
        }

        protected void finalize() throws Throwable {
            _djinni_private_destroy();
            super.finalize();
        }
    }
}

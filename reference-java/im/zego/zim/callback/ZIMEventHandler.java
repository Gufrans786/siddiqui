package im.zego.zim.callback;

import im.zego.zim.ZIM;
import im.zego.zim.entity.ZIMCallInvitationAcceptedInfo;
import im.zego.zim.entity.ZIMCallInvitationCancelledInfo;
import im.zego.zim.entity.ZIMCallInvitationCreatedInfo;
import im.zego.zim.entity.ZIMCallInvitationEndedInfo;
import im.zego.zim.entity.ZIMCallInvitationReceivedInfo;
import im.zego.zim.entity.ZIMCallInvitationRejectedInfo;
import im.zego.zim.entity.ZIMCallInvitationTimeoutInfo;
import im.zego.zim.entity.ZIMCallUserStateChangeInfo;
import im.zego.zim.entity.ZIMConversationChangeInfo;
import im.zego.zim.entity.ZIMConversationsAllDeletedInfo;
import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFriendApplicationInfo;
import im.zego.zim.entity.ZIMFriendInfo;
import im.zego.zim.entity.ZIMGroupApplicationInfo;
import im.zego.zim.entity.ZIMGroupAttributesUpdateInfo;
import im.zego.zim.entity.ZIMGroupFullInfo;
import im.zego.zim.entity.ZIMGroupMemberInfo;
import im.zego.zim.entity.ZIMGroupMuteInfo;
import im.zego.zim.entity.ZIMGroupOperatedInfo;
import im.zego.zim.entity.ZIMGroupVerifyInfo;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.entity.ZIMMessageDeletedInfo;
import im.zego.zim.entity.ZIMMessagePinStatusChangeInfo;
import im.zego.zim.entity.ZIMMessageReaction;
import im.zego.zim.entity.ZIMMessageReceiptInfo;
import im.zego.zim.entity.ZIMMessageReceivedInfo;
import im.zego.zim.entity.ZIMMessageRootRepliedCountInfo;
import im.zego.zim.entity.ZIMMessageSentStatusChangeInfo;
import im.zego.zim.entity.ZIMRevokeMessage;
import im.zego.zim.entity.ZIMRoomAttributesUpdateInfo;
import im.zego.zim.entity.ZIMRoomMemberAttributesUpdateInfo;
import im.zego.zim.entity.ZIMRoomOperatedInfo;
import im.zego.zim.entity.ZIMUserFullInfo;
import im.zego.zim.entity.ZIMUserInfo;
import im.zego.zim.entity.ZIMUserRule;
import im.zego.zim.entity.ZIMUserStatus;
import im.zego.zim.enums.ZIMBlacklistChangeAction;
import im.zego.zim.enums.ZIMConnectionEvent;
import im.zego.zim.enums.ZIMConnectionState;
import im.zego.zim.enums.ZIMConversationSyncState;
import im.zego.zim.enums.ZIMFriendApplicationListChangeAction;
import im.zego.zim.enums.ZIMFriendListChangeAction;
import im.zego.zim.enums.ZIMGroupApplicationListChangeAction;
import im.zego.zim.enums.ZIMGroupEvent;
import im.zego.zim.enums.ZIMGroupMemberEvent;
import im.zego.zim.enums.ZIMGroupMemberState;
import im.zego.zim.enums.ZIMGroupState;
import im.zego.zim.enums.ZIMRoomEvent;
import im.zego.zim.enums.ZIMRoomState;
import im.zego.zim.event.ZIMMessageReactionsChangedEventResult;
import java.util.ArrayList;
import org.json.JSONObject;

public abstract class ZIMEventHandler {
    public void onBlacklistChanged(ZIM zim, ArrayList<ZIMUserInfo> userList, ZIMBlacklistChangeAction action) {
    }

    public void onBroadcastMessageReceived(ZIM zim, ZIMMessage message) {
    }

    public void onCallInvitationAccepted(ZIM zim, ZIMCallInvitationAcceptedInfo info, String callID) {
    }

    public void onCallInvitationCancelled(ZIM zim, ZIMCallInvitationCancelledInfo info, String callID) {
    }

    public void onCallInvitationCreated(ZIM zim, ZIMCallInvitationCreatedInfo info, String callID) {
    }

    public void onCallInvitationEnded(ZIM zim, ZIMCallInvitationEndedInfo info, String callID) {
    }

    public void onCallInvitationReceived(ZIM zim, ZIMCallInvitationReceivedInfo info, String callID) {
    }

    public void onCallInvitationRejected(ZIM zim, ZIMCallInvitationRejectedInfo info, String callID) {
    }

    public void onCallInvitationTimeout(ZIM zim, ZIMCallInvitationTimeoutInfo info, String callID) {
    }

    public void onCallInvitationTimeout(ZIM zim, String callID) {
    }

    public void onCallInviteesAnsweredTimeout(ZIM zim, ArrayList<String> invitees, String callID) {
    }

    public void onCallUserStateChanged(ZIM zim, ZIMCallUserStateChangeInfo info, String callID) {
    }

    public void onConnectionStateChanged(ZIM zim, ZIMConnectionState state, ZIMConnectionEvent event, JSONObject extendedData) {
    }

    public void onConversationChanged(ZIM zim, ArrayList<ZIMConversationChangeInfo> conversationChangeInfoList) {
    }

    public void onConversationMessageReceiptChanged(ZIM zim, ArrayList<ZIMMessageReceiptInfo> infos) {
    }

    public void onConversationSyncStateChanged(ZIM zim, ZIMConversationSyncState state) {
    }

    public void onConversationTotalUnreadMessageCountUpdated(ZIM zim, int totalUnreadMessageCount) {
    }

    public void onConversationsAllDeleted(ZIM zim, ZIMConversationsAllDeletedInfo info) {
    }

    public void onError(ZIM zim, ZIMError errorInfo) {
    }

    public void onExperimentalEventReceived(ZIM zim, String content) {
    }

    public void onFriendApplicationListChanged(ZIM zim, ArrayList<ZIMFriendApplicationInfo> friendApplicationInfoList, ZIMFriendApplicationListChangeAction action) {
    }

    public void onFriendApplicationUpdated(ZIM zim, ArrayList<ZIMFriendApplicationInfo> friendApplicationInfoList) {
    }

    public void onFriendInfoUpdated(ZIM zim, ArrayList<ZIMFriendInfo> friendInfoList) {
    }

    public void onFriendListChanged(ZIM zim, ArrayList<ZIMFriendInfo> friendInfoList, ZIMFriendListChangeAction action) {
    }

    public void onGroupAliasUpdated(ZIM zim, String groupAlias, String operatedUserID, String groupID) {
    }

    public void onGroupApplicationListChanged(ZIM zim, ArrayList<ZIMGroupApplicationInfo> applicationList, ZIMGroupApplicationListChangeAction action) {
    }

    public void onGroupApplicationUpdated(ZIM zim, ArrayList<ZIMGroupApplicationInfo> applicationList) {
    }

    public void onGroupAttributesUpdated(ZIM zim, ArrayList<ZIMGroupAttributesUpdateInfo> infos, ZIMGroupOperatedInfo operatedInfo, String groupID) {
    }

    public void onGroupAvatarUrlUpdated(ZIM zim, String groupAvatarUrl, ZIMGroupOperatedInfo operatedInfo, String groupID) {
    }

    public void onGroupMemberInfoUpdated(ZIM zim, ArrayList<ZIMGroupMemberInfo> userList, ZIMGroupOperatedInfo operatedInfo, String groupID) {
    }

    public void onGroupMemberStateChanged(ZIM zim, ZIMGroupMemberState state, ZIMGroupMemberEvent event, ArrayList<ZIMGroupMemberInfo> userList, ZIMGroupOperatedInfo operatedInfo, String groupID) {
    }

    public void onGroupMessageReceived(ZIM zim, ArrayList<ZIMMessage> messageList, ZIMMessageReceivedInfo info, String fromGroupID) {
    }

    public void onGroupMutedInfoUpdated(ZIM zim, ZIMGroupMuteInfo muteInfo, ZIMGroupOperatedInfo operatedInfo, String groupID) {
    }

    public void onGroupNameUpdated(ZIM zim, String groupName, ZIMGroupOperatedInfo operatedInfo, String groupID) {
    }

    public void onGroupNoticeUpdated(ZIM zim, String groupNotice, ZIMGroupOperatedInfo operatedInfo, String groupID) {
    }

    public void onGroupStateChanged(ZIM zim, ZIMGroupState state, ZIMGroupEvent event, ZIMGroupOperatedInfo operatedInfo, ZIMGroupFullInfo groupInfo) {
    }

    public void onGroupVerifyInfoUpdated(ZIM zim, ZIMGroupVerifyInfo verifyInfo, ZIMGroupOperatedInfo operatedInfo, String groupID) {
    }

    public void onMessageDeleted(ZIM zim, ZIMMessageDeletedInfo deletedInfo) {
    }

    public void onMessageEdited(ZIM zim, ArrayList<ZIMMessage> messageList) {
    }

    public void onMessagePinStatusChanged(ZIM zim, ArrayList<ZIMMessagePinStatusChangeInfo> changeInfoList) {
    }

    public void onMessageReactionsChanged(ZIM zim, ZIMMessageReactionsChangedEventResult result) {
    }

    public void onMessageReactionsChanged(ZIM zim, ArrayList<ZIMMessageReaction> reactions) {
    }

    public void onMessageReceiptChanged(ZIM zim, ArrayList<ZIMMessageReceiptInfo> infos) {
    }

    public void onMessageRepliedCountChanged(ZIM zim, ArrayList<ZIMMessageRootRepliedCountInfo> infos) {
    }

    public void onMessageRepliedInfoChanged(ZIM zim, ArrayList<ZIMMessage> messageList) {
    }

    public void onMessageRevokeReceived(ZIM zim, ArrayList<ZIMRevokeMessage> messageList) {
    }

    public void onMessageSentStatusChanged(ZIM zim, ArrayList<ZIMMessageSentStatusChangeInfo> messageSentStatusChangeInfoList) {
    }

    public void onPeerMessageReceived(ZIM zim, ArrayList<ZIMMessage> messageList, ZIMMessageReceivedInfo info, String fromUserID) {
    }

    public void onReceiveGroupMessage(ZIM zim, ArrayList<ZIMMessage> messageList, String fromGroupID) {
    }

    public void onReceivePeerMessage(ZIM zim, ArrayList<ZIMMessage> messageList, String fromUserID) {
    }

    public void onReceiveRoomMessage(ZIM zim, ArrayList<ZIMMessage> messageList, String fromRoomID) {
    }

    public void onRoomAttributesBatchUpdated(ZIM zim, ArrayList<ZIMRoomAttributesUpdateInfo> infos, String roomID) {
    }

    public void onRoomAttributesUpdated(ZIM zim, ZIMRoomAttributesUpdateInfo info, String roomID) {
    }

    public void onRoomMemberAttributesUpdated(ZIM zim, ArrayList<ZIMRoomMemberAttributesUpdateInfo> infos, ZIMRoomOperatedInfo operatedInfo, String roomID) {
    }

    public void onRoomMemberJoined(ZIM zim, ArrayList<ZIMUserInfo> memberList, String roomID) {
    }

    public void onRoomMemberLeft(ZIM zim, ArrayList<ZIMUserInfo> memberList, String roomID) {
    }

    public void onRoomMessageReceived(ZIM zim, ArrayList<ZIMMessage> messageList, ZIMMessageReceivedInfo info, String fromRoomID) {
    }

    public void onRoomStateChanged(ZIM zim, ZIMRoomState state, ZIMRoomEvent event, JSONObject extendedData, String roomID) {
    }

    public void onTokenWillExpire(ZIM zim, int second) {
    }

    public void onUserInfoUpdated(ZIM zim, ZIMUserFullInfo info) {
    }

    public void onUserRuleUpdated(ZIM zim, ZIMUserRule rule) {
    }

    public void onUserStatusUpdated(ZIM zim, ArrayList<ZIMUserStatus> userStatusList) {
    }
}

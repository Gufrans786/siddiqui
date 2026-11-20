package im.zego.zim.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import im.zego.zim.ZIM;
import im.zego.zim.ZIMSDKInfo;
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
import im.zego.zim.internal.generated.ZIMBridge;
import im.zego.zim.internal.generated.ZIMCovert;
import im.zego.zim.internal.generated.ZIMGenMethod;
import im.zego.zim.internal.util.ZIMLogUtil;
import im.zego.zim.internal.util.ZIMSysUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class ZIMImpl extends ZIM {
    public static final Handler uiHandler = new Handler(Looper.getMainLooper());
    private static final ConcurrentHashMap<Long, ZIMImpl> zimHandleMap = new ConcurrentHashMap<>();
    public final Context context;
    public ZIMEventHandler eventHandler;
    private final long handle;
    private AtomicInteger sequence = new AtomicInteger(0);
    public final HashMap<Integer, Object> commonCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessage> messageObjMap = new HashMap<>();
    public final HashMap<Integer, ZIMExperimentalAPICalledCallback> experimentalAPICalledCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMLogUploadedCallback> logUploadedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMLoggedInCallback> loggedInCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMTokenRenewedCallback> tokenRenewedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMUserNameUpdatedCallback> userNameUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMUserAvatarUrlUpdatedCallback> userAvatarUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMUserExtendedDataUpdatedCallback> userExtendedDataUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMUserCustomStatusUpdatedCallback> userCustomStatusUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMUserOfflinePushRuleUpdatedCallback> userOfflinePushRuleInfoUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMUserBadgeUpdatedCallback> userBadgeUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMSelfUserInfoQueriedCallback> selfUserInfoQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMUsersInfoQueriedCallback> usersInfoQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessageQueriedCallback> messageQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessagesGlobalSearchedCallback> messageGlobalSearchCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessagesSearchedCallback> messageSearchCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationsSearchedCallback> conversationMessageGlobalSearchCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessageLocalExtendedDataUpdatedCallback> messageLocalExtendedDataUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessageSentCallback> messageSentCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMediaMessageSentCallback> mediaMessageSentCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMediaDownloadedCallback> mediaDownloadedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessagePinnedCallback> messagePinnedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMPinnedMessageListQueriedCallback> pinnedMessageListQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomCreatedCallback> roomCreatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomJoinedCallback> roomJoinedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomEnteredCallback> roomEnteredCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomSwitchedCallback> roomSwitchedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomLeftCallback> roomLeftCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomAllLeftCallback> allRoomLeftCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomOnlineMemberCountQueriedCallback> onlineCountQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomMemberQueriedCallback> roomMemberQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomMembersQueriedCallback> roomMembersQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessageDeletedCallback> messageDeletedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationMessagesAllDeletedCallback> conversationMessagesAllDeletedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationListQueriedCallback> conversationListQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationQueriedCallback> conversationQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationPinnedListQueriedCallback> conversationPinnedListQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationPinnedStateUpdatedCallback> conversationPinnedStateUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationDeletedCallback> conversationDeletedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationsAllDeletedCallback> conversationsAllDeletedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationUnreadMessageCountClearedCallback> conversationUnreadMessageCountClearedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationTotalUnreadMessageCountClearedCallback> conversationsAllUnreadMessageCountClearedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMConversationNotificationStatusSetCallback> conversationNotificationStatusSetCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomAttributesOperatedCallback> roomAttributesOperatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomAttributesBatchOperatedCallback> roomAttributesBatchOperatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomAttributesQueriedCallback> roomAllAttributesQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomMemberAttributesListQueriedCallback> roomMemberAttributesListQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomMembersAttributesOperatedCallback> roomMembersAttributesOperatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMRoomMembersAttributesQueriedCallback> roomMembersAttributesQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupCreatedCallback> groupCreatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupDismissedCallback> groupDismissedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupJoinedCallback> groupJoinedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupLeftCallback> groupLeftCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupUsersInvitedCallback> groupUsersInvitedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMemberKickedCallback> groupMemberKickedoutCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupOwnerTransferredCallback> groupOwnerTransferredCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupNameUpdatedCallback> groupNameUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupAvatarUrlUpdatedCallback> groupAvatarUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupAliasUpdatedCallback> groupAliasUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupNoticeUpdatedCallback> groupNoticeUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupJoinModeUpdatedCallback> groupJoinModeUpdateCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupInviteModeUpdatedCallback> groupInviteModeUpdateCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupBeInviteModeUpdatedCallback> groupBeInviteModeUpdateCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMutedCallback> groupMutedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMembersMutedCallback> groupMembersMutedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMemberMutedListQueriedCallback> groupMemberMutedListQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupInfoQueriedCallback> groupInfoQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupAttributesOperatedCallback> groupAttributesOperatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupAttributesQueriedCallback> groupAttributesQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMemberRoleUpdatedCallback> groupMemberRoleUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMemberNicknameUpdatedCallback> groupMemberNicknameUpdatedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMemberInfoQueriedCallback> groupMemberInfoQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupListQueriedCallback> groupListQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMemberListQueriedCallback> groupMemberListQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMemberCountQueriedCallback> groupMemberCountQueriedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMCallInvitationSentCallback> callInvitationSentCallback = new HashMap<>();
    public final HashMap<Integer, ZIMCallingInvitationSentCallback> callingInvitationSentCallback = new HashMap<>();
    public final HashMap<Integer, ZIMCallJoinSentCallback> callJoinSentCallback = new HashMap<>();
    public final HashMap<Integer, ZIMCallQuitSentCallback> callQuitSentCallback = new HashMap<>();
    public final HashMap<Integer, ZIMCallEndSentCallback> callEndSentCallback = new HashMap<>();
    public final HashMap<Integer, ZIMCallInvitationListQueriedCallback> callListQueriedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendAddedCallback> friendAddedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendsRelationCheckedCallback> friendCheckedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendsDeletedCallback> friendDeletedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendAliasUpdatedCallback> friendAliasCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendsInfoQueriedCallback> friendQueriedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendApplicationRejectedCallback> friendApplicationRejectedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendListQueriedCallback> friendListQueriedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendApplicationListQueriedCallback> friendApplicationListQueriedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMBlacklistUsersRemovedCallback> blacklistUsersRemovedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMBlacklistQueriedCallback> blacklistQueriedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMBlacklistCheckedCallback> blacklistCheckedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendsSearchedCallback> friendSearchedCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMBlacklistUsersAddedCallback> blacklistUsersAddedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendApplicationAcceptedCallback> friendApplicationAcceptedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendAttributesUpdatedCallback> friendAttributesUpdatedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFriendApplicationSentCallback> sendFriendAddedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMCallCancelSentCallback> callCancelSentCallback = new HashMap<>();
    public final HashMap<Integer, ZIMCallAcceptanceSentCallback> callAcceptanceSentCallback = new HashMap<>();
    public final HashMap<Integer, ZIMCallRejectionSentCallback> callRejectionSentCallback = new HashMap<>();
    public final HashMap<Integer, ZIMMessageInsertedCallback> messageInsertedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMMessageRevokedCallback> messageRevokedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessageReceiptsReadSentCallback> messageReceiptsReadCallback = new HashMap<>();
    public final HashMap<Integer, ZIMConversationMessageReceiptReadSentCallback> conversationReceiptReadCallback = new HashMap<>();
    public final HashMap<Integer, ZIMMessageImportedCallback> messageImportedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMMessageExportedCallback> messageExportedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFileCacheClearedCallback> fileCacheClearedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMFileCacheQueriedCallback> fileCacheQueriedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMConversationDraftSetCallback> conversationDraftSetCallback = new HashMap<>();
    public final HashMap<Integer, ZIMConversationMarkSetCallback> conversationMarkSetCallback = new HashMap<>();
    public final HashMap<Integer, ZIMConversationTotalUnreadMessageCountQueriedCallback> conversationTotalUnreadMessageCountQueriedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMMessageReceiptsInfoQueriedCallback> messageReceiptsInfoQueriedCallback = new HashMap<>();
    public final HashMap<Integer, ZIMMessageReactionAddedCallback> messageReactionAddCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMMessageReactionDeletedCallback> messageReactionDeleteCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMCombineMessageDetailQueriedCallback> combineMessageDetailQueriedCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMMessageReactionUserListQueriedCallback> messageReactionUsersQueryCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMessageReceiptMemberListQueriedCallback> groupMessageReceiptMemberListCallback = new HashMap<>();
    public final HashMap<Integer, ZIMGroupsSearchedCallback> groupsSearchedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMGroupMembersSearchedCallback> groupMembersSearchedCallbacks = new HashMap<>();
    public final HashMap<Integer, ZIMMessageSentFullCallback> sentFullCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMSendingMessageCancelledCallback> cancelledSendingMessageCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMMessageRepliedListQueriedCallback> repliedListQueriedCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMUsersStatusQueriedCallback> usersStatusQueriedCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMUsersStatusSubscribedCallback> usersStatusSubscribedCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMUsersStatusUnsubscribedCallback> usersStatusUnsubscribedCallbackHashMap = new HashMap<>();
    public final HashMap<Integer, ZIMSubscribedUserStatusListQueriedCallback> subscribedUserStatusListQueriedCallbackHashMap = new HashMap<>();
    ZIMBridge zimBridge = new ZIMBridge();

    public static native long create(long appID, String appSign, Context context);

    static {
        try {
            if (ZIM.externalSoPath != null && ZIM.context != null) {
                ZIMSysUtil.loadSpecialLibrary(ZIM.externalSoPath, ZIM.context);
            } else {
                System.loadLibrary(ZIMSDKInfo.LIBRARY_NAME);
            }
        } catch (UnsatisfiedLinkError e) {
            Log.e(ZIMSDKInfo.LIBRARY_NAME, "Load ZIM native library failed!", e);
        }
    }

    private ZIMImpl(long handle, Context context) {
        this.handle = handle;
        this.context = context;
        zimHandleMap.put(Long.valueOf(handle), this);
    }

    public static ZIMImpl getZIMInstance() {
        long zIMGenMethod = ZIMGenMethod.getInstance();
        if (zIMGenMethod == 0) {
            return null;
        }
        return zimHandleMap.get(Long.valueOf(zIMGenMethod));
    }

    public static ZIMImpl getInstance(long handle) {
        return zimHandleMap.get(Long.valueOf(handle));
    }

    public static String getVersion() {
        return ZIMGenMethod.getVersion();
    }

    public static ZIM createZIM(ZIMAppConfig config, Context context) {
        if (!ZIMSDKInfo.VERSION.equals(getVersion())) {
            throw new RuntimeException("[ZEGO] The version of SDK jar and native shared library (.so) does not match!");
        }
        if (context == null) {
            throw new RuntimeException("[ZEGO] Android application context not set!");
        }
        if (config == null) {
            config = new ZIMAppConfig();
        }
        ZIMLogUtil.setContext(context);
        long jCreate = create(config.appID, config.appSign, context);
        if (jCreate != 0) {
            return new ZIMImpl(jCreate, context);
        }
        return null;
    }

    public static void setPushID(String pushID) {
        ZIMGenMethod.setPushID(pushID);
    }

    @Override
    public void destroy() {
        zimHandleMap.remove(Long.valueOf(this.handle));
        ZIMGenMethod.destroy(this.handle);
    }

    public static void setAdvancedConfig(String key, String value) {
        ZIMGenMethod.setAdvancedConfig(key, value);
    }

    public static boolean setGeofencingConfig(ArrayList<Integer> areaList, ZIMGeofencingType type) {
        return ZIMGenMethod.setGeofencingConfig(type.value(), areaList);
    }

    public static void setLogConfig(ZIMLogConfig config) {
        ZIMGenMethod.setLogConfig(config.logPath, config.logSize);
    }

    @Override
    public void uploadLog(ZIMLogUploadedCallback callback) {
        int iGenSeq = genSeq();
        this.logUploadedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.uploadLog(this.handle, iGenSeq);
    }

    public static void setCacheConfig(ZIMCacheConfig config) {
        ZIMGenMethod.setCacheConfig(config.cachePath);
    }

    @Override
    public void setEventHandler(ZIMEventHandler handler) {
        this.eventHandler = handler;
    }

    @Override
    public void login(ZIMUserInfo userInfo, ZIMLoggedInCallback callback) {
        int iGenSeq = genSeq();
        this.loggedInCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMLoginConfig zIMLoginConfig = new ZIMLoginConfig();
        zIMLoginConfig.userName = userInfo.userName;
        zIMLoginConfig.token = "";
        zIMLoginConfig.isOfflineLogin = false;
        ZIMGenMethod.login(this.handle, userInfo.userID, ZIMCovert.loginConfigToGenLoginConfig(zIMLoginConfig), iGenSeq);
    }

    private int genSeq() {
        return this.sequence.incrementAndGet();
    }

    @Override
    public void login(ZIMUserInfo userInfo, String token, ZIMLoggedInCallback callback) {
        int iGenSeq = genSeq();
        this.loggedInCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMLoginConfig zIMLoginConfig = new ZIMLoginConfig();
        zIMLoginConfig.userName = userInfo.userName;
        zIMLoginConfig.token = token;
        zIMLoginConfig.isOfflineLogin = false;
        ZIMGenMethod.login(this.handle, userInfo.userID, ZIMCovert.loginConfigToGenLoginConfig(zIMLoginConfig), iGenSeq);
    }

    @Override
    public void login(String userID, ZIMLoginConfig config, ZIMLoggedInCallback callback) {
        int iGenSeq = genSeq();
        this.loggedInCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.login(this.handle, userID, ZIMCovert.loginConfigToGenLoginConfig(config), iGenSeq);
    }

    @Override
    public void logout() {
        ZIMGenMethod.logout(this.handle);
    }

    @Override
    public void renewToken(String token, ZIMTokenRenewedCallback callback) {
        int iGenSeq = genSeq();
        this.tokenRenewedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.renewToken(this.handle, token, iGenSeq);
    }

    @Override
    public void callExperimentalAPI(String params, ZIMExperimentalAPICalledCallback callback) {
        int iGenSeq = genSeq();
        this.experimentalAPICalledCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.callExperimentalAPI(this.handle, params, iGenSeq);
    }

    @Override
    public void updateUserName(String name, ZIMUserNameUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.userNameUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateUserName(this.handle, name, iGenSeq);
    }

    @Override
    public void updateUserAvatarUrl(String userAvatarUrl, ZIMUserAvatarUrlUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.userAvatarUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateUserAvatarUrl(this.handle, userAvatarUrl, iGenSeq);
    }

    @Override
    public void updateUserExtendedData(String extendedData, ZIMUserExtendedDataUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.userExtendedDataUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateUserExtendedData(this.handle, extendedData, iGenSeq);
    }

    @Override
    public void updateUserCustomStatus(String customStatus, ZIMUserCustomStatusUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.userCustomStatusUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateUserCustomStatus(this.handle, customStatus, iGenSeq);
    }

    @Override
    public void updateUserOfflinePushRule(ZIMUserOfflinePushRule offlinePushRule, ZIMUserOfflinePushRuleUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.userOfflinePushRuleInfoUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateUserOfflinePushRule(this.handle, ZIMCovert.getGenUserOfflinePushRule(offlinePushRule), iGenSeq);
    }

    @Override
    public void updateUserBadge(int badge, ZIMUserBadgeUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.userBadgeUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateUserBadge(this.handle, badge, iGenSeq);
    }

    @Override
    public void queryUsersStatus(ArrayList<String> userIDs, ZIMUsersStatusQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.usersStatusQueriedCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryUsersStatus(this.handle, userIDs, iGenSeq);
    }

    @Override
    public void subscribeUsersStatus(ArrayList<String> userIDs, ZIMUserStatusSubscribeConfig config, ZIMUsersStatusSubscribedCallback callback) {
        int iGenSeq = genSeq();
        this.usersStatusSubscribedCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.subscribeUsersStatus(this.handle, userIDs, ZIMCovert.getZIMGenUserStatusSubscribeConfig(config), iGenSeq);
    }

    @Override
    public void unsubscribeUsersStatus(ArrayList<String> userIDs, ZIMUsersStatusUnsubscribedCallback callback) {
        int iGenSeq = genSeq();
        this.usersStatusUnsubscribedCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.unsubscribeUserStatus(this.handle, userIDs, iGenSeq);
    }

    @Override
    public void querySubscribedUserStatusList(ZIMSubscribedUserStatusQueryConfig config, ZIMSubscribedUserStatusListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.subscribedUserStatusListQueriedCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.querySubscribedUserStatusList(this.handle, ZIMCovert.getZIMGenSubscribedUserStatusQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryUsersInfo(List<String> userIDList, ZIMUsersInfoQueryConfig config, ZIMUsersInfoQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.usersInfoQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryUsersInfo(this.handle, ZIMCovert.listToArrayList(userIDList), ZIMCovert.usersInfoQueryConfigToGenUsersInfoQueryConfig(config), iGenSeq);
    }

    @Override
    public void querySelfUserInfo(ZIMSelfUserInfoQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.selfUserInfoQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.querySelfUserInfo(this.handle, iGenSeq);
    }

    @Override
    public void sendPeerMessage(ZIMMessage message, String toUserID, ZIMMessageSendConfig config, ZIMMessageSentCallback callback) {
        int iGenSeq = genSeq();
        this.messageSentCallbacks.put(Integer.valueOf(iGenSeq), callback);
        if (message.getMessageID() == 0 && message.getLocalMessageID() == 0) {
            this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        }
        ZIMGenMethod.sendPeerMessage(this.handle, ZIMCovert.getGenMessage(message), toUserID, ZIMCovert.sendConfigToGenSendConfig(config), iGenSeq);
    }

    @Override
    public void sendRoomMessage(ZIMMessage message, String toRoomID, ZIMMessageSendConfig config, ZIMMessageSentCallback callback) {
        int iGenSeq = genSeq();
        this.messageSentCallbacks.put(Integer.valueOf(iGenSeq), callback);
        if (message.getMessageID() == 0 && message.getLocalMessageID() == 0) {
            this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        }
        ZIMGenMethod.sendRoomMessage(this.handle, ZIMCovert.getGenMessage(message), toRoomID, ZIMCovert.sendConfigToGenSendConfig(config), iGenSeq);
    }

    @Override
    public void sendGroupMessage(ZIMMessage message, String toGroupID, ZIMMessageSendConfig config, ZIMMessageSentCallback callback) {
        int iGenSeq = genSeq();
        this.messageSentCallbacks.put(Integer.valueOf(iGenSeq), callback);
        if (message.getMessageID() == 0 && message.getLocalMessageID() == 0) {
            this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        }
        ZIMGenMethod.sendGroupMessage(this.handle, ZIMCovert.getGenMessage(message), toGroupID, ZIMCovert.sendConfigToGenSendConfig(config), iGenSeq);
    }

    @Override
    public void sendMessage(ZIMMessage message, String toConversationID, ZIMConversationType conversationType, ZIMMessageSendConfig config, ZIMMessageSentCallback callback) {
        int iGenSeq = genSeq();
        this.messageSentCallbacks.put(Integer.valueOf(iGenSeq), callback);
        if (message.getMessageID() == 0 && message.getLocalMessageID() == 0) {
            this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        }
        ZIMGenMethod.sendMessage(this.handle, ZIMCovert.getGenMessage(message), toConversationID, conversationType.value(), ZIMCovert.sendConfigToGenSendConfig(config), iGenSeq);
    }

    @Override
    public void sendMediaMessage(ZIMMediaMessage message, String toConversationID, ZIMConversationType conversationType, ZIMMessageSendConfig config, ZIMMediaMessageSentCallback callback) {
        int iGenSeq = genSeq();
        this.mediaMessageSentCallbacks.put(Integer.valueOf(iGenSeq), callback);
        if (message.getMessageID() == 0 && message.getLocalMessageID() == 0) {
            this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        }
        ZIMGenMethod.sendMediaMessage(this.handle, ZIMCovert.getGenMessage(message), toConversationID, conversationType.value(), ZIMCovert.sendConfigToGenSendConfig(config), iGenSeq);
    }

    @Override
    public void sendMessage(ZIMMessage message, String toConversationID, ZIMConversationType conversationType, ZIMMessageSendConfig config, ZIMMessageSentFullCallback callback) {
        int iGenSeq = genSeq();
        this.sentFullCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        if ((message.getMessageID() == 0 && message.getLocalMessageID() == 0) || config.isRetrySend) {
            this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        }
        ZIMGenMethod.sendMessage(this.handle, ZIMCovert.getGenMessage(message), toConversationID, conversationType.value(), ZIMCovert.sendConfigToGenSendConfig(config), iGenSeq);
    }

    @Override
    public void editMessage(ZIMMessage message, ZIMMessageEditConfig config, ZIMMessageSentFullCallback callback) {
        int iGenSeq = genSeq();
        this.sentFullCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        if (message.getMessageID() != 0 && message.getLocalMessageID() != 0) {
            this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        }
        ZIMGenMethod.editMessage(this.handle, ZIMCovert.getGenMessage(message), ZIMCovert.editConfigToGenEditConfig(config), iGenSeq);
    }

    @Override
    public void cancelSendingMessage(ZIMMessage message, ZIMSendingMessageCancelConfig config, ZIMSendingMessageCancelledCallback callback) {
        int iGenSeq = genSeq();
        this.cancelledSendingMessageCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.cancelSendingMessage(this.handle, ZIMCovert.getGenMessage(message), ZIMCovert.cancelSendingMessageConfigToGenCancelSendingMessageConfig(config), iGenSeq);
    }

    @Override
    public void downloadMediaFile(ZIMMediaMessage message, ZIMMediaFileType type, ZIMMediaDownloadedCallback callback) {
        int iGenSeq = genSeq();
        this.mediaDownloadedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.downloadMediaFile(this.handle, ZIMCovert.getGenMessage(message), type.value(), ZIMCovert.getGenZIMGenMediaDownloadConfig(null), iGenSeq);
    }

    @Override
    public void downloadMediaFile(ZIMMessage message, ZIMMediaFileType fileType, ZIMMediaDownloadConfig config, ZIMMediaDownloadedCallback callback) {
        int iGenSeq = genSeq();
        this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        this.mediaDownloadedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.downloadMediaFile(this.handle, ZIMCovert.getGenMessage(message), fileType.value(), ZIMCovert.getGenZIMGenMediaDownloadConfig(config), iGenSeq);
    }

    @Override
    public void sendMessageReceiptsRead(List<ZIMMessage> messageList, String conversationID, ZIMConversationType conversationType, ZIMMessageReceiptsReadSentCallback callback) {
        int iGenSeq = genSeq();
        this.messageReceiptsReadCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.sendMessageReceiptsRead(this.handle, ZIMCovert.zimMessageListToGenMessageList(messageList), conversationID, conversationType.value(), iGenSeq);
    }

    @Override
    public void queryMessageReceiptsInfo(List<ZIMMessage> messageList, String conversationID, ZIMConversationType conversationType, ZIMMessageReceiptsInfoQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.messageReceiptsInfoQueriedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryMessageReceiptsInfo(this.handle, ZIMCovert.zimMessageListToGenMessageList(messageList), conversationID, conversationType.value(), iGenSeq);
    }

    @Override
    public void addMessageReaction(String reactionType, ZIMMessage message, ZIMMessageReactionAddedCallback callback) {
        addMessageReaction(reactionType, message, null, callback);
    }

    @Override
    public void addMessageReaction(String reactionType, ZIMMessage message, ZIMMessageReactionAddConfig config, ZIMMessageReactionAddedCallback callback) {
        int iGenSeq = genSeq();
        this.messageReactionAddCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.addMessageReaction(this.handle, reactionType, ZIMCovert.getGenMessage(message), ZIMCovert.getGenZIMMessageReactionAddConfig(config), iGenSeq);
    }

    @Override
    public void deleteMessageReaction(String reactionType, ZIMMessage message, ZIMMessageReactionDeletedCallback callback) {
        int iGenSeq = genSeq();
        this.messageReactionDeleteCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteMessageReaction(this.handle, reactionType, ZIMCovert.getGenMessage(message), iGenSeq);
    }

    @Override
    public void deleteMessageAllReactions(ZIMMessage message, ZIMMessageReactionsAllDeletedCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteMessageAllReactions(this.handle, ZIMCovert.getGenMessage(message), iGenSeq);
    }

    @Override
    public void queryMessageReactionUserList(ZIMMessage message, ZIMMessageReactionUserQueryConfig config, ZIMMessageReactionUserListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.messageReactionUsersQueryCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryMessageReactionUserList(this.handle, ZIMCovert.getGenMessage(message), ZIMCovert.getGenMessageReactionUserQueryConfig(config), iGenSeq);
    }

    @Override
    public void pinMessage(ZIMMessage message, boolean isPinned, ZIMMessagePinnedCallback callback) {
        int iGenSeq = genSeq();
        this.messagePinnedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.pinMessage(this.handle, ZIMCovert.getGenMessage(message), isPinned, ZIMCovert.getGenZIMPinMessageConfig(new ZIMMessagePinConfig()), iGenSeq);
    }

    @Override
    public void pinMessage(ZIMMessage message, boolean isPinned, ZIMMessagePinConfig config, ZIMMessagePinnedCallback callback) {
        int iGenSeq = genSeq();
        this.messagePinnedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.pinMessage(this.handle, ZIMCovert.getGenMessage(message), isPinned, ZIMCovert.getGenZIMPinMessageConfig(config), iGenSeq);
    }

    @Override
    public void queryPinnedMessageList(String conversationID, ZIMConversationType conversationType, ZIMPinnedMessageListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.pinnedMessageListQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryPinnedMessageList(this.handle, conversationID, conversationType.value(), iGenSeq);
    }

    @Override
    public void createRoom(final ZIMRoomInfo roomInfo, final ZIMRoomCreatedCallback callback) {
        int iGenSeq = genSeq();
        this.roomCreatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.createRoom(this.handle, ZIMCovert.roomAdvancedConfigToGenRoomAdvancedConfig(null), ZIMCovert.roomInfoToGenRoomInfo(roomInfo), iGenSeq);
    }

    @Override
    public void createRoom(ZIMRoomInfo roomInfo, ZIMRoomAdvancedConfig config, ZIMRoomCreatedCallback callback) {
        int iGenSeq = genSeq();
        this.roomCreatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.createRoom(this.handle, ZIMCovert.roomAdvancedConfigToGenRoomAdvancedConfig(config), ZIMCovert.roomInfoToGenRoomInfo(roomInfo), iGenSeq);
    }

    @Override
    public void joinRoom(final String roomID, final ZIMRoomJoinedCallback callback) {
        int iGenSeq = genSeq();
        this.roomJoinedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.joinRoom(this.handle, roomID, iGenSeq);
    }

    @Override
    public void enterRoom(ZIMRoomInfo roomInfo, ZIMRoomAdvancedConfig config, ZIMRoomEnteredCallback callback) {
        int iGenSeq = genSeq();
        this.roomEnteredCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.enterRoom(this.handle, ZIMCovert.roomInfoToGenRoomInfo(roomInfo), ZIMCovert.roomAdvancedConfigToGenRoomAdvancedConfig(config), iGenSeq);
    }

    @Override
    public void switchRoom(String fromRoomID, ZIMRoomInfo toRoomInfo, boolean isCreateWhenRoomNotExisted, ZIMRoomAdvancedConfig config, ZIMRoomSwitchedCallback callback) {
        int iGenSeq = genSeq();
        this.roomSwitchedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.switchRoom(this.handle, fromRoomID, ZIMCovert.roomInfoToGenRoomInfo(toRoomInfo), isCreateWhenRoomNotExisted, ZIMCovert.roomAdvancedConfigToGenRoomAdvancedConfig(config), iGenSeq);
    }

    @Override
    public void leaveRoom(String roomID, ZIMRoomLeftCallback callback) {
        int iGenSeq = genSeq();
        this.roomLeftCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.leaveRoom(this.handle, roomID, iGenSeq);
    }

    @Override
    public void leaveAllRoom(ZIMRoomAllLeftCallback callback) {
        int iGenSeq = genSeq();
        this.allRoomLeftCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.leaveAllRoom(this.handle, iGenSeq);
    }

    @Override
    public void queryRoomMemberList(String roomID, ZIMRoomMemberQueryConfig config, ZIMRoomMemberQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.roomMemberQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryRoomMemberList(this.handle, roomID, ZIMCovert.roomMemberQueryConfigToGenRoomMemberQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryRoomMembers(ArrayList<String> userIDs, String roomId, ZIMRoomMembersQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.roomMembersQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryRoomMembers(this.handle, userIDs, roomId, iGenSeq);
    }

    @Override
    public void queryRoomOnlineMemberCount(String roomID, ZIMRoomOnlineMemberCountQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.onlineCountQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryRoomOnlineMemberCount(this.handle, roomID, iGenSeq);
    }

    @Override
    public void setRoomAttributes(HashMap<String, String> roomAttributes, String roomID, ZIMRoomAttributesSetConfig config, ZIMRoomAttributesOperatedCallback callback) {
        int iGenSeq = genSeq();
        this.roomAttributesOperatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.setRoomAttributes(this.handle, roomAttributes, roomID, ZIMCovert.roomAttributesSetConfigToGenRoomAttributesSetConfig(config), iGenSeq);
    }

    @Override
    public void deleteRoomAttributes(List<String> keys, String roomID, ZIMRoomAttributesDeleteConfig config, ZIMRoomAttributesOperatedCallback callback) {
        int iGenSeq = genSeq();
        this.roomAttributesOperatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteRoomAttributes(this.handle, ZIMCovert.listToArrayList(keys), roomID, ZIMCovert.roomAttributesDeleteConfigToGenRoomAttributesDeleteConfig(config), iGenSeq);
    }

    @Override
    public void beginRoomAttributesBatchOperation(String roomID, ZIMRoomAttributesBatchOperationConfig config) {
        ZIMGenMethod.beginRoomAttributesBatchOperation(this.handle, roomID, ZIMCovert.roomAttributesBatchOperationConfigToGenRoomAttributesBatchOperationConfig(config), genSeq());
    }

    @Override
    public void endRoomAttributesBatchOperation(String roomID, ZIMRoomAttributesBatchOperatedCallback callback) {
        int iGenSeq = genSeq();
        this.roomAttributesBatchOperatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.endRoomAttributesBatchOperation(this.handle, roomID, iGenSeq);
    }

    @Override
    public void queryRoomAllAttributes(String roomID, ZIMRoomAttributesQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.roomAllAttributesQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryRoomAllAttributes(this.handle, roomID, iGenSeq);
    }

    @Override
    public void setRoomMembersAttributes(HashMap<String, String> attributes, List<String> userIDs, String roomID, ZIMRoomMemberAttributesSetConfig config, ZIMRoomMembersAttributesOperatedCallback callback) {
        int iGenSeq = genSeq();
        this.roomMembersAttributesOperatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.setRoomMembersAttributes(this.handle, attributes, ZIMCovert.listToArrayList(userIDs), roomID, ZIMCovert.roomMemberAttributesSetConfigToGenRoomMemberAttributesSetConfig(config), iGenSeq);
    }

    @Override
    public void queryRoomMembersAttributes(List<String> userIDs, String roomID, ZIMRoomMembersAttributesQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.roomMembersAttributesQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryRoomMembersAttributes(this.handle, ZIMCovert.listToArrayList(userIDs), roomID, iGenSeq);
    }

    @Override
    public void queryRoomMemberAttributesList(String roomID, ZIMRoomMemberAttributesQueryConfig config, ZIMRoomMemberAttributesListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.roomMemberAttributesListQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryRoomMemberAttributesList(this.handle, roomID, ZIMCovert.roomMemberAttributesQueryConfigToGenRoomMemberAttributesQueryConfig(config), iGenSeq);
    }

    @Override
    public void createGroup(ZIMGroupInfo groupInfo, List<String> userIDList, ZIMGroupCreatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupCreatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.createGroup(this.handle, ZIMCovert.groupInfoToGenGroupInfo(groupInfo), ZIMCovert.listToArrayList(userIDList), ZIMCovert.groupAdvancedConfigToGenGroupAdvancedConfig(null), iGenSeq);
    }

    @Override
    public void createGroup(ZIMGroupInfo groupInfo, List<String> userIDList, ZIMGroupAdvancedConfig config, ZIMGroupCreatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupCreatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.createGroup(this.handle, ZIMCovert.groupInfoToGenGroupInfo(groupInfo), ZIMCovert.listToArrayList(userIDList), ZIMCovert.groupAdvancedConfigToGenGroupAdvancedConfig(config), iGenSeq);
    }

    @Override
    public void dismissGroup(String groupID, ZIMGroupDismissedCallback callback) {
        int iGenSeq = genSeq();
        this.groupDismissedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.dismissGroup(this.handle, groupID, iGenSeq);
    }

    @Override
    public void joinGroup(String groupID, ZIMGroupJoinedCallback callback) {
        int iGenSeq = genSeq();
        this.groupJoinedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.joinGroup(this.handle, groupID, iGenSeq);
    }

    @Override
    public void leaveGroup(String groupID, ZIMGroupLeftCallback callback) {
        int iGenSeq = genSeq();
        this.groupLeftCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.leaveGroup(this.handle, groupID, iGenSeq);
    }

    @Override
    public void inviteUsersIntoGroup(List<String> userIDs, String groupID, ZIMGroupUsersInvitedCallback callback) {
        int iGenSeq = genSeq();
        this.groupUsersInvitedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.inviteUsersIntoGroup(this.handle, ZIMCovert.listToArrayList(userIDs), groupID, iGenSeq);
    }

    @Override
    public void kickGroupMembers(List<String> userIDs, String groupID, ZIMGroupMemberKickedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMemberKickedoutCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.kickGroupMembers(this.handle, ZIMCovert.listToArrayList(userIDs), groupID, iGenSeq);
    }

    @Override
    public void transferGroupOwner(String toUserID, String groupID, ZIMGroupOwnerTransferredCallback callback) {
        int iGenSeq = genSeq();
        this.groupOwnerTransferredCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.transferGroupOwner(this.handle, toUserID, groupID, iGenSeq);
    }

    @Override
    public void updateGroupName(String groupName, String groupID, ZIMGroupNameUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupNameUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateGroupName(this.handle, groupName, groupID, iGenSeq);
    }

    @Override
    public void updateGroupAlias(String groupAlias, String groupID, ZIMGroupAliasUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupAliasUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateGroupAlias(this.handle, groupAlias, groupID, iGenSeq);
    }

    @Override
    public void updateGroupAvatarUrl(String groupAvatarUrl, String groupID, ZIMGroupAvatarUrlUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupAvatarUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateGroupAvatarUrl(this.handle, groupAvatarUrl, groupID, iGenSeq);
    }

    @Override
    public void updateGroupNotice(String groupNotice, String groupID, ZIMGroupNoticeUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupNoticeUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateGroupNotice(this.handle, groupNotice, groupID, iGenSeq);
    }

    @Override
    public void updateGroupJoinMode(ZIMGroupJoinMode mode, String groupID, ZIMGroupJoinModeUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupJoinModeUpdateCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateGroupJoinMode(this.handle, mode.value(), groupID, iGenSeq);
    }

    @Override
    public void updateGroupInviteMode(ZIMGroupInviteMode mode, String groupID, ZIMGroupInviteModeUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupInviteModeUpdateCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateGroupInviteMode(this.handle, mode.value(), groupID, iGenSeq);
    }

    @Override
    public void updateGroupBeInviteMode(ZIMGroupBeInviteMode mode, String groupID, ZIMGroupBeInviteModeUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupBeInviteModeUpdateCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateGroupBeInviteMode(this.handle, mode.value(), groupID, iGenSeq);
    }

    @Override
    public void sendGroupJoinApplication(String groupID, ZIMGroupJoinApplicationSendConfig config, ZIMGroupJoinApplicationSentCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.sendGroupJoinApplication(this.handle, groupID, ZIMCovert.getZIMGenGroupJoinApplicationSendConfig(config), iGenSeq);
    }

    @Override
    public void acceptGroupJoinApplication(String userID, String groupID, ZIMGroupJoinApplicationAcceptConfig config, ZIMGroupJoinApplicationAcceptedCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.acceptGroupJoinApplication(this.handle, userID, groupID, ZIMCovert.getZIMGenGroupJoinApplicationAcceptConfig(config), iGenSeq);
    }

    @Override
    public void rejectGroupJoinApplication(String userID, String groupID, ZIMGroupJoinApplicationRejectConfig config, ZIMGroupJoinApplicationRejectedCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.rejectGroupJoinApplication(this.handle, userID, groupID, ZIMCovert.getZIMGenGroupJoinApplicationRejectConfig(config), iGenSeq);
    }

    @Override
    public void sendGroupInviteApplications(List<String> userIDs, String groupID, ZIMGroupInviteApplicationSendConfig config, ZIMGroupInviteApplicationsSentCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.sendGroupInviteApplications(this.handle, ZIMCovert.listToArrayList(userIDs), groupID, ZIMCovert.getZIMGenGroupInviteApplicationSendConfig(config), iGenSeq);
    }

    @Override
    public void acceptGroupInviteApplication(String inviterUserID, String groupID, ZIMGroupInviteApplicationAcceptConfig config, ZIMGroupInviteApplicationAcceptedCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.acceptGroupInviteApplication(this.handle, inviterUserID, groupID, ZIMCovert.getZIMGroupInviteApplicationAcceptConfig(config), iGenSeq);
    }

    @Override
    public void rejectGroupInviteApplication(String inviterUserID, String groupID, ZIMGroupInviteApplicationRejectConfig config, ZIMGroupInviteApplicationRejectedCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.rejectGroupInviteApplication(this.handle, inviterUserID, groupID, ZIMCovert.getZIMGroupInviteApplicationRejectConfig(config), iGenSeq);
    }

    @Override
    public void queryGroupApplicationList(ZIMGroupApplicationListQueryConfig config, ZIMGroupApplicationListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupApplicationList(this.handle, ZIMCovert.getZIMGroupApplicationListQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryGroupInfo(String groupID, ZIMGroupInfoQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupInfoQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupInfo(this.handle, groupID, iGenSeq);
    }

    @Override
    public void setGroupAttributes(HashMap<String, String> groupAttributes, String groupID, ZIMGroupAttributesOperatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupAttributesOperatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.setGroupAttributes(this.handle, groupAttributes, groupID, iGenSeq);
    }

    @Override
    public void deleteGroupAttributes(List<String> keys, String groupID, ZIMGroupAttributesOperatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupAttributesOperatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteGroupAttributes(this.handle, ZIMCovert.listToArrayList(keys), groupID, iGenSeq);
    }

    @Override
    public void queryGroupAttributes(List<String> keys, String groupID, ZIMGroupAttributesQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupAttributesQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupAttributes(this.handle, ZIMCovert.listToArrayList(keys), groupID, iGenSeq);
    }

    @Override
    public void queryGroupAllAttributes(String groupID, ZIMGroupAttributesQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupAttributesQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupAllAttributes(this.handle, groupID, iGenSeq);
    }

    @Override
    public void setGroupMemberRole(int role, String forUserID, String groupID, ZIMGroupMemberRoleUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMemberRoleUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.setGroupMemberRole(this.handle, role, forUserID, groupID, iGenSeq);
    }

    @Override
    public void setGroupMemberNickname(String nickname, String forUserID, String groupID, ZIMGroupMemberNicknameUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMemberNicknameUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.setGroupMemberNickname(this.handle, nickname, forUserID, groupID, iGenSeq);
    }

    @Override
    public void muteGroup(boolean isMute, String groupID, ZIMGroupMuteConfig config, ZIMGroupMutedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMutedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.muteGroup(this.handle, isMute, groupID, ZIMCovert.groupMuteConfigToGenGroupAdvancedConfig(config), iGenSeq);
    }

    @Override
    public void muteGroupMembers(boolean isMute, ArrayList<String> userIDs, String groupID, ZIMGroupMemberMuteConfig config, ZIMGroupMembersMutedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMembersMutedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.muteGroupMemberList(this.handle, isMute, userIDs, groupID, ZIMCovert.groupMemberMuteConfigToGenGroupMemberMuteConfig(config), iGenSeq);
    }

    @Override
    public void queryGroupMemberMutedList(String groupID, ZIMGroupMemberMutedListQueryConfig config, ZIMGroupMemberMutedListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMemberMutedListQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupMemberMutedList(this.handle, groupID, ZIMCovert.getGenGroupMemberMutedListQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryGroupMemberInfo(String userID, String groupID, ZIMGroupMemberInfoQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMemberInfoQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupMemberInfo(this.handle, userID, groupID, iGenSeq);
    }

    @Override
    public void queryGroupList(ZIMGroupListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupListQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupList(this.handle, iGenSeq);
    }

    @Override
    public void queryGroupList(int count, ZIMGroupListQueryConfig config, ZIMGroupListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupListQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupListByCount(this.handle, count, ZIMCovert.getZIMGenGroupListQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryGroupMemberList(String groupID, ZIMGroupMemberQueryConfig config, ZIMGroupMemberListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMemberListQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupMemberList(this.handle, groupID, ZIMCovert.getGenGroupMemberQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryGroupMemberCount(String groupID, ZIMGroupMemberCountQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMemberCountQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupMemberCount(this.handle, groupID, iGenSeq);
    }

    @Override
    public void queryGroupMessageReceiptReadMemberList(ZIMMessage message, String groupID, ZIMGroupMessageReceiptMemberQueryConfig config, ZIMGroupMessageReceiptMemberListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMessageReceiptMemberListCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupMessageReceiptReadMemberList(this.handle, ZIMCovert.getGenMessage(message), groupID, ZIMCovert.getGroupMessageReceiptMemberQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryGroupMessageReceiptUnreadMemberList(ZIMMessage message, String groupID, ZIMGroupMessageReceiptMemberQueryConfig config, ZIMGroupMessageReceiptMemberListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMessageReceiptMemberListCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryGroupMessageReceiptUnReadMemberList(this.handle, ZIMCovert.getGenMessage(message), groupID, ZIMCovert.getGroupMessageReceiptMemberQueryConfig(config), iGenSeq);
    }

    @Override
    public void searchLocalGroups(ZIMGroupSearchConfig config, ZIMGroupsSearchedCallback callback) {
        int iGenSeq = genSeq();
        this.groupsSearchedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.searchGroups(this.handle, ZIMCovert.getGroupSearchConfig(config), iGenSeq);
    }

    @Override
    public void searchLocalGroupMembers(String groupID, ZIMGroupMemberSearchConfig config, ZIMGroupMembersSearchedCallback callback) {
        int iGenSeq = genSeq();
        this.groupMembersSearchedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.searchGroupMembers(this.handle, groupID, ZIMCovert.getGroupMemberSearchConfig(config), iGenSeq);
    }

    @Override
    public void callInvite(List<String> invitees, ZIMCallInviteConfig config, ZIMCallInvitationSentCallback callback) {
        int iGenSeq = genSeq();
        this.callInvitationSentCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.callInvite(this.handle, ZIMCovert.listToArrayList(invitees), ZIMCovert.getGenCallInviteConfig(config), iGenSeq);
    }

    @Override
    public void callCancel(List<String> invitees, String callID, ZIMCallCancelConfig config, ZIMCallCancelSentCallback callback) {
        int iGenSeq = genSeq();
        this.callCancelSentCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.callCancel(this.handle, ZIMCovert.listToArrayList(invitees), callID, ZIMCovert.getGenCallCancelConfig(config), iGenSeq);
    }

    @Override
    public void callAccept(String callID, ZIMCallAcceptConfig config, ZIMCallAcceptanceSentCallback callback) {
        int iGenSeq = genSeq();
        this.callAcceptanceSentCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.callAccept(this.handle, callID, ZIMCovert.getGenCallAcceptConfig(config), iGenSeq);
    }

    @Override
    public void callReject(String callID, ZIMCallRejectConfig config, ZIMCallRejectionSentCallback callback) {
        int iGenSeq = genSeq();
        this.callRejectionSentCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.callReject(this.handle, callID, ZIMCovert.getGenCallRejectConfig(config), iGenSeq);
    }

    @Override
    public void callJoin(String callID, ZIMCallJoinConfig config, ZIMCallJoinSentCallback callback) {
        int iGenSeq = genSeq();
        this.callJoinSentCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.callJoin(this.handle, callID, ZIMCovert.getGenCallJoinConfig(config), iGenSeq);
    }

    @Override
    public void callQuit(String callID, ZIMCallQuitConfig config, ZIMCallQuitSentCallback callback) {
        int iGenSeq = genSeq();
        this.callQuitSentCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.callQuit(this.handle, callID, ZIMCovert.getGenCallQuitConfig(config), iGenSeq);
    }

    @Override
    public void callEnd(String callID, ZIMCallEndConfig config, ZIMCallEndSentCallback callback) {
        int iGenSeq = genSeq();
        this.callEndSentCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.callEnd(this.handle, callID, ZIMCovert.getGenCallEndConfig(config), iGenSeq);
    }

    @Override
    public void callingInvite(List<String> invitees, String callID, ZIMCallingInviteConfig config, ZIMCallingInvitationSentCallback callback) {
        int iGenSeq = genSeq();
        this.callingInvitationSentCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.callingInvite(this.handle, callID, ZIMCovert.listToArrayList(invitees), ZIMCovert.getGenCallingInviteConfig(config), iGenSeq);
    }

    @Override
    public void queryCallInvitationList(ZIMCallInvitationQueryConfig config, ZIMCallInvitationListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.callListQueriedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryCallList(this.handle, ZIMCovert.getGenQueryCallListConfig(config), iGenSeq);
    }

    @Override
    public void addFriend(String userID, ZIMFriendAddConfig config, ZIMFriendAddedCallback callback) {
        int iGenSeq = genSeq();
        this.friendAddedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.addFriend(this.handle, userID, ZIMCovert.getGenZIMFriendAddConfig(config), iGenSeq);
    }

    @Override
    public void sendFriendApplication(String applyUser, ZIMFriendApplicationSendConfig config, ZIMFriendApplicationSentCallback callback) {
        int iGenSeq = genSeq();
        this.sendFriendAddedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.sendFriendApplication(this.handle, applyUser, ZIMCovert.getGenZIMSendFriendApplicationConfig(config), iGenSeq);
    }

    @Override
    public void deleteFriends(ArrayList<String> userIDs, ZIMFriendDeleteConfig config, ZIMFriendsDeletedCallback callback) {
        int iGenSeq = genSeq();
        this.friendDeletedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteFriends(this.handle, userIDs, ZIMCovert.getGenZIMFriendDeleteConfig(config), iGenSeq);
    }

    @Override
    public void checkFriendsRelation(ArrayList<String> userIDs, ZIMFriendRelationCheckConfig config, ZIMFriendsRelationCheckedCallback callback) {
        int iGenSeq = genSeq();
        this.friendCheckedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.checkFriendsRelation(this.handle, userIDs, ZIMCovert.getGenZIMFriendCheckConfig(config), iGenSeq);
    }

    @Override
    public void updateFriendAlias(String friendAlias, String userID, ZIMFriendAliasUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.friendAliasCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateFriendAlias(this.handle, friendAlias, userID, iGenSeq);
    }

    @Override
    public void updateFriendAttributes(HashMap<String, String> friendAttributes, String userID, ZIMFriendAttributesUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.friendAttributesUpdatedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateFriendAttributes(this.handle, friendAttributes, userID, iGenSeq);
    }

    @Override
    public void queryFriendsInfo(ArrayList<String> userIDs, ZIMFriendsInfoQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.friendQueriedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryFriendsInfo(this.handle, userIDs, iGenSeq);
    }

    @Override
    public void acceptFriendApplication(String userID, ZIMFriendApplicationAcceptConfig config, ZIMFriendApplicationAcceptedCallback callback) {
        int iGenSeq = genSeq();
        this.friendApplicationAcceptedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.acceptFriendApplication(this.handle, userID, ZIMCovert.getGenZIMFriendApplicationAcceptConfig(config), iGenSeq);
    }

    @Override
    public void rejectFriendApplication(String userID, ZIMFriendApplicationRejectConfig config, ZIMFriendApplicationRejectedCallback callback) {
        int iGenSeq = genSeq();
        this.friendApplicationRejectedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.rejectFriendApplication(this.handle, userID, ZIMCovert.getGenZIMFriendApplicationRejectConfig(config), iGenSeq);
    }

    @Override
    public void queryFriendList(ZIMFriendListQueryConfig config, ZIMFriendListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.friendListQueriedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryFriendList(this.handle, ZIMCovert.getGenZIMFriendListQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryFriendApplicationList(ZIMFriendApplicationListQueryConfig config, ZIMFriendApplicationListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.friendApplicationListQueriedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryFriendApplicationList(this.handle, ZIMCovert.getGenZIMFriendApplicationListQueryConfig(config), iGenSeq);
    }

    @Override
    public void addUsersToBlacklist(ArrayList<String> userIDs, ZIMBlacklistUsersAddedCallback callback) {
        int iGenSeq = genSeq();
        this.blacklistUsersAddedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.addUsersToBlacklist(this.handle, userIDs, iGenSeq);
    }

    @Override
    public void removeUsersFromBlacklist(ArrayList<String> userIDs, ZIMBlacklistUsersRemovedCallback callback) {
        int iGenSeq = genSeq();
        this.blacklistUsersRemovedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.removeUsersFromBlacklist(this.handle, userIDs, iGenSeq);
    }

    @Override
    public void queryBlacklist(ZIMBlacklistQueryConfig config, ZIMBlacklistQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.blacklistQueriedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryBlacklist(this.handle, ZIMCovert.getGenZIMBlacklistQueryConfig(config), iGenSeq);
    }

    @Override
    public void checkUserIsInBlacklist(String userID, ZIMBlacklistCheckedCallback callback) {
        int iGenSeq = genSeq();
        this.blacklistCheckedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.checkUserIsInBlacklist(this.handle, userID, iGenSeq);
    }

    @Override
    public void searchLocalFriends(ZIMFriendSearchConfig config, ZIMFriendsSearchedCallback callback) {
        int iGenSeq = genSeq();
        this.friendSearchedCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.searchLocalFriends(this.handle, ZIMCovert.getGenZIMFriendSearchConfig(config), iGenSeq);
    }

    @Override
    public void insertMessageToLocalDB(ZIMMessage message, String conversationID, ZIMConversationType conversationType, String senderUserID, ZIMMessageInsertedCallback callback) {
        int iGenSeq = genSeq();
        this.messageInsertedCallback.put(Integer.valueOf(iGenSeq), callback);
        if (message.getMessageID() == 0 && message.getLocalMessageID() == 0) {
            this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        }
        ZIMGenMethod.insertMessageToLocalDB(this.handle, ZIMCovert.getGenMessage(message), conversationID, conversationType.value(), senderUserID, iGenSeq);
    }

    @Override
    public void queryHistoryMessage(String conversationID, ZIMConversationType conversationType, ZIMMessageQueryConfig config, ZIMMessageQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryHistoryMessage(this.handle, conversationID, conversationType.value(), ZIMCovert.getMessageQueryConfig(config), iGenSeq);
    }

    @Override
    public void searchLocalMessages(String conversationID, ZIMConversationType conversationType, ZIMMessageSearchConfig config, ZIMMessagesSearchedCallback callback) {
        int iGenSeq = genSeq();
        this.messageSearchCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.searchLocalMessages(this.handle, conversationID, conversationType.value(), ZIMCovert.getGenMessageSearchConfig(config), iGenSeq);
    }

    @Override
    public void searchGlobalLocalMessages(ZIMMessageSearchConfig config, ZIMMessagesGlobalSearchedCallback callback) {
        int iGenSeq = genSeq();
        this.messageGlobalSearchCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.searchGlobalLocalMessages(this.handle, ZIMCovert.getGenMessageSearchConfig(config), iGenSeq);
    }

    @Override
    public void searchLocalConversations(ZIMConversationSearchConfig config, ZIMConversationsSearchedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationMessageGlobalSearchCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.searchLocalConversations(this.handle, ZIMCovert.getGenMessageGlobalSearchConfig(config), iGenSeq);
    }

    @Override
    public void updateMessageLocalExtendedData(String localExtendedData, ZIMMessage message, ZIMMessageLocalExtendedDataUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        this.messageLocalExtendedDataUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateMessageLocalExtendedData(this.handle, localExtendedData, ZIMCovert.getGenMessage(message), iGenSeq);
    }

    @Override
    public void revokeMessage(ZIMMessage message, ZIMMessageRevokeConfig config, ZIMMessageRevokedCallback callback) {
        int iGenSeq = genSeq();
        this.messageRevokedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.revokeMessage(this.handle, ZIMCovert.getGenMessage(message), ZIMCovert.getGenMessageRevokeConfig(config), iGenSeq);
    }

    @Override
    public void queryCombineMessageDetail(ZIMCombineMessage message, ZIMCombineMessageDetailQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.combineMessageDetailQueriedCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryCombineMessage(this.handle, ZIMCovert.getGenMessage(message), iGenSeq);
    }

    @Override
    public void replyMessage(ZIMMessage message, ZIMMessage repliedMessage, ZIMMessageSendConfig config, ZIMMessageSentFullCallback callback) {
        int iGenSeq = genSeq();
        this.sentFullCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        if (message.getMessageID() == 0 && message.getLocalMessageID() == 0) {
            this.messageObjMap.put(Integer.valueOf(iGenSeq), message);
        }
        ZIMGenMethod.replyMessage(this.handle, ZIMCovert.getGenMessage(message), ZIMCovert.getGenMessage(repliedMessage), ZIMCovert.sendConfigToGenSendConfig(config), iGenSeq);
    }

    @Override
    public void queryMessageRepliedList(ZIMMessage message, ZIMMessageRepliedListQueryConfig config, ZIMMessageRepliedListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.repliedListQueriedCallbackHashMap.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryRepliedMessageList(this.handle, ZIMCovert.getGenMessage(message), ZIMCovert.getGenRepliedListQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryMessages(ArrayList<Long> messageSeqs, String conversationID, ZIMConversationType conversationType, ZIMMessageQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.commonCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryMessages(this.handle, messageSeqs, conversationID, conversationType.value(), iGenSeq);
    }

    @Override
    public void deleteMessages(List<ZIMMessage> messageList, String conversationID, ZIMConversationType type, ZIMMessageDeleteConfig config, ZIMMessageDeletedCallback callback) {
        int iGenSeq = genSeq();
        this.messageDeletedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteMessages(this.handle, ZIMCovert.zimMessageListToGenMessageList(messageList), conversationID, type.value(), ZIMCovert.getGenMessageDeleteConfig(config), iGenSeq);
    }

    @Override
    public void deleteAllMessage(String conversationID, ZIMConversationType type, ZIMMessageDeleteConfig config, ZIMMessageDeletedCallback callback) {
        int iGenSeq = genSeq();
        this.messageDeletedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteAllMessage(this.handle, conversationID, type.value(), ZIMCovert.getGenMessageDeleteConfig(config), iGenSeq);
    }

    @Override
    public void deleteAllConversationMessages(ZIMMessageDeleteConfig config, ZIMConversationMessagesAllDeletedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationMessagesAllDeletedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteAllConversationMessages(this.handle, ZIMCovert.getGenMessageDeleteConfig(config), iGenSeq);
    }

    @Override
    public void queryConversationList(ZIMConversationQueryConfig config, ZIMConversationListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationListQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryConversationList(this.handle, ZIMCovert.getGenConversationQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryConversationList(ZIMConversationQueryConfig config, ZIMConversationFilterOption option, ZIMConversationListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationListQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryConversationListWithConfig(this.handle, ZIMCovert.getGenConversationQueryConfig(config), ZIMCovert.getGenConversationFilterOption(option), iGenSeq);
    }

    @Override
    public void queryConversation(String conversationID, ZIMConversationType conversationType, ZIMConversationQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryConversation(this.handle, conversationID, conversationType.value(), iGenSeq);
    }

    @Override
    public void queryConversationPinnedList(ZIMConversationQueryConfig config, ZIMConversationPinnedListQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationPinnedListQueriedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryConversationPinnedList(this.handle, ZIMCovert.getGenConversationQueryConfig(config), iGenSeq);
    }

    @Override
    public void queryConversationTotalUnreadMessageCount(ZIMConversationTotalUnreadMessageCountQueryConfig config, ZIMConversationTotalUnreadMessageCountQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationTotalUnreadMessageCountQueriedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryConversationTotalUnreadCount(this.handle, ZIMCovert.getGenConversationTotalUnreadCountQueryConfig(config), iGenSeq);
    }

    @Override
    public void updateConversationPinnedState(boolean isPinned, String conversationID, ZIMConversationType conversationType, ZIMConversationPinnedStateUpdatedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationPinnedStateUpdatedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.updateConversationPinnedState(this.handle, isPinned, conversationID, conversationType.value(), iGenSeq);
    }

    @Override
    public void deleteConversation(String conversationID, ZIMConversationType type, ZIMConversationDeleteConfig config, ZIMConversationDeletedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationDeletedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteConversation(this.handle, conversationID, type.value(), ZIMCovert.getGenConversationDeleteConfig(config), iGenSeq);
    }

    @Override
    public void deleteAllConversations(ZIMConversationDeleteConfig config, ZIMConversationsAllDeletedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationsAllDeletedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.deleteAllConversations(this.handle, ZIMCovert.getGenConversationDeleteConfig(config), iGenSeq);
    }

    @Override
    public void clearConversationUnreadMessageCount(String conversationID, ZIMConversationType type, ZIMConversationUnreadMessageCountClearedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationUnreadMessageCountClearedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.clearConversationUnreadMessageCount(this.handle, conversationID, type.value(), iGenSeq);
    }

    @Override
    public void clearConversationTotalUnreadMessageCount(ZIMConversationTotalUnreadMessageCountClearedCallback callback) {
        int iGenSeq = genSeq();
        this.conversationsAllUnreadMessageCountClearedCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.clearConversationTotalUnreadMessageCount(this.handle, iGenSeq);
    }

    @Override
    public void setConversationNotificationStatus(ZIMConversationNotificationStatus status, String conversationID, ZIMConversationType type, ZIMConversationNotificationStatusSetCallback callback) {
        int iGenSeq = genSeq();
        this.conversationNotificationStatusSetCallbacks.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.setConversationNotificationStatus(this.handle, status.value(), conversationID, type.value(), iGenSeq);
    }

    @Override
    public void sendConversationMessageReceiptRead(String conversationID, ZIMConversationType conversationType, ZIMConversationMessageReceiptReadSentCallback callback) {
        int iGenSeq = genSeq();
        this.conversationReceiptReadCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.sendConversationMessageReceiptRead(this.handle, conversationID, conversationType.value(), iGenSeq);
    }

    @Override
    public void importLocalMessages(String folderPath, ZIMMessageImportConfig config, ZIMMessageImportedCallback callback) {
        int iGenSeq = genSeq();
        this.messageImportedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.importLocalMessages(this.handle, folderPath, ZIMCovert.getGenMessageImportConfig(config), iGenSeq);
    }

    @Override
    public void exportLocalMessages(String folderPath, ZIMMessageExportConfig config, ZIMMessageExportedCallback callback) {
        int iGenSeq = genSeq();
        this.messageExportedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.exportLocalMessages(this.handle, folderPath, ZIMCovert.getGenMessageExportConfig(config), iGenSeq);
    }

    @Override
    public void clearLocalFileCache(ZIMFileCacheClearConfig config, ZIMFileCacheClearedCallback callback) {
        int iGenSeq = genSeq();
        this.fileCacheClearedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.clearLocalFileCache(this.handle, ZIMCovert.getGenFileCacheClearConfig(config), iGenSeq);
    }

    @Override
    public void queryLocalFileCache(ZIMFileCacheQueryConfig config, ZIMFileCacheQueriedCallback callback) {
        int iGenSeq = genSeq();
        this.fileCacheQueriedCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.queryLocalFileCache(this.handle, ZIMCovert.getGenFileCacheQueryConfig(config), iGenSeq);
    }

    @Override
    public void setConversationDraft(String draft, String conversationID, ZIMConversationType conversationType, ZIMConversationDraftSetCallback callback) {
        int iGenSeq = genSeq();
        this.conversationDraftSetCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.setConversationDraft(this.handle, draft, conversationID, conversationType.value(), iGenSeq);
    }

    @Override
    public void setConversationMark(Integer markType, boolean enable, ArrayList<ZIMConversationBaseInfo> infos, ZIMConversationMarkSetCallback callback) {
        int iGenSeq = genSeq();
        this.conversationMarkSetCallback.put(Integer.valueOf(iGenSeq), callback);
        ZIMGenMethod.setConversationMark(this.handle, markType.intValue(), enable, ZIMCovert.zimConversationBaseInfoListToGenConversationBaseInfoList(infos), iGenSeq);
    }
}

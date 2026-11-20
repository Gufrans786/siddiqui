package im.zego.zim.internal.generated;

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
import im.zego.zim.entity.ZIMCombineMessage;
import im.zego.zim.entity.ZIMMediaMessage;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.entity.ZIMMessageReceivedInfo;
import im.zego.zim.entity.ZIMMultipleMessage;
import im.zego.zim.entity.ZIMRevokeMessage;
import im.zego.zim.entity.ZIMUserStatus;
import im.zego.zim.entity.ZIMUserStatusSubscription;
import im.zego.zim.enums.ZIMBlacklistChangeAction;
import im.zego.zim.enums.ZIMConnectionEvent;
import im.zego.zim.enums.ZIMConnectionState;
import im.zego.zim.enums.ZIMConversationSyncState;
import im.zego.zim.enums.ZIMConversationType;
import im.zego.zim.enums.ZIMFriendApplicationListChangeAction;
import im.zego.zim.enums.ZIMFriendListChangeAction;
import im.zego.zim.enums.ZIMGroupApplicationListChangeAction;
import im.zego.zim.enums.ZIMGroupBeInviteMode;
import im.zego.zim.enums.ZIMGroupEvent;
import im.zego.zim.enums.ZIMGroupInviteMode;
import im.zego.zim.enums.ZIMGroupJoinMode;
import im.zego.zim.enums.ZIMGroupMemberEvent;
import im.zego.zim.enums.ZIMGroupMemberState;
import im.zego.zim.enums.ZIMGroupState;
import im.zego.zim.enums.ZIMRoomEvent;
import im.zego.zim.enums.ZIMRoomState;
import im.zego.zim.internal.ZIMImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class ZIMBridge implements ZIMGenCallbacks {
    public ZIMBridge() {
        ZIMGenMethod.setCallbacks(this);
    }

    @Override
    public void onLoggedIn(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMLoggedInCallback zIMLoggedInCallback = zIMImpl.loggedInCallbacks.get(Integer.valueOf(sequence));
                    if (zIMLoggedInCallback != null) {
                        zIMLoggedInCallback.onLoggedIn(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.loggedInCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onLogUploaded(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMLogUploadedCallback zIMLogUploadedCallback = zIMImpl.logUploadedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMLogUploadedCallback != null) {
                        zIMLogUploadedCallback.onLogUploaded(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.logUploadedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onTokenRenewed(final long handle, final String token, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMTokenRenewedCallback zIMTokenRenewedCallback = zIMImpl.tokenRenewedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMTokenRenewedCallback != null) {
                        zIMTokenRenewedCallback.onTokenRenewed(token, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.tokenRenewedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onExperimentalAPICalled(final long handle, final String result, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMExperimentalAPICalledCallback zIMExperimentalAPICalledCallback = zIMImpl.experimentalAPICalledCallbacks.get(Integer.valueOf(sequence));
                    if (zIMExperimentalAPICalledCallback != null) {
                        zIMExperimentalAPICalledCallback.onExperimentalAPICalled(result, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.experimentalAPICalledCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onUserNameUpdated(final long handle, final String userName, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMUserNameUpdatedCallback zIMUserNameUpdatedCallback = zIMImpl.userNameUpdatedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMUserNameUpdatedCallback != null) {
                        zIMUserNameUpdatedCallback.onUserNameUpdated(userName, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.userNameUpdatedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onUserAvatarUpdated(final long handle, final String userAvatarUrl, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMUserAvatarUrlUpdatedCallback zIMUserAvatarUrlUpdatedCallback = zIMImpl.userAvatarUpdatedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMUserAvatarUrlUpdatedCallback != null) {
                        zIMUserAvatarUrlUpdatedCallback.onUserAvatarUrlUpdated(userAvatarUrl, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.userNameUpdatedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onUserExtendedData(final long handle, final String extendedData, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMUserExtendedDataUpdatedCallback zIMUserExtendedDataUpdatedCallback = zIMImpl.userExtendedDataUpdatedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMUserExtendedDataUpdatedCallback != null) {
                        zIMUserExtendedDataUpdatedCallback.onUserExtendedDataUpdated(extendedData, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.userExtendedDataUpdatedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onUserCustomStatusUpdated(final long handle, final String customStatus, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMUserCustomStatusUpdatedCallback zIMUserCustomStatusUpdatedCallback = zIMImpl.userCustomStatusUpdatedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMUserCustomStatusUpdatedCallback != null) {
                        zIMUserCustomStatusUpdatedCallback.onUserCustomStatusUpdated(customStatus, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.userCustomStatusUpdatedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onUserOfflinePushRuleInfoUpdated(final long handle, final ZIMGenUserOfflinePushRule offlinePushRule, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMUserOfflinePushRuleUpdatedCallback zIMUserOfflinePushRuleUpdatedCallback = zIMImpl.userOfflinePushRuleInfoUpdatedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMUserOfflinePushRuleUpdatedCallback != null) {
                        zIMUserOfflinePushRuleUpdatedCallback.onUserOfflinePushRuleInfoUpdated(ZIMCovert.getZIMUserOfflinePushRule(offlinePushRule), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.userOfflinePushRuleInfoUpdatedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onUserBadgeUpdated(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMUserBadgeUpdatedCallback zIMUserBadgeUpdatedCallback = zIMImpl.userBadgeUpdatedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMUserBadgeUpdatedCallback != null) {
                        zIMUserBadgeUpdatedCallback.onUserBadgeUpdated(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.userBadgeUpdatedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onSelfUserInfoQueried(final long handle, final ZIMGenSelfUserInfo selfUserInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMSelfUserInfoQueriedCallback zIMSelfUserInfoQueriedCallback = zIMImpl.selfUserInfoQueriedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMSelfUserInfoQueriedCallback != null) {
                        zIMSelfUserInfoQueriedCallback.onSelfUserInfoQueried(ZIMCovert.getZIMSelfUserInfo(selfUserInfo), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.selfUserInfoQueriedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onUsersInfoQueried(final long handle, final ArrayList<ZIMGenFullUserInfo> userList, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMUsersInfoQueriedCallback zIMUsersInfoQueriedCallback = zIMImpl.usersInfoQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMUsersInfoQueriedCallback != null) {
                    zIMUsersInfoQueriedCallback.onUsersInfoQueried(ZIMCovert.getFullUserInfoList(userList), ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.usersInfoQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onSubscribedUserStatusListQueried(final long handle, final ArrayList<ZIMGenUserStatusSubscription> userStatusSubscriptionList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMSubscribedUserStatusListQueriedCallback zIMSubscribedUserStatusListQueriedCallback = zIMImpl.subscribedUserStatusListQueriedCallbackHashMap.get(Integer.valueOf(sequence));
                if (zIMSubscribedUserStatusListQueriedCallback != null) {
                    ArrayList<ZIMUserStatusSubscription> arrayList = new ArrayList<>();
                    Iterator it = userStatusSubscriptionList.iterator();
                    while (it.hasNext()) {
                        arrayList.add(ZIMCovert.getZIMUserStatusSubscription((ZIMGenUserStatusSubscription) it.next()));
                    }
                    zIMSubscribedUserStatusListQueriedCallback.onSubscribedUserStatusListQueried(arrayList, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.subscribedUserStatusListQueriedCallbackHashMap.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onUsersStatusQueried(final long handle, final ArrayList<ZIMGenUserStatus> userStatusList, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMUsersStatusQueriedCallback zIMUsersStatusQueriedCallback = zIMImpl.usersStatusQueriedCallbackHashMap.get(Integer.valueOf(sequence));
                if (zIMUsersStatusQueriedCallback != null) {
                    ArrayList<ZIMUserStatus> arrayList = new ArrayList<>();
                    Iterator it = userStatusList.iterator();
                    while (it.hasNext()) {
                        arrayList.add(ZIMCovert.getZIMUserStatus((ZIMGenUserStatus) it.next()));
                    }
                    zIMUsersStatusQueriedCallback.onUsersStatusQueried(arrayList, ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.usersStatusQueriedCallbackHashMap.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onUsersStatusSubscribed(final long handle, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMUsersStatusSubscribedCallback zIMUsersStatusSubscribedCallback = zIMImpl.usersStatusSubscribedCallbackHashMap.get(Integer.valueOf(sequence));
                if (zIMUsersStatusSubscribedCallback != null) {
                    zIMUsersStatusSubscribedCallback.onUsersStatusSubscribed(ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.usersStatusSubscribedCallbackHashMap.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onUsersStatusUnsubscribed(final long handle, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMUsersStatusUnsubscribedCallback zIMUsersStatusUnsubscribedCallback = zIMImpl.usersStatusUnsubscribedCallbackHashMap.get(Integer.valueOf(sequence));
                if (zIMUsersStatusUnsubscribedCallback != null) {
                    zIMUsersStatusUnsubscribedCallback.onUsersStatusUnsubscribed(ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.usersStatusUnsubscribedCallbackHashMap.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onConversationListQueried(final long handle, final ArrayList<ZIMGenConversation> conversationList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationListQueriedCallback zIMConversationListQueriedCallback = zIMImpl.conversationListQueriedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationListQueriedCallback != null) {
                        zIMConversationListQueriedCallback.onConversationListQueried(ZIMCovert.getConversationList(conversationList), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationListQueriedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationQueried(final long handle, final ZIMGenConversation conversation, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationQueriedCallback zIMConversationQueriedCallback = zIMImpl.conversationQueriedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationQueriedCallback != null) {
                        zIMConversationQueriedCallback.onConversationQueried(ZIMCovert.getConversation(conversation), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationQueriedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationPinnedListQueried(final long handle, final ArrayList<ZIMGenConversation> conversationList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationPinnedListQueriedCallback zIMConversationPinnedListQueriedCallback = zIMImpl.conversationPinnedListQueriedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationPinnedListQueriedCallback != null) {
                        zIMConversationPinnedListQueriedCallback.onConversationPinnedListQueried(ZIMCovert.getConversationList(conversationList), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationPinnedListQueriedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationPinnedStateUpdate(final long handle, final String conversationID, final int type, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationPinnedStateUpdatedCallback zIMConversationPinnedStateUpdatedCallback = zIMImpl.conversationPinnedStateUpdatedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationPinnedStateUpdatedCallback != null) {
                        zIMConversationPinnedStateUpdatedCallback.onConversationPinnedStateUpdated(conversationID, ZIMConversationType.getZIMConversationType(type), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationPinnedListQueriedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationDeleted(final long handle, final String conversationId, final int conversationType, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationDeletedCallback zIMConversationDeletedCallback = zIMImpl.conversationDeletedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationDeletedCallback != null) {
                        zIMConversationDeletedCallback.onConversationDeleted(conversationId, ZIMConversationType.getZIMConversationType(conversationType), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationDeletedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationsAllDeleted(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationsAllDeletedCallback zIMConversationsAllDeletedCallback = zIMImpl.conversationsAllDeletedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationsAllDeletedCallback != null) {
                        zIMConversationsAllDeletedCallback.onConversationsAllDeleted(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationDeletedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationTotalUnreadCountQueried(final long handle, final int unreadCount, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationTotalUnreadMessageCountQueriedCallback zIMConversationTotalUnreadMessageCountQueriedCallback = zIMImpl.conversationTotalUnreadMessageCountQueriedCallback.get(Integer.valueOf(sequence));
                    if (zIMConversationTotalUnreadMessageCountQueriedCallback != null) {
                        zIMConversationTotalUnreadMessageCountQueriedCallback.onConversationTotalUnreadMessageCountQueried(unreadCount, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationTotalUnreadMessageCountQueriedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationTotalUnreadMessageCountCleared(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationTotalUnreadMessageCountClearedCallback zIMConversationTotalUnreadMessageCountClearedCallback = zIMImpl.conversationsAllUnreadMessageCountClearedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationTotalUnreadMessageCountClearedCallback != null) {
                        zIMConversationTotalUnreadMessageCountClearedCallback.onConversationTotalUnreadMessageCountCleared(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationDeletedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationUnreadMessageCountCleared(final long handle, final String conversationId, final int conversationType, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationUnreadMessageCountClearedCallback zIMConversationUnreadMessageCountClearedCallback = zIMImpl.conversationUnreadMessageCountClearedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationUnreadMessageCountClearedCallback != null) {
                        zIMConversationUnreadMessageCountClearedCallback.onConversationUnreadMessageCountCleared(conversationId, ZIMConversationType.getZIMConversationType(conversationType), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationUnreadMessageCountClearedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageLocalExtendedDataUpdated(final long handle, final ZIMGenMessage message, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMMessageLocalExtendedDataUpdatedCallback zIMMessageLocalExtendedDataUpdatedCallback;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMMessageLocalExtendedDataUpdatedCallback = zIMImpl.messageLocalExtendedDataUpdatedCallbacks.get(Integer.valueOf(sequence))) == null) {
                    return;
                }
                zIMMessageLocalExtendedDataUpdatedCallback.onMessageExtendedDataUpdated(ZIMCovert.getZIMMessage(zIMImpl.messageObjMap.get(Integer.valueOf(sequence)), message), ZIMCovert.getZimError(errorInfo));
                zIMImpl.messageLocalExtendedDataUpdatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onMessageReactionsChanged(final long handle, final ArrayList<ZIMGenMessageReaction> reactions) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onMessageReactionsChanged(zIMImpl, ZIMCovert.getZIMMessageReactionList(reactions));
            }
        });
    }

    @Override
    public void onMessageReactionsChangedWithResult(final long handle, final ArrayList<ZIMGenMessageReaction> reactions, final ArrayList<ZIMGenMessageReactionChangeInfo> changeInfoList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onMessageReactionsChanged(zIMImpl, ZIMCovert.getZIMMessageReactionsChangedEventResult(reactions, changeInfoList));
            }
        });
    }

    @Override
    public void onMessageRepliedInfoChanged(final long handle, final ArrayList<ZIMGenMessage> messages) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onMessageRepliedInfoChanged(zIMImpl, ZIMCovert.getZIMMessageList(messages));
            }
        });
    }

    @Override
    public void onMessageEditedEvent(final long handle, final ArrayList<ZIMGenMessage> messageList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onMessageEdited(zIMImpl, ZIMCovert.getZIMMessageList(messageList));
            }
        });
    }

    @Override
    public void onMessageRepliedCountChanged(final long handle, final ArrayList<ZIMGenMessageRootRepliedCountInfo> infos) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onMessageRepliedCountChanged(zIMImpl, ZIMCovert.getZIMMessageRootRepliedCountInfoList(infos));
            }
        });
    }

    @Override
    public void onConversationNotificationStatusSet(final long handle, final String conversationId, final int conversationType, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationNotificationStatusSetCallback zIMConversationNotificationStatusSetCallback = zIMImpl.conversationNotificationStatusSetCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationNotificationStatusSetCallback != null) {
                        zIMConversationNotificationStatusSetCallback.onConversationNotificationStatusSet(conversationId, ZIMConversationType.getZIMConversationType(conversationType), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationNotificationStatusSetCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationMessageReceiptReadSent(final long handle, final String conversationId, final int conversationType, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationMessageReceiptReadSentCallback zIMConversationMessageReceiptReadSentCallback = zIMImpl.conversationReceiptReadCallback.get(Integer.valueOf(sequence));
                    if (zIMConversationMessageReceiptReadSentCallback != null) {
                        zIMConversationMessageReceiptReadSentCallback.onConversationMessageReceiptReadSent(conversationId, ZIMConversationType.getZIMConversationType(conversationType), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationReceiptReadCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationDraftSet(final long handle, final String conversationId, final int conversationType, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationDraftSetCallback zIMConversationDraftSetCallback = zIMImpl.conversationDraftSetCallback.get(Integer.valueOf(sequence));
                    if (zIMConversationDraftSetCallback != null) {
                        zIMConversationDraftSetCallback.onConversationDraftSet(conversationId, ZIMConversationType.getZIMConversationType(conversationType), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationDraftSetCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationMarkSet(final long handle, final ArrayList<ZIMGenConversationBaseInfo> failedInfos, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationMarkSetCallback zIMConversationMarkSetCallback = zIMImpl.conversationMarkSetCallback.get(Integer.valueOf(sequence));
                    if (zIMConversationMarkSetCallback != null) {
                        zIMConversationMarkSetCallback.onConversationMarkSet(ZIMCovert.getConversationBaseInfoList(failedInfos), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationMarkSetCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageAttach(final long handle, final ZIMGenMessage genMessage, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageSentCallback zIMMessageSentCallback = zIMImpl.messageSentCallbacks.get(Integer.valueOf(sequence));
                    ZIMMediaMessageSentCallback zIMMediaMessageSentCallback = zIMImpl.mediaMessageSentCallbacks.get(Integer.valueOf(sequence));
                    ZIMMessageSentFullCallback zIMMessageSentFullCallback = zIMImpl.sentFullCallbackHashMap.get(Integer.valueOf(sequence));
                    ZIMMessage zIMMessage = zIMImpl.messageObjMap.get(Integer.valueOf(sequence));
                    ZIMMessage zIMMessage2 = ZIMCovert.getZIMMessage(zIMMessage, genMessage);
                    if (zIMMessage == null) {
                        zIMImpl.messageObjMap.put(Integer.valueOf(sequence), zIMMessage2);
                    }
                    if (zIMMessageSentCallback != null) {
                        zIMMessageSentCallback.onMessageAttached(zIMMessage2);
                    }
                    if (zIMMediaMessageSentCallback != null) {
                        zIMMediaMessageSentCallback.onMessageAttached((ZIMMediaMessage) zIMMessage2);
                    }
                    if (zIMMessageSentFullCallback != null) {
                        zIMMessageSentFullCallback.onMessageAttached(zIMMessage2);
                    }
                }
            }
        });
    }

    @Override
    public void onMessageSent(final long handle, final ZIMGenError errorInfo, final ZIMGenMessage message, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageSentCallback zIMMessageSentCallback = zIMImpl.messageSentCallbacks.get(Integer.valueOf(sequence));
                    ZIMMediaMessageSentCallback zIMMediaMessageSentCallback = zIMImpl.mediaMessageSentCallbacks.get(Integer.valueOf(sequence));
                    ZIMMessageSentFullCallback zIMMessageSentFullCallback = zIMImpl.sentFullCallbackHashMap.get(Integer.valueOf(sequence));
                    if (zIMMessageSentCallback != null) {
                        zIMMessageSentCallback.onMessageSent(ZIMCovert.getZIMMessage(zIMImpl.messageObjMap.get(Integer.valueOf(sequence)), message), ZIMCovert.getZimError(errorInfo));
                        zIMImpl.messageSentCallbacks.remove(Integer.valueOf(sequence));
                    } else if (zIMMediaMessageSentCallback != null) {
                        zIMMediaMessageSentCallback.onMessageSent((ZIMMediaMessage) ZIMCovert.getZIMMessage(zIMImpl.messageObjMap.get(Integer.valueOf(sequence)), message), ZIMCovert.getZimError(errorInfo));
                        zIMImpl.mediaMessageSentCallbacks.remove(Integer.valueOf(sequence));
                    } else if (zIMMessageSentFullCallback != null) {
                        zIMMessageSentFullCallback.onMessageSent(ZIMCovert.getZIMMessage(zIMImpl.messageObjMap.get(Integer.valueOf(sequence)), message), ZIMCovert.getZimError(errorInfo));
                        zIMImpl.sentFullCallbackHashMap.remove(Integer.valueOf(sequence));
                    }
                    zIMImpl.messageObjMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMediaUploadingProgress(final long handle, final ZIMGenMessage genMediaMessage, final long currentFileSize, final long totalFileSize, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMediaMessageSentCallback zIMMediaMessageSentCallback = zIMImpl.mediaMessageSentCallbacks.get(Integer.valueOf(sequence));
                    ZIMMessageSentFullCallback zIMMessageSentFullCallback = zIMImpl.sentFullCallbackHashMap.get(Integer.valueOf(sequence));
                    if (zIMMediaMessageSentCallback != null) {
                        zIMMediaMessageSentCallback.onMediaUploadingProgress((ZIMMediaMessage) ZIMCovert.getZIMMessage(zIMImpl.messageObjMap.get(Integer.valueOf(sequence)), genMediaMessage), currentFileSize, totalFileSize);
                    } else if (zIMMessageSentFullCallback != null) {
                        zIMMessageSentFullCallback.onMediaUploadingProgress((ZIMMediaMessage) ZIMCovert.getZIMMessage(zIMImpl.messageObjMap.get(Integer.valueOf(sequence)), genMediaMessage), currentFileSize, totalFileSize);
                    }
                }
            }
        });
    }

    @Override
    public void onMultipleMediaUploadingProgress(final long handle, final ZIMGenMessage genMessage, final long currentFileSize, final long totalFileSize, final int messageInfoIndex, final long currentIndexFileSize, final long totalIndexFileSize, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMMessageSentFullCallback zIMMessageSentFullCallback;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMMessageSentFullCallback = zIMImpl.sentFullCallbackHashMap.get(Integer.valueOf(sequence))) == null) {
                    return;
                }
                zIMMessageSentFullCallback.onMultipleMediaUploadingProgress((ZIMMultipleMessage) ZIMCovert.getZIMMessage(zIMImpl.messageObjMap.get(Integer.valueOf(sequence)), genMessage), currentFileSize, totalFileSize, messageInfoIndex, currentIndexFileSize, totalIndexFileSize);
            }
        });
    }

    @Override
    public void onMessageReceiptsReadSent(final long handle, final String conversationID, final int conversationType, final ArrayList<Long> errorMessageIDs, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageReceiptsReadSentCallback zIMMessageReceiptsReadSentCallback = zIMImpl.messageReceiptsReadCallback.get(Integer.valueOf(sequence));
                    if (zIMMessageReceiptsReadSentCallback != null) {
                        zIMMessageReceiptsReadSentCallback.onMessageReceiptsReadSent(conversationID, ZIMConversationType.getZIMConversationType(conversationType), errorMessageIDs, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageReceiptsReadCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageReceiptsInfoQueried(final long handle, final ArrayList<ZIMGenMessageReceiptInfo> infos, final ArrayList<Long> errorMessageIds, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageReceiptsInfoQueriedCallback zIMMessageReceiptsInfoQueriedCallback = zIMImpl.messageReceiptsInfoQueriedCallback.get(Integer.valueOf(sequence));
                    if (zIMMessageReceiptsInfoQueriedCallback != null) {
                        zIMMessageReceiptsInfoQueriedCallback.onMessageReceiptsInfoQueried(ZIMCovert.getMessageReceiptInfos(infos), errorMessageIds, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageReceiptsReadCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageInserted(final long handle, final ZIMGenMessage message, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageInsertedCallback zIMMessageInsertedCallback = zIMImpl.messageInsertedCallback.get(Integer.valueOf(sequence));
                    if (zIMMessageInsertedCallback != null) {
                        zIMMessageInsertedCallback.onMessageInserted(ZIMCovert.getZIMMessage(message), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageInsertedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageQueried(final long handle, final String conversationID, final int conversationType, final ArrayList<ZIMGenMessage> messageList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    Object obj = zIMImpl.commonCallbacks.get(Integer.valueOf(sequence));
                    if (obj != null) {
                        ((ZIMMessageQueriedCallback) obj).onMessageQueried(conversationID, ZIMConversationType.getZIMConversationType(conversationType), ZIMCovert.getZIMMessageList(messageList), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.commonCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageRevoked(final long handle, final ZIMGenMessage message, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageRevokedCallback zIMMessageRevokedCallback = zIMImpl.messageRevokedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMMessageRevokedCallback != null) {
                        zIMMessageRevokedCallback.onMessageRevoked(ZIMCovert.getZIMMessage(message), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageRevokedCallbacks.remove(Integer.valueOf(sequence));
                    zIMImpl.messageObjMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageDeleted(final long handle, final String conversationID, final int conversationType, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageDeletedCallback zIMMessageDeletedCallback = zIMImpl.messageDeletedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMMessageDeletedCallback != null) {
                        zIMMessageDeletedCallback.onMessageDeleted(conversationID, ZIMConversationType.getZIMConversationType(conversationType), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageDeletedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationMessagesAllDeleted(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMConversationMessagesAllDeletedCallback zIMConversationMessagesAllDeletedCallback = zIMImpl.conversationMessagesAllDeletedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMConversationMessagesAllDeletedCallback != null) {
                        zIMConversationMessagesAllDeletedCallback.onConversationMessagesAllDeleted(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.conversationMessagesAllDeletedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMediaDownloaded(final long handle, final ZIMGenMessage message, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMediaDownloadedCallback zIMMediaDownloadedCallback = zIMImpl.mediaDownloadedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMMediaDownloadedCallback != null) {
                        zIMMediaDownloadedCallback.onMediaDownloaded(ZIMCovert.getZIMMessage(zIMImpl.messageObjMap.get(Integer.valueOf(sequence)), message), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.mediaDownloadedCallbacks.remove(Integer.valueOf(sequence));
                    zIMImpl.messageObjMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMediaDownloadingProgress(final long handle, final ZIMGenMessage message, final long currentFileSize, final long totalFileSize, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMMediaDownloadedCallback zIMMediaDownloadedCallback;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMMediaDownloadedCallback = zIMImpl.mediaDownloadedCallbacks.get(Integer.valueOf(sequence))) == null) {
                    return;
                }
                zIMMediaDownloadedCallback.onMediaDownloadingProgress(ZIMCovert.getZIMMessage(zIMImpl.messageObjMap.get(Integer.valueOf(sequence)), message), currentFileSize, totalFileSize);
            }
        });
    }

    @Override
    public void onMessageReactionAdded(final long handle, final ZIMGenMessageReaction reaction, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageReactionAddedCallback zIMMessageReactionAddedCallback = zIMImpl.messageReactionAddCallbackHashMap.get(Integer.valueOf(sequence));
                    if (zIMMessageReactionAddedCallback != null) {
                        zIMMessageReactionAddedCallback.onMessageReactionAdded(ZIMCovert.getZIMMessageReaction(reaction), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageReactionAddCallbackHashMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageReactionDeleted(final long handle, final ZIMGenMessageReaction reaction, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageReactionDeletedCallback zIMMessageReactionDeletedCallback = zIMImpl.messageReactionDeleteCallbackHashMap.get(Integer.valueOf(sequence));
                    if (zIMMessageReactionDeletedCallback != null) {
                        zIMMessageReactionDeletedCallback.onMessageReactionDeleted(ZIMCovert.getZIMMessageReaction(reaction), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageReactionDeleteCallbackHashMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageReactionsAllDeleted(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageReactionsAllDeletedCallback zIMMessageReactionsAllDeletedCallback = (ZIMMessageReactionsAllDeletedCallback) zIMImpl.commonCallbacks.get(Integer.valueOf(sequence));
                    if (zIMMessageReactionsAllDeletedCallback != null) {
                        zIMMessageReactionsAllDeletedCallback.onMessageReactionsAllDeleted(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.commonCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onCombineMessageDetailQueried(final long handle, final ZIMGenMessage genMessage, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMCombineMessageDetailQueriedCallback zIMCombineMessageDetailQueriedCallback = zIMImpl.combineMessageDetailQueriedCallbackHashMap.get(Integer.valueOf(sequence));
                    if (zIMCombineMessageDetailQueriedCallback != null) {
                        ZIMMessage zIMMessage = ZIMCovert.getZIMMessage(genMessage);
                        if (zIMMessage instanceof ZIMCombineMessage) {
                            zIMCombineMessageDetailQueriedCallback.onCombineMessageDetailQueried((ZIMCombineMessage) zIMMessage, ZIMCovert.getZimError(errorInfo));
                        }
                    }
                    zIMImpl.combineMessageDetailQueriedCallbackHashMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageRepliedListQueried(final long handle, final ArrayList<ZIMGenMessage> messageList, final long nextFlag, final ZIMGenMessageRootRepliedInfo rootRepliedInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageRepliedListQueriedCallback zIMMessageRepliedListQueriedCallback = zIMImpl.repliedListQueriedCallbackHashMap.get(Integer.valueOf(sequence));
                    if (zIMMessageRepliedListQueriedCallback != null) {
                        zIMMessageRepliedListQueriedCallback.onMessageRepliedListQueried(ZIMCovert.getZIMMessageList(messageList), nextFlag, ZIMCovert.getZIMMessageRootRepliedInfo(rootRepliedInfo), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.repliedListQueriedCallbackHashMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageEdited(long handle, ZIMGenError errorInfo, ZIMGenMessage genMessage, int sequence) {
        onMessageSent(handle, errorInfo, genMessage, sequence);
    }

    @Override
    public void onSendingMessageCancelled(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMSendingMessageCancelledCallback zIMSendingMessageCancelledCallback = zIMImpl.cancelledSendingMessageCallbackHashMap.get(Integer.valueOf(sequence));
                    if (zIMSendingMessageCancelledCallback != null) {
                        zIMSendingMessageCancelledCallback.onSendingMessageCancelled(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.cancelledSendingMessageCallbackHashMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageReactionUsersQueried(final long handle, final ZIMGenMessage genMessage, final String reactionType, final ArrayList<ZIMGenMessageReactionUserFullInfo> userInfos, final long nextFlag, final int totalCount, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageReactionUserListQueriedCallback zIMMessageReactionUserListQueriedCallback = zIMImpl.messageReactionUsersQueryCallbackHashMap.get(Integer.valueOf(sequence));
                    if (zIMMessageReactionUserListQueriedCallback != null) {
                        zIMMessageReactionUserListQueriedCallback.onMessageReactionUserListQueried(ZIMCovert.getZIMMessage(genMessage), ZIMCovert.getZIMMessageReactionUserFullInfoList(userInfos), reactionType, nextFlag, totalCount, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageReactionUsersQueryCallbackHashMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConversationsSearched(final long handle, final ArrayList<ZIMGenConversationSearchInfo> globalMessageInfoList, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMConversationsSearchedCallback zIMConversationsSearchedCallback = zIMImpl.conversationMessageGlobalSearchCallbacks.get(Integer.valueOf(sequence));
                if (zIMConversationsSearchedCallback != null) {
                    zIMConversationsSearchedCallback.onConversationsSearched(ZIMCovert.getZIMGenMessageGlobalSearchInfos(globalMessageInfoList), nextFlag, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.conversationMessageGlobalSearchCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onMessagesGlobalSearched(final long handle, final ArrayList<ZIMGenMessage> messageLists, final ZIMGenMessage nextMessage, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMMessagesGlobalSearchedCallback zIMMessagesGlobalSearchedCallback = zIMImpl.messageGlobalSearchCallbacks.get(Integer.valueOf(sequence));
                if (zIMMessagesGlobalSearchedCallback != null) {
                    zIMMessagesGlobalSearchedCallback.onMessagesGlobalSearched(ZIMCovert.getZIMMessageList(messageLists), ZIMCovert.getZIMMessage(nextMessage), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.messageGlobalSearchCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onMessagesSearched(final long handle, final String conversationID, final int conversationType, final ArrayList<ZIMGenMessage> messageLists, final ZIMGenMessage nextMessage, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMMessagesSearchedCallback zIMMessagesSearchedCallback = zIMImpl.messageSearchCallbacks.get(Integer.valueOf(sequence));
                if (zIMMessagesSearchedCallback != null) {
                    zIMMessagesSearchedCallback.onMessagesSearched(conversationID, ZIMConversationType.getZIMConversationType(conversationType), ZIMCovert.getZIMMessageList(messageLists), ZIMCovert.getZIMMessage(nextMessage), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.messageSearchCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onMessagePinned(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMMessagePinnedCallback zIMMessagePinnedCallback = zIMImpl.messagePinnedCallbacks.get(Integer.valueOf(sequence));
                if (zIMMessagePinnedCallback != null) {
                    zIMMessagePinnedCallback.onMessagePinned(ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.messagePinnedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onPinnedMessageListQueried(final long handle, final ArrayList<ZIMGenMessage> messageList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMPinnedMessageListQueriedCallback zIMPinnedMessageListQueriedCallback = zIMImpl.pinnedMessageListQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMPinnedMessageListQueriedCallback != null) {
                    zIMPinnedMessageListQueriedCallback.onPinnedMessageListQueried(ZIMCovert.getZIMMessageList(messageList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.pinnedMessageListQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomCreated(final long handle, final ZIMGenFullRoomInfo roomInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomCreatedCallback zIMRoomCreatedCallback = zIMImpl.roomCreatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMRoomCreatedCallback != null) {
                    zIMRoomCreatedCallback.onRoomCreated(ZIMCovert.getRoomFullInfo(roomInfo), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomCreatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomEntered(final long handle, final ZIMGenFullRoomInfo roomInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomEnteredCallback zIMRoomEnteredCallback = zIMImpl.roomEnteredCallbacks.get(Integer.valueOf(sequence));
                if (zIMRoomEnteredCallback != null) {
                    zIMRoomEnteredCallback.onRoomEntered(ZIMCovert.getRoomFullInfo(roomInfo), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomEnteredCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomSwitched(final long handle, final ZIMGenFullRoomInfo roomInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomSwitchedCallback zIMRoomSwitchedCallback = zIMImpl.roomSwitchedCallbacks.get(Integer.valueOf(sequence));
                if (zIMRoomSwitchedCallback != null) {
                    zIMRoomSwitchedCallback.onRoomSwitched(ZIMCovert.getRoomFullInfo(roomInfo), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomSwitchedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomJoined(final long handle, final ZIMGenFullRoomInfo roomInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomJoinedCallback zIMRoomJoinedCallback = zIMImpl.roomJoinedCallbacks.get(Integer.valueOf(sequence));
                if (zIMRoomJoinedCallback != null) {
                    zIMRoomJoinedCallback.onRoomJoined(ZIMCovert.getRoomFullInfo(roomInfo), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomJoinedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomMemberQueried(final long handle, final String roomId, final ArrayList<ZIMGenUserInfo> memberList, final String nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomMemberQueriedCallback zIMRoomMemberQueriedCallback = zIMImpl.roomMemberQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMRoomMemberQueriedCallback != null) {
                    zIMRoomMemberQueriedCallback.onRoomMemberQueried(roomId, ZIMCovert.getUserInfoList(memberList), nextFlag, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomMemberQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomAttributesOperated(final long handle, final String roomId, final ArrayList<String> errorKeys, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomAttributesOperatedCallback zIMRoomAttributesOperatedCallbackRemove = zIMImpl.roomAttributesOperatedCallbacks.remove(Integer.valueOf(sequence));
                if (zIMRoomAttributesOperatedCallbackRemove != null) {
                    zIMRoomAttributesOperatedCallbackRemove.onRoomAttributesOperated(roomId, errorKeys, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomAttributesOperatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomAttributesBatchOperated(final long handle, final String roomId, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomAttributesBatchOperatedCallback zIMRoomAttributesBatchOperatedCallback = zIMImpl.roomAttributesBatchOperatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMRoomAttributesBatchOperatedCallback != null) {
                    zIMRoomAttributesBatchOperatedCallback.onRoomAttributesBatchOperated(roomId, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomAttributesBatchOperatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomAttributesQueried(final long handle, final String roomId, final HashMap<String, String> roomAttributes, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomAttributesQueriedCallback zIMRoomAttributesQueriedCallback = zIMImpl.roomAllAttributesQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMRoomAttributesQueriedCallback != null) {
                    zIMRoomAttributesQueriedCallback.onRoomAttributesQueried(roomId, roomAttributes, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomAllAttributesQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomMembersAttributesOperated(final long handle, final String roomId, final ArrayList<ZIMGenRoomMemberAttributesOperatedInfo> infos, final ArrayList<String> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMRoomMembersAttributesOperatedCallback zIMRoomMembersAttributesOperatedCallback = zIMImpl.roomMembersAttributesOperatedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMRoomMembersAttributesOperatedCallback != null) {
                        zIMRoomMembersAttributesOperatedCallback.onRoomMembersAttributesOperated(roomId, ZIMCovert.getRoomMemberAttributesOperatedInfoList(infos), errorUserList, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.roomMembersAttributesOperatedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onRoomMembersAttributesQueried(final long handle, final String room, final ArrayList<ZIMGenRoomMemberAttributesInfo> infos, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMRoomMembersAttributesQueriedCallback zIMRoomMembersAttributesQueriedCallback = zIMImpl.roomMembersAttributesQueriedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMRoomMembersAttributesQueriedCallback != null) {
                        zIMRoomMembersAttributesQueriedCallback.onRoomMembersAttributesQueried(room, ZIMCovert.getRoomMemberAttributesInfoList(infos), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.roomMembersAttributesQueriedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onRoomMemberAttributesListQueried(final long handle, final String roomId, final ArrayList<ZIMGenRoomMemberAttributesInfo> infos, final String nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMRoomMemberAttributesListQueriedCallback zIMRoomMemberAttributesListQueriedCallback = zIMImpl.roomMemberAttributesListQueriedCallbacks.get(Integer.valueOf(sequence));
                    if (zIMRoomMemberAttributesListQueriedCallback != null) {
                        zIMRoomMemberAttributesListQueriedCallback.onRoomMemberAttributesListQueried(roomId, ZIMCovert.getRoomMemberAttributesInfoList(infos), nextFlag, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.roomMemberAttributesListQueriedCallbacks.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onRoomLeft(final long handle, final String roomId, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomLeftCallback zIMRoomLeftCallbackRemove = zIMImpl.roomLeftCallbacks.remove(Integer.valueOf(sequence));
                if (zIMRoomLeftCallbackRemove != null) {
                    zIMRoomLeftCallbackRemove.onRoomLeft(roomId, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomLeftCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onAllRoomLeft(final long handle, final ArrayList<String> roomIdList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomAllLeftCallback zIMRoomAllLeftCallbackRemove = zIMImpl.allRoomLeftCallbacks.remove(Integer.valueOf(sequence));
                if (zIMRoomAllLeftCallbackRemove != null) {
                    zIMRoomAllLeftCallbackRemove.onRoomAllLeft(roomIdList, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.allRoomLeftCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomOnlineMemberCountQueried(final long handle, final String roomId, final int count, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomOnlineMemberCountQueriedCallback zIMRoomOnlineMemberCountQueriedCallback = zIMImpl.onlineCountQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMRoomOnlineMemberCountQueriedCallback != null) {
                    zIMRoomOnlineMemberCountQueriedCallback.onRoomOnlineMemberCountQueried(roomId, count, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.onlineCountQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onRoomMembersQueried(final long handle, final String roomID, final ArrayList<ZIMGenRoomMemberInfo> memberList, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMRoomMembersQueriedCallback zIMRoomMembersQueriedCallback = zIMImpl.roomMembersQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMRoomMembersQueriedCallback != null) {
                    zIMRoomMembersQueriedCallback.onRoomMembersQueried(roomID, ZIMCovert.getRoomMemberInfos(memberList), ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.roomMembersQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupCreated(final long handle, final ZIMGenFullGroupInfo groupInfo, final ArrayList<ZIMGenGroupMemberInfo> userList, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupCreatedCallback zIMGroupCreatedCallback = zIMImpl.groupCreatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupCreatedCallback != null) {
                    zIMGroupCreatedCallback.onGroupCreated(ZIMCovert.getFullGroupInfo(groupInfo), ZIMCovert.getGroupMemberInfos(userList), ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupCreatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupDismissed(final long handle, final String groupId, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupDismissedCallback zIMGroupDismissedCallback = zIMImpl.groupDismissedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupDismissedCallback != null) {
                    zIMGroupDismissedCallback.onGroupDismissed(groupId, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupDismissedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupJoined(final long handle, final ZIMGenFullGroupInfo groupInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupJoinedCallback zIMGroupJoinedCallback = zIMImpl.groupJoinedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupJoinedCallback != null) {
                    zIMGroupJoinedCallback.onGroupJoined(ZIMCovert.getFullGroupInfo(groupInfo), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupJoinedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupLeft(final long handle, final String groupId, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupLeftCallback zIMGroupLeftCallback = zIMImpl.groupLeftCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupLeftCallback != null) {
                    zIMGroupLeftCallback.onGroupLeft(groupId, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupLeftCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupUsersInvited(final long handle, final String groupId, final ArrayList<ZIMGenGroupMemberInfo> userList, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupUsersInvitedCallback zIMGroupUsersInvitedCallback = zIMImpl.groupUsersInvitedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupUsersInvitedCallback != null) {
                    zIMGroupUsersInvitedCallback.onGroupUsersInvited(groupId, ZIMCovert.getGroupMemberInfos(userList), ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupUsersInvitedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMemberKicked(final long handle, final String groupId, final ArrayList<String> kickedUserIdList, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMemberKickedCallback zIMGroupMemberKickedCallback = zIMImpl.groupMemberKickedoutCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMemberKickedCallback != null) {
                    zIMGroupMemberKickedCallback.onGroupMemberKicked(groupId, kickedUserIdList, ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMemberKickedoutCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupOwnerTransferred(final long handle, final String groupId, final String toUserId, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupOwnerTransferredCallback zIMGroupOwnerTransferredCallback = zIMImpl.groupOwnerTransferredCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupOwnerTransferredCallback != null) {
                    zIMGroupOwnerTransferredCallback.onGroupOwnerTransferred(groupId, toUserId, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupOwnerTransferredCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupNameUpdated(final long handle, final String groupId, final String groupName, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupNameUpdatedCallback zIMGroupNameUpdatedCallback = zIMImpl.groupNameUpdatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupNameUpdatedCallback != null) {
                    zIMGroupNameUpdatedCallback.onGroupNameUpdated(groupId, groupName, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupNameUpdatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupAvatarUrlUpdated(final long handle, final String groupId, final String groupAvatarUrl, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupAvatarUrlUpdatedCallback zIMGroupAvatarUrlUpdatedCallback = zIMImpl.groupAvatarUpdatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupAvatarUrlUpdatedCallback != null) {
                    zIMGroupAvatarUrlUpdatedCallback.onGroupAvatarUrlUpdated(groupId, groupAvatarUrl, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupAvatarUpdatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupAliasUpdated(final long handle, final String groupId, final String groupAlias, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupAliasUpdatedCallback zIMGroupAliasUpdatedCallback = zIMImpl.groupAliasUpdatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupAliasUpdatedCallback != null) {
                    zIMGroupAliasUpdatedCallback.onGroupAliasUpdated(groupId, groupAlias, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupAliasUpdatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupNoticeUpdated(final long handle, final String groupId, final String groupNotice, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupNoticeUpdatedCallback zIMGroupNoticeUpdatedCallback = zIMImpl.groupNoticeUpdatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupNoticeUpdatedCallback != null) {
                    zIMGroupNoticeUpdatedCallback.onGroupNoticeUpdated(groupId, groupNotice, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupNoticeUpdatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMuted(final long handle, final String groupID, final boolean isMute, final ZIMGenGroupMuteInfo info, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMutedCallback zIMGroupMutedCallback = zIMImpl.groupMutedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMutedCallback != null) {
                    zIMGroupMutedCallback.onGroupMuted(groupID, isMute, ZIMCovert.getGroupMuteInfo(info), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMutedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMemberListMuted(final long handle, final String groupID, final boolean isMute, final int duration, final ArrayList<String> mutedMemberIDList, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMembersMutedCallback zIMGroupMembersMutedCallback = zIMImpl.groupMembersMutedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMembersMutedCallback != null) {
                    zIMGroupMembersMutedCallback.onGroupMembersMuted(groupID, isMute, duration, mutedMemberIDList, ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMembersMutedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMemberMutedListQueried(final long handle, final String groupID, final long nextFlag, final ArrayList<ZIMGenGroupMemberInfo> userList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMemberMutedListQueriedCallback zIMGroupMemberMutedListQueriedCallback = zIMImpl.groupMemberMutedListQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMemberMutedListQueriedCallback != null) {
                    zIMGroupMemberMutedListQueriedCallback.onGroupMemberListQueried(groupID, nextFlag, ZIMCovert.getGroupMemberInfos(userList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMemberMutedListQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupInfoQueried(final long handle, final ZIMGenFullGroupInfo groupInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupInfoQueriedCallback zIMGroupInfoQueriedCallback = zIMImpl.groupInfoQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupInfoQueriedCallback != null) {
                    zIMGroupInfoQueriedCallback.onGroupInfoQueried(ZIMCovert.getFullGroupInfo(groupInfo), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupInfoQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupAttributesOperated(final long handle, final String groupId, final ArrayList<String> errorKeys, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupAttributesOperatedCallback zIMGroupAttributesOperatedCallback = zIMImpl.groupAttributesOperatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupAttributesOperatedCallback != null) {
                    zIMGroupAttributesOperatedCallback.onGroupAttributesOperated(groupId, errorKeys, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupAttributesOperatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupAttributesQueried(final long handle, final String group, final HashMap<String, String> groupAttributes, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupAttributesQueriedCallback zIMGroupAttributesQueriedCallback = zIMImpl.groupAttributesQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupAttributesQueriedCallback != null) {
                    zIMGroupAttributesQueriedCallback.onGroupAttributesQueried(group, groupAttributes, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupAttributesQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMemberRoleUpdated(final long handle, final String groupId, final String forUserId, final int role, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMemberRoleUpdatedCallback zIMGroupMemberRoleUpdatedCallback = zIMImpl.groupMemberRoleUpdatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMemberRoleUpdatedCallback != null) {
                    zIMGroupMemberRoleUpdatedCallback.onGroupMemberRoleUpdated(groupId, forUserId, role, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMemberRoleUpdatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMemberNicknameUpdated(final long handle, final String groupId, final String forUserId, final String nickName, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMemberNicknameUpdatedCallback zIMGroupMemberNicknameUpdatedCallback = zIMImpl.groupMemberNicknameUpdatedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMemberNicknameUpdatedCallback != null) {
                    zIMGroupMemberNicknameUpdatedCallback.onGroupMemberNicknameUpdated(groupId, forUserId, nickName, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMemberNicknameUpdatedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMemberInfoQueried(final long handle, final String groupId, final ZIMGenGroupMemberInfo userInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMemberInfoQueriedCallback zIMGroupMemberInfoQueriedCallback = zIMImpl.groupMemberInfoQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMemberInfoQueriedCallback != null) {
                    zIMGroupMemberInfoQueriedCallback.onGroupMemberInfoQueried(groupId, ZIMCovert.getGroupMemberInfo(userInfo), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMemberInfoQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupListQueried(final long handle, final ArrayList<ZIMGenGroup> groupList, final long nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupListQueriedCallback zIMGroupListQueriedCallback = zIMImpl.groupListQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupListQueriedCallback != null) {
                    zIMGroupListQueriedCallback.onGroupListQueried(ZIMCovert.getGroupList(groupList), nextFlag, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupListQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMemberListQueried(final long handle, final String groupId, final ArrayList<ZIMGenGroupMemberInfo> userList, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMemberListQueriedCallback zIMGroupMemberListQueriedCallback = zIMImpl.groupMemberListQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMemberListQueriedCallback != null) {
                    zIMGroupMemberListQueriedCallback.onGroupMemberListQueried(groupId, ZIMCovert.getGroupMemberInfos(userList), nextFlag, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMemberListQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMemberCountQueried(final long handle, final String groupId, final int count, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMemberCountQueriedCallback zIMGroupMemberCountQueriedCallback = zIMImpl.groupMemberCountQueriedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMemberCountQueriedCallback != null) {
                    zIMGroupMemberCountQueriedCallback.onGroupMemberCountQueried(groupId, count, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMemberCountQueriedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMessageReceiptMemberListQueried(final long handle, final String groupid, final ArrayList<ZIMGenGroupMemberInfo> userList, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMGroupMessageReceiptMemberListQueriedCallback zIMGroupMessageReceiptMemberListQueriedCallback = zIMImpl.groupMessageReceiptMemberListCallback.get(Integer.valueOf(sequence));
                    if (zIMGroupMessageReceiptMemberListQueriedCallback != null) {
                        zIMGroupMessageReceiptMemberListQueriedCallback.onGroupMessageReceiptMemberListQueried(groupid, ZIMCovert.getGroupMemberInfos(userList), nextFlag, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.groupMessageReceiptMemberListCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onGroupsSearched(final long handle, final ArrayList<ZIMGenGroupSearchInfo> groupSearchInfoList, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupsSearchedCallback zIMGroupsSearchedCallback = zIMImpl.groupsSearchedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupsSearchedCallback != null) {
                    zIMGroupsSearchedCallback.onGroupsSearched(ZIMCovert.getGenGroupSearchInfos(groupSearchInfoList), nextFlag, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupsSearchedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupMembersSearched(final long handle, final String groupId, final ArrayList<ZIMGenGroupMemberInfo> userList, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupMembersSearchedCallback zIMGroupMembersSearchedCallback = zIMImpl.groupMembersSearchedCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupMembersSearchedCallback != null) {
                    zIMGroupMembersSearchedCallback.onGroupMembersSearched(groupId, ZIMCovert.getGroupMemberInfos(userList), nextFlag, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupMembersSearchedCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onCallInvitationSent(final long handle, final String callId, final ZIMGenCallInvitationSentInfo info, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMCallInvitationSentCallback zIMCallInvitationSentCallback = zIMImpl.callInvitationSentCallback.get(Integer.valueOf(sequence));
                if (zIMCallInvitationSentCallback != null) {
                    zIMCallInvitationSentCallback.onCallInvitationSent(callId, ZIMCovert.getCallInvitationSentInfo(info), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.callInvitationSentCallback.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onCallingInvitationSent(final long handle, final String callId, final ZIMGenCallingInvitationSentInfo info, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMCallingInvitationSentCallback zIMCallingInvitationSentCallback = zIMImpl.callingInvitationSentCallback.get(Integer.valueOf(sequence));
                if (zIMCallingInvitationSentCallback != null) {
                    zIMCallingInvitationSentCallback.onCallingInvitationSent(callId, ZIMCovert.getCallingInvitationSentInfo(info), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.callingInvitationSentCallback.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onCallEndSent(final long handle, final String callId, final ZIMGenCallEndedSentInfo info, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMCallEndSentCallback zIMCallEndSentCallback = zIMImpl.callEndSentCallback.get(Integer.valueOf(sequence));
                if (zIMCallEndSentCallback != null) {
                    zIMCallEndSentCallback.onCallEndSent(callId, ZIMCovert.getCallEndedSentInfo(info), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.callEndSentCallback.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onCallJoinSent(final long handle, final String callId, final ZIMGenCallJoinSentInfo genInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMCallJoinSentCallback zIMCallJoinSentCallback = zIMImpl.callJoinSentCallback.get(Integer.valueOf(sequence));
                if (zIMCallJoinSentCallback != null) {
                    zIMCallJoinSentCallback.onCallJoinSent(callId, ZIMCovert.getCallJoinSentInfo(genInfo), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.callJoinSentCallback.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onCallQuitSent(final long handle, final String callId, final ZIMGenCallQuitSentInfo genInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMCallQuitSentCallback zIMCallQuitSentCallback = zIMImpl.callQuitSentCallback.get(Integer.valueOf(sequence));
                if (zIMCallQuitSentCallback != null) {
                    zIMCallQuitSentCallback.onCallQuitSent(callId, ZIMCovert.getCallQuitSentInfo(genInfo), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.callQuitSentCallback.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onCallCancelSent(final long handle, final String callId, final ArrayList<String> errorInvitees, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMCallCancelSentCallback zIMCallCancelSentCallback = zIMImpl.callCancelSentCallback.get(Integer.valueOf(sequence));
                    if (zIMCallCancelSentCallback != null) {
                        zIMCallCancelSentCallback.onCallCancelSent(callId, errorInvitees, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.callCancelSentCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onCallAcceptanceSent(final long handle, final String callId, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMCallAcceptanceSentCallback zIMCallAcceptanceSentCallback = zIMImpl.callAcceptanceSentCallback.get(Integer.valueOf(sequence));
                    if (zIMCallAcceptanceSentCallback != null) {
                        zIMCallAcceptanceSentCallback.onCallAcceptanceSent(callId, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.callAcceptanceSentCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onCallRejectionSent(final long handle, final String callId, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMCallRejectionSentCallback zIMCallRejectionSentCallback = zIMImpl.callRejectionSentCallback.get(Integer.valueOf(sequence));
                    if (zIMCallRejectionSentCallback != null) {
                        zIMCallRejectionSentCallback.onCallRejectionSent(callId, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.callRejectionSentCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendAdded(final long handle, final ZIMGenFriendInfo friendInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendAddedCallback zIMFriendAddedCallback = zIMImpl.friendAddedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendAddedCallback != null) {
                        zIMFriendAddedCallback.onFriendAddedCallback(ZIMCovert.getZIMFriendInfo(friendInfo), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.friendAddedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendApplicationSent(final long handle, final ZIMGenFriendApplicationInfo application, final ZIMGenError genError, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendApplicationSentCallback zIMFriendApplicationSentCallback = zIMImpl.sendFriendAddedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendApplicationSentCallback != null) {
                        zIMFriendApplicationSentCallback.onFriendApplicationSentCallback(ZIMCovert.getFriendApplicationInfo(application), ZIMCovert.getZimError(genError));
                    }
                    zIMImpl.sendFriendAddedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendsDeleted(final long handle, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError genError, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendsDeletedCallback zIMFriendsDeletedCallback = zIMImpl.friendDeletedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendsDeletedCallback != null) {
                        zIMFriendsDeletedCallback.onFriendsDeletedCallback(ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(genError));
                    }
                    zIMImpl.friendDeletedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendChecked(final long handle, final ArrayList<ZIMGenFriendRelationInfo> friendRelationInfoList, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError genError, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendsRelationCheckedCallback zIMFriendsRelationCheckedCallback = zIMImpl.friendCheckedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendsRelationCheckedCallback != null) {
                        zIMFriendsRelationCheckedCallback.onFriendsChecked(ZIMCovert.getZIMFriendRelationInfo((ArrayList<ZIMGenFriendRelationInfo>) friendRelationInfoList), ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(genError));
                    }
                    zIMImpl.friendCheckedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendAliasUpdated(final long handle, final ZIMGenFriendInfo friendInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendAliasUpdatedCallback zIMFriendAliasUpdatedCallback = zIMImpl.friendAliasCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendAliasUpdatedCallback != null) {
                        zIMFriendAliasUpdatedCallback.onFriendAliasUpdated(ZIMCovert.getZIMFriendInfo(friendInfo), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.friendAliasCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendAttributesUpdated(final long handle, final ZIMGenFriendInfo friendInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendAttributesUpdatedCallback zIMFriendAttributesUpdatedCallback = zIMImpl.friendAttributesUpdatedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendAttributesUpdatedCallback != null) {
                        zIMFriendAttributesUpdatedCallback.onFriendAttributesUpdated(ZIMCovert.getZIMFriendInfo(friendInfo), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.friendAttributesUpdatedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendInfosQueried(final long handle, final ArrayList<ZIMGenFriendInfo> friendInfoList, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendsInfoQueriedCallback zIMFriendsInfoQueriedCallback = zIMImpl.friendQueriedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendsInfoQueriedCallback != null) {
                        zIMFriendsInfoQueriedCallback.onFriendsInfoQueried(ZIMCovert.getZIMFriendInfoArrayList(friendInfoList), ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.friendQueriedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendApplicationAccepted(final long handle, final ZIMGenFriendInfo friendInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendApplicationAcceptedCallback zIMFriendApplicationAcceptedCallback = zIMImpl.friendApplicationAcceptedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendApplicationAcceptedCallback != null) {
                        zIMFriendApplicationAcceptedCallback.onFriendApplicationAccepted(ZIMCovert.getZIMFriendInfo(friendInfo), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.friendApplicationAcceptedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendApplicationRejected(final long handle, final ZIMGenUserInfo zimUserInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendApplicationRejectedCallback zIMFriendApplicationRejectedCallback = zIMImpl.friendApplicationRejectedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendApplicationRejectedCallback != null) {
                        zIMFriendApplicationRejectedCallback.onFriendApplicationRejected(ZIMCovert.getUserInfo(zimUserInfo), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.friendApplicationRejectedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendListQueried(final long handle, final ArrayList<ZIMGenFriendInfo> friendInfoList, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendListQueriedCallback zIMFriendListQueriedCallback = zIMImpl.friendListQueriedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendListQueriedCallback != null) {
                        zIMFriendListQueriedCallback.onFriendListQueried(ZIMCovert.getZIMFriendInfoArrayList(friendInfoList), nextFlag, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.friendListQueriedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendApplicationListQueried(final long handle, final ArrayList<ZIMGenFriendApplicationInfo> infoArrayList, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendApplicationListQueriedCallback zIMFriendApplicationListQueriedCallback = zIMImpl.friendApplicationListQueriedCallback.get(Integer.valueOf(sequence));
                    if (zIMFriendApplicationListQueriedCallback != null) {
                        zIMFriendApplicationListQueriedCallback.onFriendApplicationListQueried(ZIMCovert.getZIMGenFriendApplicationInfoArrayList(infoArrayList), nextFlag, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.friendApplicationListQueriedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onBlacklistUsersAdded(final long handle, final ArrayList<ZIMGenErrorUserInfo> userInfoList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMBlacklistUsersAddedCallback zIMBlacklistUsersAddedCallback = zIMImpl.blacklistUsersAddedCallback.get(Integer.valueOf(sequence));
                    if (zIMBlacklistUsersAddedCallback != null) {
                        zIMBlacklistUsersAddedCallback.onBlacklistUsersAdded(ZIMCovert.getErrorUserInfoList(userInfoList), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.blacklistUsersAddedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onBlacklistUsersRemoved(final long handle, final ArrayList<ZIMGenErrorUserInfo> userInfoList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMBlacklistUsersRemovedCallback zIMBlacklistUsersRemovedCallback = zIMImpl.blacklistUsersRemovedCallback.get(Integer.valueOf(sequence));
                    if (zIMBlacklistUsersRemovedCallback != null) {
                        zIMBlacklistUsersRemovedCallback.onBlacklistUsersRemoved(ZIMCovert.getErrorUserInfoList(userInfoList), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.blacklistUsersRemovedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onBlacklistQueried(final long handle, final ArrayList<ZIMGenUserInfo> blacklist, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMBlacklistQueriedCallback zIMBlacklistQueriedCallback = zIMImpl.blacklistQueriedCallback.get(Integer.valueOf(sequence));
                    if (zIMBlacklistQueriedCallback != null) {
                        zIMBlacklistQueriedCallback.onBlacklistQueried(ZIMCovert.getUserInfoList(blacklist), nextFlag, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.blacklistQueriedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onBlacklistChecked(final long handle, final boolean isUserInBlacklist, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMBlacklistCheckedCallback zIMBlacklistCheckedCallback = zIMImpl.blacklistCheckedCallback.get(Integer.valueOf(sequence));
                    if (zIMBlacklistCheckedCallback != null) {
                        zIMBlacklistCheckedCallback.onBlacklistChecked(isUserInBlacklist, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.blacklistCheckedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendsSearched(final long handle, final ArrayList<ZIMGenFriendInfo> friendInfoList, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFriendsSearchedCallback zIMFriendsSearchedCallback = zIMImpl.friendSearchedCallbackHashMap.get(Integer.valueOf(sequence));
                    if (zIMFriendsSearchedCallback != null) {
                        zIMFriendsSearchedCallback.onFriendsSearched(ZIMCovert.getZIMFriendInfoArrayList(friendInfoList), nextFlag, ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.friendSearchedCallbackHashMap.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFriendInfoUpdated(final long handle, final ArrayList<ZIMGenFriendInfo> friendInfoList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onFriendInfoUpdated(zIMImpl, ZIMCovert.getZIMFriendInfoArrayList(friendInfoList));
            }
        });
    }

    @Override
    public void onFriendListChanged(final long handle, final int action, final ArrayList<ZIMGenFriendInfo> friendInfoList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onFriendListChanged(zIMImpl, ZIMCovert.getZIMFriendInfoArrayList(friendInfoList), ZIMFriendListChangeAction.getZIMFriendListChangeAction(action));
            }
        });
    }

    @Override
    public void onFriendApplicationUpdated(final long handle, final ArrayList<ZIMGenFriendApplicationInfo> friendApplicationList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onFriendApplicationUpdated(zIMImpl, ZIMCovert.getZIMGenFriendApplicationInfoArrayList(friendApplicationList));
            }
        });
    }

    @Override
    public void onBlacklistChanged(final long handle, final int action, final ArrayList<ZIMGenUserInfo> userList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onBlacklistChanged(zIMImpl, ZIMCovert.getUserInfoList(userList), ZIMBlacklistChangeAction.getZIMFriendListChangeAction(action));
            }
        });
    }

    @Override
    public void onFriendApplicationListChange(final long handle, final int action, final ArrayList<ZIMGenFriendApplicationInfo> friendApplicationList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onFriendApplicationListChanged(zIMImpl, ZIMCovert.getZIMGenFriendApplicationInfoArrayList(friendApplicationList), ZIMFriendApplicationListChangeAction.getZIMFriendApplicationListChangeAction(action));
            }
        });
    }

    @Override
    public void onMessageImported(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageImportedCallback zIMMessageImportedCallback = zIMImpl.messageImportedCallback.get(Integer.valueOf(sequence));
                    if (zIMMessageImportedCallback != null) {
                        zIMMessageImportedCallback.onMessageImported(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageImportedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageExported(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMMessageExportedCallback zIMMessageExportedCallback = zIMImpl.messageExportedCallback.get(Integer.valueOf(sequence));
                    if (zIMMessageExportedCallback != null) {
                        zIMMessageExportedCallback.onMessageExported(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.messageExportedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onMessageExportingProgress(final long handle, final long exportedMessageCount, final long totalMessageCount, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMMessageExportedCallback zIMMessageExportedCallback;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMMessageExportedCallback = zIMImpl.messageExportedCallback.get(Integer.valueOf(sequence))) == null) {
                    return;
                }
                zIMMessageExportedCallback.onMessageExportingProgress(exportedMessageCount, totalMessageCount);
            }
        });
    }

    @Override
    public void onMessageImportingProgress(final long handle, final long importedMessageCount, final long totalMessageCount, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMMessageImportedCallback zIMMessageImportedCallback;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMMessageImportedCallback = zIMImpl.messageImportedCallback.get(Integer.valueOf(sequence))) == null) {
                    return;
                }
                zIMMessageImportedCallback.onMessageImportingProgress(importedMessageCount, totalMessageCount);
            }
        });
    }

    @Override
    public void onFileCacheCleared(final long handle, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFileCacheClearedCallback zIMFileCacheClearedCallback = zIMImpl.fileCacheClearedCallback.get(Integer.valueOf(sequence));
                    if (zIMFileCacheClearedCallback != null) {
                        zIMFileCacheClearedCallback.onFileCacheCleared(ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.fileCacheClearedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onFileCacheQueried(final long handle, final ZIMGenFileCacheInfo fileCacheInfo, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl != null) {
                    ZIMFileCacheQueriedCallback zIMFileCacheQueriedCallback = zIMImpl.fileCacheQueriedCallback.get(Integer.valueOf(sequence));
                    if (zIMFileCacheQueriedCallback != null) {
                        zIMFileCacheQueriedCallback.onFileCacheQueried(ZIMCovert.getZIMFileCacheInfo(fileCacheInfo), ZIMCovert.getZimError(errorInfo));
                    }
                    zIMImpl.fileCacheQueriedCallback.remove(Integer.valueOf(sequence));
                }
            }
        });
    }

    @Override
    public void onConnectionStateChanged(final long handle, final int state, final int event, final String extendedData) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onConnectionStateChanged(zIMImpl, ZIMConnectionState.getZIMConnectionState(state), ZIMConnectionEvent.getZIMConnectionEvent(event), ZIMCovert.getJsonObject(extendedData));
            }
        });
    }

    @Override
    public void onError(final long handle, final ZIMGenError errorInfo) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onError(zIMImpl, ZIMCovert.getZimError(errorInfo));
            }
        });
    }

    @Override
    public void onTokenWillExpire(final long handle, final int second) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onTokenWillExpire(zIMImpl, second);
            }
        });
    }

    @Override
    public void onExperimentalEventReceived(final long handle, final String content) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onExperimentalEventReceived(zIMImpl, content);
            }
        });
    }

    @Override
    public void onUserInfoUpdated(final long handle, final ZIMGenFullUserInfo info) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onUserInfoUpdated(zIMImpl, ZIMCovert.getUserInfo(info));
            }
        });
    }

    @Override
    public void onUserRuleUpdated(final long handle, final ZIMGenUserRule userRule) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onUserRuleUpdated(zIMImpl, ZIMCovert.getZIMUserRule(userRule));
            }
        });
    }

    @Override
    public void onUserStatusUpdated(final long handle, final ArrayList<ZIMGenUserStatus> userStatusList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                ArrayList<ZIMUserStatus> arrayList = new ArrayList<>();
                Iterator it = userStatusList.iterator();
                while (it.hasNext()) {
                    arrayList.add(ZIMCovert.getZIMUserStatus((ZIMGenUserStatus) it.next()));
                }
                zIMEventHandler.onUserStatusUpdated(zIMImpl, arrayList);
            }
        });
    }

    @Override
    public void onConversationChanged(final long handle, final ArrayList<ZIMGenConversationChangeInfo> conversationChangeInfoList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onConversationChanged(zIMImpl, ZIMCovert.getConversationChangeInfoList(conversationChangeInfoList));
            }
        });
    }

    @Override
    public void onConversationSyncStateChanged(final long handle, final int state) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onConversationSyncStateChanged(zIMImpl, ZIMConversationSyncState.getZIMConversationSyncState(state));
            }
        });
    }

    @Override
    public void onConversationsAllDeletedEvent(final long handle, final ZIMGenConversationsAllDeletedInfo info) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onConversationsAllDeleted(zIMImpl, ZIMCovert.getConversationsAllDeletedInfo(info));
            }
        });
    }

    @Override
    public void onConversationTotalUnreadMessageCountUpdated(final long handle, final int totalUnreadMessageCount) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onConversationTotalUnreadMessageCountUpdated(zIMImpl, totalUnreadMessageCount);
            }
        });
    }

    @Override
    public void onConversationMessageReceiptChanged(final long handle, final ArrayList<ZIMGenMessageReceiptInfo> infos) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onConversationMessageReceiptChanged(zIMImpl, ZIMCovert.getMessageReceiptInfos(infos));
            }
        });
    }

    @Override
    public void onReceivePeerMessage(final long handle, final ArrayList<ZIMGenMessage> messageList, final String fromUserId) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onReceivePeerMessage(zIMImpl, ZIMCovert.getZIMMessageList(messageList), fromUserId);
            }
        });
    }

    @Override
    public void onPeerMessageReceived(final long handle, final ArrayList<ZIMGenMessage> messageList, final ZIMGenMessageReceivedInfo info, final String fromUserId) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                ArrayList<ZIMMessage> zIMMessageList = ZIMCovert.getZIMMessageList(messageList);
                ZIMMessageReceivedInfo zIMMessageReceivedInfo = new ZIMMessageReceivedInfo();
                zIMMessageReceivedInfo.isOfflineMessage = info.getIsOfflineMessage();
                zIMEventHandler.onPeerMessageReceived(zIMImpl, zIMMessageList, zIMMessageReceivedInfo, fromUserId);
            }
        });
    }

    @Override
    public void onReceiveRoomMessage(final long handle, final ArrayList<ZIMGenMessage> messageList, final String fromRoomID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onReceiveRoomMessage(zIMImpl, ZIMCovert.getZIMMessageList(messageList), fromRoomID);
            }
        });
    }

    @Override
    public void onRoomMessageReceived(final long handle, final ArrayList<ZIMGenMessage> messageList, final ZIMGenMessageReceivedInfo info, final String fromRoomID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                ZIMMessageReceivedInfo zIMMessageReceivedInfo = new ZIMMessageReceivedInfo();
                zIMMessageReceivedInfo.isOfflineMessage = info.getIsOfflineMessage();
                zIMEventHandler.onRoomMessageReceived(zIMImpl, ZIMCovert.getZIMMessageList(messageList), zIMMessageReceivedInfo, fromRoomID);
            }
        });
    }

    @Override
    public void onReceiveGroupMessage(final long handle, final ArrayList<ZIMGenMessage> messageList, final String fromGroupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onReceiveGroupMessage(zIMImpl, ZIMCovert.getZIMMessageList(messageList), fromGroupID);
            }
        });
    }

    @Override
    public void onGroupMessageReceived(final long handle, final ArrayList<ZIMGenMessage> messageList, final ZIMGenMessageReceivedInfo info, final String fromGroupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                ZIMMessageReceivedInfo zIMMessageReceivedInfo = new ZIMMessageReceivedInfo();
                zIMMessageReceivedInfo.isOfflineMessage = info.getIsOfflineMessage();
                zIMEventHandler.onGroupMessageReceived(zIMImpl, ZIMCovert.getZIMMessageList(messageList), zIMMessageReceivedInfo, fromGroupID);
            }
        });
    }

    @Override
    public void onBroadcastMessageReceived(final long handle, final ZIMGenMessage message) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onBroadcastMessageReceived(zIMImpl, ZIMCovert.getZIMMessage(message));
            }
        });
    }

    @Override
    public void onMessageRevokeReceived(final long handle, final ArrayList<ZIMGenMessage> messageList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                ArrayList<ZIMRevokeMessage> arrayList = new ArrayList<>();
                Iterator it = messageList.iterator();
                while (it.hasNext()) {
                    arrayList.add((ZIMRevokeMessage) ZIMCovert.getZIMMessage((ZIMGenMessage) it.next()));
                }
                zIMEventHandler.onMessageRevokeReceived(zIMImpl, arrayList);
            }
        });
    }

    @Override
    public void onEventMessageDeleted(final long handle, final ZIMGenMessageDeletedInfo deletedInfo) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onMessageDeleted(zIMImpl, ZIMCovert.getZIMMessageDeletedInfo(deletedInfo));
            }
        });
    }

    @Override
    public void onMessageReceiptChanged(final long handle, final ArrayList<ZIMGenMessageReceiptInfo> infos) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onMessageReceiptChanged(zIMImpl, ZIMCovert.getMessageReceiptInfos(infos));
            }
        });
    }

    @Override
    public void onMessageSentStatusChanged(final long handle, final ArrayList<ZIMGenMessageSentStatusChangeInfo> messageSentStatusChangeInfoList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onMessageSentStatusChanged(zIMImpl, ZIMCovert.getMessageSentStatusChangeInfos(messageSentStatusChangeInfoList));
            }
        });
    }

    @Override
    public void onMessagePinStatusChanged(final long handle, final ArrayList<ZIMGenMessagePinStatusChangeInfo> changeInfoList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onMessagePinStatusChanged(zIMImpl, ZIMCovert.getMessagePinStatusChangeInfos(changeInfoList));
            }
        });
    }

    @Override
    public void onRoomMemberJoined(final long handle, final ArrayList<ZIMGenUserInfo> memberList, final String roomID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onRoomMemberJoined(zIMImpl, ZIMCovert.getUserInfoList(memberList), roomID);
            }
        });
    }

    @Override
    public void onRoomMemberLeft(final long handle, final ArrayList<ZIMGenUserInfo> memberList, final String roomID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onRoomMemberLeft(zIMImpl, ZIMCovert.getUserInfoList(memberList), roomID);
            }
        });
    }

    @Override
    public void onRoomStateChanged(final long handle, final int state, final int event, final String extendedData, final String roomID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onRoomStateChanged(zIMImpl, ZIMRoomState.getZIMRoomState(state), ZIMRoomEvent.getZIMRoomEvent(event), ZIMCovert.getJsonObject(extendedData), roomID);
            }
        });
    }

    @Override
    public void onRoomAttributesUpdated(final long handle, final ZIMGenRoomAttributesUpdateInfo info, final String roomID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onRoomAttributesUpdated(zIMImpl, ZIMCovert.getRoomAttributesUpdateInfo(info), roomID);
            }
        });
    }

    @Override
    public void onRoomAttributesBatchUpdated(final long handle, final ArrayList<ZIMGenRoomAttributesUpdateInfo> infos, final String roomID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onRoomAttributesBatchUpdated(zIMImpl, ZIMCovert.getRoomAttributesUpdateInfos(infos), roomID);
            }
        });
    }

    @Override
    public void onRoomMemberAttributesUpdated(final long handle, final ArrayList<ZIMGenRoomMemberAttributesUpdateInfo> infos, final ZIMGenRoomOperatedInfo operatedInfo, final String roomID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onRoomMemberAttributesUpdated(zIMImpl, ZIMCovert.getRoomMemberAttributesUpdateInfos(infos), ZIMCovert.getRoomOperatedInfo(operatedInfo), roomID);
            }
        });
    }

    @Override
    public void onGroupStateChanged(final long handle, final int state, final int event, final ZIMGenGroupOperatedInfo operatedInfo, final ZIMGenFullGroupInfo groupInfo) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupStateChanged(zIMImpl, ZIMGroupState.getZIMGroupState(state), ZIMGroupEvent.getZIMGroupEvent(event), ZIMCovert.getGroupOperatedInfo(operatedInfo), ZIMCovert.getFullGroupInfo(groupInfo));
            }
        });
    }

    @Override
    public void onGroupBeInviteModeUpdated(final long handle, final String groupID, final int mode, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupBeInviteModeUpdatedCallback zIMGroupBeInviteModeUpdatedCallback = zIMImpl.groupBeInviteModeUpdateCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupBeInviteModeUpdatedCallback != null) {
                    zIMGroupBeInviteModeUpdatedCallback.onGroupBeInviteModeUpdated(groupID, ZIMGroupBeInviteMode.getZIMGroupBeInviteMode(mode), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupBeInviteModeUpdateCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupInviteModeUpdated(final long handle, final String groupID, final int mode, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupInviteModeUpdatedCallback zIMGroupInviteModeUpdatedCallback = zIMImpl.groupInviteModeUpdateCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupInviteModeUpdatedCallback != null) {
                    zIMGroupInviteModeUpdatedCallback.onGroupInviteModeUpdated(groupID, ZIMGroupInviteMode.getZIMGroupInviteMode(mode), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupInviteModeUpdateCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupVerifyInfoUpdated(final long handle, final ZIMGenGroupVerifyInfo verifyInfo, final ZIMGenGroupOperatedInfo operatedInfo, final String groupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupVerifyInfoUpdated(zIMImpl, ZIMCovert.getZIMGroupVerifyInfo(verifyInfo), ZIMCovert.getGroupOperatedInfo(operatedInfo), groupID);
            }
        });
    }

    @Override
    public void onGroupApplicationListChanged(final long handle, final ArrayList<ZIMGenGroupApplicationInfo> applicationList, final int action) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupApplicationListChanged(zIMImpl, ZIMCovert.getZIMGenGroupApplicationInfoArrayList(applicationList), ZIMGroupApplicationListChangeAction.getZIMGroupApplicationListChangeAction(action));
            }
        });
    }

    @Override
    public void onGroupApplicationUpdated(final long handle, final ArrayList<ZIMGenGroupApplicationInfo> applicationList) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupApplicationUpdated(zIMImpl, ZIMCovert.getZIMGenGroupApplicationInfoArrayList(applicationList));
            }
        });
    }

    @Override
    public void onGroupJoinModeUpdated(final long handle, final String groupID, final int mode, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMGroupJoinModeUpdatedCallback zIMGroupJoinModeUpdatedCallback = zIMImpl.groupJoinModeUpdateCallbacks.get(Integer.valueOf(sequence));
                if (zIMGroupJoinModeUpdatedCallback != null) {
                    zIMGroupJoinModeUpdatedCallback.onGroupJoinModeUpdated(groupID, ZIMGroupJoinMode.getZIMGroupJoinMode(mode), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.groupJoinModeUpdateCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupJoinApplicationAccepted(final long handle, final String groupID, final String userID, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                Object obj = zIMImpl.commonCallbacks.get(Integer.valueOf(sequence));
                if (obj != null) {
                    ((ZIMGroupJoinApplicationAcceptedCallback) obj).onGroupJoinApplicationAccepted(groupID, userID, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.commonCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupJoinApplicationRejected(final long handle, final String groupID, final String userID, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                Object obj = zIMImpl.commonCallbacks.get(Integer.valueOf(sequence));
                if (obj != null) {
                    ((ZIMGroupJoinApplicationRejectedCallback) obj).onGroupJoinApplicationRejected(groupID, userID, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.commonCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupJoinApplicationSent(final long handle, final String groupID, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                Object obj = zIMImpl.commonCallbacks.get(Integer.valueOf(sequence));
                if (obj != null) {
                    ((ZIMGroupJoinApplicationSentCallback) obj).onGroupJoinApplicationSent(groupID, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.commonCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupInviteApplicationsSent(final long handle, final String groupID, final ArrayList<ZIMGenErrorUserInfo> errorUserList, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                Object obj = zIMImpl.commonCallbacks.get(Integer.valueOf(sequence));
                if (obj != null) {
                    ((ZIMGroupInviteApplicationsSentCallback) obj).onGroupInviteApplicationsSent(groupID, ZIMCovert.getErrorUserInfoList(errorUserList), ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.commonCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupInviteApplicationsRejected(final long handle, final String groupID, final String inviterUserID, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                Object obj = zIMImpl.commonCallbacks.get(Integer.valueOf(sequence));
                if (obj != null) {
                    ((ZIMGroupInviteApplicationRejectedCallback) obj).onGroupInviteApplicationRejected(groupID, inviterUserID, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.commonCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupInviteApplicationsAccepted(final long handle, final ZIMGenFullGroupInfo groupInfo, final String inviterUserID, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                Object obj = zIMImpl.commonCallbacks.get(Integer.valueOf(sequence));
                if (obj != null) {
                    ((ZIMGroupInviteApplicationAcceptedCallback) obj).onGroupInviteApplicationAccepted(ZIMCovert.getFullGroupInfo(groupInfo), inviterUserID, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.commonCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onGroupApplicationListQueried(final long handle, final ArrayList<ZIMGenGroupApplicationInfo> applicationList, final int nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                Object obj = zIMImpl.commonCallbacks.get(Integer.valueOf(sequence));
                if (obj != null) {
                    ((ZIMGroupApplicationListQueriedCallback) obj).onGroupApplicationListQueried(ZIMCovert.getZIMGenGroupApplicationInfoArrayList(applicationList), nextFlag, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.commonCallbacks.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onEventGroupNameUpdated(final long handle, final String groupName, final ZIMGenGroupOperatedInfo operatedInfo, final String groupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupNameUpdated(zIMImpl, groupName, ZIMCovert.getGroupOperatedInfo(operatedInfo), groupID);
            }
        });
    }

    @Override
    public void onEventGroupAliasUpdated(final long handle, final String groupAlias, final String operatedUserID, final String groupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupAliasUpdated(zIMImpl, groupAlias, operatedUserID, groupID);
            }
        });
    }

    @Override
    public void onEventGroupAvatarUrlUpdated(final long handle, final String groupAvatarUrl, final ZIMGenGroupOperatedInfo operatedInfo, final String groupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupAvatarUrlUpdated(zIMImpl, groupAvatarUrl, ZIMCovert.getGroupOperatedInfo(operatedInfo), groupID);
            }
        });
    }

    @Override
    public void onEventGroupNoticeUpdated(final long handle, final String groupNotice, final ZIMGenGroupOperatedInfo operatedInfo, final String groupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupNoticeUpdated(zIMImpl, groupNotice, ZIMCovert.getGroupOperatedInfo(operatedInfo), groupID);
            }
        });
    }

    @Override
    public void onGroupAttributesUpdated(final long handle, final ArrayList<ZIMGenGroupAttributesUpdateInfo> infos, final ZIMGenGroupOperatedInfo operatedInfo, final String groupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupAttributesUpdated(zIMImpl, ZIMCovert.getGroupAttributesUpdateInfos(infos), ZIMCovert.getGroupOperatedInfo(operatedInfo), groupID);
            }
        });
    }

    @Override
    public void onGroupMemberStateChanged(final long handle, final int state, final int event, final ArrayList<ZIMGenGroupMemberInfo> userList, final ZIMGenGroupOperatedInfo operatedInfo, final String groupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupMemberStateChanged(zIMImpl, ZIMGroupMemberState.getZIMGroupMemberState(state), ZIMGroupMemberEvent.getZIMGroupMemberEvent(event), ZIMCovert.getGroupMemberInfos(userList), ZIMCovert.getGroupOperatedInfo(operatedInfo), groupID);
            }
        });
    }

    @Override
    public void onGroupMemberInfoUpdated(final long handle, final ArrayList<ZIMGenGroupMemberInfo> userList, final ZIMGenGroupOperatedInfo operatedInfo, final String groupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupMemberInfoUpdated(zIMImpl, ZIMCovert.getGroupMemberInfos(userList), ZIMCovert.getGroupOperatedInfo(operatedInfo), groupID);
            }
        });
    }

    @Override
    public void onGroupMuteInfoUpdated(final long handle, final ZIMGenGroupMuteInfo groupMuteInfo, final ZIMGenGroupOperatedInfo operatedInfo, final String groupID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onGroupMutedInfoUpdated(zIMImpl, ZIMCovert.getGroupMuteInfo(groupMuteInfo), ZIMCovert.getGroupOperatedInfo(operatedInfo), groupID);
            }
        });
    }

    @Override
    public void onCallInvitationReceived(final long handle, final ZIMGenCallInvitationReceivedInfo info, final String callID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onCallInvitationReceived(zIMImpl, ZIMCovert.getCallInvitationReceivedInfo(info), callID);
            }
        });
    }

    @Override
    public void onCallInvitationCancelled(final long handle, final ZIMGenCallInvitationCancelledInfo info, final String callID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onCallInvitationCancelled(zIMImpl, ZIMCovert.getCallInvitationCancelInfo(info), callID);
            }
        });
    }

    @Override
    public void onCallInvitationAccepted(final long handle, final ZIMGenCallInvitationAcceptedInfo info, final String callID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onCallInvitationAccepted(zIMImpl, ZIMCovert.getCallInvitationAcceptedInfo(info), callID);
            }
        });
    }

    @Override
    public void onCallInvitationRejected(final long handle, final ZIMGenCallInvitationRejectedInfo info, final String callID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onCallInvitationRejected(zIMImpl, ZIMCovert.getCallInvitationRejectedInfo(info), callID);
            }
        });
    }

    @Override
    public void onCallInvitationTimeout(final long handle, final ZIMGenCallInvitationTimeoutInfo info, final String callID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                if (info.AlsoInvokeDiscardMethod) {
                    zIMEventHandler.onCallInvitationTimeout(zIMImpl, callID);
                }
                zIMEventHandler.onCallInvitationTimeout(zIMImpl, ZIMCovert.getCallInvitationTimeoutInfo(info), callID);
            }
        });
    }

    @Override
    public void onCallListQueried(final long handle, final ArrayList<ZIMGenCallInfo> callInfos, final long nextFlag, final ZIMGenError errorInfo, final int sequence) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null) {
                    return;
                }
                ZIMCallInvitationListQueriedCallback zIMCallInvitationListQueriedCallback = zIMImpl.callListQueriedCallback.get(Integer.valueOf(sequence));
                if (zIMCallInvitationListQueriedCallback != null) {
                    zIMCallInvitationListQueriedCallback.onCallInvitationListQueried(ZIMCovert.getCallInfos(callInfos), nextFlag, ZIMCovert.getZimError(errorInfo));
                }
                zIMImpl.callListQueriedCallback.remove(Integer.valueOf(sequence));
            }
        });
    }

    @Override
    public void onCallInviteesAnsweredTimeout(final long handle, final ArrayList<String> invitees, final String callID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onCallInviteesAnsweredTimeout(zIMImpl, invitees, callID);
            }
        });
    }

    @Override
    public void onCallUserStateChanged(final long handle, final ZIMGenCallUserStateChangeInfo info) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onCallUserStateChanged(zIMImpl, ZIMCovert.getCallUserStateChangedInfo(info), info.CallId);
            }
        });
    }

    @Override
    public void onCallInvitationCreated(final long handle, final ZIMGenCallInvitationCreatedInfo info, final String callID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onCallInvitationCreated(zIMImpl, ZIMCovert.getCallInvitationCreatedInfo(info), callID);
            }
        });
    }

    @Override
    public void onCallInvitationEnded(final long handle, final ZIMGenCallInvitationEndedInfo info, final String callID) {
        ZIMImpl.uiHandler.post(new Runnable() {
            @Override
            public void run() {
                ZIMEventHandler zIMEventHandler;
                ZIMImpl zIMImpl = ZIMImpl.getInstance(handle);
                if (zIMImpl == null || (zIMEventHandler = zIMImpl.eventHandler) == null) {
                    return;
                }
                zIMEventHandler.onCallInvitationEnded(zIMImpl, ZIMCovert.getCallInvitationEndedInfo(info), callID);
            }
        });
    }
}

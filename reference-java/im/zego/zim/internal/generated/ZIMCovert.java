package im.zego.zim.internal.generated;

import android.util.Log;
import com.caverock.androidsvg.SVGParser;
import im.zego.zim.ZIMSDKInfo;
import im.zego.zim.entity.ZIMAudioMessage;
import im.zego.zim.entity.ZIMAudioMessageLiteInfo;
import im.zego.zim.entity.ZIMBarrageMessage;
import im.zego.zim.entity.ZIMBlacklistQueryConfig;
import im.zego.zim.entity.ZIMCallAcceptConfig;
import im.zego.zim.entity.ZIMCallCancelConfig;
import im.zego.zim.entity.ZIMCallEndConfig;
import im.zego.zim.entity.ZIMCallEndedSentInfo;
import im.zego.zim.entity.ZIMCallInfo;
import im.zego.zim.entity.ZIMCallInvitationAcceptedInfo;
import im.zego.zim.entity.ZIMCallInvitationCancelledInfo;
import im.zego.zim.entity.ZIMCallInvitationCreatedInfo;
import im.zego.zim.entity.ZIMCallInvitationEndedInfo;
import im.zego.zim.entity.ZIMCallInvitationQueryConfig;
import im.zego.zim.entity.ZIMCallInvitationReceivedInfo;
import im.zego.zim.entity.ZIMCallInvitationRejectedInfo;
import im.zego.zim.entity.ZIMCallInvitationSentInfo;
import im.zego.zim.entity.ZIMCallInvitationTimeoutInfo;
import im.zego.zim.entity.ZIMCallInviteConfig;
import im.zego.zim.entity.ZIMCallJoinConfig;
import im.zego.zim.entity.ZIMCallJoinSentInfo;
import im.zego.zim.entity.ZIMCallQuitConfig;
import im.zego.zim.entity.ZIMCallQuitSentInfo;
import im.zego.zim.entity.ZIMCallRejectConfig;
import im.zego.zim.entity.ZIMCallUserInfo;
import im.zego.zim.entity.ZIMCallUserStateChangeInfo;
import im.zego.zim.entity.ZIMCallingInvitationSentInfo;
import im.zego.zim.entity.ZIMCallingInviteConfig;
import im.zego.zim.entity.ZIMCombineMessage;
import im.zego.zim.entity.ZIMCombineMessageLiteInfo;
import im.zego.zim.entity.ZIMCommandMessage;
import im.zego.zim.entity.ZIMConversation;
import im.zego.zim.entity.ZIMConversationBaseInfo;
import im.zego.zim.entity.ZIMConversationChangeInfo;
import im.zego.zim.entity.ZIMConversationDeleteConfig;
import im.zego.zim.entity.ZIMConversationFilterOption;
import im.zego.zim.entity.ZIMConversationQueryConfig;
import im.zego.zim.entity.ZIMConversationSearchConfig;
import im.zego.zim.entity.ZIMConversationSearchInfo;
import im.zego.zim.entity.ZIMConversationTotalUnreadMessageCountQueryConfig;
import im.zego.zim.entity.ZIMConversationsAllDeletedInfo;
import im.zego.zim.entity.ZIMCustomMessage;
import im.zego.zim.entity.ZIMCustomMessageLiteInfo;
import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMFileCacheClearConfig;
import im.zego.zim.entity.ZIMFileCacheInfo;
import im.zego.zim.entity.ZIMFileCacheQueryConfig;
import im.zego.zim.entity.ZIMFileMessage;
import im.zego.zim.entity.ZIMFileMessageLiteInfo;
import im.zego.zim.entity.ZIMFriendAddConfig;
import im.zego.zim.entity.ZIMFriendApplicationAcceptConfig;
import im.zego.zim.entity.ZIMFriendApplicationInfo;
import im.zego.zim.entity.ZIMFriendApplicationListQueryConfig;
import im.zego.zim.entity.ZIMFriendApplicationRejectConfig;
import im.zego.zim.entity.ZIMFriendApplicationSendConfig;
import im.zego.zim.entity.ZIMFriendDeleteConfig;
import im.zego.zim.entity.ZIMFriendInfo;
import im.zego.zim.entity.ZIMFriendListQueryConfig;
import im.zego.zim.entity.ZIMFriendRelationCheckConfig;
import im.zego.zim.entity.ZIMFriendRelationInfo;
import im.zego.zim.entity.ZIMFriendSearchConfig;
import im.zego.zim.entity.ZIMGroup;
import im.zego.zim.entity.ZIMGroupAdvancedConfig;
import im.zego.zim.entity.ZIMGroupApplicationInfo;
import im.zego.zim.entity.ZIMGroupApplicationListQueryConfig;
import im.zego.zim.entity.ZIMGroupAttributesUpdateInfo;
import im.zego.zim.entity.ZIMGroupConversation;
import im.zego.zim.entity.ZIMGroupEnterInfo;
import im.zego.zim.entity.ZIMGroupFullInfo;
import im.zego.zim.entity.ZIMGroupInfo;
import im.zego.zim.entity.ZIMGroupInviteApplicationAcceptConfig;
import im.zego.zim.entity.ZIMGroupInviteApplicationRejectConfig;
import im.zego.zim.entity.ZIMGroupInviteApplicationSendConfig;
import im.zego.zim.entity.ZIMGroupJoinApplicationAcceptConfig;
import im.zego.zim.entity.ZIMGroupJoinApplicationRejectConfig;
import im.zego.zim.entity.ZIMGroupJoinApplicationSendConfig;
import im.zego.zim.entity.ZIMGroupListQueryConfig;
import im.zego.zim.entity.ZIMGroupMemberInfo;
import im.zego.zim.entity.ZIMGroupMemberMuteConfig;
import im.zego.zim.entity.ZIMGroupMemberMutedListQueryConfig;
import im.zego.zim.entity.ZIMGroupMemberQueryConfig;
import im.zego.zim.entity.ZIMGroupMemberSearchConfig;
import im.zego.zim.entity.ZIMGroupMemberSimpleInfo;
import im.zego.zim.entity.ZIMGroupMessageReceiptMemberQueryConfig;
import im.zego.zim.entity.ZIMGroupMuteConfig;
import im.zego.zim.entity.ZIMGroupMuteInfo;
import im.zego.zim.entity.ZIMGroupOperatedInfo;
import im.zego.zim.entity.ZIMGroupSearchConfig;
import im.zego.zim.entity.ZIMGroupSearchInfo;
import im.zego.zim.entity.ZIMGroupVerifyInfo;
import im.zego.zim.entity.ZIMImageMessage;
import im.zego.zim.entity.ZIMImageMessageLiteInfo;
import im.zego.zim.entity.ZIMLoginConfig;
import im.zego.zim.entity.ZIMMediaDownloadConfig;
import im.zego.zim.entity.ZIMMediaMessage;
import im.zego.zim.entity.ZIMMediaMessageLiteInfo;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.entity.ZIMMessageDeleteConfig;
import im.zego.zim.entity.ZIMMessageDeletedInfo;
import im.zego.zim.entity.ZIMMessageEditConfig;
import im.zego.zim.entity.ZIMMessageExportConfig;
import im.zego.zim.entity.ZIMMessageImportConfig;
import im.zego.zim.entity.ZIMMessageLiteInfo;
import im.zego.zim.entity.ZIMMessageMentionedInfo;
import im.zego.zim.entity.ZIMMessagePinConfig;
import im.zego.zim.entity.ZIMMessagePinStatusChangeInfo;
import im.zego.zim.entity.ZIMMessageQueryConfig;
import im.zego.zim.entity.ZIMMessageReaction;
import im.zego.zim.entity.ZIMMessageReactionAddConfig;
import im.zego.zim.entity.ZIMMessageReactionChangeInfo;
import im.zego.zim.entity.ZIMMessageReactionSimpleInfo;
import im.zego.zim.entity.ZIMMessageReactionUserChangeInfo;
import im.zego.zim.entity.ZIMMessageReactionUserFullInfo;
import im.zego.zim.entity.ZIMMessageReactionUserInfo;
import im.zego.zim.entity.ZIMMessageReactionUserQueryConfig;
import im.zego.zim.entity.ZIMMessageReceiptInfo;
import im.zego.zim.entity.ZIMMessageRepliedInfo;
import im.zego.zim.entity.ZIMMessageRepliedListQueryConfig;
import im.zego.zim.entity.ZIMMessageRevokeConfig;
import im.zego.zim.entity.ZIMMessageRootRepliedCountInfo;
import im.zego.zim.entity.ZIMMessageRootRepliedInfo;
import im.zego.zim.entity.ZIMMessageSearchConfig;
import im.zego.zim.entity.ZIMMessageSendConfig;
import im.zego.zim.entity.ZIMMessageSentStatusChangeInfo;
import im.zego.zim.entity.ZIMMultipleMessage;
import im.zego.zim.entity.ZIMMultipleMessageLiteInfo;
import im.zego.zim.entity.ZIMOfflinePushPrivateMessageTemplate;
import im.zego.zim.entity.ZIMPushConfig;
import im.zego.zim.entity.ZIMRevokeMessage;
import im.zego.zim.entity.ZIMRevokeMessageLiteInfo;
import im.zego.zim.entity.ZIMRoomAdvancedConfig;
import im.zego.zim.entity.ZIMRoomAttributesBatchOperationConfig;
import im.zego.zim.entity.ZIMRoomAttributesDeleteConfig;
import im.zego.zim.entity.ZIMRoomAttributesSetConfig;
import im.zego.zim.entity.ZIMRoomAttributesUpdateInfo;
import im.zego.zim.entity.ZIMRoomFullInfo;
import im.zego.zim.entity.ZIMRoomInfo;
import im.zego.zim.entity.ZIMRoomMemberAttributesInfo;
import im.zego.zim.entity.ZIMRoomMemberAttributesOperatedInfo;
import im.zego.zim.entity.ZIMRoomMemberAttributesQueryConfig;
import im.zego.zim.entity.ZIMRoomMemberAttributesSetConfig;
import im.zego.zim.entity.ZIMRoomMemberAttributesUpdateInfo;
import im.zego.zim.entity.ZIMRoomMemberInfo;
import im.zego.zim.entity.ZIMRoomMemberQueryConfig;
import im.zego.zim.entity.ZIMRoomOperatedInfo;
import im.zego.zim.entity.ZIMSelfUserInfo;
import im.zego.zim.entity.ZIMSendingMessageCancelConfig;
import im.zego.zim.entity.ZIMSubscribedUserStatusQueryConfig;
import im.zego.zim.entity.ZIMSystemMessage;
import im.zego.zim.entity.ZIMTextMessage;
import im.zego.zim.entity.ZIMTextMessageLiteInfo;
import im.zego.zim.entity.ZIMTipsMessage;
import im.zego.zim.entity.ZIMTipsMessageChangeInfo;
import im.zego.zim.entity.ZIMTipsMessageGroupChangeInfo;
import im.zego.zim.entity.ZIMTipsMessageGroupMemberChangeInfo;
import im.zego.zim.entity.ZIMTipsMessagePinStatusChangeInfo;
import im.zego.zim.entity.ZIMUserFullInfo;
import im.zego.zim.entity.ZIMUserInfo;
import im.zego.zim.entity.ZIMUserOfflinePushRule;
import im.zego.zim.entity.ZIMUserRule;
import im.zego.zim.entity.ZIMUserStatus;
import im.zego.zim.entity.ZIMUserStatusSubscribeConfig;
import im.zego.zim.entity.ZIMUserStatusSubscription;
import im.zego.zim.entity.ZIMUsersInfoQueryConfig;
import im.zego.zim.entity.ZIMVideoMessage;
import im.zego.zim.entity.ZIMVideoMessageLiteInfo;
import im.zego.zim.entity.ZIMVoIPConfig;
import im.zego.zim.enums.ZIMCallInvitationMode;
import im.zego.zim.enums.ZIMCallState;
import im.zego.zim.enums.ZIMCallUserState;
import im.zego.zim.enums.ZIMConversationEvent;
import im.zego.zim.enums.ZIMConversationNotificationStatus;
import im.zego.zim.enums.ZIMConversationType;
import im.zego.zim.enums.ZIMErrorCode;
import im.zego.zim.enums.ZIMFriendApplicationState;
import im.zego.zim.enums.ZIMFriendApplicationType;
import im.zego.zim.enums.ZIMFriendRelationCheckType;
import im.zego.zim.enums.ZIMGroupApplicationState;
import im.zego.zim.enums.ZIMGroupApplicationType;
import im.zego.zim.enums.ZIMGroupAttributesUpdateAction;
import im.zego.zim.enums.ZIMGroupBeInviteMode;
import im.zego.zim.enums.ZIMGroupEnterType;
import im.zego.zim.enums.ZIMGroupInviteMode;
import im.zego.zim.enums.ZIMGroupJoinMode;
import im.zego.zim.enums.ZIMGroupMessageNotificationStatus;
import im.zego.zim.enums.ZIMGroupMuteMode;
import im.zego.zim.enums.ZIMMessageDeleteType;
import im.zego.zim.enums.ZIMMessageDirection;
import im.zego.zim.enums.ZIMMessageMentionedType;
import im.zego.zim.enums.ZIMMessagePinStatus;
import im.zego.zim.enums.ZIMMessagePriority;
import im.zego.zim.enums.ZIMMessageReactionUserChangeAction;
import im.zego.zim.enums.ZIMMessageReceiptStatus;
import im.zego.zim.enums.ZIMMessageRepliedInfoState;
import im.zego.zim.enums.ZIMMessageRevokeStatus;
import im.zego.zim.enums.ZIMMessageSentStatus;
import im.zego.zim.enums.ZIMMessageType;
import im.zego.zim.enums.ZIMPlatformType;
import im.zego.zim.enums.ZIMRevokeType;
import im.zego.zim.enums.ZIMRoomAttributesUpdateAction;
import im.zego.zim.enums.ZIMTipsMessageChangeInfoType;
import im.zego.zim.enums.ZIMTipsMessageEvent;
import im.zego.zim.enums.ZIMUserOnlineStatus;
import im.zego.zim.enums.ZIMUserRelationType;
import im.zego.zim.event.ZIMMessageReactionsChangedEventResult;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class ZIMCovert {
    static ArrayList<ZIMMessageSentStatusChangeInfo> getMessageSentStatusChangeInfos(ArrayList<ZIMGenMessageSentStatusChangeInfo> genInfos) {
        ArrayList<ZIMMessageSentStatusChangeInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessageSentStatusChangeInfo> it = genInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getMessageSentStatusChangeInfo(it.next()));
        }
        return arrayList;
    }

    static ArrayList<ZIMMessagePinStatusChangeInfo> getMessagePinStatusChangeInfos(ArrayList<ZIMGenMessagePinStatusChangeInfo> genInfos) {
        ArrayList<ZIMMessagePinStatusChangeInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessagePinStatusChangeInfo> it = genInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getMessagePinStatusChangeInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMMessageSentStatusChangeInfo getMessageSentStatusChangeInfo(ZIMGenMessageSentStatusChangeInfo genInfo) {
        ZIMMessageSentStatusChangeInfo zIMMessageSentStatusChangeInfo = new ZIMMessageSentStatusChangeInfo();
        zIMMessageSentStatusChangeInfo.message = getZIMMessage(genInfo.Message);
        zIMMessageSentStatusChangeInfo.status = ZIMMessageSentStatus.getZIMMessageSentStatus(genInfo.Status);
        zIMMessageSentStatusChangeInfo.reason = genInfo.Reason;
        return zIMMessageSentStatusChangeInfo;
    }

    static ZIMMessagePinStatusChangeInfo getMessagePinStatusChangeInfo(ZIMGenMessagePinStatusChangeInfo genInfo) {
        ZIMMessagePinStatusChangeInfo zIMMessagePinStatusChangeInfo = new ZIMMessagePinStatusChangeInfo();
        zIMMessagePinStatusChangeInfo.setMessage(getZIMMessage(genInfo.getMessage()));
        zIMMessagePinStatusChangeInfo.setPinStatus(ZIMMessagePinStatus.getZIMMessagePinStatus(genInfo.getPinStatus()));
        return zIMMessagePinStatusChangeInfo;
    }

    static ArrayList<ZIMConversationChangeInfo> getConversationChangeInfoList(ArrayList<ZIMGenConversationChangeInfo> genConversationChangeInfos) {
        ArrayList<ZIMConversationChangeInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenConversationChangeInfo> it = genConversationChangeInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getConversationChangedInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMConversationChangeInfo getConversationChangedInfo(ZIMGenConversationChangeInfo genInfo) {
        ZIMConversationChangeInfo zIMConversationChangeInfo = new ZIMConversationChangeInfo();
        zIMConversationChangeInfo.conversation = getConversation(genInfo.Conversation);
        zIMConversationChangeInfo.event = ZIMConversationEvent.getZIMConversationEvent(genInfo.Event);
        return zIMConversationChangeInfo;
    }

    static ZIMConversationsAllDeletedInfo getConversationsAllDeletedInfo(ZIMGenConversationsAllDeletedInfo genInfo) {
        ZIMConversationsAllDeletedInfo zIMConversationsAllDeletedInfo = new ZIMConversationsAllDeletedInfo();
        zIMConversationsAllDeletedInfo.count = genInfo.Count;
        return zIMConversationsAllDeletedInfo;
    }

    public static ZIMGenConversationDeleteConfig getGenConversationDeleteConfig(ZIMConversationDeleteConfig config) {
        if (config == null) {
            ZIMGenConversationDeleteConfig zIMGenConversationDeleteConfig = new ZIMGenConversationDeleteConfig();
            zIMGenConversationDeleteConfig.setIsNullFromJava(true);
            return zIMGenConversationDeleteConfig;
        }
        return new ZIMGenConversationDeleteConfig(config.isAlsoDeleteServerConversation, false);
    }

    public static ZIMGenConversationQueryConfig getGenConversationQueryConfig(ZIMConversationQueryConfig config) {
        if (config == null) {
            ZIMGenConversationQueryConfig zIMGenConversationQueryConfig = new ZIMGenConversationQueryConfig();
            zIMGenConversationQueryConfig.setIsNullFromJava(true);
            return zIMGenConversationQueryConfig;
        }
        return new ZIMGenConversationQueryConfig(getGenConversation(config.nextConversation), config.count, false);
    }

    public static ZIMGenConversationFilterOption getGenConversationFilterOption(ZIMConversationFilterOption option) {
        if (option == null) {
            ZIMGenConversationFilterOption zIMGenConversationFilterOption = new ZIMGenConversationFilterOption();
            zIMGenConversationFilterOption.setIsNullFromJava(true);
            return zIMGenConversationFilterOption;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ZIMConversationType> it = option.conversationTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().value()));
        }
        return new ZIMGenConversationFilterOption(option.marks, arrayList, option.isOnlyUnreadConversation, option.pinnedFilter.value(), false);
    }

    public static ZIMGenConversationTotalUnreadCountQueryConfig getGenConversationTotalUnreadCountQueryConfig(ZIMConversationTotalUnreadMessageCountQueryConfig config) {
        if (config == null) {
            ZIMGenConversationTotalUnreadCountQueryConfig zIMGenConversationTotalUnreadCountQueryConfig = new ZIMGenConversationTotalUnreadCountQueryConfig();
            zIMGenConversationTotalUnreadCountQueryConfig.setIsNullFromJava(true);
            return zIMGenConversationTotalUnreadCountQueryConfig;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ZIMConversationType> it = config.conversationTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().value()));
        }
        return new ZIMGenConversationTotalUnreadCountQueryConfig(config.marks, arrayList, false);
    }

    static ArrayList<ZIMConversation> getConversationList(ArrayList<ZIMGenConversation> genConversations) {
        ArrayList<ZIMConversation> arrayList = new ArrayList<>();
        Iterator<ZIMGenConversation> it = genConversations.iterator();
        while (it.hasNext()) {
            arrayList.add(getConversation(it.next()));
        }
        return arrayList;
    }

    static ZIMConversation getConversation(ZIMGenConversation zIMGenConversation) {
        ZIMConversation zIMConversation = new ZIMConversation();
        if (zIMGenConversation.getType() == ZIMConversationType.GROUP.value()) {
            ZIMGroupConversation zIMGroupConversation = new ZIMGroupConversation();
            zIMGroupConversation.mutedExpiredTime = zIMGenConversation.getGroupMutedExpiredTime();
            zIMGroupConversation.isDisabled = zIMGenConversation.getGroupIsDisabled();
            zIMConversation = zIMGroupConversation;
        }
        zIMConversation.conversationID = zIMGenConversation.ConversationID;
        zIMConversation.conversationName = zIMGenConversation.ConversationName;
        zIMConversation.conversationAvatarUrl = zIMGenConversation.ConversationAvatarUrl;
        zIMConversation.conversationAlias = zIMGenConversation.ConversationAlias;
        zIMConversation.lastMessage = getZIMMessage(zIMGenConversation.LastMessage);
        zIMConversation.type = ZIMConversationType.getZIMConversationType(zIMGenConversation.getType());
        zIMConversation.notificationStatus = ZIMConversationNotificationStatus.getZIMConversationNotificationStatus(zIMGenConversation.NotificationStatus);
        zIMConversation.orderKey = zIMGenConversation.OrderKey;
        zIMConversation.unreadMessageCount = zIMGenConversation.UnreadMessageCount;
        zIMConversation.isPinned = zIMGenConversation.IsPinned;
        zIMConversation.pinnedTime = zIMGenConversation.PinnedTime;
        zIMConversation.draft = zIMGenConversation.Draft;
        ArrayList<ZIMMessageMentionedInfo> arrayList = new ArrayList<>();
        for (ZIMGenMessageMentionedInfo zIMGenMessageMentionedInfo : zIMGenConversation.MentionedInfoList) {
            ZIMMessageMentionedInfo zIMMessageMentionedInfo = new ZIMMessageMentionedInfo();
            zIMMessageMentionedInfo.messageID = zIMGenMessageMentionedInfo.getMessageID();
            zIMMessageMentionedInfo.messageSeq = zIMGenMessageMentionedInfo.getMessageSeq();
            zIMMessageMentionedInfo.fromUserID = zIMGenMessageMentionedInfo.getFromUserID();
            zIMMessageMentionedInfo.type = ZIMMessageMentionedType.getZIMMessageMentionedType(zIMGenMessageMentionedInfo.getType());
            arrayList.add(zIMMessageMentionedInfo);
        }
        zIMConversation.mentionedInfoList = arrayList;
        zIMConversation.marks = zIMGenConversation.getMarks();
        return zIMConversation;
    }

    public static ZIMGenConversation getGenConversation(ZIMConversation conversation) {
        int iValue;
        int iValue2;
        if (conversation == null) {
            ZIMGenConversation zIMGenConversation = new ZIMGenConversation();
            zIMGenConversation.setIsNullFromJava(true);
            return zIMGenConversation;
        }
        ArrayList arrayList = new ArrayList();
        if (conversation.mentionedInfoList != null) {
            for (ZIMMessageMentionedInfo zIMMessageMentionedInfo : conversation.mentionedInfoList) {
                ZIMGenMessageMentionedInfo zIMGenMessageMentionedInfo = new ZIMGenMessageMentionedInfo();
                zIMGenMessageMentionedInfo.setMessageID(zIMMessageMentionedInfo.messageID);
                zIMGenMessageMentionedInfo.setFromUserID(zIMMessageMentionedInfo.fromUserID);
                zIMGenMessageMentionedInfo.setType(zIMMessageMentionedInfo.type.value());
                arrayList.add(zIMGenMessageMentionedInfo);
            }
        }
        if (conversation.type == ZIMConversationType.GROUP) {
            ZIMGroupConversation zIMGroupConversation = (ZIMGroupConversation) conversation;
            String str = conversation.conversationID;
            String str2 = conversation.conversationName;
            String str3 = conversation.conversationAvatarUrl;
            String str4 = conversation.conversationAlias;
            long j = zIMGroupConversation.mutedExpiredTime;
            boolean z = zIMGroupConversation.isDisabled;
            int iValue3 = conversation.type.value();
            int i = conversation.unreadMessageCount;
            ZIMGenMessage genMessage = getGenMessage(conversation.lastMessage);
            long j2 = conversation.orderKey;
            if (conversation.notificationStatus == null) {
                iValue2 = ZIMConversationNotificationStatus.UNKNOWN.value();
            } else {
                iValue2 = conversation.notificationStatus.value();
            }
            return new ZIMGenConversation(str, str2, str3, str4, j, z, iValue3, i, genMessage, j2, iValue2, conversation.isPinned, conversation.pinnedTime, arrayList, conversation.draft, conversation.marks, false);
        }
        String str5 = conversation.conversationID;
        String str6 = conversation.conversationName;
        String str7 = conversation.conversationAvatarUrl;
        String str8 = conversation.conversationAlias;
        int iValue4 = conversation.type == null ? ZIMConversationType.UNKNOWN.value() : conversation.type.value();
        int i2 = conversation.unreadMessageCount;
        ZIMGenMessage genMessage2 = getGenMessage(conversation.lastMessage);
        long j3 = conversation.orderKey;
        if (conversation.notificationStatus == null) {
            iValue = ZIMConversationNotificationStatus.UNKNOWN.value();
        } else {
            iValue = conversation.notificationStatus.value();
        }
        return new ZIMGenConversation(str5, str6, str7, str8, 0L, false, iValue4, i2, genMessage2, j3, iValue, conversation.isPinned, conversation.pinnedTime, arrayList, conversation.draft, conversation.marks, false);
    }

    public static ZIMConversationBaseInfo getConversationBaseInfo(ZIMGenConversationBaseInfo info) {
        ZIMConversationBaseInfo zIMConversationBaseInfo = new ZIMConversationBaseInfo();
        zIMConversationBaseInfo.conversationID = info.ConversationID;
        zIMConversationBaseInfo.conversationType = ZIMConversationType.getZIMConversationType(info.getConversationType());
        return zIMConversationBaseInfo;
    }

    static ArrayList<ZIMConversationBaseInfo> getConversationBaseInfoList(ArrayList<ZIMGenConversationBaseInfo> genInfos) {
        ArrayList<ZIMConversationBaseInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenConversationBaseInfo> it = genInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getConversationBaseInfo(it.next()));
        }
        return arrayList;
    }

    public static ZIMGenConversationBaseInfo getGenConversationBaseInfo(ZIMConversationBaseInfo info) {
        if (info == null) {
            ZIMGenConversationBaseInfo zIMGenConversationBaseInfo = new ZIMGenConversationBaseInfo();
            zIMGenConversationBaseInfo.setIsNullFromJava(true);
            return zIMGenConversationBaseInfo;
        }
        return new ZIMGenConversationBaseInfo(info.conversationID, info.conversationType.value(), false);
    }

    public static ArrayList<ZIMGenConversationBaseInfo> zimConversationBaseInfoListToGenConversationBaseInfoList(List<ZIMConversationBaseInfo> conversationBaseInfoArrayList) {
        ArrayList<ZIMGenConversationBaseInfo> arrayList = new ArrayList<>();
        Iterator<ZIMConversationBaseInfo> it = conversationBaseInfoArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(getGenConversationBaseInfo(it.next()));
        }
        return arrayList;
    }

    public static ZIMGenMessageQueryConfig getMessageQueryConfig(ZIMMessageQueryConfig config) {
        if (config == null) {
            ZIMGenMessageQueryConfig zIMGenMessageQueryConfig = new ZIMGenMessageQueryConfig();
            zIMGenMessageQueryConfig.setIsNullFromJava(true);
            return zIMGenMessageQueryConfig;
        }
        return new ZIMGenMessageQueryConfig(getGenMessage(config.nextMessage), config.count, config.reverse, config.isPreferQueryFromServer, false);
    }

    public static ZIMGenMessageDeleteConfig getGenMessageDeleteConfig(ZIMMessageDeleteConfig config) {
        if (config == null) {
            ZIMGenMessageDeleteConfig zIMGenMessageDeleteConfig = new ZIMGenMessageDeleteConfig();
            zIMGenMessageDeleteConfig.setIsNullFromJava(true);
            return zIMGenMessageDeleteConfig;
        }
        return new ZIMGenMessageDeleteConfig(config.isAlsoDeleteServerMessage, false);
    }

    public static ZIMGenMessageReactionUserQueryConfig getGenMessageReactionUserQueryConfig(ZIMMessageReactionUserQueryConfig config) {
        if (config == null) {
            ZIMGenMessageReactionUserQueryConfig zIMGenMessageReactionUserQueryConfig = new ZIMGenMessageReactionUserQueryConfig();
            zIMGenMessageReactionUserQueryConfig.setIsNullFromJava(true);
            return zIMGenMessageReactionUserQueryConfig;
        }
        return new ZIMGenMessageReactionUserQueryConfig(config.nextFlag, config.reactionType, config.count, false);
    }

    public static ZIMGenMessageReactionAddConfig getGenZIMMessageReactionAddConfig(ZIMMessageReactionAddConfig config) {
        if (config == null) {
            ZIMGenMessageReactionAddConfig zIMGenMessageReactionAddConfig = new ZIMGenMessageReactionAddConfig();
            zIMGenMessageReactionAddConfig.setIncreaseSumCount(0);
            zIMGenMessageReactionAddConfig.setIsNullFromJava(true);
            return zIMGenMessageReactionAddConfig;
        }
        return new ZIMGenMessageReactionAddConfig(config.getIncreaseCount(), false);
    }

    public static ZIMMessageDeletedInfo getZIMMessageDeletedInfo(ZIMGenMessageDeletedInfo gen_info) {
        ZIMMessageDeletedInfo zIMMessageDeletedInfo = new ZIMMessageDeletedInfo();
        zIMMessageDeletedInfo.conversationID = gen_info.getConversationID();
        zIMMessageDeletedInfo.conversationType = ZIMConversationType.getZIMConversationType(gen_info.getConversationType());
        zIMMessageDeletedInfo.messageDeleteType = ZIMMessageDeleteType.getZIMMessageDeleteType(gen_info.getMessageDeleteType());
        zIMMessageDeletedInfo.isDeleteConversationAllMessage = gen_info.getIsDeleteConversationAllMessage();
        zIMMessageDeletedInfo.messageList = getZIMMessageList(gen_info.getMessageList());
        return zIMMessageDeletedInfo;
    }

    public static ZIMGenMessageRevokeConfig getGenMessageRevokeConfig(ZIMMessageRevokeConfig config) {
        if (config == null) {
            ZIMGenMessageRevokeConfig zIMGenMessageRevokeConfig = new ZIMGenMessageRevokeConfig();
            zIMGenMessageRevokeConfig.setIsNullFromJava(true);
            return zIMGenMessageRevokeConfig;
        }
        return new ZIMGenMessageRevokeConfig(getGenPushConfig(config.pushConfig), config.revokeExtendedData, config.pushConfig != null, false);
    }

    public static ZIMGenMediaDownloadConfig getGenZIMGenMediaDownloadConfig(ZIMMediaDownloadConfig config) {
        if (config == null) {
            ZIMGenMediaDownloadConfig zIMGenMediaDownloadConfig = new ZIMGenMediaDownloadConfig();
            zIMGenMediaDownloadConfig.setIsNullFromJava(true);
            return zIMGenMediaDownloadConfig;
        }
        return new ZIMGenMediaDownloadConfig(config.messageInfoIndex, false);
    }

    static ArrayList<ZIMMessage> getZIMMessageList(ArrayList<ZIMGenMessage> genMessageArrayList) {
        ArrayList<ZIMMessage> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessage> it = genMessageArrayList.iterator();
        while (it.hasNext()) {
            ZIMMessage zIMMessage = getZIMMessage(it.next());
            if (zIMMessage != null) {
                arrayList.add(zIMMessage);
            }
        }
        return arrayList;
    }

    public static ArrayList<ZIMGenMessage> zimMessageListToGenMessageList(List<ZIMMessage> messageArrayList) {
        ArrayList<ZIMGenMessage> arrayList = new ArrayList<>();
        Iterator<ZIMMessage> it = messageArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(getGenMessage(it.next()));
        }
        return arrayList;
    }

    public static ArrayList<ZIMGenConversation> zimConversationListToGenConversationList(List<ZIMConversation> conversationArrayList) {
        ArrayList<ZIMGenConversation> arrayList = new ArrayList<>();
        Iterator<ZIMConversation> it = conversationArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(getGenConversation(it.next()));
        }
        return arrayList;
    }

    static ZIMMessage getZIMMessage(ZIMGenMessage genMessage) {
        return getZIMMessage(null, genMessage);
    }

    static ZIMMessage getZIMMessage(ZIMMessage zIMMessage, ZIMGenMessage zIMGenMessage) {
        ZIMMessage zIMFileMessage;
        ZIMMessage zIMVideoMessage;
        ZIMMessage zIMImageMessage;
        ZIMMessage zIMAudioMessage;
        ZIMMessage zIMCustomMessage;
        ZIMMessage zIMCombineMessage;
        if (zIMGenMessage.getType() == -1 || zIMGenMessage.IsNull) {
            return null;
        }
        ZIMMessage zIMTipsMessage = zIMMessage;
        ZIMMessage zIMRevokeMessage = zIMMessage;
        ZIMMessage zIMTextMessage = zIMMessage;
        switch (AnonymousClass1.$SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.getZIMMessageType(zIMGenMessage.getType()).ordinal()]) {
            case 1:
                if (zIMMessage == null) {
                    zIMTextMessage = new ZIMTextMessage(zIMGenMessage.getMessage());
                } else if (zIMMessage instanceof ZIMTextMessage) {
                    zIMTextMessage = zIMMessage;
                    ((ZIMTextMessage) zIMMessage).message = zIMGenMessage.getMessage();
                    zIMTextMessage = zIMMessage;
                }
                break;
            case 2:
                if (zIMMessage == null) {
                    zIMTextMessage = new ZIMSystemMessage(zIMGenMessage.getMessage());
                } else if (zIMMessage instanceof ZIMSystemMessage) {
                    zIMTextMessage = zIMMessage;
                    ((ZIMSystemMessage) zIMMessage).message = zIMGenMessage.getMessage();
                    zIMTextMessage = zIMMessage;
                }
                break;
            case 3:
                if (zIMMessage == null) {
                    zIMTextMessage = new ZIMBarrageMessage(zIMGenMessage.getMessage());
                } else if (zIMMessage instanceof ZIMBarrageMessage) {
                    zIMTextMessage = zIMMessage;
                    ((ZIMBarrageMessage) zIMMessage).message = zIMGenMessage.getMessage();
                    zIMTextMessage = zIMMessage;
                }
                break;
            case 4:
                if (zIMMessage == null) {
                    zIMTextMessage = new ZIMCommandMessage(zIMGenMessage.getCommandMessage());
                } else if (zIMMessage instanceof ZIMCommandMessage) {
                    zIMTextMessage = zIMMessage;
                    ((ZIMCommandMessage) zIMMessage).message = zIMGenMessage.getCommandMessage();
                    zIMTextMessage = zIMMessage;
                }
                break;
            case 5:
                if (zIMMessage == null) {
                    zIMRevokeMessage = new ZIMRevokeMessage();
                }
                setPrivateForRevokeMessage(zIMGenMessage, (ZIMRevokeMessage) zIMRevokeMessage);
                zIMTextMessage = zIMRevokeMessage;
                break;
            case 6:
                if (zIMMessage == null) {
                    zIMFileMessage = new ZIMFileMessage(zIMGenMessage.getFileLocalPath());
                } else {
                    ((ZIMFileMessage) zIMMessage).setFileLocalPath(zIMGenMessage.getFileLocalPath());
                    zIMFileMessage = zIMMessage;
                }
                ((ZIMFileMessage) zIMFileMessage).setFileDownloadUrl(zIMGenMessage.getFileUrl());
                setPrivateForMediaMessage(zIMGenMessage, (ZIMMediaMessage) zIMFileMessage);
                zIMTextMessage = zIMFileMessage;
                break;
            case 7:
                if (zIMMessage == null) {
                    zIMVideoMessage = new ZIMVideoMessage(zIMGenMessage.getFileLocalPath(), zIMGenMessage.getMediaDuration());
                } else {
                    ZIMVideoMessage zIMVideoMessage2 = (ZIMVideoMessage) zIMMessage;
                    zIMVideoMessage2.setFileLocalPath(zIMGenMessage.getFileLocalPath());
                    zIMVideoMessage2.setVideoDuration(zIMGenMessage.getMediaDuration());
                    zIMVideoMessage = zIMMessage;
                }
                ZIMVideoMessage zIMVideoMessage3 = (ZIMVideoMessage) zIMVideoMessage;
                zIMVideoMessage3.setFileDownloadUrl(zIMGenMessage.getFileUrl());
                zIMVideoMessage3.setVideoFirstFrameDownloadUrl(zIMGenMessage.getVideoFirstFrameDownloadUrl());
                setPrivateForMediaMessage(zIMGenMessage, (ZIMMediaMessage) zIMVideoMessage);
                setPrivateForVideoMessage(zIMGenMessage, zIMVideoMessage3);
                zIMTextMessage = zIMVideoMessage;
                break;
            case 8:
                if (zIMMessage == null) {
                    zIMImageMessage = new ZIMImageMessage(zIMGenMessage.getFileLocalPath());
                } else {
                    ((ZIMImageMessage) zIMMessage).setFileLocalPath(zIMGenMessage.getFileLocalPath());
                    zIMImageMessage = zIMMessage;
                }
                ZIMImageMessage zIMImageMessage2 = (ZIMImageMessage) zIMImageMessage;
                zIMImageMessage2.setFileDownloadUrl(zIMGenMessage.getFileUrl());
                zIMImageMessage2.setLargeImageDownloadUrl(zIMGenMessage.getLargeImageDownloadUrl());
                zIMImageMessage2.setThumbnailDownloadUrl(zIMGenMessage.getThumbnailDownloadUrl());
                setPrivateForMediaMessage(zIMGenMessage, (ZIMMediaMessage) zIMImageMessage);
                setPrivateForImageMessage(zIMGenMessage, zIMImageMessage2);
                zIMTextMessage = zIMImageMessage;
                break;
            case 9:
                if (zIMMessage == null) {
                    zIMAudioMessage = new ZIMAudioMessage(zIMGenMessage.getFileLocalPath(), zIMGenMessage.getMediaDuration());
                } else {
                    ZIMAudioMessage zIMAudioMessage2 = (ZIMAudioMessage) zIMMessage;
                    zIMAudioMessage2.setFileLocalPath(zIMGenMessage.getFileLocalPath());
                    zIMAudioMessage2.setAudioDuration(zIMGenMessage.getMediaDuration());
                    zIMAudioMessage = zIMMessage;
                }
                ((ZIMAudioMessage) zIMAudioMessage).setFileDownloadUrl(zIMGenMessage.getFileUrl());
                setPrivateForMediaMessage(zIMGenMessage, (ZIMMediaMessage) zIMAudioMessage);
                zIMTextMessage = zIMAudioMessage;
                break;
            case 10:
                if (zIMMessage == null) {
                    zIMCustomMessage = new ZIMCustomMessage(zIMGenMessage.getMessage(), zIMGenMessage.getSubType());
                } else {
                    ZIMCustomMessage zIMCustomMessage2 = (ZIMCustomMessage) zIMMessage;
                    zIMCustomMessage2.message = zIMGenMessage.getMessage();
                    zIMCustomMessage2.subType = zIMGenMessage.getSubType();
                    zIMCustomMessage = zIMMessage;
                }
                ((ZIMCustomMessage) zIMCustomMessage).searchedContent = zIMGenMessage.getSearchedContent();
                zIMTextMessage = zIMCustomMessage;
                break;
            case 11:
                if (zIMMessage == null) {
                    zIMCombineMessage = new ZIMCombineMessage(zIMGenMessage.getCombineTitle(), zIMGenMessage.getCombineSummary(), getZIMMessageList(zIMGenMessage.CombineMessages));
                } else {
                    ZIMCombineMessage zIMCombineMessage2 = (ZIMCombineMessage) zIMMessage;
                    zIMCombineMessage2.title = zIMGenMessage.getCombineTitle();
                    zIMCombineMessage2.summary = zIMGenMessage.getCombineSummary();
                    zIMCombineMessage2.messageList = getZIMMessageList(zIMGenMessage.CombineMessages);
                    zIMCombineMessage = zIMMessage;
                }
                setPrivateParam(zIMCombineMessage, "combineID", zIMGenMessage.getCombineID(), ZIMCombineMessage.class);
                zIMTextMessage = zIMCombineMessage;
                break;
            case 12:
                if (zIMMessage == null) {
                    zIMTipsMessage = new ZIMTipsMessage();
                }
                ZIMTipsMessage zIMTipsMessage2 = (ZIMTipsMessage) zIMTipsMessage;
                zIMTipsMessage2.event = ZIMTipsMessageEvent.getZIMTipsMessageEvent(zIMGenMessage.getTipsEvent());
                if (!zIMGenMessage.getChangeInfo().IsNullFromJava) {
                    zIMTipsMessage2.changeInfo = getZIMTipsMessageChangeInfo(zIMGenMessage.getChangeInfo());
                }
                zIMTipsMessage2.operatedUser = getUserInfo(zIMGenMessage.getOperatedUser());
                ArrayList<ZIMUserInfo> arrayList = new ArrayList<>();
                Iterator<ZIMGenInnerUserInfo> it = zIMGenMessage.getTargetUserList().iterator();
                while (it.hasNext()) {
                    arrayList.add(getUserInfo(it.next()));
                }
                zIMTipsMessage2.targetUserList = arrayList;
                zIMTextMessage = zIMTipsMessage;
                break;
            case 13:
                if (zIMMessage == null) {
                    ZIMMultipleMessage zIMMultipleMessage = new ZIMMultipleMessage();
                    zIMMultipleMessage.setMessageInfoList(getZIMMessageLiteInfoList(zIMGenMessage.getMultipleMessageInfoList()));
                    zIMMultipleMessage.setFailedIndexList(zIMGenMessage.getFailedIndexList());
                    zIMTextMessage = zIMMultipleMessage;
                } else {
                    ZIMMultipleMessage zIMMultipleMessage2 = (ZIMMultipleMessage) zIMMessage;
                    zIMMultipleMessage2.setMessageInfoList(getZIMMessageLiteInfoList(zIMGenMessage.getMultipleMessageInfoList()));
                    zIMMultipleMessage2.setFailedIndexList(zIMGenMessage.getFailedIndexList());
                    zIMTextMessage = zIMMessage;
                }
                break;
            case 14:
                zIMTextMessage = new ZIMMessage(ZIMMessageType.getZIMMessageType(zIMGenMessage.getType()));
                break;
        }
        zIMTextMessage = zIMMessage;
        zIMTextMessage = zIMMessage;
        zIMTextMessage = zIMMessage;
        zIMTextMessage = zIMMessage;
        setPrivateParam(zIMTextMessage, "messageID", Long.valueOf(zIMGenMessage.getMessageID()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "isServerMessage", Boolean.valueOf(zIMGenMessage.getIsServerMessage()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "cbInnerID", zIMGenMessage.getCbInnerID(), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, SVGParser.XML_STYLESHEET_ATTR_TYPE, ZIMMessageType.getZIMMessageType(zIMGenMessage.getType()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "senderUserID", zIMGenMessage.getSenderUserId(), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "timestamp", Long.valueOf(zIMGenMessage.getTimestamp()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "localMessageID", Long.valueOf(zIMGenMessage.getLocalMessageId()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "conversationID", zIMGenMessage.getConversationID(), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "conversationSeq", Long.valueOf(zIMGenMessage.getConversationSeq()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "messageSeq", Long.valueOf(zIMGenMessage.getMessageSeq()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "conversationType", ZIMConversationType.getZIMConversationType(zIMGenMessage.getConversationType()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "orderKey", Long.valueOf(zIMGenMessage.getOrderKey()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "direction", ZIMMessageDirection.getZIMMessageDirection(zIMGenMessage.getDirection()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "sentStatus", ZIMMessageSentStatus.getZIMMessageSentStatus(zIMGenMessage.getSentStatus()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "receiptStatus", ZIMMessageReceiptStatus.getZIMMessageReceiptStatus(zIMGenMessage.getReceiptStatus()), ZIMMessage.class);
        zIMTextMessage.localExtendedData = zIMGenMessage.getLocalExtendedData();
        zIMTextMessage.extendedData = zIMGenMessage.getExtendedData();
        setPrivateParam(zIMTextMessage, "isUserInserted", Boolean.valueOf(zIMGenMessage.getIsUserInsert()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "isBroadcastMessage", Boolean.valueOf(zIMGenMessage.getIsBroadcastMessage()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "reactions", getZIMMessageReactionList(zIMGenMessage.getReactions()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "repliedInfo", getZIMMessageRepliedInfo(zIMGenMessage.getRepliedInfo()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "rootRepliedCount", Integer.valueOf(zIMGenMessage.getRootRepliedCount()), ZIMMessage.class);
        zIMTextMessage.setMentionedUserIDs(zIMGenMessage.getMentionedUserIDs());
        zIMTextMessage.setIsMentionAll(zIMGenMessage.getIsMentionAll());
        setPrivateParam(zIMTextMessage, "editorUserID", zIMGenMessage.getEditorUserID(), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "editedTime", Long.valueOf(zIMGenMessage.getEditedTime()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "isGroupTargetedMessage", Boolean.valueOf(zIMGenMessage.getIsGroupTargetedMessage()), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "pinnedUserID", zIMGenMessage.getPinnedUserID(), ZIMMessage.class);
        setPrivateParam(zIMTextMessage, "pinnedTime", Long.valueOf(zIMGenMessage.getPinnedTime()), ZIMMessage.class);
        return zIMTextMessage;
    }

    static class AnonymousClass1 {
        static final int[] $SwitchMap$im$zego$zim$enums$ZIMMessageType;

        static {
            int[] iArr = new int[ZIMMessageType.values().length];
            $SwitchMap$im$zego$zim$enums$ZIMMessageType = iArr;
            try {
                iArr[ZIMMessageType.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.SYSTEM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.BARRAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.COMMAND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.REVOKE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.FILE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.IMAGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.AUDIO.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.CUSTOM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.COMBINE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.TIPS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.MULTIPLE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.UNKNOWN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public static ZIMGenVoIPConfig getGenVoIPConfig(ZIMVoIPConfig voIPConfig) {
        if (voIPConfig == null) {
            ZIMGenVoIPConfig zIMGenVoIPConfig = new ZIMGenVoIPConfig();
            zIMGenVoIPConfig.setIsNullFromJava(true);
            return zIMGenVoIPConfig;
        }
        return new ZIMGenVoIPConfig(voIPConfig.iOSVoIPHandleType.value(), voIPConfig.iOSVoIPHandleValue, voIPConfig.iOSVoIPHasVideo.booleanValue(), false);
    }

    public static ZIMGenOfflinePushPrivateMessageTemplate getGenPrivateMessageTemplate(ZIMOfflinePushPrivateMessageTemplate privateMessageTemplate) {
        if (privateMessageTemplate == null) {
            ZIMGenOfflinePushPrivateMessageTemplate zIMGenOfflinePushPrivateMessageTemplate = new ZIMGenOfflinePushPrivateMessageTemplate();
            zIMGenOfflinePushPrivateMessageTemplate.setIsNullFromJava(true);
            return zIMGenOfflinePushPrivateMessageTemplate;
        }
        return new ZIMGenOfflinePushPrivateMessageTemplate(privateMessageTemplate.templateID, privateMessageTemplate.titleParameters, privateMessageTemplate.contentParameters, false);
    }

    public static ZIMGenMessageSendConfig sendConfigToGenSendConfig(ZIMMessageSendConfig messageSendConfig) {
        int iValue;
        if (messageSendConfig == null) {
            return new ZIMGenMessageSendConfig();
        }
        ZIMGenMessageSendConfig zIMGenMessageSendConfig = new ZIMGenMessageSendConfig();
        if (messageSendConfig.pushConfig != null) {
            zIMGenMessageSendConfig.setPushConfig(getGenPushConfig(messageSendConfig.pushConfig));
            zIMGenMessageSendConfig.setEnableOfflinePush(true);
        } else {
            zIMGenMessageSendConfig.setEnableOfflinePush(false);
        }
        zIMGenMessageSendConfig.setEnableOfflinePush(messageSendConfig.pushConfig != null);
        if (messageSendConfig.priority == null) {
            iValue = ZIMMessagePriority.UNKNOWN.value();
        } else {
            iValue = messageSendConfig.priority.value();
        }
        zIMGenMessageSendConfig.setPriority(iValue);
        zIMGenMessageSendConfig.setHasReadReceipt(messageSendConfig.hasReceipt);
        zIMGenMessageSendConfig.setIsNotifyMentionedUsers(messageSendConfig.isNotifyMentionedUsers);
        zIMGenMessageSendConfig.setIsRetrySendMessage(messageSendConfig.isRetrySend);
        zIMGenMessageSendConfig.setDisableUnreadMessageCount(messageSendConfig.disableUnreadMessageCount);
        zIMGenMessageSendConfig.setIsAllowMultipleMessagePartialFailed(messageSendConfig.isAllowMultipleMessagePartialFailed);
        return zIMGenMessageSendConfig;
    }

    public static ZIMGenPinMessageConfig getGenZIMPinMessageConfig(ZIMMessagePinConfig config) {
        return new ZIMGenPinMessageConfig(config.disableAutoReplace);
    }

    public static ZIMGenMessageEditConfig editConfigToGenEditConfig(ZIMMessageEditConfig config) {
        return new ZIMGenMessageEditConfig();
    }

    public static ZIMGenSendingMessageCancelConfig cancelSendingMessageConfigToGenCancelSendingMessageConfig(ZIMSendingMessageCancelConfig config) {
        return new ZIMGenSendingMessageCancelConfig();
    }

    private static void setPrivateForImageMessage(ZIMGenMessage innerMessage, ZIMImageMessage message) {
        setPrivateParam(message, "thumbnailLocalPath", innerMessage.getThumbnailLocalPath(), ZIMImageMessage.class);
        setPrivateParam(message, "largeImageLocalPath", innerMessage.getLargeImageLocalPath(), ZIMImageMessage.class);
        setPrivateParam(message, "originalImageWidth", Integer.valueOf(innerMessage.getOriginalImageWidth()), ZIMImageMessage.class);
        setPrivateParam(message, "originalImageHeight", Integer.valueOf(innerMessage.getOriginalImageHeight()), ZIMImageMessage.class);
        setPrivateParam(message, "largeImageWidth", Integer.valueOf(innerMessage.getLargeImageWidth()), ZIMImageMessage.class);
        setPrivateParam(message, "largeImageHeight", Integer.valueOf(innerMessage.getLargeImageHeight()), ZIMImageMessage.class);
        setPrivateParam(message, "thumbnailWidth", Integer.valueOf(innerMessage.getThumbnailWidth()), ZIMImageMessage.class);
        setPrivateParam(message, "thumbnailHeight", Integer.valueOf(innerMessage.getThumbnailHeight()), ZIMImageMessage.class);
    }

    private static void setPrivateForVideoMessage(ZIMGenMessage innerMessage, ZIMVideoMessage message) {
        setPrivateParam(message, "videoFirstFrameLocalPath", innerMessage.getVideoFirstFrameLocalPath(), ZIMVideoMessage.class);
        setPrivateParam(message, "videoFirstFrameWidth", Integer.valueOf(innerMessage.getVideoFirstFrameWidth()), ZIMVideoMessage.class);
        setPrivateParam(message, "videoFirstFrameHeight", Integer.valueOf(innerMessage.getVideoFirstFrameHeight()), ZIMVideoMessage.class);
    }

    private static void setPrivateForMediaMessage(ZIMGenMessage innerMessage, ZIMMediaMessage message) {
        setPrivateParam(message, "fileUID", innerMessage.getFileUid(), ZIMMediaMessage.class);
        setPrivateParam(message, "fileName", innerMessage.getFileName(), ZIMMediaMessage.class);
        setPrivateParam(message, "fileSize", Long.valueOf(innerMessage.getFileSize()), ZIMMediaMessage.class);
    }

    private static void setPrivateForRevokeMessage(ZIMGenMessage innerMessage, ZIMRevokeMessage message) {
        setPrivateParam(message, "revokeType", ZIMRevokeType.getZIMRevokeType(innerMessage.getRevokeType()), ZIMRevokeMessage.class);
        setPrivateParam(message, "revokeStatus", ZIMMessageRevokeStatus.getZIMMessageRevokeStatus(innerMessage.getRevokeStatus()), ZIMRevokeMessage.class);
        setPrivateParam(message, "revokeTimestamp", Long.valueOf(innerMessage.getRevokeTimestamp()), ZIMRevokeMessage.class);
        setPrivateParam(message, "operatedUserID", innerMessage.getOperatedUserId(), ZIMRevokeMessage.class);
        setPrivateParam(message, "originalMessageType", ZIMMessageType.getZIMMessageType(innerMessage.getOriginalMessageType()), ZIMRevokeMessage.class);
        setPrivateParam(message, "originalTextMessageContent", innerMessage.getOriginalTextMessage(), ZIMRevokeMessage.class);
        setPrivateParam(message, "revokeExtendedData", innerMessage.getRevokeExtendedData(), ZIMRevokeMessage.class);
    }

    public static ZIMGenMessage getGenMessage(ZIMMessage zimMessage) {
        int iValue;
        int iValue2;
        int iValue3;
        int iValue4;
        int iValue5;
        int iValue6;
        int iValue7;
        ZIMGenMessage zIMGenMessage = new ZIMGenMessage();
        if (zimMessage == null) {
            zIMGenMessage.setIsNull(true);
            return zIMGenMessage;
        }
        zIMGenMessage.setIsNull(false);
        zIMGenMessage.setIsServerMessage(zimMessage.isServerMessage());
        zIMGenMessage.setOrderKey(zimMessage.getOrderKey());
        zIMGenMessage.setConversationID(zimMessage.getConversationID());
        zIMGenMessage.setType(zimMessage.getType() == null ? ZIMMessageType.UNKNOWN.value() : zimMessage.getType().value());
        zIMGenMessage.setMessageID(zimMessage.getMessageID());
        zIMGenMessage.setConversationSeq(zimMessage.getConversationSeq());
        zIMGenMessage.setMessageSeq(zimMessage.getMessageSeq());
        zIMGenMessage.setSenderUserId(zimMessage.getSenderUserID());
        zIMGenMessage.setTimestamp(zimMessage.getTimestamp());
        zIMGenMessage.setLocalMessageId(zimMessage.getLocalMessageID());
        if (zimMessage.getConversationType() == null) {
            iValue = ZIMConversationType.UNKNOWN.value();
        } else {
            iValue = zimMessage.getConversationType().value();
        }
        zIMGenMessage.setConversationType(iValue);
        if (zimMessage.getDirection() == null) {
            iValue2 = ZIMMessageDirection.SEND.value();
        } else {
            iValue2 = zimMessage.getDirection().value();
        }
        zIMGenMessage.setDirection(iValue2);
        if (zimMessage.getSentStatus() == null) {
            iValue3 = ZIMMessageSentStatus.SENDING.value();
        } else {
            iValue3 = zimMessage.getSentStatus().value();
        }
        zIMGenMessage.setSentStatus(iValue3);
        if (zimMessage.getReceiptStatus() == null) {
            iValue4 = ZIMMessageReceiptStatus.NONE.value();
        } else {
            iValue4 = zimMessage.getReceiptStatus().value();
        }
        zIMGenMessage.setReceiptStatus(iValue4);
        zIMGenMessage.setIsUserInsert(zimMessage.isUserInserted());
        zIMGenMessage.setIsBroadcastMessage(zimMessage.isBroadcastMessage());
        zIMGenMessage.setExtendedData(zimMessage.extendedData);
        zIMGenMessage.setLocalExtendedData(zimMessage.localExtendedData);
        zIMGenMessage.setMentionedUserIDs(zimMessage.getMentionedUserIDs());
        zIMGenMessage.setIsMentionAll(zimMessage.isMentionAll());
        zIMGenMessage.setRootRepliedCount(zimMessage.getRootRepliedCount());
        zIMGenMessage.setCbInnerID(zimMessage.getCbInnerID());
        zIMGenMessage.setRepliedInfo(getGenMessageRepliedInfo(zimMessage.getRepliedInfo()));
        zIMGenMessage.setEditorUserID(zimMessage.getEditorUserID());
        zIMGenMessage.setEditedTime(zimMessage.getEditedTime());
        zIMGenMessage.setIsGroupTargetedMessage(zimMessage.isGroupTargetedMessage());
        zIMGenMessage.setPinnedUserID(zimMessage.getPinnedUserID());
        zIMGenMessage.setPinnedTime(zimMessage.getPinnedTime());
        if (zimMessage instanceof ZIMTextMessage) {
            zIMGenMessage.setMessage(((ZIMTextMessage) zimMessage).message);
            return zIMGenMessage;
        }
        if (zimMessage instanceof ZIMSystemMessage) {
            zIMGenMessage.setMessage(((ZIMSystemMessage) zimMessage).message);
            return zIMGenMessage;
        }
        if (zimMessage instanceof ZIMBarrageMessage) {
            zIMGenMessage.setMessage(((ZIMBarrageMessage) zimMessage).message);
            return zIMGenMessage;
        }
        if (zimMessage instanceof ZIMRevokeMessage) {
            ZIMRevokeMessage zIMRevokeMessage = (ZIMRevokeMessage) zimMessage;
            if (zIMRevokeMessage.getRevokeStatus() == null) {
                iValue5 = ZIMMessageRevokeStatus.UNKNOWN.value();
            } else {
                iValue5 = zIMRevokeMessage.getRevokeStatus().value();
            }
            zIMGenMessage.setRevokeStatus(iValue5);
            if (zIMRevokeMessage.getRevokeType() == null) {
                iValue6 = ZIMRevokeType.UNKNOWN.value();
            } else {
                iValue6 = zIMRevokeMessage.getRevokeType().value();
            }
            zIMGenMessage.setRevokeType(iValue6);
            zIMGenMessage.setRevokeExtendedData(zIMRevokeMessage.getRevokeExtendedData());
            zIMGenMessage.setRevokeTimestamp(zIMRevokeMessage.getRevokeTimestamp());
            zIMGenMessage.setOperatedUserId(zIMRevokeMessage.getOperatedUserID());
            if (zIMRevokeMessage.getOriginalMessageType() == null) {
                iValue7 = ZIMMessageType.UNKNOWN.value();
            } else {
                iValue7 = zIMRevokeMessage.getOriginalMessageType().value();
            }
            zIMGenMessage.setOriginalMessageType(iValue7);
            zIMGenMessage.setOriginalTextMessage(zIMRevokeMessage.getOriginalTextMessageContent());
            return zIMGenMessage;
        }
        if (zimMessage instanceof ZIMCommandMessage) {
            zIMGenMessage.setCommandMessage(((ZIMCommandMessage) zimMessage).message);
            return zIMGenMessage;
        }
        if (zimMessage instanceof ZIMMediaMessage) {
            ZIMMediaMessage zIMMediaMessage = (ZIMMediaMessage) zimMessage;
            zIMGenMessage.setFileLocalPath(zIMMediaMessage.getFileLocalPath());
            zIMGenMessage.setFileUid(zIMMediaMessage.getFileUID());
            zIMGenMessage.setFileUrl(zIMMediaMessage.getFileDownloadUrl());
            zIMGenMessage.setFileName(zIMMediaMessage.getFileName());
            zIMGenMessage.setFileSize(zIMMediaMessage.getFileSize());
            if (zimMessage instanceof ZIMImageMessage) {
                ZIMImageMessage zIMImageMessage = (ZIMImageMessage) zimMessage;
                zIMGenMessage.setLargeImageDownloadUrl(zIMImageMessage.getLargeImageDownloadUrl());
                zIMGenMessage.setLargeImageLocalPath(zIMImageMessage.getLargeImageLocalPath());
                zIMGenMessage.setLargeImageHeight(zIMImageMessage.getLargeImageHeight());
                zIMGenMessage.setLargeImageWidth(zIMImageMessage.getLargeImageWidth());
                zIMGenMessage.setThumbnailDownloadUrl(zIMImageMessage.getThumbnailDownloadUrl());
                zIMGenMessage.setThumbnailLocalPath(zIMImageMessage.getThumbnailLocalPath());
                zIMGenMessage.setThumbnailHeight(zIMImageMessage.getThumbnailHeight());
                zIMGenMessage.setThumbnailWidth(zIMImageMessage.getThumbnailWidth());
                zIMGenMessage.setOriginalImageWidth(zIMImageMessage.getOriginalImageWidth());
                zIMGenMessage.setOriginalImageHeight(zIMImageMessage.getOriginalImageHeight());
                return zIMGenMessage;
            }
            if (zimMessage instanceof ZIMVideoMessage) {
                ZIMVideoMessage zIMVideoMessage = (ZIMVideoMessage) zimMessage;
                zIMGenMessage.setMediaDuration(zIMVideoMessage.getVideoDuration());
                zIMGenMessage.setVideoFirstFrameLocalPath(zIMVideoMessage.getVideoFirstFrameLocalPath());
                zIMGenMessage.setVideoFirstFrameDownloadUrl(zIMVideoMessage.getVideoFirstFrameDownloadUrl());
                zIMGenMessage.setVideoFirstFrameWidth(zIMVideoMessage.getVideoFirstFrameWidth());
                zIMGenMessage.setVideoFirstFrameHeight(zIMVideoMessage.getVideoFirstFrameHeight());
                return zIMGenMessage;
            }
            if (zimMessage instanceof ZIMAudioMessage) {
                zIMGenMessage.setMediaDuration(((ZIMAudioMessage) zimMessage).getAudioDuration());
                return zIMGenMessage;
            }
            boolean z = zimMessage instanceof ZIMFileMessage;
            return zIMGenMessage;
        }
        if (zimMessage instanceof ZIMCustomMessage) {
            ZIMCustomMessage zIMCustomMessage = (ZIMCustomMessage) zimMessage;
            zIMGenMessage.setSubType(zIMCustomMessage.subType);
            zIMGenMessage.setSearchedContent(zIMCustomMessage.searchedContent);
            zIMGenMessage.setMessage(zIMCustomMessage.message);
            return zIMGenMessage;
        }
        if (zimMessage instanceof ZIMCombineMessage) {
            ZIMCombineMessage zIMCombineMessage = (ZIMCombineMessage) zimMessage;
            zIMGenMessage.setCombineMessages(zimMessageListToGenMessageList(zIMCombineMessage.messageList));
            zIMGenMessage.setCombineTitle(zIMCombineMessage.title);
            zIMGenMessage.setCombineSummary(zIMCombineMessage.summary);
            zIMGenMessage.setCombineID(zIMCombineMessage.getCombineID());
            return zIMGenMessage;
        }
        if (zimMessage instanceof ZIMTipsMessage) {
            zIMGenMessage.setType(ZIMMessageType.TIPS.value());
            return zIMGenMessage;
        }
        if (zimMessage instanceof ZIMMultipleMessage) {
            ZIMMultipleMessage zIMMultipleMessage = (ZIMMultipleMessage) zimMessage;
            zIMGenMessage.setMultipleMessageInfoList(getGenMessageLiteInfoList(zIMMultipleMessage.getMessageInfoList()));
            zIMGenMessage.setFailedIndexList(zIMMultipleMessage.getFailedIndexList());
        }
        return zIMGenMessage;
    }

    static ZIMGenMessageLiteInfo getGenMessageLiteInfo(ZIMMessageLiteInfo info) {
        ZIMGenMessageLiteInfo zIMGenMessageLiteInfo = new ZIMGenMessageLiteInfo();
        if (info != null) {
            zIMGenMessageLiteInfo.setIsNullFromJava(false);
            zIMGenMessageLiteInfo.setType(info.type.value());
            if (info instanceof ZIMTextMessageLiteInfo) {
                zIMGenMessageLiteInfo.setMessage(((ZIMTextMessageLiteInfo) info).message);
                return zIMGenMessageLiteInfo;
            }
            if (info instanceof ZIMCustomMessageLiteInfo) {
                ZIMCustomMessageLiteInfo zIMCustomMessageLiteInfo = (ZIMCustomMessageLiteInfo) info;
                zIMGenMessageLiteInfo.setMessage(zIMCustomMessageLiteInfo.message);
                zIMGenMessageLiteInfo.setSearchedContent(zIMCustomMessageLiteInfo.searchedContent);
                zIMGenMessageLiteInfo.setSubType(zIMCustomMessageLiteInfo.subType);
                return zIMGenMessageLiteInfo;
            }
            if (info instanceof ZIMCombineMessageLiteInfo) {
                ZIMCombineMessageLiteInfo zIMCombineMessageLiteInfo = (ZIMCombineMessageLiteInfo) info;
                zIMGenMessageLiteInfo.setTitle(zIMCombineMessageLiteInfo.title);
                zIMGenMessageLiteInfo.setSummary(zIMCombineMessageLiteInfo.summary);
                return zIMGenMessageLiteInfo;
            }
            if (info instanceof ZIMMediaMessageLiteInfo) {
                ZIMMediaMessageLiteInfo zIMMediaMessageLiteInfo = (ZIMMediaMessageLiteInfo) info;
                zIMGenMessageLiteInfo.setFileSize(zIMMediaMessageLiteInfo.fileSize);
                zIMGenMessageLiteInfo.setFileName(zIMMediaMessageLiteInfo.fileName);
                zIMGenMessageLiteInfo.setFileDownloadUrl(zIMMediaMessageLiteInfo.fileDownloadUrl);
                zIMGenMessageLiteInfo.setFileLocalPath(zIMMediaMessageLiteInfo.fileLocalPath);
                if (zIMMediaMessageLiteInfo instanceof ZIMImageMessageLiteInfo) {
                    ZIMImageMessageLiteInfo zIMImageMessageLiteInfo = (ZIMImageMessageLiteInfo) zIMMediaMessageLiteInfo;
                    zIMGenMessageLiteInfo.setOriginalImageWidth(zIMImageMessageLiteInfo.originalImageWidth);
                    zIMGenMessageLiteInfo.setOriginalImageHeight(zIMImageMessageLiteInfo.originalImageHeight);
                    zIMGenMessageLiteInfo.setLargeImageDownloadUrl(zIMImageMessageLiteInfo.largeImageDownloadUrl);
                    zIMGenMessageLiteInfo.setLargeImageLocalPath(zIMImageMessageLiteInfo.largeImageLocalPath);
                    zIMGenMessageLiteInfo.setLargeImageWidth(zIMImageMessageLiteInfo.largeImageWidth);
                    zIMGenMessageLiteInfo.setLargeImageHeight(zIMImageMessageLiteInfo.largeImageHeight);
                    zIMGenMessageLiteInfo.setThumbnailDownloadUrl(zIMImageMessageLiteInfo.thumbnailDownloadUrl);
                    zIMGenMessageLiteInfo.setThumbnailLocalPath(zIMImageMessageLiteInfo.thumbnailLocalPath);
                    zIMGenMessageLiteInfo.setThumbnailWidth(zIMImageMessageLiteInfo.thumbnailWidth);
                    zIMGenMessageLiteInfo.setThumbnailHeight(zIMImageMessageLiteInfo.thumbnailHeight);
                    return zIMGenMessageLiteInfo;
                }
                if (zIMMediaMessageLiteInfo instanceof ZIMAudioMessageLiteInfo) {
                    zIMGenMessageLiteInfo.setAudioDuration(((ZIMAudioMessageLiteInfo) zIMMediaMessageLiteInfo).audioDuration);
                    return zIMGenMessageLiteInfo;
                }
                if (zIMMediaMessageLiteInfo instanceof ZIMVideoMessageLiteInfo) {
                    ZIMVideoMessageLiteInfo zIMVideoMessageLiteInfo = (ZIMVideoMessageLiteInfo) zIMMediaMessageLiteInfo;
                    zIMGenMessageLiteInfo.setVideoDuration(zIMVideoMessageLiteInfo.videoDuration);
                    zIMGenMessageLiteInfo.setVideoFirstFrameDownloadUrl(zIMVideoMessageLiteInfo.videoFirstFrameDownloadUrl);
                    zIMGenMessageLiteInfo.setVideoFirstFrameLocalPath(zIMVideoMessageLiteInfo.videoFirstFrameLocalPath);
                    zIMGenMessageLiteInfo.setVideoFirstFrameWidth(zIMVideoMessageLiteInfo.videoFirstFrameWidth);
                    zIMGenMessageLiteInfo.setVideoFirstFrameHeight(zIMVideoMessageLiteInfo.videoFirstFrameHeight);
                    return zIMGenMessageLiteInfo;
                }
            } else if (info instanceof ZIMMultipleMessageLiteInfo) {
                zIMGenMessageLiteInfo.setMultipleMessageInfoList(getGenMessageLiteInfoList(((ZIMMultipleMessageLiteInfo) info).messageInfoList));
            }
            return zIMGenMessageLiteInfo;
        }
        zIMGenMessageLiteInfo.setIsNullFromJava(true);
        return zIMGenMessageLiteInfo;
    }

    static ArrayList<ZIMGenMessageLiteInfo> getGenMessageLiteInfoList(ArrayList<ZIMMessageLiteInfo> infoList) {
        ArrayList<ZIMGenMessageLiteInfo> arrayList = new ArrayList<>();
        Iterator<ZIMMessageLiteInfo> it = infoList.iterator();
        while (it.hasNext()) {
            arrayList.add(getGenMessageLiteInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMGenMessageRepliedInfo getGenMessageRepliedInfo(ZIMMessageRepliedInfo info) {
        ZIMGenMessageRepliedInfo zIMGenMessageRepliedInfo = new ZIMGenMessageRepliedInfo();
        if (info != null) {
            zIMGenMessageRepliedInfo.setIsNullFromJava(false);
            zIMGenMessageRepliedInfo.setMessageID(info.messageID);
            zIMGenMessageRepliedInfo.setMessageSeq(info.messageSeq);
            zIMGenMessageRepliedInfo.setSenderUserID(info.senderUserID);
            zIMGenMessageRepliedInfo.setSentTime(info.sentTime);
            zIMGenMessageRepliedInfo.setState(info.state.value());
            zIMGenMessageRepliedInfo.setMessageInfo(getGenMessageLiteInfo(info.messageInfo));
            return zIMGenMessageRepliedInfo;
        }
        zIMGenMessageRepliedInfo.setIsNullFromJava(true);
        return zIMGenMessageRepliedInfo;
    }

    static ArrayList<ZIMMessageReceiptInfo> getMessageReceiptInfos(ArrayList<ZIMGenMessageReceiptInfo> genMessageReceiptInfos) {
        ArrayList<ZIMMessageReceiptInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessageReceiptInfo> it = genMessageReceiptInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getMessageReceiptInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMMessageReceiptInfo getMessageReceiptInfo(ZIMGenMessageReceiptInfo genMessageReceiptInfo) {
        ZIMMessageReceiptInfo zIMMessageReceiptInfo = new ZIMMessageReceiptInfo();
        zIMMessageReceiptInfo.messageID = genMessageReceiptInfo.MessageId;
        zIMMessageReceiptInfo.conversationID = genMessageReceiptInfo.getConversationID();
        zIMMessageReceiptInfo.status = ZIMMessageReceiptStatus.getZIMMessageReceiptStatus(genMessageReceiptInfo.getStatus());
        zIMMessageReceiptInfo.readMemberCount = genMessageReceiptInfo.ReadMemberCount;
        zIMMessageReceiptInfo.conversationType = ZIMConversationType.getZIMConversationType(genMessageReceiptInfo.ConversationType);
        zIMMessageReceiptInfo.unreadMemberCount = genMessageReceiptInfo.getUnreadMemberCount();
        zIMMessageReceiptInfo.isSelfOperated = genMessageReceiptInfo.getIsSelfOperated();
        zIMMessageReceiptInfo.readTime = genMessageReceiptInfo.getReadTime();
        return zIMMessageReceiptInfo;
    }

    static ArrayList<ZIMMessageReaction> getZIMMessageReactionList(ArrayList<ZIMGenMessageReaction> genMessageReactions) {
        ArrayList<ZIMMessageReaction> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessageReaction> it = genMessageReactions.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMMessageReaction(it.next()));
        }
        return arrayList;
    }

    static ZIMMessageRepliedInfo getZIMMessageRepliedInfo(ZIMGenMessageRepliedInfo genInfo) {
        if (genInfo.IsNullFromJava) {
            return null;
        }
        ZIMMessageRepliedInfo zIMMessageRepliedInfo = new ZIMMessageRepliedInfo();
        zIMMessageRepliedInfo.senderUserID = genInfo.getSenderUserID();
        zIMMessageRepliedInfo.sentTime = genInfo.getSentTime();
        zIMMessageRepliedInfo.messageID = genInfo.getMessageID();
        zIMMessageRepliedInfo.messageSeq = genInfo.getMessageSeq();
        zIMMessageRepliedInfo.state = ZIMMessageRepliedInfoState.getZIMMessageRepliedInfoState(genInfo.getState());
        zIMMessageRepliedInfo.messageInfo = getZIMMessageLiteInfo(genInfo.getMessageInfo());
        return zIMMessageRepliedInfo;
    }

    static ZIMMessageLiteInfo getZIMMessageLiteInfo(ZIMGenMessageLiteInfo messageInfo) {
        if (messageInfo.IsNullFromJava) {
            return null;
        }
        ZIMMessageLiteInfo zIMMessageLiteInfo = new ZIMMessageLiteInfo();
        int i = AnonymousClass1.$SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.getZIMMessageType(messageInfo.getType()).ordinal()];
        if (i == 1) {
            ZIMTextMessageLiteInfo zIMTextMessageLiteInfo = new ZIMTextMessageLiteInfo();
            zIMTextMessageLiteInfo.message = messageInfo.getMessage();
            return zIMTextMessageLiteInfo;
        }
        if (i != 13) {
            switch (i) {
                case 5:
                    return new ZIMRevokeMessageLiteInfo();
                case 6:
                    ZIMFileMessageLiteInfo zIMFileMessageLiteInfo = new ZIMFileMessageLiteInfo();
                    zIMFileMessageLiteInfo.fileSize = messageInfo.getFileSize();
                    zIMFileMessageLiteInfo.fileName = messageInfo.getFileName();
                    zIMFileMessageLiteInfo.fileLocalPath = messageInfo.getFileLocalPath();
                    zIMFileMessageLiteInfo.fileDownloadUrl = messageInfo.getFileDownloadUrl();
                    return zIMFileMessageLiteInfo;
                case 7:
                    ZIMVideoMessageLiteInfo zIMVideoMessageLiteInfo = new ZIMVideoMessageLiteInfo();
                    zIMVideoMessageLiteInfo.fileSize = messageInfo.getFileSize();
                    zIMVideoMessageLiteInfo.fileName = messageInfo.getFileName();
                    zIMVideoMessageLiteInfo.fileLocalPath = messageInfo.getFileLocalPath();
                    zIMVideoMessageLiteInfo.fileDownloadUrl = messageInfo.getFileDownloadUrl();
                    zIMVideoMessageLiteInfo.videoDuration = messageInfo.getVideoDuration();
                    zIMVideoMessageLiteInfo.videoFirstFrameDownloadUrl = messageInfo.getVideoFirstFrameDownloadUrl();
                    zIMVideoMessageLiteInfo.videoFirstFrameHeight = messageInfo.getVideoFirstFrameHeight();
                    zIMVideoMessageLiteInfo.videoFirstFrameWidth = messageInfo.getVideoFirstFrameWidth();
                    zIMVideoMessageLiteInfo.videoFirstFrameLocalPath = messageInfo.getVideoFirstFrameLocalPath();
                    return zIMVideoMessageLiteInfo;
                case 8:
                    ZIMImageMessageLiteInfo zIMImageMessageLiteInfo = new ZIMImageMessageLiteInfo();
                    zIMImageMessageLiteInfo.fileSize = messageInfo.getFileSize();
                    zIMImageMessageLiteInfo.fileName = messageInfo.getFileName();
                    zIMImageMessageLiteInfo.fileLocalPath = messageInfo.getFileLocalPath();
                    zIMImageMessageLiteInfo.fileDownloadUrl = messageInfo.getFileDownloadUrl();
                    zIMImageMessageLiteInfo.originalImageWidth = messageInfo.getOriginalImageWidth();
                    zIMImageMessageLiteInfo.originalImageHeight = messageInfo.getOriginalImageHeight();
                    zIMImageMessageLiteInfo.thumbnailLocalPath = messageInfo.getThumbnailLocalPath();
                    zIMImageMessageLiteInfo.thumbnailDownloadUrl = messageInfo.getThumbnailDownloadUrl();
                    zIMImageMessageLiteInfo.thumbnailHeight = messageInfo.getThumbnailHeight();
                    zIMImageMessageLiteInfo.thumbnailWidth = messageInfo.getThumbnailWidth();
                    zIMImageMessageLiteInfo.largeImageLocalPath = messageInfo.getLargeImageLocalPath();
                    zIMImageMessageLiteInfo.largeImageDownloadUrl = messageInfo.getLargeImageDownloadUrl();
                    zIMImageMessageLiteInfo.largeImageWidth = messageInfo.getLargeImageWidth();
                    zIMImageMessageLiteInfo.largeImageHeight = messageInfo.getLargeImageHeight();
                    return zIMImageMessageLiteInfo;
                case 9:
                    ZIMAudioMessageLiteInfo zIMAudioMessageLiteInfo = new ZIMAudioMessageLiteInfo();
                    zIMAudioMessageLiteInfo.fileSize = messageInfo.getFileSize();
                    zIMAudioMessageLiteInfo.fileName = messageInfo.getFileName();
                    zIMAudioMessageLiteInfo.fileLocalPath = messageInfo.getFileLocalPath();
                    zIMAudioMessageLiteInfo.fileDownloadUrl = messageInfo.getFileDownloadUrl();
                    zIMAudioMessageLiteInfo.audioDuration = messageInfo.getAudioDuration();
                    return zIMAudioMessageLiteInfo;
                case 10:
                    ZIMCustomMessageLiteInfo zIMCustomMessageLiteInfo = new ZIMCustomMessageLiteInfo();
                    zIMCustomMessageLiteInfo.message = messageInfo.getMessage();
                    zIMCustomMessageLiteInfo.searchedContent = messageInfo.getSearchedContent();
                    zIMCustomMessageLiteInfo.subType = messageInfo.getSubType();
                    return zIMCustomMessageLiteInfo;
                case 11:
                    ZIMCombineMessageLiteInfo zIMCombineMessageLiteInfo = new ZIMCombineMessageLiteInfo();
                    zIMCombineMessageLiteInfo.title = messageInfo.getTitle();
                    zIMCombineMessageLiteInfo.summary = messageInfo.getSummary();
                    return zIMCombineMessageLiteInfo;
                default:
                    return zIMMessageLiteInfo;
            }
        }
        ZIMMultipleMessageLiteInfo zIMMultipleMessageLiteInfo = new ZIMMultipleMessageLiteInfo();
        zIMMultipleMessageLiteInfo.messageInfoList = getZIMMessageLiteInfoList(messageInfo.getMultipleMessageInfoList());
        return zIMMultipleMessageLiteInfo;
    }

    static ArrayList<ZIMMessageLiteInfo> getZIMMessageLiteInfoList(ArrayList<ZIMGenMessageLiteInfo> genInfoList) {
        ArrayList<ZIMMessageLiteInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessageLiteInfo> it = genInfoList.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMMessageLiteInfo(it.next()));
        }
        return arrayList;
    }

    static ArrayList<ZIMMessageRootRepliedCountInfo> getZIMMessageRootRepliedCountInfoList(ArrayList<ZIMGenMessageRootRepliedCountInfo> genMessageRootRepliedCountInfos) {
        ArrayList<ZIMMessageRootRepliedCountInfo> arrayList = new ArrayList<>();
        for (ZIMGenMessageRootRepliedCountInfo zIMGenMessageRootRepliedCountInfo : genMessageRootRepliedCountInfos) {
            ZIMMessageRootRepliedCountInfo zIMMessageRootRepliedCountInfo = new ZIMMessageRootRepliedCountInfo();
            zIMMessageRootRepliedCountInfo.count = zIMGenMessageRootRepliedCountInfo.getCount();
            zIMMessageRootRepliedCountInfo.messageID = zIMGenMessageRootRepliedCountInfo.getMessageID();
            zIMMessageRootRepliedCountInfo.conversationID = zIMGenMessageRootRepliedCountInfo.getConversationID();
            zIMMessageRootRepliedCountInfo.conversationType = ZIMConversationType.getZIMConversationType(zIMGenMessageRootRepliedCountInfo.getConversationType());
            arrayList.add(zIMMessageRootRepliedCountInfo);
        }
        return arrayList;
    }

    static ZIMMessageRootRepliedInfo getZIMMessageRootRepliedInfo(ZIMGenMessageRootRepliedInfo genRootRepliedInfo) {
        ZIMMessageRootRepliedInfo zIMMessageRootRepliedInfo = new ZIMMessageRootRepliedInfo();
        zIMMessageRootRepliedInfo.state = ZIMMessageRepliedInfoState.getZIMMessageRepliedInfoState(genRootRepliedInfo.getState());
        zIMMessageRootRepliedInfo.senderUserID = genRootRepliedInfo.getSenderUserID();
        zIMMessageRootRepliedInfo.sentTime = genRootRepliedInfo.getSentTime();
        zIMMessageRootRepliedInfo.repliedCount = genRootRepliedInfo.getRepliedCount();
        zIMMessageRootRepliedInfo.message = getZIMMessage(genRootRepliedInfo.getMessage());
        return zIMMessageRootRepliedInfo;
    }

    static ZIMMessageReaction getZIMMessageReaction(ZIMGenMessageReaction genMessageReaction) {
        ZIMMessageReaction zIMMessageReaction = new ZIMMessageReaction();
        zIMMessageReaction.reactionType = genMessageReaction.ReactionType;
        zIMMessageReaction.messageID = genMessageReaction.MessageID;
        zIMMessageReaction.conversationID = genMessageReaction.ConversationID;
        zIMMessageReaction.totalCount = genMessageReaction.TotalCount;
        zIMMessageReaction.conversationType = ZIMConversationType.getZIMConversationType(genMessageReaction.ConversationType);
        zIMMessageReaction.userList = getZIMMessageReactionUserList(genMessageReaction.getUserInfos());
        zIMMessageReaction.isSelfIncluded = genMessageReaction.getSelfIncluded();
        zIMMessageReaction.sumCount = genMessageReaction.getReactionSumCount();
        return zIMMessageReaction;
    }

    static ZIMMessageReactionSimpleInfo getZIMMessageReactionSimpleInfo(ZIMGenMessageReactionSimpleInfo genInfo) {
        ZIMMessageReactionSimpleInfo zIMMessageReactionSimpleInfo = new ZIMMessageReactionSimpleInfo();
        zIMMessageReactionSimpleInfo.setReactionType(genInfo.getReactionType());
        zIMMessageReactionSimpleInfo.setSumCount(genInfo.getReactionSumCount());
        return zIMMessageReactionSimpleInfo;
    }

    static ArrayList<ZIMMessageReactionSimpleInfo> getZIMMessageReactionSimpleInfoList(ArrayList<ZIMGenMessageReactionSimpleInfo> genInfoList) {
        ArrayList<ZIMMessageReactionSimpleInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessageReactionSimpleInfo> it = genInfoList.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMMessageReactionSimpleInfo(it.next()));
        }
        return arrayList;
    }

    static ArrayList<ZIMMessageReactionUserInfo> getZIMMessageReactionUserList(ArrayList<ZIMGenMessageReactionUserInfo> genUserInfos) {
        ArrayList<ZIMMessageReactionUserInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessageReactionUserInfo> it = genUserInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMMessageReactionUserInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMMessageReactionUserInfo getZIMMessageReactionUserInfo(ZIMGenMessageReactionUserInfo genUserInfo) {
        ZIMMessageReactionUserInfo zIMMessageReactionUserInfo = new ZIMMessageReactionUserInfo();
        zIMMessageReactionUserInfo.userID = genUserInfo.UserID;
        return zIMMessageReactionUserInfo;
    }

    static ArrayList<ZIMMessageReactionUserFullInfo> getZIMMessageReactionUserFullInfoList(ArrayList<ZIMGenMessageReactionUserFullInfo> genUserInfos) {
        ArrayList<ZIMMessageReactionUserFullInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessageReactionUserFullInfo> it = genUserInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMMessageReactionUserFullInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMMessageReactionUserFullInfo getZIMMessageReactionUserFullInfo(ZIMGenMessageReactionUserFullInfo genUserInfo) {
        ZIMMessageReactionUserFullInfo zIMMessageReactionUserFullInfo = new ZIMMessageReactionUserFullInfo();
        zIMMessageReactionUserFullInfo.setUserID(genUserInfo.getUserID());
        zIMMessageReactionUserFullInfo.setReactions(getZIMMessageReactionSimpleInfoList(genUserInfo.getReactions()));
        return zIMMessageReactionUserFullInfo;
    }

    static ZIMMessageReactionUserChangeInfo getZIMMessageReactionUserChangeInfo(ZIMGenMessageReactionUserChangeInfo genChangeInfo) {
        ZIMMessageReactionUserChangeInfo zIMMessageReactionUserChangeInfo = new ZIMMessageReactionUserChangeInfo();
        zIMMessageReactionUserChangeInfo.setUserID(genChangeInfo.getUserID());
        zIMMessageReactionUserChangeInfo.setReactionType(genChangeInfo.getReactionType());
        zIMMessageReactionUserChangeInfo.setAction(ZIMMessageReactionUserChangeAction.getZIMMessageReactionUserChangeAction(genChangeInfo.getAction()));
        zIMMessageReactionUserChangeInfo.setSumCount(genChangeInfo.getReactionSumCount());
        return zIMMessageReactionUserChangeInfo;
    }

    static ArrayList<ZIMMessageReactionUserChangeInfo> getZIMMessageReactionUserChangeInfoList(ArrayList<ZIMGenMessageReactionUserChangeInfo> genChangeInfoList) {
        ArrayList<ZIMMessageReactionUserChangeInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessageReactionUserChangeInfo> it = genChangeInfoList.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMMessageReactionUserChangeInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMMessageReactionChangeInfo getZIMMessageReactionChangeInfo(ZIMGenMessageReactionChangeInfo genChangeInfo) {
        ZIMMessageReactionChangeInfo zIMMessageReactionChangeInfo = new ZIMMessageReactionChangeInfo();
        zIMMessageReactionChangeInfo.setMessage(getZIMMessage(genChangeInfo.getMessage()));
        zIMMessageReactionChangeInfo.setUserChangeInfoList(getZIMMessageReactionUserChangeInfoList(genChangeInfo.getUserChangeInfoList()));
        return zIMMessageReactionChangeInfo;
    }

    static ArrayList<ZIMMessageReactionChangeInfo> getZIMMessageReactionChangeInfoList(ArrayList<ZIMGenMessageReactionChangeInfo> genChangeInfoList) {
        ArrayList<ZIMMessageReactionChangeInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenMessageReactionChangeInfo> it = genChangeInfoList.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMMessageReactionChangeInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMError getZimError(ZIMGenError error) {
        ZIMError zIMError = new ZIMError();
        zIMError.code = ZIMErrorCode.getZIMErrorCode(error.getErrorCode());
        zIMError.message = error.getMessage();
        return zIMError;
    }

    static ZIMFileCacheInfo getZIMFileCacheInfo(ZIMGenFileCacheInfo zimGenFileCacheInfo) {
        ZIMFileCacheInfo zIMFileCacheInfo = new ZIMFileCacheInfo();
        zIMFileCacheInfo.totalFileSize = zimGenFileCacheInfo.TotalFileSize;
        return zIMFileCacheInfo;
    }

    static ArrayList<ZIMUserInfo> getUserInfoList(ArrayList<ZIMGenUserInfo> genUserInfos) {
        ArrayList<ZIMUserInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenUserInfo> it = genUserInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getUserInfo(it.next()));
        }
        return arrayList;
    }

    static ArrayList<ZIMErrorUserInfo> getErrorUserInfoList(ArrayList<ZIMGenErrorUserInfo> genErrorUserInfos) {
        ArrayList<ZIMErrorUserInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenErrorUserInfo> it = genErrorUserInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getErrorUserInfo(it.next()));
        }
        return arrayList;
    }

    public static ArrayList<ZIMFriendRelationInfo> getZIMFriendRelationInfo(ArrayList<ZIMGenFriendRelationInfo> zimGenFriendRelationInfoArrayList) {
        ArrayList<ZIMFriendRelationInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenFriendRelationInfo> it = zimGenFriendRelationInfoArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMFriendRelationInfo(it.next()));
        }
        return arrayList;
    }

    private static ZIMFriendRelationInfo getZIMFriendRelationInfo(ZIMGenFriendRelationInfo zimGenFriendRelationInfo) {
        ZIMFriendRelationInfo zIMFriendRelationInfo = new ZIMFriendRelationInfo();
        zIMFriendRelationInfo.type = ZIMUserRelationType.getZIMUserRelationType(zimGenFriendRelationInfo.getType());
        zIMFriendRelationInfo.userID = zimGenFriendRelationInfo.getUserID();
        return zIMFriendRelationInfo;
    }

    public static ZIMFriendApplicationInfo getFriendApplicationInfo(ZIMGenFriendApplicationInfo genApplicationInfo) {
        ZIMFriendApplicationInfo zIMFriendApplicationInfo = new ZIMFriendApplicationInfo();
        zIMFriendApplicationInfo.applyUser = getUserInfo(genApplicationInfo.ApplyUser);
        zIMFriendApplicationInfo.wording = genApplicationInfo.Wording;
        zIMFriendApplicationInfo.updateTime = genApplicationInfo.UpdateTime;
        zIMFriendApplicationInfo.createTime = genApplicationInfo.CreateTime;
        zIMFriendApplicationInfo.type = ZIMFriendApplicationType.getZIMFriendApplicationType(genApplicationInfo.getType());
        zIMFriendApplicationInfo.state = ZIMFriendApplicationState.getZIMFriendApplicationState(genApplicationInfo.getState());
        return zIMFriendApplicationInfo;
    }

    static ZIMErrorUserInfo getErrorUserInfo(ZIMGenErrorUserInfo genErrorUserInfo) {
        ZIMErrorUserInfo zIMErrorUserInfo = new ZIMErrorUserInfo();
        zIMErrorUserInfo.userID = genErrorUserInfo.UserId;
        zIMErrorUserInfo.reason = genErrorUserInfo.getReason();
        return zIMErrorUserInfo;
    }

    static ArrayList<ZIMUserFullInfo> getFullUserInfoList(ArrayList<ZIMGenFullUserInfo> genFullUserInfos) {
        ArrayList<ZIMUserFullInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenFullUserInfo> it = genFullUserInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getUserInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMUserFullInfo getUserInfo(ZIMGenFullUserInfo userInfo) {
        ZIMUserFullInfo zIMUserFullInfo = new ZIMUserFullInfo();
        zIMUserFullInfo.baseInfo = getUserInfo(userInfo.BaseInfo);
        zIMUserFullInfo.userAvatarUrl = userInfo.UserAvatarUrl;
        zIMUserFullInfo.extendedData = userInfo.getExtendedData();
        return zIMUserFullInfo;
    }

    static ZIMUserInfo getUserInfo(ZIMGenUserInfo userInfo) {
        ZIMUserInfo zIMUserInfo = new ZIMUserInfo();
        zIMUserInfo.userName = userInfo.getUserName();
        zIMUserInfo.userID = userInfo.getUserID();
        zIMUserInfo.userAvatarUrl = userInfo.getUserAvatarUrl();
        zIMUserInfo.userExtendedData = userInfo.getUserExtendedData();
        return zIMUserInfo;
    }

    public static ZIMGenUserOfflinePushRule getGenUserOfflinePushRule(ZIMUserOfflinePushRule rule) {
        ZIMGenUserOfflinePushRule zIMGenUserOfflinePushRule = new ZIMGenUserOfflinePushRule();
        if (rule == null) {
            zIMGenUserOfflinePushRule.IsNullFromJava = true;
            return zIMGenUserOfflinePushRule;
        }
        zIMGenUserOfflinePushRule.IsNullFromJava = false;
        zIMGenUserOfflinePushRule.OnlinePlatforms = rule.onlinePlatforms;
        zIMGenUserOfflinePushRule.NotToReceiveOfflinePushPlatforms = rule.notToReceiveOfflinePushPlatforms;
        return zIMGenUserOfflinePushRule;
    }

    public static ZIMUserOfflinePushRule getZIMUserOfflinePushRule(ZIMGenUserOfflinePushRule genRule) {
        ZIMUserOfflinePushRule zIMUserOfflinePushRule = new ZIMUserOfflinePushRule();
        zIMUserOfflinePushRule.onlinePlatforms = genRule.getOnlinePlatforms();
        zIMUserOfflinePushRule.notToReceiveOfflinePushPlatforms = genRule.getNotToReceiveOfflinePushPlatforms();
        return zIMUserOfflinePushRule;
    }

    public static ZIMUserRule getZIMUserRule(ZIMGenUserRule genRule) {
        ZIMUserRule zIMUserRule = new ZIMUserRule();
        zIMUserRule.offlinePushRule = getZIMUserOfflinePushRule(genRule.OfflinePushRule);
        return zIMUserRule;
    }

    public static ZIMSelfUserInfo getZIMSelfUserInfo(ZIMGenSelfUserInfo genSelfUserInfo) {
        ZIMSelfUserInfo zIMSelfUserInfo = new ZIMSelfUserInfo();
        zIMSelfUserInfo.userRule = getZIMUserRule(genSelfUserInfo.UserRule);
        zIMSelfUserInfo.userFullInfo = getUserInfo(genSelfUserInfo.UserFullInfo);
        zIMSelfUserInfo.userStatus = getZIMUserStatus(genSelfUserInfo.UserStatus);
        return zIMSelfUserInfo;
    }

    static ArrayList<ZIMRoomMemberAttributesOperatedInfo> getRoomMemberAttributesOperatedInfoList(ArrayList<ZIMGenRoomMemberAttributesOperatedInfo> genInfos) {
        ArrayList<ZIMRoomMemberAttributesOperatedInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenRoomMemberAttributesOperatedInfo> it = genInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getRoomMemberAttributesOperatedInfo(it.next()));
        }
        return arrayList;
    }

    static ArrayList<ZIMRoomMemberAttributesInfo> getRoomMemberAttributesInfoList(ArrayList<ZIMGenRoomMemberAttributesInfo> genInfos) {
        ArrayList<ZIMRoomMemberAttributesInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenRoomMemberAttributesInfo> it = genInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getRoomMemberAttributesInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMRoomOperatedInfo getRoomOperatedInfo(ZIMGenRoomOperatedInfo genInfo) {
        ZIMRoomOperatedInfo zIMRoomOperatedInfo = new ZIMRoomOperatedInfo();
        zIMRoomOperatedInfo.userID = genInfo.UserId;
        return zIMRoomOperatedInfo;
    }

    static ArrayList<ZIMRoomMemberAttributesUpdateInfo> getRoomMemberAttributesUpdateInfos(ArrayList<ZIMGenRoomMemberAttributesUpdateInfo> genInfos) {
        ArrayList<ZIMRoomMemberAttributesUpdateInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenRoomMemberAttributesUpdateInfo> it = genInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getRoomMemberAttributesUpdateInfo(it.next()));
        }
        return arrayList;
    }

    static ArrayList<ZIMRoomAttributesUpdateInfo> getRoomAttributesUpdateInfos(ArrayList<ZIMGenRoomAttributesUpdateInfo> genInfos) {
        ArrayList<ZIMRoomAttributesUpdateInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenRoomAttributesUpdateInfo> it = genInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getRoomAttributesUpdateInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMRoomMemberAttributesUpdateInfo getRoomMemberAttributesUpdateInfo(ZIMGenRoomMemberAttributesUpdateInfo genInfo) {
        ZIMRoomMemberAttributesUpdateInfo zIMRoomMemberAttributesUpdateInfo = new ZIMRoomMemberAttributesUpdateInfo();
        zIMRoomMemberAttributesUpdateInfo.attributesInfo = getRoomMemberAttributesInfo(genInfo.Attributes);
        return zIMRoomMemberAttributesUpdateInfo;
    }

    static ZIMRoomAttributesUpdateInfo getRoomAttributesUpdateInfo(ZIMGenRoomAttributesUpdateInfo genInfo) {
        ZIMRoomAttributesUpdateInfo zIMRoomAttributesUpdateInfo = new ZIMRoomAttributesUpdateInfo();
        zIMRoomAttributesUpdateInfo.roomAttributes = genInfo.RoomAttributes;
        zIMRoomAttributesUpdateInfo.action = ZIMRoomAttributesUpdateAction.getZIMRoomAttributesUpdateAction(genInfo.Action);
        return zIMRoomAttributesUpdateInfo;
    }

    static ZIMRoomMemberAttributesOperatedInfo getRoomMemberAttributesOperatedInfo(ZIMGenRoomMemberAttributesOperatedInfo genInfo) {
        ZIMRoomMemberAttributesOperatedInfo zIMRoomMemberAttributesOperatedInfo = new ZIMRoomMemberAttributesOperatedInfo();
        zIMRoomMemberAttributesOperatedInfo.attributesInfo = getRoomMemberAttributesInfo(genInfo.AttributesInfo);
        zIMRoomMemberAttributesOperatedInfo.errorKeys = genInfo.ErrorKeys;
        return zIMRoomMemberAttributesOperatedInfo;
    }

    static ZIMRoomMemberAttributesInfo getRoomMemberAttributesInfo(ZIMGenRoomMemberAttributesInfo genInfo) {
        ZIMRoomMemberAttributesInfo zIMRoomMemberAttributesInfo = new ZIMRoomMemberAttributesInfo();
        zIMRoomMemberAttributesInfo.attributes = genInfo.Attributes;
        zIMRoomMemberAttributesInfo.userID = genInfo.UserId;
        return zIMRoomMemberAttributesInfo;
    }

    public static ZIMGenRoomAdvancedConfig roomAdvancedConfigToGenRoomAdvancedConfig(ZIMRoomAdvancedConfig config) {
        if (config == null) {
            return new ZIMGenRoomAdvancedConfig();
        }
        ZIMGenRoomAdvancedConfig zIMGenRoomAdvancedConfig = new ZIMGenRoomAdvancedConfig();
        zIMGenRoomAdvancedConfig.RoomAttributes = config.roomAttributes;
        zIMGenRoomAdvancedConfig.RoomDestroyDelayTime = config.roomDestroyDelayTime;
        return zIMGenRoomAdvancedConfig;
    }

    public static ZIMGenRoomAttributesSetConfig roomAttributesSetConfigToGenRoomAttributesSetConfig(ZIMRoomAttributesSetConfig config) {
        if (config == null) {
            ZIMGenRoomAttributesSetConfig zIMGenRoomAttributesSetConfig = new ZIMGenRoomAttributesSetConfig();
            zIMGenRoomAttributesSetConfig.setIsNullFromJava(true);
            return zIMGenRoomAttributesSetConfig;
        }
        return new ZIMGenRoomAttributesSetConfig(config.isForce, config.isDeleteAfterOwnerLeft, config.isUpdateOwner, false);
    }

    public static ZIMGenRoomMemberAttributesSetConfig roomMemberAttributesSetConfigToGenRoomMemberAttributesSetConfig(ZIMRoomMemberAttributesSetConfig config) {
        if (config == null) {
            ZIMGenRoomMemberAttributesSetConfig zIMGenRoomMemberAttributesSetConfig = new ZIMGenRoomMemberAttributesSetConfig();
            zIMGenRoomMemberAttributesSetConfig.setIsNullFromJava(true);
            return zIMGenRoomMemberAttributesSetConfig;
        }
        return new ZIMGenRoomMemberAttributesSetConfig(config.isDeleteAfterOwnerLeft, false);
    }

    public static ZIMGenRoomAttributesDeleteConfig roomAttributesDeleteConfigToGenRoomAttributesDeleteConfig(ZIMRoomAttributesDeleteConfig config) {
        if (config == null) {
            ZIMGenRoomAttributesDeleteConfig zIMGenRoomAttributesDeleteConfig = new ZIMGenRoomAttributesDeleteConfig();
            zIMGenRoomAttributesDeleteConfig.setIsNullFromJava(true);
            return zIMGenRoomAttributesDeleteConfig;
        }
        return new ZIMGenRoomAttributesDeleteConfig(config.isForce, false);
    }

    public static ZIMGenRoomAttributesBatchOperationConfig roomAttributesBatchOperationConfigToGenRoomAttributesBatchOperationConfig(ZIMRoomAttributesBatchOperationConfig config) {
        if (config == null) {
            ZIMGenRoomAttributesBatchOperationConfig zIMGenRoomAttributesBatchOperationConfig = new ZIMGenRoomAttributesBatchOperationConfig();
            zIMGenRoomAttributesBatchOperationConfig.setIsNullFromJava(true);
            return zIMGenRoomAttributesBatchOperationConfig;
        }
        return new ZIMGenRoomAttributesBatchOperationConfig(config.isForce, config.isDeleteAfterOwnerLeft, config.isUpdateOwner, false);
    }

    static ZIMGroupOperatedInfo getGroupOperatedInfo(ZIMGenGroupOperatedInfo genInfo) {
        ZIMGroupOperatedInfo zIMGroupOperatedInfo = new ZIMGroupOperatedInfo();
        zIMGroupOperatedInfo.memberNickname = genInfo.MemberNickName;
        zIMGroupOperatedInfo.userID = genInfo.UserId;
        zIMGroupOperatedInfo.userName = genInfo.UserName;
        zIMGroupOperatedInfo.memberRole = genInfo.MemberRole;
        zIMGroupOperatedInfo.operatedUserInfo = getGroupMemberInfo(genInfo.OperatedUserInfo);
        return zIMGroupOperatedInfo;
    }

    public static ZIMGenGroupMessageReceiptMemberQueryConfig getGroupMessageReceiptMemberQueryConfig(ZIMGroupMessageReceiptMemberQueryConfig config) {
        if (config == null) {
            ZIMGenGroupMessageReceiptMemberQueryConfig zIMGenGroupMessageReceiptMemberQueryConfig = new ZIMGenGroupMessageReceiptMemberQueryConfig();
            zIMGenGroupMessageReceiptMemberQueryConfig.setIsNullFromJava(true);
            return zIMGenGroupMessageReceiptMemberQueryConfig;
        }
        return new ZIMGenGroupMessageReceiptMemberQueryConfig(config.count, config.nextFlag, false);
    }

    public static ZIMGenGroupSearchConfig getGroupSearchConfig(ZIMGroupSearchConfig config) {
        if (config == null) {
            ZIMGenGroupSearchConfig zIMGenGroupSearchConfig = new ZIMGenGroupSearchConfig();
            zIMGenGroupSearchConfig.setIsNullFromJava(true);
            return zIMGenGroupSearchConfig;
        }
        return new ZIMGenGroupSearchConfig(config.count, config.nextFlag, config.keywords, config.isAlsoMatchGroupMemberUserName, config.isAlsoMatchGroupMemberNickname, false);
    }

    public static ZIMGenGroupMemberSearchConfig getGroupMemberSearchConfig(ZIMGroupMemberSearchConfig config) {
        if (config == null) {
            ZIMGenGroupMemberSearchConfig zIMGenGroupMemberSearchConfig = new ZIMGenGroupMemberSearchConfig();
            zIMGenGroupMemberSearchConfig.setIsNullFromJava(true);
            return zIMGenGroupMemberSearchConfig;
        }
        return new ZIMGenGroupMemberSearchConfig(config.count, config.nextFlag, config.keywords, config.isAlsoMatchGroupMemberNickname, false);
    }

    static ArrayList<ZIMGroupSearchInfo> getGenGroupSearchInfos(ArrayList<ZIMGenGroupSearchInfo> genGroupMemberInfo) {
        ArrayList<ZIMGroupSearchInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenGroupSearchInfo> it = genGroupMemberInfo.iterator();
        while (it.hasNext()) {
            arrayList.add(getGroupSearchInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMGroupSearchInfo getGroupSearchInfo(ZIMGenGroupSearchInfo genGroupSearchInfo) {
        ZIMGroupSearchInfo zIMGroupSearchInfo = new ZIMGroupSearchInfo();
        zIMGroupSearchInfo.groupInfo = getGroupInfo(genGroupSearchInfo.GroupInfo);
        zIMGroupSearchInfo.userList = getGroupMemberInfos(genGroupSearchInfo.UserList);
        return zIMGroupSearchInfo;
    }

    static ArrayList<ZIMGroupMemberInfo> getGroupMemberInfos(ArrayList<ZIMGenGroupMemberInfo> genGroupMemberInfo) {
        ArrayList<ZIMGroupMemberInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenGroupMemberInfo> it = genGroupMemberInfo.iterator();
        while (it.hasNext()) {
            arrayList.add(getGroupMemberInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMGroupEnterInfo getGroupEnterInfo(ZIMGenGroupEnterInfo genGroupEnterInfo) {
        ZIMGroupEnterInfo zIMGroupEnterInfo = new ZIMGroupEnterInfo();
        zIMGroupEnterInfo.enterTime = genGroupEnterInfo.EnterTime;
        zIMGroupEnterInfo.enterType = ZIMGroupEnterType.getZIMGroupEnterType(genGroupEnterInfo.EnterType);
        zIMGroupEnterInfo.operatedUser = getZIMGroupMemberSimpleInfo(genGroupEnterInfo.getOperatedUser());
        return zIMGroupEnterInfo;
    }

    static ZIMGroupMemberInfo getGroupMemberInfo(ZIMGenGroupMemberInfo genGroupMemberInfo) {
        ZIMGroupMemberInfo zIMGroupMemberInfo = new ZIMGroupMemberInfo();
        zIMGroupMemberInfo.userID = genGroupMemberInfo.getUserInfo().getUserID();
        zIMGroupMemberInfo.memberRole = genGroupMemberInfo.MemberRole;
        zIMGroupMemberInfo.userName = genGroupMemberInfo.getUserInfo().getUserName();
        zIMGroupMemberInfo.memberNickname = genGroupMemberInfo.getMemberNickName();
        zIMGroupMemberInfo.memberAvatarUrl = genGroupMemberInfo.getMemberAvatarUrl();
        zIMGroupMemberInfo.userAvatarUrl = genGroupMemberInfo.getMemberAvatarUrl();
        zIMGroupMemberInfo.userExtendedData = genGroupMemberInfo.getUserInfo().getUserExtendedData();
        zIMGroupMemberInfo.muteExpiredTime = genGroupMemberInfo.getMuteExpiredTimestamp();
        zIMGroupMemberInfo.groupEnterInfo = getGroupEnterInfo(genGroupMemberInfo.getGroupEnterInfo());
        return zIMGroupMemberInfo;
    }

    static ZIMGroupFullInfo getFullGroupInfo(ZIMGenFullGroupInfo genFullGroupInfo) {
        ZIMGroupFullInfo zIMGroupFullInfo = new ZIMGroupFullInfo();
        zIMGroupFullInfo.groupAttributes = genFullGroupInfo.GroupAttributes;
        zIMGroupFullInfo.groupAlias = genFullGroupInfo.getGroupAlias();
        zIMGroupFullInfo.groupNotice = genFullGroupInfo.getGroupNotice();
        zIMGroupFullInfo.notificationStatus = ZIMGroupMessageNotificationStatus.getZIMGroupMessageNotificationStatus(genFullGroupInfo.NotificationStatus);
        zIMGroupFullInfo.baseInfo = getGroupInfo(genFullGroupInfo.BaseInfo);
        zIMGroupFullInfo.mutedInfo = getGroupMuteInfo(genFullGroupInfo.getMuteInfo());
        zIMGroupFullInfo.createTime = genFullGroupInfo.CreateTime;
        zIMGroupFullInfo.maxMemberCount = genFullGroupInfo.MaxMemberCount;
        zIMGroupFullInfo.verifyInfo = getZIMGroupVerifyInfo(genFullGroupInfo.VerifyInfo);
        return zIMGroupFullInfo;
    }

    static ArrayList<ZIMGroup> getGroupList(ArrayList<ZIMGenGroup> genGroups) {
        ArrayList<ZIMGroup> arrayList = new ArrayList<>();
        Iterator<ZIMGenGroup> it = genGroups.iterator();
        while (it.hasNext()) {
            arrayList.add(getGroup(it.next()));
        }
        return arrayList;
    }

    public static ArrayList<ZIMConversationSearchInfo> getZIMGenMessageGlobalSearchInfos(ArrayList<ZIMGenConversationSearchInfo> globalMessageInfoList) {
        ArrayList<ZIMConversationSearchInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenConversationSearchInfo> it = globalMessageInfoList.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMMessageGlobalSearchInfo(it.next()));
        }
        return arrayList;
    }

    private static ZIMConversationSearchInfo getZIMMessageGlobalSearchInfo(ZIMGenConversationSearchInfo zimGenMessageGlobalSearchInfo) {
        ZIMConversationSearchInfo zIMConversationSearchInfo = new ZIMConversationSearchInfo();
        zIMConversationSearchInfo.conversationID = zimGenMessageGlobalSearchInfo.ConversationID;
        zIMConversationSearchInfo.messageList = getZIMMessageList(zimGenMessageGlobalSearchInfo.getMessage());
        zIMConversationSearchInfo.totalMessageCount = zimGenMessageGlobalSearchInfo.TotalMessageCount;
        zIMConversationSearchInfo.conversationType = ZIMConversationType.getZIMConversationType(zimGenMessageGlobalSearchInfo.ConversationType);
        zIMConversationSearchInfo.conversation = getConversation(zimGenMessageGlobalSearchInfo.Conversation);
        return zIMConversationSearchInfo;
    }

    static ArrayList<ZIMGroupAttributesUpdateInfo> getGroupAttributesUpdateInfos(ArrayList<ZIMGenGroupAttributesUpdateInfo> genInfos) {
        ArrayList<ZIMGroupAttributesUpdateInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenGroupAttributesUpdateInfo> it = genInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getGroupAttributesUpdateInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMGroupAttributesUpdateInfo getGroupAttributesUpdateInfo(ZIMGenGroupAttributesUpdateInfo genInfo) {
        ZIMGroupAttributesUpdateInfo zIMGroupAttributesUpdateInfo = new ZIMGroupAttributesUpdateInfo();
        zIMGroupAttributesUpdateInfo.action = ZIMGroupAttributesUpdateAction.getZIMGroupAttributesUpdateAction(genInfo.getAction());
        zIMGroupAttributesUpdateInfo.groupAttributes = genInfo.GroupAttributes;
        return zIMGroupAttributesUpdateInfo;
    }

    static ZIMGroup getGroup(ZIMGenGroup genGroup) {
        ZIMGroup zIMGroup = new ZIMGroup();
        zIMGroup.baseInfo = getGroupInfo(genGroup.BaseInfo);
        zIMGroup.groupAlias = genGroup.getGroupAlias();
        zIMGroup.notificationStatus = ZIMGroupMessageNotificationStatus.getZIMGroupMessageNotificationStatus(genGroup.NotificationStatus);
        return zIMGroup;
    }

    static ZIMGroupInfo getGroupInfo(ZIMGenGroupInfo genGroupInfo) {
        ZIMGroupInfo zIMGroupInfo = new ZIMGroupInfo();
        zIMGroupInfo.groupID = genGroupInfo.GroupId;
        zIMGroupInfo.groupName = genGroupInfo.GroupName;
        zIMGroupInfo.groupAvatarUrl = genGroupInfo.GroupAvatarUrl;
        return zIMGroupInfo;
    }

    static ZIMGroupMuteInfo getGroupMuteInfo(ZIMGenGroupMuteInfo muteInfo) {
        ZIMGroupMuteInfo zIMGroupMuteInfo = new ZIMGroupMuteInfo();
        zIMGroupMuteInfo.mode = ZIMGroupMuteMode.getZIMGroupMuteMode(muteInfo.getMode());
        zIMGroupMuteInfo.expiredTime = muteInfo.getExpiredTimestamp();
        zIMGroupMuteInfo.roles = muteInfo.getRoles();
        return zIMGroupMuteInfo;
    }

    static ZIMRoomFullInfo getRoomFullInfo(ZIMGenFullRoomInfo genFullRoomInfo) {
        ZIMRoomFullInfo zIMRoomFullInfo = new ZIMRoomFullInfo();
        zIMRoomFullInfo.baseInfo = getRoomInfo(genFullRoomInfo.BaseInfo);
        return zIMRoomFullInfo;
    }

    static ZIMRoomInfo getRoomInfo(ZIMGenRoomInfo genRoomInfo) {
        ZIMRoomInfo zIMRoomInfo = new ZIMRoomInfo();
        zIMRoomInfo.roomID = genRoomInfo.RoomId;
        zIMRoomInfo.roomName = genRoomInfo.RoomName;
        return zIMRoomInfo;
    }

    public static ZIMGenRoomInfo roomInfoToGenRoomInfo(ZIMRoomInfo roomInfo) {
        if (roomInfo == null) {
            return new ZIMGenRoomInfo();
        }
        ZIMGenRoomInfo zIMGenRoomInfo = new ZIMGenRoomInfo();
        zIMGenRoomInfo.RoomId = roomInfo.roomID;
        zIMGenRoomInfo.RoomName = roomInfo.roomName;
        return zIMGenRoomInfo;
    }

    public static ZIMGenRoomMemberQueryConfig roomMemberQueryConfigToGenRoomMemberQueryConfig(ZIMRoomMemberQueryConfig config) {
        if (config == null) {
            ZIMGenRoomMemberQueryConfig zIMGenRoomMemberQueryConfig = new ZIMGenRoomMemberQueryConfig();
            zIMGenRoomMemberQueryConfig.setIsNullFromJava(true);
            return zIMGenRoomMemberQueryConfig;
        }
        return new ZIMGenRoomMemberQueryConfig(config.nextFlag, config.count, false);
    }

    public static ZIMGenRoomMemberAttributesQueryConfig roomMemberAttributesQueryConfigToGenRoomMemberAttributesQueryConfig(ZIMRoomMemberAttributesQueryConfig config) {
        if (config == null) {
            ZIMGenRoomMemberAttributesQueryConfig zIMGenRoomMemberAttributesQueryConfig = new ZIMGenRoomMemberAttributesQueryConfig();
            zIMGenRoomMemberAttributesQueryConfig.setIsNullFromJava(true);
            return zIMGenRoomMemberAttributesQueryConfig;
        }
        return new ZIMGenRoomMemberAttributesQueryConfig(config.nextFlag, config.count, false);
    }

    static ArrayList<ZIMRoomMemberInfo> getRoomMemberInfos(ArrayList<ZIMGenRoomMemberInfo> genRoomMemberInfos) {
        ArrayList<ZIMRoomMemberInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenRoomMemberInfo> it = genRoomMemberInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getRoomMemberInfo(it.next()));
        }
        return arrayList;
    }

    public static ZIMRoomMemberInfo getRoomMemberInfo(ZIMGenRoomMemberInfo genRoomMemberInfo) {
        ZIMRoomMemberInfo zIMRoomMemberInfo = new ZIMRoomMemberInfo();
        zIMRoomMemberInfo.userID = genRoomMemberInfo.UserInfo.getUserID();
        zIMRoomMemberInfo.userName = genRoomMemberInfo.UserInfo.getUserName();
        zIMRoomMemberInfo.userAvatarUrl = genRoomMemberInfo.UserInfo.getUserAvatarUrl();
        zIMRoomMemberInfo.userExtendedData = genRoomMemberInfo.UserInfo.getUserExtendedData();
        return zIMRoomMemberInfo;
    }

    public static ZIMGenUserInfo userInfoToGenUserInfo(ZIMUserInfo userInfo) {
        if (userInfo == null) {
            return new ZIMGenUserInfo();
        }
        ZIMGenUserInfo zIMGenUserInfo = new ZIMGenUserInfo();
        zIMGenUserInfo.UserID = userInfo.userID;
        zIMGenUserInfo.setUserName(userInfo.userName);
        zIMGenUserInfo.UserAvatarUrl = userInfo.userAvatarUrl;
        zIMGenUserInfo.setUserExtendedData(userInfo.userExtendedData);
        return zIMGenUserInfo;
    }

    public static ZIMGenLoginConfig loginConfigToGenLoginConfig(ZIMLoginConfig config) {
        if (config == null) {
            ZIMGenLoginConfig zIMGenLoginConfig = new ZIMGenLoginConfig();
            zIMGenLoginConfig.setIsNullFromJava(true);
            return zIMGenLoginConfig;
        }
        return new ZIMGenLoginConfig(config.userName, config.token, config.isOfflineLogin, config.customStatus, false);
    }

    public static ZIMGenUsersInfoQueryConfig usersInfoQueryConfigToGenUsersInfoQueryConfig(ZIMUsersInfoQueryConfig config) {
        if (config == null) {
            return new ZIMGenUsersInfoQueryConfig();
        }
        ZIMGenUsersInfoQueryConfig zIMGenUsersInfoQueryConfig = new ZIMGenUsersInfoQueryConfig();
        zIMGenUsersInfoQueryConfig.IsQueryFromServer = config.isQueryFromServer;
        return zIMGenUsersInfoQueryConfig;
    }

    public static ZIMGenGroupInfo groupInfoToGenGroupInfo(ZIMGroupInfo groupInfo) {
        if (groupInfo == null) {
            ZIMGenGroupInfo zIMGenGroupInfo = new ZIMGenGroupInfo();
            zIMGenGroupInfo.setIsNullFromJava(true);
            return zIMGenGroupInfo;
        }
        return new ZIMGenGroupInfo(groupInfo.groupID, groupInfo.groupName, groupInfo.groupAvatarUrl, false);
    }

    public static ZIMGenGroupMemberQueryConfig getGenGroupMemberQueryConfig(ZIMGroupMemberQueryConfig config) {
        if (config == null) {
            ZIMGenGroupMemberQueryConfig zIMGenGroupMemberQueryConfig = new ZIMGenGroupMemberQueryConfig();
            zIMGenGroupMemberQueryConfig.setIsNullFromJava(true);
            return zIMGenGroupMemberQueryConfig;
        }
        return new ZIMGenGroupMemberQueryConfig(config.nextFlag, config.count, false);
    }

    public static ZIMGenGroupAdvancedConfig groupAdvancedConfigToGenGroupAdvancedConfig(ZIMGroupAdvancedConfig config) {
        if (config == null) {
            ZIMGenGroupAdvancedConfig zIMGenGroupAdvancedConfig = new ZIMGenGroupAdvancedConfig();
            zIMGenGroupAdvancedConfig.setIsNullFromJava(true);
            return zIMGenGroupAdvancedConfig;
        }
        return new ZIMGenGroupAdvancedConfig(config.groupNotice, config.groupAttributes, config.maxMemberCount, config.joinMode.value(), config.inviteMode.value(), config.beInviteMode.value(), false);
    }

    public static ZIMGenGroupMuteConfig groupMuteConfigToGenGroupAdvancedConfig(ZIMGroupMuteConfig config) {
        if (config == null) {
            ZIMGenGroupMuteConfig zIMGenGroupMuteConfig = new ZIMGenGroupMuteConfig();
            zIMGenGroupMuteConfig.setIsNullFromJava(true);
            return zIMGenGroupMuteConfig;
        }
        return new ZIMGenGroupMuteConfig(config.mode.value(), config.duration, config.roles, false);
    }

    public static ZIMGenGroupMemberMuteConfig groupMemberMuteConfigToGenGroupMemberMuteConfig(ZIMGroupMemberMuteConfig config) {
        if (config == null) {
            ZIMGenGroupMemberMuteConfig zIMGenGroupMemberMuteConfig = new ZIMGenGroupMemberMuteConfig();
            zIMGenGroupMemberMuteConfig.setIsNullFromJava(true);
            return zIMGenGroupMemberMuteConfig;
        }
        return new ZIMGenGroupMemberMuteConfig(config.duration, false);
    }

    public static ZIMGenGroupMemberMutedListQueryConfig getGenGroupMemberMutedListQueryConfig(ZIMGroupMemberMutedListQueryConfig config) {
        if (config == null) {
            ZIMGenGroupMemberMutedListQueryConfig zIMGenGroupMemberMutedListQueryConfig = new ZIMGenGroupMemberMutedListQueryConfig();
            zIMGenGroupMemberMutedListQueryConfig.setIsNullFromJava(true);
            return zIMGenGroupMemberMutedListQueryConfig;
        }
        return new ZIMGenGroupMemberMutedListQueryConfig(config.nextFlag, config.count, false);
    }

    static ZIMCallInvitationSentInfo getCallInvitationSentInfo(ZIMGenCallInvitationSentInfo genSentInfo) {
        ZIMCallInvitationSentInfo zIMCallInvitationSentInfo = new ZIMCallInvitationSentInfo();
        zIMCallInvitationSentInfo.errorUserList = getErrorUserInfoList(genSentInfo.ErrorList);
        zIMCallInvitationSentInfo.errorInvitees = getCallUserList(genSentInfo.ErrorInvitees);
        zIMCallInvitationSentInfo.timeout = genSentInfo.Timeout;
        return zIMCallInvitationSentInfo;
    }

    public static ZIMGroupVerifyInfo getZIMGroupVerifyInfo(ZIMGenGroupVerifyInfo verifyInfo) {
        ZIMGroupVerifyInfo zIMGroupVerifyInfo = new ZIMGroupVerifyInfo();
        zIMGroupVerifyInfo.beInviteMode = ZIMGroupBeInviteMode.getZIMGroupBeInviteMode(verifyInfo.BeInviteMode);
        zIMGroupVerifyInfo.inviteMode = ZIMGroupInviteMode.getZIMGroupInviteMode(verifyInfo.InviteMode);
        zIMGroupVerifyInfo.joinMode = ZIMGroupJoinMode.getZIMGroupJoinMode(verifyInfo.JoinMode);
        return zIMGroupVerifyInfo;
    }

    static ZIMCallingInvitationSentInfo getCallingInvitationSentInfo(ZIMGenCallingInvitationSentInfo genSentInfo) {
        ZIMCallingInvitationSentInfo zIMCallingInvitationSentInfo = new ZIMCallingInvitationSentInfo();
        zIMCallingInvitationSentInfo.errorUserList = getErrorUserInfoList(genSentInfo.ErrorInvitees);
        return zIMCallingInvitationSentInfo;
    }

    static ZIMCallInvitationReceivedInfo getCallInvitationReceivedInfo(ZIMGenCallInvitationReceivedInfo genReceivedInfo) {
        ZIMCallInvitationReceivedInfo zIMCallInvitationReceivedInfo = new ZIMCallInvitationReceivedInfo();
        zIMCallInvitationReceivedInfo.inviter = genReceivedInfo.Inviter;
        zIMCallInvitationReceivedInfo.timeout = genReceivedInfo.Timeout;
        zIMCallInvitationReceivedInfo.extendedData = genReceivedInfo.ExtendedData;
        zIMCallInvitationReceivedInfo.mode = ZIMCallInvitationMode.getZIMCallInvitationMode(genReceivedInfo.Mode);
        zIMCallInvitationReceivedInfo.createTime = genReceivedInfo.CreateTime;
        zIMCallInvitationReceivedInfo.callUserList = getCallUserList(genReceivedInfo.CallUserList);
        zIMCallInvitationReceivedInfo.caller = genReceivedInfo.Caller;
        return zIMCallInvitationReceivedInfo;
    }

    static ZIMCallInvitationCancelledInfo getCallInvitationCancelInfo(ZIMGenCallInvitationCancelledInfo genInfo) {
        ZIMCallInvitationCancelledInfo zIMCallInvitationCancelledInfo = new ZIMCallInvitationCancelledInfo();
        zIMCallInvitationCancelledInfo.inviter = genInfo.Inviter;
        zIMCallInvitationCancelledInfo.extendedData = genInfo.ExtendedData;
        zIMCallInvitationCancelledInfo.mode = ZIMCallInvitationMode.getZIMCallInvitationMode(genInfo.Mode);
        return zIMCallInvitationCancelledInfo;
    }

    static ZIMCallInvitationRejectedInfo getCallInvitationRejectedInfo(ZIMGenCallInvitationRejectedInfo genInfo) {
        ZIMCallInvitationRejectedInfo zIMCallInvitationRejectedInfo = new ZIMCallInvitationRejectedInfo();
        zIMCallInvitationRejectedInfo.invitee = genInfo.Invitee;
        zIMCallInvitationRejectedInfo.extendedData = genInfo.ExtendedData;
        return zIMCallInvitationRejectedInfo;
    }

    static ZIMCallInvitationTimeoutInfo getCallInvitationTimeoutInfo(ZIMGenCallInvitationTimeoutInfo genInfo) {
        ZIMCallInvitationTimeoutInfo zIMCallInvitationTimeoutInfo = new ZIMCallInvitationTimeoutInfo();
        zIMCallInvitationTimeoutInfo.mode = ZIMCallInvitationMode.getZIMCallInvitationMode(genInfo.Mode);
        return zIMCallInvitationTimeoutInfo;
    }

    static ZIMCallUserStateChangeInfo getCallUserStateChangedInfo(ZIMGenCallUserStateChangeInfo genInfo) {
        ZIMCallUserStateChangeInfo zIMCallUserStateChangeInfo = new ZIMCallUserStateChangeInfo();
        zIMCallUserStateChangeInfo.callUserList = getCallUserList(genInfo.CallUserList);
        return zIMCallUserStateChangeInfo;
    }

    static ZIMCallInvitationCreatedInfo getCallInvitationCreatedInfo(ZIMGenCallInvitationCreatedInfo genInfo) {
        ZIMCallInvitationCreatedInfo zIMCallInvitationCreatedInfo = new ZIMCallInvitationCreatedInfo();
        zIMCallInvitationCreatedInfo.caller = genInfo.getCaller();
        zIMCallInvitationCreatedInfo.createTime = genInfo.getCreateTime();
        zIMCallInvitationCreatedInfo.callUserList = getCallUserList(genInfo.getCallUserList());
        zIMCallInvitationCreatedInfo.mode = ZIMCallInvitationMode.getZIMCallInvitationMode(genInfo.getMode());
        zIMCallInvitationCreatedInfo.extendedData = genInfo.getExtendedData();
        zIMCallInvitationCreatedInfo.timeout = genInfo.getTimeout();
        return zIMCallInvitationCreatedInfo;
    }

    static ZIMCallInvitationEndedInfo getCallInvitationEndedInfo(ZIMGenCallInvitationEndedInfo genInfo) {
        ZIMCallInvitationEndedInfo zIMCallInvitationEndedInfo = new ZIMCallInvitationEndedInfo();
        zIMCallInvitationEndedInfo.endTime = genInfo.EndTime;
        zIMCallInvitationEndedInfo.operatedUserID = genInfo.OperatedUserId;
        zIMCallInvitationEndedInfo.caller = genInfo.Caller;
        zIMCallInvitationEndedInfo.mode = ZIMCallInvitationMode.getZIMCallInvitationMode(genInfo.Mode);
        zIMCallInvitationEndedInfo.extendedData = genInfo.ExtendedData;
        return zIMCallInvitationEndedInfo;
    }

    static ZIMCallInvitationAcceptedInfo getCallInvitationAcceptedInfo(ZIMGenCallInvitationAcceptedInfo genInfo) {
        ZIMCallInvitationAcceptedInfo zIMCallInvitationAcceptedInfo = new ZIMCallInvitationAcceptedInfo();
        zIMCallInvitationAcceptedInfo.invitee = genInfo.Invitee;
        zIMCallInvitationAcceptedInfo.extendedData = genInfo.ExtendedData;
        return zIMCallInvitationAcceptedInfo;
    }

    static ArrayList<ZIMCallUserInfo> getCallUserList(ArrayList<ZIMGenCallUserInfo> genCallUserInfos) {
        ArrayList<ZIMCallUserInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenCallUserInfo> it = genCallUserInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getCallUserInfo(it.next()));
        }
        return arrayList;
    }

    static ArrayList<ZIMCallInfo> getCallInfos(ArrayList<ZIMGenCallInfo> genCallInfos) {
        ArrayList<ZIMCallInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenCallInfo> it = genCallInfos.iterator();
        while (it.hasNext()) {
            arrayList.add(getCallInfo(it.next()));
        }
        return arrayList;
    }

    static ZIMCallInfo getCallInfo(ZIMGenCallInfo genInfo) {
        ZIMCallInfo zIMCallInfo = new ZIMCallInfo();
        zIMCallInfo.caller = genInfo.Caller;
        zIMCallInfo.inviter = genInfo.Inviter;
        zIMCallInfo.callID = genInfo.CallId;
        zIMCallInfo.callUserList = getCallUserList(genInfo.CallUserInfos);
        zIMCallInfo.extendedData = genInfo.ExtendedData;
        zIMCallInfo.createTime = genInfo.CreateTime;
        zIMCallInfo.endTime = genInfo.EndTime;
        zIMCallInfo.mode = ZIMCallInvitationMode.getZIMCallInvitationMode(genInfo.Mode);
        zIMCallInfo.state = ZIMCallState.getZIMCallState(genInfo.State);
        return zIMCallInfo;
    }

    static ZIMCallEndedSentInfo getCallEndedSentInfo(ZIMGenCallEndedSentInfo genInfo) {
        ZIMCallEndedSentInfo zIMCallEndedSentInfo = new ZIMCallEndedSentInfo();
        zIMCallEndedSentInfo.createTime = genInfo.CreateTime;
        zIMCallEndedSentInfo.endTime = genInfo.EndTime;
        zIMCallEndedSentInfo.acceptTime = genInfo.AcceptTime;
        return zIMCallEndedSentInfo;
    }

    static ZIMCallJoinSentInfo getCallJoinSentInfo(ZIMGenCallJoinSentInfo genInfo) {
        ZIMCallJoinSentInfo zIMCallJoinSentInfo = new ZIMCallJoinSentInfo();
        zIMCallJoinSentInfo.createTime = genInfo.CreateTime;
        zIMCallJoinSentInfo.joinTime = genInfo.JoinTime;
        zIMCallJoinSentInfo.extendedData = genInfo.ExtendedData;
        zIMCallJoinSentInfo.callUserList = getCallUserList(genInfo.CallUserList);
        return zIMCallJoinSentInfo;
    }

    static ZIMCallQuitSentInfo getCallQuitSentInfo(ZIMGenCallQuitSentInfo genInfo) {
        ZIMCallQuitSentInfo zIMCallQuitSentInfo = new ZIMCallQuitSentInfo();
        zIMCallQuitSentInfo.createTime = genInfo.CreateTime;
        zIMCallQuitSentInfo.acceptTime = genInfo.AcceptTime;
        zIMCallQuitSentInfo.quitTime = genInfo.QuitTime;
        return zIMCallQuitSentInfo;
    }

    static ZIMCallUserInfo getCallUserInfo(ZIMGenCallUserInfo genUserInfo) {
        ZIMCallUserInfo zIMCallUserInfo = new ZIMCallUserInfo();
        zIMCallUserInfo.userID = genUserInfo.UserId;
        zIMCallUserInfo.state = ZIMCallUserState.getZIMCallUserState(genUserInfo.State);
        zIMCallUserInfo.extendedData = genUserInfo.getExtendedData();
        return zIMCallUserInfo;
    }

    public static ZIMGenCallInviteConfig getGenCallInviteConfig(ZIMCallInviteConfig config) {
        if (config == null) {
            ZIMGenCallInviteConfig zIMGenCallInviteConfig = new ZIMGenCallInviteConfig();
            zIMGenCallInviteConfig.setIsNullFromJava(true);
            return zIMGenCallInviteConfig;
        }
        return new ZIMGenCallInviteConfig(config.timeout, config.extendedData, config.mode.value(), getGenPushConfig(config.pushConfig), config.pushConfig != null, false, config.enableNotReceivedCheck);
    }

    public static ZIMGenConversationSearchConfig getGenMessageGlobalSearchConfig(ZIMConversationSearchConfig config) {
        if (config == null) {
            ZIMGenConversationSearchConfig zIMGenConversationSearchConfig = new ZIMGenConversationSearchConfig();
            zIMGenConversationSearchConfig.setIsNullFromJava(true);
            return zIMGenConversationSearchConfig;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ZIMMessageType> it = config.messageTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().value()));
        }
        return new ZIMGenConversationSearchConfig(config.conversationMessageCount, config.nextFlag, config.totalConversationCount, config.mode.value(), config.keywords, config.subMessageTypes, arrayList, config.senderUserIDs, config.startTime, config.endTime, false);
    }

    public static ZIMGenFileCacheClearConfig getGenFileCacheClearConfig(ZIMFileCacheClearConfig config) {
        if (config == null) {
            ZIMGenFileCacheClearConfig zIMGenFileCacheClearConfig = new ZIMGenFileCacheClearConfig();
            zIMGenFileCacheClearConfig.setIsNullFromJava(true);
            return zIMGenFileCacheClearConfig;
        }
        return new ZIMGenFileCacheClearConfig(config.endTime, false);
    }

    public static ZIMGenFileCacheQueryConfig getGenFileCacheQueryConfig(ZIMFileCacheQueryConfig config) {
        if (config == null) {
            ZIMGenFileCacheQueryConfig zIMGenFileCacheQueryConfig = new ZIMGenFileCacheQueryConfig();
            zIMGenFileCacheQueryConfig.setIsNullFromJava(true);
            return zIMGenFileCacheQueryConfig;
        }
        return new ZIMGenFileCacheQueryConfig(config.endTime, false);
    }

    public static ZIMGenMessageSearchConfig getGenMessageSearchConfig(ZIMMessageSearchConfig config) {
        if (config == null) {
            ZIMGenMessageSearchConfig zIMGenMessageSearchConfig = new ZIMGenMessageSearchConfig();
            zIMGenMessageSearchConfig.setIsNullFromJava(true);
            return zIMGenMessageSearchConfig;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ZIMMessageType> it = config.messageTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().value()));
        }
        return new ZIMGenMessageSearchConfig(getGenMessage(config.nextMessage), config.count, config.order != null ? config.order.value() : 0, config.keywords, arrayList, config.subMessageTypes, config.senderUserIDs, config.startTime, config.endTime, false);
    }

    public static ZIMGenCallingInviteConfig getGenCallingInviteConfig(ZIMCallingInviteConfig config) {
        if (config == null) {
            ZIMGenCallingInviteConfig zIMGenCallingInviteConfig = new ZIMGenCallingInviteConfig();
            zIMGenCallingInviteConfig.setIsNullFromJava(true);
            return zIMGenCallingInviteConfig;
        }
        return new ZIMGenCallingInviteConfig(getGenPushConfig(config.pushConfig), config.pushConfig != null, false);
    }

    public static ZIMGenCallJoinConfig getGenCallJoinConfig(ZIMCallJoinConfig config) {
        if (config == null) {
            ZIMGenCallJoinConfig zIMGenCallJoinConfig = new ZIMGenCallJoinConfig();
            zIMGenCallJoinConfig.setIsNullFromJava(true);
            return zIMGenCallJoinConfig;
        }
        return new ZIMGenCallJoinConfig(config.extendedData, false);
    }

    public static ZIMGenCallQuitConfig getGenCallQuitConfig(ZIMCallQuitConfig config) {
        if (config == null) {
            ZIMGenCallQuitConfig zIMGenCallQuitConfig = new ZIMGenCallQuitConfig();
            zIMGenCallQuitConfig.setIsNullFromJava(true);
            return zIMGenCallQuitConfig;
        }
        return new ZIMGenCallQuitConfig(config.extendedData, getGenPushConfig(config.pushConfig), config.pushConfig != null, false);
    }

    public static ZIMGenQueryCallListConfig getGenQueryCallListConfig(ZIMCallInvitationQueryConfig config) {
        if (config == null) {
            ZIMGenQueryCallListConfig zIMGenQueryCallListConfig = new ZIMGenQueryCallListConfig();
            zIMGenQueryCallListConfig.setIsNullFromJava(true);
            return zIMGenQueryCallListConfig;
        }
        return new ZIMGenQueryCallListConfig(config.count, config.nextFlag, false);
    }

    public static ZIMGenFriendAddConfig getGenZIMFriendAddConfig(ZIMFriendAddConfig config) {
        if (config == null) {
            ZIMGenFriendAddConfig zIMGenFriendAddConfig = new ZIMGenFriendAddConfig();
            zIMGenFriendAddConfig.setIsNullFromJava(true);
            return zIMGenFriendAddConfig;
        }
        return new ZIMGenFriendAddConfig(config.wording, config.friendAlias, config.friendAttributes, false);
    }

    public static ZIMGenFriendApplicationSendConfig getGenZIMSendFriendApplicationConfig(ZIMFriendApplicationSendConfig config) {
        if (config == null) {
            ZIMGenFriendApplicationSendConfig zIMGenFriendApplicationSendConfig = new ZIMGenFriendApplicationSendConfig();
            zIMGenFriendApplicationSendConfig.setIsNullFromJava(true);
            zIMGenFriendApplicationSendConfig.setEnableOfflinePush(false);
            return zIMGenFriendApplicationSendConfig;
        }
        return new ZIMGenFriendApplicationSendConfig(config.wording, config.friendAlias, config.friendAttributes, getGenPushConfig(config.pushConfig), config.pushConfig != null, false);
    }

    public static ZIMGenCallEndConfig getGenCallEndConfig(ZIMCallEndConfig config) {
        if (config == null) {
            ZIMGenCallEndConfig zIMGenCallEndConfig = new ZIMGenCallEndConfig();
            zIMGenCallEndConfig.setIsNullFromJava(true);
            return zIMGenCallEndConfig;
        }
        return new ZIMGenCallEndConfig(config.extendedData, getGenPushConfig(config.pushConfig), config.pushConfig != null, false);
    }

    public static ZIMGenCallCancelConfig getGenCallCancelConfig(ZIMCallCancelConfig config) {
        if (config == null) {
            ZIMGenCallCancelConfig zIMGenCallCancelConfig = new ZIMGenCallCancelConfig();
            zIMGenCallCancelConfig.setIsNullFromJava(true);
            return zIMGenCallCancelConfig;
        }
        return new ZIMGenCallCancelConfig(config.extendedData, getGenPushConfig(config.pushConfig), config.pushConfig != null, false);
    }

    public static ZIMGenCallAcceptConfig getGenCallAcceptConfig(ZIMCallAcceptConfig config) {
        if (config == null) {
            ZIMGenCallAcceptConfig zIMGenCallAcceptConfig = new ZIMGenCallAcceptConfig();
            zIMGenCallAcceptConfig.setIsNullFromJava(true);
            return zIMGenCallAcceptConfig;
        }
        return new ZIMGenCallAcceptConfig(config.extendedData, false);
    }

    public static ZIMGenCallRejectConfig getGenCallRejectConfig(ZIMCallRejectConfig config) {
        if (config == null) {
            ZIMGenCallRejectConfig zIMGenCallRejectConfig = new ZIMGenCallRejectConfig();
            zIMGenCallRejectConfig.setIsNullFromJava(true);
            return zIMGenCallRejectConfig;
        }
        return new ZIMGenCallRejectConfig(config.extendedData, false);
    }

    public static ZIMGenFriendDeleteConfig getGenZIMFriendDeleteConfig(ZIMFriendDeleteConfig config) {
        if (config == null) {
            ZIMGenFriendDeleteConfig zIMGenFriendDeleteConfig = new ZIMGenFriendDeleteConfig();
            zIMGenFriendDeleteConfig.setIsNullFromJava(true);
            return zIMGenFriendDeleteConfig;
        }
        return new ZIMGenFriendDeleteConfig(config.type.value(), false);
    }

    public static ZIMGenFriendListQueryConfig getGenZIMFriendListQueryConfig(ZIMFriendListQueryConfig config) {
        if (config == null) {
            ZIMGenFriendListQueryConfig zIMGenFriendListQueryConfig = new ZIMGenFriendListQueryConfig();
            zIMGenFriendListQueryConfig.setIsNullFromJava(true);
            return zIMGenFriendListQueryConfig;
        }
        return new ZIMGenFriendListQueryConfig(config.count, config.nextFlag, false);
    }

    public static ZIMGenBlacklistQueryConfig getGenZIMBlacklistQueryConfig(ZIMBlacklistQueryConfig config) {
        if (config == null) {
            ZIMGenBlacklistQueryConfig zIMGenBlacklistQueryConfig = new ZIMGenBlacklistQueryConfig();
            zIMGenBlacklistQueryConfig.setIsNullFromJava(true);
            return zIMGenBlacklistQueryConfig;
        }
        return new ZIMGenBlacklistQueryConfig(config.count, config.nextFlag, false);
    }

    public static ZIMFriendInfo getZIMFriendInfo(ZIMGenFriendInfo friendInfo) {
        ZIMFriendInfo zIMFriendInfo = new ZIMFriendInfo();
        zIMFriendInfo.createTime = friendInfo.getCreateTime();
        zIMFriendInfo.friendAlias = friendInfo.getFriendAlias();
        zIMFriendInfo.friendAttributes = friendInfo.getAttributes();
        zIMFriendInfo.wording = friendInfo.getWording();
        if (friendInfo.UserInfo != null) {
            zIMFriendInfo.userID = friendInfo.UserInfo.getUserID();
            zIMFriendInfo.userName = friendInfo.UserInfo.getUserName();
            zIMFriendInfo.userAvatarUrl = friendInfo.UserInfo.getUserAvatarUrl();
            zIMFriendInfo.userExtendedData = friendInfo.UserInfo.getUserExtendedData();
        }
        return zIMFriendInfo;
    }

    public static ArrayList<ZIMFriendInfo> getZIMFriendInfoArrayList(ArrayList<ZIMGenFriendInfo> friendInfoList) {
        ArrayList<ZIMFriendInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenFriendInfo> it = friendInfoList.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMFriendInfo(it.next()));
        }
        return arrayList;
    }

    public static ArrayList<ZIMFriendApplicationInfo> getZIMGenFriendApplicationInfoArrayList(ArrayList<ZIMGenFriendApplicationInfo> infoArrayList) {
        ArrayList<ZIMFriendApplicationInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenFriendApplicationInfo> it = infoArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(getFriendApplicationInfo(it.next()));
        }
        return arrayList;
    }

    public static ZIMGenFriendApplicationListQueryConfig getGenZIMFriendApplicationListQueryConfig(ZIMFriendApplicationListQueryConfig config) {
        if (config == null) {
            ZIMGenFriendApplicationListQueryConfig zIMGenFriendApplicationListQueryConfig = new ZIMGenFriendApplicationListQueryConfig();
            zIMGenFriendApplicationListQueryConfig.setIsNullFromJava(true);
            return zIMGenFriendApplicationListQueryConfig;
        }
        return new ZIMGenFriendApplicationListQueryConfig(config.count, config.nextFlag, false);
    }

    public static ZIMGenFriendApplicationAcceptConfig getGenZIMFriendApplicationAcceptConfig(ZIMFriendApplicationAcceptConfig config) {
        if (config == null) {
            ZIMGenFriendApplicationAcceptConfig zIMGenFriendApplicationAcceptConfig = new ZIMGenFriendApplicationAcceptConfig();
            zIMGenFriendApplicationAcceptConfig.setIsNullFromJava(true);
            zIMGenFriendApplicationAcceptConfig.setEnableOfflinePush(false);
            return zIMGenFriendApplicationAcceptConfig;
        }
        return new ZIMGenFriendApplicationAcceptConfig(config.friendAlias, config.friendAttributes, getGenPushConfig(config.pushConfig), config.pushConfig != null, false);
    }

    public static ZIMGenFriendCheckConfig getGenZIMFriendCheckConfig(ZIMFriendRelationCheckConfig config) {
        if (config == null) {
            ZIMGenFriendCheckConfig zIMGenFriendCheckConfig = new ZIMGenFriendCheckConfig();
            zIMGenFriendCheckConfig.setIsNullFromJava(true);
            return zIMGenFriendCheckConfig;
        }
        if (config.type != null) {
            return new ZIMGenFriendCheckConfig(config.type.value(), false);
        }
        return new ZIMGenFriendCheckConfig(ZIMFriendRelationCheckType.BOTH.value(), false);
    }

    public static ZIMGenPushConfig getGenPushConfig(ZIMPushConfig pushConfig) {
        if (pushConfig == null) {
            ZIMGenPushConfig zIMGenPushConfig = new ZIMGenPushConfig();
            zIMGenPushConfig.setIsNullFromJava(true);
            return zIMGenPushConfig;
        }
        ZIMGenPushConfig zIMGenPushConfig2 = new ZIMGenPushConfig();
        zIMGenPushConfig2.setIsNullFromJava(false);
        zIMGenPushConfig2.setOfflinePushTitle(pushConfig.title);
        zIMGenPushConfig2.setOfflinePushContent(pushConfig.content);
        zIMGenPushConfig2.setOfflineExtendedData(pushConfig.payload);
        zIMGenPushConfig2.setThreadId(pushConfig.threadID);
        zIMGenPushConfig2.setOfflinePushResourceId(pushConfig.resourcesID);
        zIMGenPushConfig2.setEnableBadgeIncrement(pushConfig.enableBadge.booleanValue());
        zIMGenPushConfig2.setBadgeIncrement(pushConfig.badgeIncrement);
        if (pushConfig.voIPConfig == null) {
            zIMGenPushConfig2.EnableVoIPPush = false;
        } else {
            zIMGenPushConfig2.EnableVoIPPush = true;
            zIMGenPushConfig2.setOfflinePushVoIPConfig(getGenVoIPConfig(pushConfig.voIPConfig));
        }
        if (pushConfig.privateMessageTemplate == null) {
            zIMGenPushConfig2.EnablePrivateMessageTemplate = false;
            return zIMGenPushConfig2;
        }
        zIMGenPushConfig2.EnablePrivateMessageTemplate = true;
        zIMGenPushConfig2.setPrivateMessageTemplate(getGenPrivateMessageTemplate(pushConfig.privateMessageTemplate));
        return zIMGenPushConfig2;
    }

    public static ZIMUserInfo getUserInfo(ZIMGenInnerUserInfo zIMGenInnerUserInfo) {
        ZIMUserInfo zIMUserInfo;
        if (zIMGenInnerUserInfo == null) {
            return null;
        }
        int userType = zIMGenInnerUserInfo.getUserType();
        if (userType == 3 || userType == 4) {
            ZIMGroupMemberSimpleInfo zIMGroupMemberSimpleInfo = new ZIMGroupMemberSimpleInfo();
            zIMGroupMemberSimpleInfo.memberNickname = zIMGenInnerUserInfo.getGroupMemberNickName();
            zIMGroupMemberSimpleInfo.memberRole = zIMGenInnerUserInfo.getGroupRole();
            zIMUserInfo = zIMGroupMemberSimpleInfo;
        } else {
            zIMUserInfo = new ZIMUserInfo();
        }
        zIMUserInfo.userID = zIMGenInnerUserInfo.getUserID();
        zIMUserInfo.userName = zIMGenInnerUserInfo.getUserName();
        zIMUserInfo.userAvatarUrl = zIMGenInnerUserInfo.getUserAvatar();
        zIMUserInfo.userExtendedData = zIMGenInnerUserInfo.getUserExtendedData();
        return zIMUserInfo;
    }

    public static ZIMTipsMessageChangeInfo getZIMTipsMessageChangeInfo(ZIMGenTipsMessageChangeInfo genTipsMessageChangeInfo) {
        if (genTipsMessageChangeInfo == null) {
            return null;
        }
        int i = genTipsMessageChangeInfo.Type;
        if (i == 1 || i == 2 || i == 3 || i == 4 || i == 5) {
            ZIMTipsMessageGroupChangeInfo zIMTipsMessageGroupChangeInfo = new ZIMTipsMessageGroupChangeInfo();
            zIMTipsMessageGroupChangeInfo.type = ZIMTipsMessageChangeInfoType.getZIMTipsMessageChangeInfoType(genTipsMessageChangeInfo.Type);
            zIMTipsMessageGroupChangeInfo.groupDataFlag = genTipsMessageChangeInfo.getGroupDataFlag();
            zIMTipsMessageGroupChangeInfo.groupAvatarUrl = genTipsMessageChangeInfo.getGroupAvatarUrl();
            zIMTipsMessageGroupChangeInfo.groupName = genTipsMessageChangeInfo.getGroupName();
            zIMTipsMessageGroupChangeInfo.groupNotice = genTipsMessageChangeInfo.getGroupNotice();
            zIMTipsMessageGroupChangeInfo.groupMutedInfo = getGroupMuteInfo(genTipsMessageChangeInfo.getGroupMuteInfo());
            return zIMTipsMessageGroupChangeInfo;
        }
        if (i != 21) {
            switch (i) {
                case 10:
                case 11:
                case 12:
                    ZIMTipsMessageGroupMemberChangeInfo zIMTipsMessageGroupMemberChangeInfo = new ZIMTipsMessageGroupMemberChangeInfo();
                    zIMTipsMessageGroupMemberChangeInfo.type = ZIMTipsMessageChangeInfoType.getZIMTipsMessageChangeInfoType(genTipsMessageChangeInfo.Type);
                    if (genTipsMessageChangeInfo.getIsUpdateOwner()) {
                        zIMTipsMessageGroupMemberChangeInfo.groupNewOwner = (ZIMGroupMemberSimpleInfo) getUserInfo(genTipsMessageChangeInfo.getGroupNewOwner());
                    }
                    zIMTipsMessageGroupMemberChangeInfo.memberRole = genTipsMessageChangeInfo.getRole();
                    zIMTipsMessageGroupMemberChangeInfo.muteExpiredTime = genTipsMessageChangeInfo.getMuteExpiredTime();
                    return zIMTipsMessageGroupMemberChangeInfo;
                default:
                    ZIMTipsMessageChangeInfo zIMTipsMessageChangeInfo = new ZIMTipsMessageChangeInfo();
                    zIMTipsMessageChangeInfo.type = ZIMTipsMessageChangeInfoType.getZIMTipsMessageChangeInfoType(genTipsMessageChangeInfo.Type);
                    return zIMTipsMessageChangeInfo;
            }
        }
        ZIMTipsMessagePinStatusChangeInfo zIMTipsMessagePinStatusChangeInfo = new ZIMTipsMessagePinStatusChangeInfo();
        zIMTipsMessagePinStatusChangeInfo.type = ZIMTipsMessageChangeInfoType.getZIMTipsMessageChangeInfoType(genTipsMessageChangeInfo.Type);
        zIMTipsMessagePinStatusChangeInfo.isPinned = genTipsMessageChangeInfo.getIsPinned();
        return zIMTipsMessagePinStatusChangeInfo;
    }

    public static <T> ArrayList<T> listToArrayList(List<T> list) {
        if (list instanceof ArrayList) {
            return (ArrayList) list;
        }
        return new ArrayList<>(list);
    }

    private static void setPrivateParam(Object object, String param, Object value, Class<?> cls) {
        if (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(param);
                declaredField.setAccessible(true);
                declaredField.set(object, value);
            } catch (Exception e) {
                Log.e(ZIMSDKInfo.LIBRARY_NAME, "[setPrivateParam] " + e.getMessage());
            }
        }
    }

    public static JSONObject getJsonObject(String jsonString) {
        if ("".equals(jsonString) || jsonString == null || "{}".equals(jsonString)) {
            return new JSONObject();
        }
        try {
            return new JSONObject(jsonString);
        } catch (JSONException e) {
            Log.e(ZIMSDKInfo.LIBRARY_NAME, "getJsonObject error", e);
            return new JSONObject();
        }
    }

    public static ZIMGenMessageImportConfig getGenMessageImportConfig(ZIMMessageImportConfig config) {
        if (config == null) {
            ZIMGenMessageImportConfig zIMGenMessageImportConfig = new ZIMGenMessageImportConfig();
            zIMGenMessageImportConfig.setIsNullFromJava(true);
            return zIMGenMessageImportConfig;
        }
        return new ZIMGenMessageImportConfig(false);
    }

    public static ZIMGenMessageExportConfig getGenMessageExportConfig(ZIMMessageExportConfig config) {
        if (config == null) {
            ZIMGenMessageExportConfig zIMGenMessageExportConfig = new ZIMGenMessageExportConfig();
            zIMGenMessageExportConfig.setIsNullFromJava(true);
            return zIMGenMessageExportConfig;
        }
        return new ZIMGenMessageExportConfig(false);
    }

    public static ZIMGenFriendApplicationRejectConfig getGenZIMFriendApplicationRejectConfig(ZIMFriendApplicationRejectConfig config) {
        if (config == null) {
            ZIMGenFriendApplicationRejectConfig zIMGenFriendApplicationRejectConfig = new ZIMGenFriendApplicationRejectConfig();
            zIMGenFriendApplicationRejectConfig.setIsNullFromJava(true);
            zIMGenFriendApplicationRejectConfig.setEnableOfflinePush(false);
            return zIMGenFriendApplicationRejectConfig;
        }
        return new ZIMGenFriendApplicationRejectConfig(getGenPushConfig(config.pushConfig), config.pushConfig != null, false);
    }

    public static ZIMGenFriendSearchConfig getGenZIMFriendSearchConfig(ZIMFriendSearchConfig config) {
        if (config == null) {
            ZIMGenFriendSearchConfig zIMGenFriendSearchConfig = new ZIMGenFriendSearchConfig();
            zIMGenFriendSearchConfig.setIsNullFromJava(true);
            return zIMGenFriendSearchConfig;
        }
        return new ZIMGenFriendSearchConfig(config.count, config.nextFlag, config.keywords, config.isAlsoMatchFriendAlias, false);
    }

    public static ZIMGenRepliedListQueryConfig getGenRepliedListQueryConfig(ZIMMessageRepliedListQueryConfig config) {
        if (config == null) {
            ZIMGenRepliedListQueryConfig zIMGenRepliedListQueryConfig = new ZIMGenRepliedListQueryConfig();
            zIMGenRepliedListQueryConfig.setIsNullFromJava(true);
            return zIMGenRepliedListQueryConfig;
        }
        return new ZIMGenRepliedListQueryConfig(config.count, config.nextFlag, false);
    }

    public static ZIMGenGroupJoinApplicationSendConfig getZIMGenGroupJoinApplicationSendConfig(ZIMGroupJoinApplicationSendConfig config) {
        ZIMGenGroupJoinApplicationSendConfig zIMGenGroupJoinApplicationSendConfig = new ZIMGenGroupJoinApplicationSendConfig();
        zIMGenGroupJoinApplicationSendConfig.PushConfig = getGenPushConfig(config.pushConfig);
        zIMGenGroupJoinApplicationSendConfig.setWording(config.wording);
        return zIMGenGroupJoinApplicationSendConfig;
    }

    public static ZIMGenGroupJoinApplicationAcceptConfig getZIMGenGroupJoinApplicationAcceptConfig(ZIMGroupJoinApplicationAcceptConfig config) {
        ZIMGenGroupJoinApplicationAcceptConfig zIMGenGroupJoinApplicationAcceptConfig = new ZIMGenGroupJoinApplicationAcceptConfig();
        zIMGenGroupJoinApplicationAcceptConfig.PushConfig = getGenPushConfig(config.pushConfig);
        return zIMGenGroupJoinApplicationAcceptConfig;
    }

    public static ZIMGenGroupJoinApplicationRejectConfig getZIMGenGroupJoinApplicationRejectConfig(ZIMGroupJoinApplicationRejectConfig config) {
        ZIMGenGroupJoinApplicationRejectConfig zIMGenGroupJoinApplicationRejectConfig = new ZIMGenGroupJoinApplicationRejectConfig();
        zIMGenGroupJoinApplicationRejectConfig.PushConfig = getGenPushConfig(config.pushConfig);
        return zIMGenGroupJoinApplicationRejectConfig;
    }

    public static ZIMGenGroupInviteApplicationSendConfig getZIMGenGroupInviteApplicationSendConfig(ZIMGroupInviteApplicationSendConfig config) {
        ZIMGenGroupInviteApplicationSendConfig zIMGenGroupInviteApplicationSendConfig = new ZIMGenGroupInviteApplicationSendConfig();
        zIMGenGroupInviteApplicationSendConfig.PushConfig = getGenPushConfig(config.pushConfig);
        zIMGenGroupInviteApplicationSendConfig.Wording = config.wording;
        return zIMGenGroupInviteApplicationSendConfig;
    }

    public static ZIMGenGroupInviteApplicationAcceptConfig getZIMGroupInviteApplicationAcceptConfig(ZIMGroupInviteApplicationAcceptConfig config) {
        ZIMGenGroupInviteApplicationAcceptConfig zIMGenGroupInviteApplicationAcceptConfig = new ZIMGenGroupInviteApplicationAcceptConfig();
        zIMGenGroupInviteApplicationAcceptConfig.PushConfig = getGenPushConfig(config.pushConfig);
        return zIMGenGroupInviteApplicationAcceptConfig;
    }

    public static ZIMGenGroupInviteApplicationRejectConfig getZIMGroupInviteApplicationRejectConfig(ZIMGroupInviteApplicationRejectConfig config) {
        ZIMGenGroupInviteApplicationRejectConfig zIMGenGroupInviteApplicationRejectConfig = new ZIMGenGroupInviteApplicationRejectConfig();
        zIMGenGroupInviteApplicationRejectConfig.PushConfig = getGenPushConfig(config.pushConfig);
        return zIMGenGroupInviteApplicationRejectConfig;
    }

    public static ZIMGenGroupApplicationListQueryConfig getZIMGroupApplicationListQueryConfig(ZIMGroupApplicationListQueryConfig config) {
        ZIMGenGroupApplicationListQueryConfig zIMGenGroupApplicationListQueryConfig = new ZIMGenGroupApplicationListQueryConfig();
        zIMGenGroupApplicationListQueryConfig.Count = config.count;
        zIMGenGroupApplicationListQueryConfig.NextFlag = config.nextFlag;
        return zIMGenGroupApplicationListQueryConfig;
    }

    public static ZIMGroupApplicationInfo getZIMGroupApplicationInfo(ZIMGenGroupApplicationInfo info) {
        ZIMGroupApplicationInfo zIMGroupApplicationInfo = new ZIMGroupApplicationInfo();
        zIMGroupApplicationInfo.groupInfo = getGroupInfo(info.GroupInfo);
        zIMGroupApplicationInfo.applyUser = getUserInfo(info.ApplyUser);
        zIMGroupApplicationInfo.type = ZIMGroupApplicationType.getZIMGroupApplicationType(info.Type);
        zIMGroupApplicationInfo.state = ZIMGroupApplicationState.getZIMGroupApplicationState(info.State);
        zIMGroupApplicationInfo.createTime = info.CreateTime;
        zIMGroupApplicationInfo.updateTime = info.UpdateTime;
        zIMGroupApplicationInfo.wording = info.Wording;
        zIMGroupApplicationInfo.operatedUser = getZIMGroupMemberSimpleInfo(info.OperatedUser);
        return zIMGroupApplicationInfo;
    }

    private static ZIMGroupMemberSimpleInfo getZIMGroupMemberSimpleInfo(ZIMGenGroupMemberSimpleInfo operatedUser) {
        if (operatedUser.IsNullFromJava) {
            return null;
        }
        ZIMGroupMemberSimpleInfo zIMGroupMemberSimpleInfo = new ZIMGroupMemberSimpleInfo();
        zIMGroupMemberSimpleInfo.memberNickname = operatedUser.MemberNickname;
        zIMGroupMemberSimpleInfo.memberRole = operatedUser.MemberRole;
        zIMGroupMemberSimpleInfo.userAvatarUrl = operatedUser.BaseInfo.UserAvatarUrl;
        zIMGroupMemberSimpleInfo.userExtendedData = operatedUser.BaseInfo.UserExtendedData;
        zIMGroupMemberSimpleInfo.userID = operatedUser.BaseInfo.UserID;
        zIMGroupMemberSimpleInfo.userName = operatedUser.BaseInfo.UserName;
        return zIMGroupMemberSimpleInfo;
    }

    public static ArrayList<ZIMGroupApplicationInfo> getZIMGenGroupApplicationInfoArrayList(ArrayList<ZIMGenGroupApplicationInfo> applicationList) {
        ArrayList<ZIMGroupApplicationInfo> arrayList = new ArrayList<>();
        Iterator<ZIMGenGroupApplicationInfo> it = applicationList.iterator();
        while (it.hasNext()) {
            arrayList.add(getZIMGroupApplicationInfo(it.next()));
        }
        return arrayList;
    }

    public static ZIMGenUserStatusSubscribeConfig getZIMGenUserStatusSubscribeConfig(ZIMUserStatusSubscribeConfig config) {
        ZIMGenUserStatusSubscribeConfig zIMGenUserStatusSubscribeConfig = new ZIMGenUserStatusSubscribeConfig();
        zIMGenUserStatusSubscribeConfig.SubscriptionDuration = config.subscriptionDuration;
        return zIMGenUserStatusSubscribeConfig;
    }

    public static ZIMGenSubscribedUserStatusQueryConfig getZIMGenSubscribedUserStatusQueryConfig(ZIMSubscribedUserStatusQueryConfig config) {
        ZIMGenSubscribedUserStatusQueryConfig zIMGenSubscribedUserStatusQueryConfig = new ZIMGenSubscribedUserStatusQueryConfig();
        zIMGenSubscribedUserStatusQueryConfig.UserIDs = config.userIDs;
        return zIMGenSubscribedUserStatusQueryConfig;
    }

    public static ZIMUserStatus getZIMUserStatus(ZIMGenUserStatus genUserStatus) {
        ZIMUserStatus zIMUserStatus = new ZIMUserStatus();
        zIMUserStatus.userID = genUserStatus.UserID;
        zIMUserStatus.onlineStatus = ZIMUserOnlineStatus.getZIMUserOnlineStatus(genUserStatus.OnlineStatus);
        Iterator<Integer> it = genUserStatus.OnlinePlatforms.iterator();
        while (it.hasNext()) {
            zIMUserStatus.onlinePlatforms.add(ZIMPlatformType.getZIMPlatformType(it.next().intValue()));
        }
        zIMUserStatus.customStatus = genUserStatus.getCustomStatus();
        zIMUserStatus.lastUpdateTime = genUserStatus.getLastUpdateTime();
        zIMUserStatus.lastOnlineStatusUpdateTime = genUserStatus.getLastOnlineStatusUpdateTime();
        zIMUserStatus.lastCustomStatusUpdateTime = genUserStatus.getLastCustomStatusUpdateTime();
        return zIMUserStatus;
    }

    public static ZIMUserStatusSubscription getZIMUserStatusSubscription(ZIMGenUserStatusSubscription genSubscription) {
        ZIMUserStatusSubscription zIMUserStatusSubscription = new ZIMUserStatusSubscription();
        zIMUserStatusSubscription.userStatus = getZIMUserStatus(genSubscription.UserStatus);
        zIMUserStatusSubscription.subscribeExpiredTime = genSubscription.getSubscribeExpiredTime();
        return zIMUserStatusSubscription;
    }

    public static ZIMGenGroupListQueryConfig getZIMGenGroupListQueryConfig(ZIMGroupListQueryConfig config) {
        ZIMGenGroupListQueryConfig zIMGenGroupListQueryConfig = new ZIMGenGroupListQueryConfig();
        zIMGenGroupListQueryConfig.setNextFlag(config.nextFlag);
        zIMGenGroupListQueryConfig.setUserIDs(config.userIDs);
        return zIMGenGroupListQueryConfig;
    }

    public static ZIMMessageReactionsChangedEventResult getZIMMessageReactionsChangedEventResult(ArrayList<ZIMGenMessageReaction> genMessageReactions, ArrayList<ZIMGenMessageReactionChangeInfo> genChangeInfoList) {
        ZIMMessageReactionsChangedEventResult zIMMessageReactionsChangedEventResult = new ZIMMessageReactionsChangedEventResult();
        zIMMessageReactionsChangedEventResult.setReactions(getZIMMessageReactionList(genMessageReactions));
        zIMMessageReactionsChangedEventResult.setChangeInfoList(getZIMMessageReactionChangeInfoList(genChangeInfoList));
        return zIMMessageReactionsChangedEventResult;
    }
}

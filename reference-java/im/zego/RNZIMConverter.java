package im.zego;

import androidx.core.app.NotificationCompat;
import androidx.core.view.InputDeviceCompat;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import im.zego.zim.entity.ZIMAudioMessage;
import im.zego.zim.entity.ZIMAudioMessageLiteInfo;
import im.zego.zim.entity.ZIMBarrageMessage;
import im.zego.zim.entity.ZIMCallUserInfo;
import im.zego.zim.entity.ZIMCombineMessage;
import im.zego.zim.entity.ZIMCombineMessageLiteInfo;
import im.zego.zim.entity.ZIMCommandMessage;
import im.zego.zim.entity.ZIMConversation;
import im.zego.zim.entity.ZIMConversationChangeInfo;
import im.zego.zim.entity.ZIMCustomMessage;
import im.zego.zim.entity.ZIMCustomMessageLiteInfo;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMFileMessage;
import im.zego.zim.entity.ZIMFileMessageLiteInfo;
import im.zego.zim.entity.ZIMFriendApplicationInfo;
import im.zego.zim.entity.ZIMFriendInfo;
import im.zego.zim.entity.ZIMGroup;
import im.zego.zim.entity.ZIMGroupApplicationInfo;
import im.zego.zim.entity.ZIMGroupConversation;
import im.zego.zim.entity.ZIMGroupFullInfo;
import im.zego.zim.entity.ZIMGroupInfo;
import im.zego.zim.entity.ZIMGroupMemberInfo;
import im.zego.zim.entity.ZIMGroupMemberSimpleInfo;
import im.zego.zim.entity.ZIMGroupMuteInfo;
import im.zego.zim.entity.ZIMGroupOperatedInfo;
import im.zego.zim.entity.ZIMGroupVerifyInfo;
import im.zego.zim.entity.ZIMImageMessage;
import im.zego.zim.entity.ZIMImageMessageLiteInfo;
import im.zego.zim.entity.ZIMMediaMessage;
import im.zego.zim.entity.ZIMMediaMessageLiteInfo;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.entity.ZIMMessageLiteInfo;
import im.zego.zim.entity.ZIMMessageMentionedInfo;
import im.zego.zim.entity.ZIMMessageReaction;
import im.zego.zim.entity.ZIMMessageReactionUserInfo;
import im.zego.zim.entity.ZIMMessageReceiptInfo;
import im.zego.zim.entity.ZIMMessageReceivedInfo;
import im.zego.zim.entity.ZIMMessageRepliedInfo;
import im.zego.zim.entity.ZIMMessageSentStatusChangeInfo;
import im.zego.zim.entity.ZIMMultipleMessage;
import im.zego.zim.entity.ZIMMultipleMessageLiteInfo;
import im.zego.zim.entity.ZIMOfflinePushPrivateMessageTemplate;
import im.zego.zim.entity.ZIMPushConfig;
import im.zego.zim.entity.ZIMRevokeMessage;
import im.zego.zim.entity.ZIMRevokeMessageLiteInfo;
import im.zego.zim.entity.ZIMRoomFullInfo;
import im.zego.zim.entity.ZIMRoomMemberAttributesInfo;
import im.zego.zim.entity.ZIMRoomMemberAttributesOperatedInfo;
import im.zego.zim.entity.ZIMRoomMemberAttributesUpdateInfo;
import im.zego.zim.entity.ZIMRoomMemberInfo;
import im.zego.zim.entity.ZIMRoomOperatedInfo;
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
import im.zego.zim.entity.ZIMUserStatus;
import im.zego.zim.entity.ZIMVideoMessage;
import im.zego.zim.entity.ZIMVideoMessageLiteInfo;
import im.zego.zim.entity.ZIMVoIPConfig;
import im.zego.zim.enums.ZIMCXHandleType;
import im.zego.zim.enums.ZIMConversationNotificationStatus;
import im.zego.zim.enums.ZIMConversationType;
import im.zego.zim.enums.ZIMMessageDirection;
import im.zego.zim.enums.ZIMMessageReceiptStatus;
import im.zego.zim.enums.ZIMMessageRevokeStatus;
import im.zego.zim.enums.ZIMMessageSentStatus;
import im.zego.zim.enums.ZIMMessageType;
import im.zego.zim.enums.ZIMPlatformType;
import im.zego.zim.enums.ZIMRevokeType;
import im.zego.zim.enums.ZIMTipsMessageChangeInfoType;
import im.zego.zim.enums.ZIMTipsMessageEvent;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.bouncycastle.i18n.ErrorBundle;

public class RNZIMConverter {
    static final boolean $assertionsDisabled = false;

    public static ZIMPushConfig convertZIMPushConfig(ReadableMap readableMap) {
        if (!readableMap.hasKey("pushConfig")) {
            return null;
        }
        ReadableMap map = readableMap.getMap("pushConfig");
        ZIMPushConfig zIMPushConfig = new ZIMPushConfig();
        zIMPushConfig.title = map.hasKey("title") ? map.getString("title") : "";
        zIMPushConfig.content = map.hasKey("content") ? map.getString("content") : "";
        zIMPushConfig.payload = map.hasKey("payload") ? map.getString("payload") : "";
        zIMPushConfig.resourcesID = map.hasKey("resourcesID") ? map.getString("resourcesID") : "";
        zIMPushConfig.threadID = map.hasKey("threadID") ? map.getString("threadID") : "";
        zIMPushConfig.badgeIncrement = map.hasKey("badgeIncrement") ? map.getInt("badgeIncrement") : 0;
        zIMPushConfig.enableBadge = Boolean.valueOf(map.hasKey("enableBadge") ? map.getBoolean("enableBadge") : false);
        if (map.getMap("voIPConfig") != null) {
            ReadableMap map2 = map.getMap("voIPConfig");
            ZIMVoIPConfig zIMVoIPConfig = new ZIMVoIPConfig();
            zIMVoIPConfig.iOSVoIPHandleType = ZIMCXHandleType.getZIMCXHandleType(map2.getInt("iOSVoIPHandleType"));
            zIMVoIPConfig.iOSVoIPHandleValue = map2.hasKey("iOSVoIPHandleValue") ? map2.getString("iOSVoIPHandleValue") : "";
            zIMVoIPConfig.iOSVoIPHasVideo = Boolean.valueOf(map2.hasKey("iOSVoIPHasVideo") ? map2.getBoolean("iOSVoIPHasVideo") : false);
            zIMPushConfig.voIPConfig = zIMVoIPConfig;
        }
        if (map.getMap("privateMessageTemplate") != null) {
            ReadableMap map3 = map.getMap("privateMessageTemplate");
            ZIMOfflinePushPrivateMessageTemplate zIMOfflinePushPrivateMessageTemplate = new ZIMOfflinePushPrivateMessageTemplate();
            zIMOfflinePushPrivateMessageTemplate.templateID = map3.hasKey("templateID") ? map3.getString("templateID") : "";
            zIMOfflinePushPrivateMessageTemplate.titleParameters = map3.hasKey("titleParameters") ? map3.getString("titleParameters") : "";
            zIMOfflinePushPrivateMessageTemplate.contentParameters = map3.hasKey("contentParameters") ? map3.getString("contentParameters") : "";
            zIMPushConfig.privateMessageTemplate = zIMOfflinePushPrivateMessageTemplate;
        }
        return zIMPushConfig;
    }

    public static ReadableMap convertMessageReceivedInfo(ZIMMessageReceivedInfo zIMMessageReceivedInfo) {
        if (zIMMessageReceivedInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putBoolean("isOfflineMessage", zIMMessageReceivedInfo.isOfflineMessage);
        return writableMapCreateMap;
    }

    public static ReadableMap convertUserInfo(ZIMUserInfo zIMUserInfo) {
        if (zIMUserInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMUserInfo.userID);
        writableMapCreateMap.putString("userName", zIMUserInfo.userName);
        writableMapCreateMap.putString("userAvatarUrl", zIMUserInfo.userAvatarUrl);
        writableMapCreateMap.putString("userExtendedData", zIMUserInfo.userExtendedData);
        return writableMapCreateMap;
    }

    public static ReadableArray convertUserInfoList(ArrayList<ZIMUserInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMUserInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertUserInfo(it.next()));
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertUserFullInfo(ZIMUserFullInfo zIMUserFullInfo) {
        if (zIMUserFullInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putMap("baseInfo", convertUserInfo(zIMUserFullInfo.baseInfo));
        writableMapCreateMap.putString("userAvatarUrl", zIMUserFullInfo.baseInfo.userAvatarUrl);
        writableMapCreateMap.putString("extendedData", zIMUserFullInfo.extendedData);
        return writableMapCreateMap;
    }

    public static ReadableMap convertUserRule(ZIMUserOfflinePushRule zIMUserOfflinePushRule) {
        if (zIMUserOfflinePushRule == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<Integer> it = zIMUserOfflinePushRule.onlinePlatforms.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushInt(it.next().intValue());
        }
        writableMapCreateMap.putArray("onlinePlatforms", writableArrayCreateArray);
        WritableArray writableArrayCreateArray2 = Arguments.createArray();
        Iterator<Integer> it2 = zIMUserOfflinePushRule.notToReceiveOfflinePushPlatforms.iterator();
        while (it2.hasNext()) {
            writableArrayCreateArray2.pushInt(it2.next().intValue());
        }
        writableMapCreateMap.putArray("notToReceiveOfflinePushPlatforms", writableArrayCreateArray2);
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putMap("offlinePushRule", writableMapCreateMap);
        return writableMapCreateMap2;
    }

    public static ReadableMap convertUserStatus(ZIMUserStatus zIMUserStatus) {
        if (zIMUserStatus == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMUserStatus.userID);
        writableMapCreateMap.putString("customStatus", zIMUserStatus.customStatus);
        writableMapCreateMap.putInt("onlineStatus", zIMUserStatus.onlineStatus.value());
        writableMapCreateMap.putDouble("lastUpdateTime", zIMUserStatus.lastUpdateTime);
        writableMapCreateMap.putDouble("lastOnlineStatusUpdateTime", zIMUserStatus.lastOnlineStatusUpdateTime);
        writableMapCreateMap.putDouble("lastCustomStatusUpdateTime", zIMUserStatus.lastCustomStatusUpdateTime);
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMPlatformType> it = zIMUserStatus.onlinePlatforms.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushInt(it.next().value());
        }
        writableMapCreateMap.putArray("onlinePlatforms", writableArrayCreateArray);
        return writableMapCreateMap;
    }

    public static ReadableArray convertErrorUserInfoList(ArrayList<ZIMErrorUserInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        for (ZIMErrorUserInfo zIMErrorUserInfo : arrayList) {
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putString("userID", zIMErrorUserInfo.userID);
            writableMapCreateMap.putInt("reason", zIMErrorUserInfo.reason);
            writableArrayCreateArray.pushMap(writableMapCreateMap);
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertRoomMemberInfo(ZIMRoomMemberInfo zIMRoomMemberInfo) {
        if (zIMRoomMemberInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMRoomMemberInfo.userID);
        writableMapCreateMap.putString("userName", zIMRoomMemberInfo.userName);
        writableMapCreateMap.putString("userAvatarUrl", zIMRoomMemberInfo.userAvatarUrl);
        writableMapCreateMap.putString("userExtendedData", zIMRoomMemberInfo.userExtendedData);
        return writableMapCreateMap;
    }

    public static ReadableMap convertConversation(ZIMConversation zIMConversation) {
        if (zIMConversation == null) {
            return null;
        }
        int iValue = zIMConversation.type.value();
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("conversationID", zIMConversation.conversationID);
        writableMapCreateMap.putString("conversationName", zIMConversation.conversationName);
        writableMapCreateMap.putString("conversationAlias", zIMConversation.conversationAlias);
        writableMapCreateMap.putString("conversationAvatarUrl", zIMConversation.conversationAvatarUrl);
        writableMapCreateMap.putInt(SVGParser.XML_STYLESHEET_ATTR_TYPE, iValue);
        writableMapCreateMap.putInt("unreadMessageCount", zIMConversation.unreadMessageCount);
        writableMapCreateMap.putDouble("orderKey", zIMConversation.orderKey);
        writableMapCreateMap.putInt("notificationStatus", zIMConversation.notificationStatus.value());
        writableMapCreateMap.putBoolean("isPinned", zIMConversation.isPinned);
        writableMapCreateMap.putDouble("pinnedTime", zIMConversation.pinnedTime);
        writableMapCreateMap.putString("draft", zIMConversation.draft);
        if (zIMConversation.lastMessage != null) {
            writableMapCreateMap.putMap("lastMessage", convertMessage(zIMConversation.lastMessage));
        } else {
            writableMapCreateMap.putNull("lastMessage");
        }
        if (zIMConversation.mentionedInfoList != null) {
            WritableArray writableArrayCreateArray = Arguments.createArray();
            for (ZIMMessageMentionedInfo zIMMessageMentionedInfo : zIMConversation.mentionedInfoList) {
                WritableMap writableMapCreateMap2 = Arguments.createMap();
                writableMapCreateMap2.putInt(SVGParser.XML_STYLESHEET_ATTR_TYPE, zIMMessageMentionedInfo.type.value());
                writableMapCreateMap2.putString("fromUserID", zIMMessageMentionedInfo.fromUserID);
                writableMapCreateMap2.putString("messageID", String.valueOf(zIMMessageMentionedInfo.messageID));
                writableMapCreateMap2.putDouble("messageSeq", zIMMessageMentionedInfo.messageSeq);
                writableArrayCreateArray.pushMap(writableMapCreateMap2);
            }
            writableMapCreateMap.putArray("mentionedInfoList", writableArrayCreateArray);
        }
        if (zIMConversation.marks != null) {
            WritableArray writableArrayCreateArray2 = Arguments.createArray();
            Iterator<Integer> it = zIMConversation.marks.iterator();
            while (it.hasNext()) {
                writableArrayCreateArray2.pushInt(it.next().intValue());
            }
            writableMapCreateMap.putArray("marks", writableArrayCreateArray2);
        }
        if (iValue == 2 && (zIMConversation instanceof ZIMGroupConversation)) {
            ZIMGroupConversation zIMGroupConversation = (ZIMGroupConversation) zIMConversation;
            writableMapCreateMap.putBoolean("isDisabled", zIMGroupConversation.isDisabled);
            writableMapCreateMap.putDouble("mutedExpiredTime", zIMGroupConversation.mutedExpiredTime);
        }
        return writableMapCreateMap;
    }

    public static ZIMConversation convertConversationFromJsToJava(ReadableMap readableMap) {
        if (readableMap == null) {
            return null;
        }
        ZIMConversation zIMConversation = new ZIMConversation();
        zIMConversation.conversationID = readableMap.hasKey("conversationID") ? readableMap.getString("conversationID") : "";
        zIMConversation.conversationName = readableMap.hasKey("conversationName") ? readableMap.getString("conversationName") : "";
        zIMConversation.conversationAlias = readableMap.hasKey("conversationAlias") ? readableMap.getString("conversationAlias") : "";
        zIMConversation.conversationAvatarUrl = readableMap.hasKey("conversationAvatarUrl") ? readableMap.getString("conversationAvatarUrl") : "";
        zIMConversation.unreadMessageCount = readableMap.hasKey("unreadMessageCount") ? readableMap.getInt("unreadMessageCount") : 0;
        zIMConversation.orderKey = readableMap.hasKey("orderKey") ? Double.valueOf(readableMap.getDouble("orderKey")).longValue() : 0L;
        zIMConversation.type = ZIMConversationType.getZIMConversationType(readableMap.getInt(SVGParser.XML_STYLESHEET_ATTR_TYPE));
        zIMConversation.notificationStatus = ZIMConversationNotificationStatus.getZIMConversationNotificationStatus(readableMap.getInt("notificationStatus"));
        zIMConversation.isPinned = readableMap.hasKey("isPinned") ? readableMap.getBoolean("isPinned") : false;
        zIMConversation.pinnedTime = readableMap.hasKey("pinnedTime") ? Double.valueOf(readableMap.getDouble("pinnedTime")).longValue() : 0L;
        zIMConversation.draft = readableMap.hasKey("draft") ? readableMap.getString("draft") : "";
        zIMConversation.lastMessage = null;
        return zIMConversation;
    }

    public static ReadableArray convertMessageReceiptInfoList(ArrayList<ZIMMessageReceiptInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        for (ZIMMessageReceiptInfo zIMMessageReceiptInfo : arrayList) {
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putString("conversationID", zIMMessageReceiptInfo.conversationID);
            writableMapCreateMap.putInt("conversationType", zIMMessageReceiptInfo.conversationType.value());
            writableMapCreateMap.putString("messageID", String.valueOf(zIMMessageReceiptInfo.messageID));
            writableMapCreateMap.putInt("status", zIMMessageReceiptInfo.status.value());
            writableMapCreateMap.putInt("readMemberCount", zIMMessageReceiptInfo.readMemberCount);
            writableMapCreateMap.putInt("unreadMemberCount", zIMMessageReceiptInfo.unreadMemberCount);
            writableMapCreateMap.putBoolean("isSelfOperated", zIMMessageReceiptInfo.isSelfOperated);
            writableMapCreateMap.putDouble("readTime", zIMMessageReceiptInfo.readTime);
            writableArrayCreateArray.pushMap(writableMapCreateMap);
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertMessageReaction(ZIMMessageReaction zIMMessageReaction) {
        if (zIMMessageReaction == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("conversationID", zIMMessageReaction.conversationID);
        writableMapCreateMap.putInt("conversationType", zIMMessageReaction.conversationType.value());
        writableMapCreateMap.putString("messageID", String.valueOf(zIMMessageReaction.messageID));
        writableMapCreateMap.putString("reactionType", zIMMessageReaction.reactionType);
        writableMapCreateMap.putInt("totalCount", zIMMessageReaction.totalCount);
        writableMapCreateMap.putInt("sumCount", zIMMessageReaction.sumCount);
        writableMapCreateMap.putBoolean("isSelfIncluded", zIMMessageReaction.isSelfIncluded);
        WritableArray writableArrayCreateArray = Arguments.createArray();
        for (ZIMMessageReactionUserInfo zIMMessageReactionUserInfo : zIMMessageReaction.userList) {
            WritableMap writableMapCreateMap2 = Arguments.createMap();
            writableMapCreateMap2.putString("userID", zIMMessageReactionUserInfo.userID);
            writableArrayCreateArray.pushMap(writableMapCreateMap2);
        }
        writableMapCreateMap.putArray("userList", writableArrayCreateArray);
        return writableMapCreateMap;
    }

    public static ReadableMap convertMessageSentStatusChangeInfo(ZIMMessageSentStatusChangeInfo zIMMessageSentStatusChangeInfo) {
        if (zIMMessageSentStatusChangeInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("reason", zIMMessageSentStatusChangeInfo.reason);
        writableMapCreateMap.putInt("status", zIMMessageSentStatusChangeInfo.status.value());
        writableMapCreateMap.putMap("message", convertMessage(zIMMessageSentStatusChangeInfo.message));
        return writableMapCreateMap;
    }

    public static ZIMMessage convertMessageFromJsToJava(ReadableMap readableMap) {
        ZIMMessage zIMTextMessage;
        ZIMMessage zIMCombineMessage;
        ZIMMessage zIMCommandMessage;
        if (readableMap == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.getZIMMessageType(readableMap.getInt(SVGParser.XML_STYLESHEET_ATTR_TYPE)).ordinal()]) {
            case 1:
                zIMTextMessage = new ZIMTextMessage(readableMap.hasKey("message") ? readableMap.getString("message") : "");
                break;
            case 2:
                ReadableArray array = readableMap.getArray("message");
                int size = array.size();
                byte[] bArr = new byte[size];
                for (int i = 0; i < size; i++) {
                    int iIntValue = Double.valueOf(array.getDouble(i)).intValue();
                    if (iIntValue >= 128) {
                        iIntValue += InputDeviceCompat.SOURCE_ANY;
                    }
                    bArr[i] = (byte) iIntValue;
                }
                zIMCommandMessage = new ZIMCommandMessage(bArr);
                zIMTextMessage = zIMCommandMessage;
                break;
            case 3:
                zIMTextMessage = new ZIMBarrageMessage(readableMap.hasKey("message") ? readableMap.getString("message") : "");
                break;
            case 4:
                ZIMRevokeMessage zIMRevokeMessage = new ZIMRevokeMessage();
                try {
                    Field declaredField = ZIMRevokeMessage.class.getDeclaredField("revokeType");
                    declaredField.setAccessible(true);
                    declaredField.set(zIMRevokeMessage, ZIMRevokeType.getZIMRevokeType(readableMap.hasKey("revokeType") ? readableMap.getInt("revokeType") : -1));
                    declaredField.setAccessible(false);
                    Field declaredField2 = ZIMRevokeMessage.class.getDeclaredField("originalMessageType");
                    declaredField2.setAccessible(true);
                    declaredField2.set(zIMRevokeMessage, ZIMMessageType.getZIMMessageType(readableMap.hasKey("originalMessageType") ? readableMap.getInt("originalMessageType") : 0));
                    declaredField2.setAccessible(false);
                    Field declaredField3 = ZIMRevokeMessage.class.getDeclaredField("revokeStatus");
                    declaredField3.setAccessible(true);
                    declaredField3.set(zIMRevokeMessage, ZIMMessageRevokeStatus.getZIMMessageRevokeStatus(readableMap.hasKey("revokeStatus") ? readableMap.getInt("revokeStatus") : -1));
                    declaredField3.setAccessible(false);
                    Field declaredField4 = ZIMRevokeMessage.class.getDeclaredField("revokeTimestamp");
                    declaredField4.setAccessible(true);
                    declaredField4.set(zIMRevokeMessage, Long.valueOf(readableMap.hasKey("revokeTimestamp") ? Double.valueOf(readableMap.getDouble("revokeTimestamp")).longValue() : 0L));
                    declaredField4.setAccessible(false);
                    Field declaredField5 = ZIMRevokeMessage.class.getDeclaredField("operatedUserID");
                    declaredField5.setAccessible(true);
                    declaredField5.set(zIMRevokeMessage, readableMap.hasKey("operatedUserID") ? readableMap.getString("operatedUserID") : "");
                    declaredField5.setAccessible(false);
                    Field declaredField6 = ZIMRevokeMessage.class.getDeclaredField("revokeExtendedData");
                    declaredField6.setAccessible(true);
                    declaredField6.set(zIMRevokeMessage, readableMap.hasKey("revokeExtendedData") ? readableMap.getString("revokeExtendedData") : "");
                    declaredField6.setAccessible(false);
                    Field declaredField7 = ZIMRevokeMessage.class.getDeclaredField("originalTextMessageContent");
                    declaredField7.setAccessible(true);
                    declaredField7.set(zIMRevokeMessage, readableMap.hasKey("originalTextMessageContent") ? readableMap.getString("originalTextMessageContent") : "");
                    declaredField7.setAccessible(false);
                    zIMTextMessage = zIMRevokeMessage;
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                    zIMTextMessage = zIMRevokeMessage;
                } catch (NoSuchFieldException e2) {
                    e2.printStackTrace();
                    zIMTextMessage = zIMRevokeMessage;
                }
                break;
            case 5:
                ZIMTipsMessage zIMTipsMessage = new ZIMTipsMessage();
                zIMTipsMessage.event = ZIMTipsMessageEvent.getZIMTipsMessageEvent(readableMap.hasKey(NotificationCompat.CATEGORY_EVENT) ? readableMap.getInt(NotificationCompat.CATEGORY_EVENT) : 0);
                zIMTipsMessage.operatedUser = readableMap.hasKey("operatedUser") ? convertUserOrGroupMemberFromJsToJava(readableMap.getMap("operatedUser")) : null;
                ArrayList<ZIMUserInfo> arrayList = new ArrayList<>();
                if (readableMap.getArray("targetUserList") != null) {
                    Iterator<Object> it = readableMap.getArray("targetUserList").toArrayList().iterator();
                    while (it.hasNext()) {
                        arrayList.add(convertUserOrGroupMemberFromJsToJava((HashMap<String, Object>) it.next()));
                    }
                }
                zIMTipsMessage.targetUserList = arrayList;
                zIMTipsMessage.changeInfo = readableMap.hasKey("changeInfo") ? convertTipsMessageChangeInfoFromJsToJava(readableMap.getMap("changeInfo")) : null;
                zIMCommandMessage = zIMTipsMessage;
                zIMTextMessage = zIMCommandMessage;
                break;
            case 6:
                ZIMCustomMessage zIMCustomMessage = new ZIMCustomMessage(readableMap.hasKey("message") ? readableMap.getString("message") : "", readableMap.hasKey("subType") ? readableMap.getInt("subType") : 0);
                zIMCustomMessage.searchedContent = readableMap.hasKey("searchedContent") ? readableMap.getString("searchedContent") : "";
                zIMTextMessage = zIMCustomMessage;
                break;
            case 7:
                String string = readableMap.hasKey("title") ? readableMap.getString("title") : "";
                String string2 = readableMap.hasKey(ErrorBundle.SUMMARY_ENTRY) ? readableMap.getString(ErrorBundle.SUMMARY_ENTRY) : "";
                ArrayList arrayList2 = new ArrayList();
                if (readableMap.getArray("messageList") != null) {
                    Iterator<Object> it2 = readableMap.getArray("messageList").toArrayList().iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(convertMessageFromJsToJava((HashMap<String, Object>) it2.next()));
                    }
                }
                zIMCombineMessage = new ZIMCombineMessage(string, string2, arrayList2);
                try {
                    if (readableMap.hasKey("combineID")) {
                        Field declaredField8 = ZIMCombineMessage.class.getDeclaredField("combineID");
                        declaredField8.setAccessible(true);
                        declaredField8.set(zIMCombineMessage, readableMap.getString("combineID"));
                        declaredField8.setAccessible(false);
                    }
                } catch (IllegalAccessException e3) {
                    e3.printStackTrace();
                } catch (NoSuchFieldException e4) {
                    e4.printStackTrace();
                }
                zIMTextMessage = zIMCombineMessage;
                break;
            case 8:
                ZIMImageMessage zIMImageMessage = new ZIMImageMessage(readableMap.hasKey("fileLocalPath") ? readableMap.getString("fileLocalPath") : "");
                if (readableMap.hasKey("thumbnailDownloadUrl")) {
                    zIMImageMessage.setThumbnailDownloadUrl(readableMap.getString("thumbnailDownloadUrl"));
                }
                if (readableMap.hasKey("largeImageDownloadUrl")) {
                    zIMImageMessage.setLargeImageDownloadUrl(readableMap.getString("largeImageDownloadUrl"));
                }
                try {
                    if (readableMap.hasKey("thumbnailLocalPath")) {
                        Field declaredField9 = ZIMImageMessage.class.getDeclaredField("thumbnailLocalPath");
                        declaredField9.setAccessible(true);
                        declaredField9.set(zIMImageMessage, readableMap.getString("thumbnailLocalPath"));
                        declaredField9.setAccessible(false);
                    }
                    if (readableMap.hasKey("largeImageLocalPath")) {
                        Field declaredField10 = ZIMImageMessage.class.getDeclaredField("largeImageLocalPath");
                        declaredField10.setAccessible(true);
                        declaredField10.set(zIMImageMessage, readableMap.getString("largeImageLocalPath"));
                        declaredField10.setAccessible(false);
                    }
                    if (readableMap.hasKey("originalImageWidth")) {
                        Field declaredField11 = ZIMImageMessage.class.getDeclaredField("originalImageWidth");
                        declaredField11.setAccessible(true);
                        declaredField11.set(zIMImageMessage, Integer.valueOf(readableMap.getInt("originalImageWidth")));
                        declaredField11.setAccessible(false);
                    }
                    if (readableMap.hasKey("originalImageHeight")) {
                        Field declaredField12 = ZIMImageMessage.class.getDeclaredField("originalImageHeight");
                        declaredField12.setAccessible(true);
                        declaredField12.set(zIMImageMessage, Integer.valueOf(readableMap.getInt("originalImageHeight")));
                        declaredField12.setAccessible(false);
                    }
                    if (readableMap.hasKey("thumbnailWidth")) {
                        Field declaredField13 = ZIMImageMessage.class.getDeclaredField("thumbnailWidth");
                        declaredField13.setAccessible(true);
                        declaredField13.set(zIMImageMessage, Integer.valueOf(readableMap.getInt("thumbnailWidth")));
                        declaredField13.setAccessible(false);
                    }
                    if (readableMap.hasKey("thumbnailHeight")) {
                        Field declaredField14 = ZIMImageMessage.class.getDeclaredField("thumbnailHeight");
                        declaredField14.setAccessible(true);
                        declaredField14.set(zIMImageMessage, Integer.valueOf(readableMap.getInt("thumbnailHeight")));
                        declaredField14.setAccessible(false);
                    }
                    if (readableMap.hasKey("largeImageWidth")) {
                        Field declaredField15 = ZIMImageMessage.class.getDeclaredField("largeImageWidth");
                        declaredField15.setAccessible(true);
                        declaredField15.set(zIMImageMessage, Integer.valueOf(readableMap.getInt("largeImageWidth")));
                        declaredField15.setAccessible(false);
                    }
                    zIMTextMessage = zIMImageMessage;
                    if (readableMap.hasKey("largeImageHeight")) {
                        Field declaredField16 = ZIMImageMessage.class.getDeclaredField("largeImageHeight");
                        declaredField16.setAccessible(true);
                        declaredField16.set(zIMImageMessage, Integer.valueOf(readableMap.getInt("largeImageHeight")));
                        declaredField16.setAccessible(false);
                        zIMTextMessage = zIMImageMessage;
                    }
                } catch (IllegalAccessException e5) {
                    e5.printStackTrace();
                    zIMTextMessage = zIMImageMessage;
                } catch (NoSuchFieldException e6) {
                    e6.printStackTrace();
                    zIMTextMessage = zIMImageMessage;
                }
                break;
            case 9:
                zIMTextMessage = new ZIMFileMessage(readableMap.hasKey("fileLocalPath") ? readableMap.getString("fileLocalPath") : "");
                break;
            case 10:
                ZIMVideoMessage zIMVideoMessage = new ZIMVideoMessage(readableMap.hasKey("fileLocalPath") ? readableMap.getString("fileLocalPath") : "", readableMap.hasKey("videoDuration") ? Double.valueOf(readableMap.getDouble("videoDuration")).longValue() : 0L);
                try {
                    if (readableMap.hasKey("videoFirstFrameDownloadUrl")) {
                        zIMVideoMessage.setVideoFirstFrameDownloadUrl(readableMap.getString("videoFirstFrameDownloadUrl"));
                    }
                    if (readableMap.hasKey("videoFirstFrameLocalPath")) {
                        Field declaredField17 = ZIMVideoMessage.class.getDeclaredField("videoFirstFrameLocalPath");
                        declaredField17.setAccessible(true);
                        declaredField17.set(zIMVideoMessage, readableMap.getString("videoFirstFrameLocalPath"));
                        declaredField17.setAccessible(false);
                    }
                    if (readableMap.hasKey("videoFirstFrameWidth")) {
                        Field declaredField18 = ZIMVideoMessage.class.getDeclaredField("videoFirstFrameWidth");
                        declaredField18.setAccessible(true);
                        declaredField18.set(zIMVideoMessage, Integer.valueOf(readableMap.getInt("videoFirstFrameWidth")));
                        declaredField18.setAccessible(false);
                    }
                    if (readableMap.hasKey("videoFirstFrameHeight")) {
                        Field declaredField19 = ZIMVideoMessage.class.getDeclaredField("videoFirstFrameHeight");
                        declaredField19.setAccessible(true);
                        declaredField19.set(zIMVideoMessage, Integer.valueOf(readableMap.getInt("videoFirstFrameHeight")));
                        declaredField19.setAccessible(false);
                    }
                } catch (IllegalAccessException e7) {
                    e7.printStackTrace();
                } catch (NoSuchFieldException e8) {
                    e8.printStackTrace();
                }
                zIMTextMessage = zIMVideoMessage;
                break;
            case 11:
                zIMCombineMessage = new ZIMAudioMessage(readableMap.hasKey("fileLocalPath") ? readableMap.getString("fileLocalPath") : "", readableMap.hasKey("audioDuration") ? Double.valueOf(readableMap.getDouble("audioDuration")).longValue() : 0L);
                zIMTextMessage = zIMCombineMessage;
                break;
            case 12:
                ZIMMultipleMessage zIMMultipleMessage = new ZIMMultipleMessage();
                if (readableMap.getArray("messageInfoList") != null) {
                    ArrayList<ZIMMessageLiteInfo> arrayList3 = new ArrayList<>();
                    Iterator<Object> it3 = readableMap.getArray("messageInfoList").toArrayList().iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(convertLiteInfoFromJsToJava((HashMap) it3.next()));
                    }
                    zIMMultipleMessage.setMessageInfoList(arrayList3);
                }
                zIMCommandMessage = zIMMultipleMessage;
                if (readableMap.getArray("failedIndexList") != null) {
                    ArrayList<Integer> arrayList4 = new ArrayList<>();
                    Iterator<Object> it4 = readableMap.getArray("failedIndexList").toArrayList().iterator();
                    while (it4.hasNext()) {
                        arrayList4.add(Integer.valueOf(Double.valueOf(((Double) it4.next()).doubleValue()).intValue()));
                    }
                    zIMMultipleMessage.setFailedIndexList(arrayList4);
                    zIMCommandMessage = zIMMultipleMessage;
                }
                zIMTextMessage = zIMCommandMessage;
                break;
            default:
                zIMCommandMessage = new ZIMMessage(ZIMMessageType.UNKNOWN);
                zIMTextMessage = zIMCommandMessage;
                break;
        }
        try {
            zIMTextMessage.extendedData = readableMap.hasKey("extendedData") ? readableMap.getString("extendedData") : "";
            zIMTextMessage.localExtendedData = readableMap.hasKey("localExtendedData") ? readableMap.getString("localExtendedData") : "";
            Field declaredField20 = ZIMMessage.class.getDeclaredField(SVGParser.XML_STYLESHEET_ATTR_TYPE);
            declaredField20.setAccessible(true);
            declaredField20.set(zIMTextMessage, ZIMMessageType.getZIMMessageType(readableMap.getInt(SVGParser.XML_STYLESHEET_ATTR_TYPE)));
            declaredField20.setAccessible(false);
            Field declaredField21 = ZIMMessage.class.getDeclaredField("messageID");
            declaredField21.setAccessible(true);
            declaredField21.set(zIMTextMessage, Long.valueOf(readableMap.hasKey("messageID") ? Long.valueOf(readableMap.getString("messageID")).longValue() : 0L));
            declaredField21.setAccessible(false);
            Field declaredField22 = ZIMMessage.class.getDeclaredField("conversationID");
            declaredField22.setAccessible(true);
            declaredField22.set(zIMTextMessage, readableMap.hasKey("conversationID") ? readableMap.getString("conversationID") : "");
            declaredField22.setAccessible(false);
            Field declaredField23 = ZIMMessage.class.getDeclaredField("conversationSeq");
            declaredField23.setAccessible(true);
            declaredField23.set(zIMTextMessage, Long.valueOf(readableMap.hasKey("conversationSeq") ? Double.valueOf(readableMap.getDouble("conversationSeq")).longValue() : 0L));
            declaredField23.setAccessible(false);
            Field declaredField24 = ZIMMessage.class.getDeclaredField("messageSeq");
            declaredField24.setAccessible(true);
            declaredField24.set(zIMTextMessage, Long.valueOf(readableMap.hasKey("messageSeq") ? Double.valueOf(readableMap.getDouble("messageSeq")).longValue() : 0L));
            declaredField24.setAccessible(false);
            Field declaredField25 = ZIMMessage.class.getDeclaredField("senderUserID");
            declaredField25.setAccessible(true);
            declaredField25.set(zIMTextMessage, readableMap.hasKey("senderUserID") ? readableMap.getString("senderUserID") : "");
            declaredField25.setAccessible(false);
            Field declaredField26 = ZIMMessage.class.getDeclaredField("timestamp");
            declaredField26.setAccessible(true);
            declaredField26.set(zIMTextMessage, Long.valueOf(readableMap.hasKey("timestamp") ? Double.valueOf(readableMap.getDouble("timestamp")).longValue() : 0L));
            declaredField26.setAccessible(false);
            Field declaredField27 = ZIMMessage.class.getDeclaredField("localMessageID");
            declaredField27.setAccessible(true);
            declaredField27.set(zIMTextMessage, Long.valueOf(readableMap.hasKey("localMessageID") ? Long.valueOf(readableMap.getString("localMessageID")).longValue() : 0L));
            declaredField27.setAccessible(false);
            Field declaredField28 = ZIMMessage.class.getDeclaredField("conversationType");
            declaredField28.setAccessible(true);
            declaredField28.set(zIMTextMessage, ZIMConversationType.getZIMConversationType(readableMap.hasKey("conversationType") ? readableMap.getInt("conversationType") : -1));
            declaredField28.setAccessible(false);
            Field declaredField29 = ZIMMessage.class.getDeclaredField("direction");
            declaredField29.setAccessible(true);
            declaredField29.set(zIMTextMessage, ZIMMessageDirection.getZIMMessageDirection(readableMap.hasKey("direction") ? readableMap.getInt("direction") : -1));
            declaredField29.setAccessible(false);
            Field declaredField30 = ZIMMessage.class.getDeclaredField("sentStatus");
            declaredField30.setAccessible(true);
            declaredField30.set(zIMTextMessage, ZIMMessageSentStatus.getZIMMessageSentStatus(readableMap.hasKey("sentStatus") ? readableMap.getInt("sentStatus") : -1));
            declaredField30.setAccessible(false);
            Field declaredField31 = ZIMMessage.class.getDeclaredField("orderKey");
            declaredField31.setAccessible(true);
            declaredField31.set(zIMTextMessage, Long.valueOf(readableMap.hasKey("orderKey") ? Double.valueOf(readableMap.getDouble("orderKey")).longValue() : 0L));
            declaredField31.setAccessible(false);
            Field declaredField32 = ZIMMessage.class.getDeclaredField("receiptStatus");
            declaredField32.setAccessible(true);
            declaredField32.set(zIMTextMessage, ZIMMessageReceiptStatus.getZIMMessageReceiptStatus(readableMap.hasKey("receiptStatus") ? readableMap.getInt("receiptStatus") : 0));
            declaredField32.setAccessible(false);
            Field declaredField33 = ZIMMessage.class.getDeclaredField("isUserInserted");
            declaredField33.setAccessible(true);
            declaredField33.set(zIMTextMessage, Boolean.valueOf(readableMap.hasKey("isUserInserted") ? readableMap.getBoolean("isUserInserted") : false));
            declaredField33.setAccessible(false);
            Field declaredField34 = ZIMMessage.class.getDeclaredField("isBroadcastMessage");
            declaredField34.setAccessible(true);
            declaredField34.set(zIMTextMessage, Boolean.valueOf(readableMap.hasKey("isBroadcastMessage") ? readableMap.getBoolean("isBroadcastMessage") : false));
            declaredField34.setAccessible(false);
            Field declaredField35 = ZIMMessage.class.getDeclaredField("isServerMessage");
            declaredField35.setAccessible(true);
            declaredField35.set(zIMTextMessage, Boolean.valueOf(readableMap.hasKey("isServerMessage") ? readableMap.getBoolean("isServerMessage") : false));
            declaredField35.setAccessible(false);
            Field declaredField36 = ZIMMessage.class.getDeclaredField("isGroupTargetedMessage");
            declaredField36.setAccessible(true);
            declaredField36.set(zIMTextMessage, Boolean.valueOf(readableMap.hasKey("isGroupTargetedMessage") ? readableMap.getBoolean("isGroupTargetedMessage") : false));
            declaredField36.setAccessible(false);
            Field declaredField37 = ZIMMessage.class.getDeclaredField("isMentionAll");
            declaredField37.setAccessible(true);
            declaredField37.set(zIMTextMessage, Boolean.valueOf(readableMap.hasKey("isMentionAll") ? readableMap.getBoolean("isMentionAll") : false));
            declaredField37.setAccessible(false);
            if (readableMap.getArray("mentionedUserIDs") != null) {
                ArrayList arrayList5 = new ArrayList();
                Iterator<Object> it5 = readableMap.getArray("mentionedUserIDs").toArrayList().iterator();
                while (it5.hasNext()) {
                    arrayList5.add((String) it5.next());
                }
                Field declaredField38 = ZIMMessage.class.getDeclaredField("mentionedUserIDs");
                declaredField38.setAccessible(true);
                declaredField38.set(zIMTextMessage, arrayList5);
                declaredField38.setAccessible(false);
            }
        } catch (IllegalAccessException e9) {
            e9.printStackTrace();
        } catch (NoSuchFieldException e10) {
            e10.printStackTrace();
        }
        if (zIMTextMessage instanceof ZIMMediaMessage) {
            try {
                if (readableMap.hasKey("fileDownloadUrl")) {
                    ((ZIMMediaMessage) zIMTextMessage).setFileDownloadUrl(readableMap.getString("fileDownloadUrl"));
                }
                if (readableMap.hasKey("fileUID")) {
                    Field declaredField39 = ZIMMediaMessage.class.getDeclaredField("fileUID");
                    declaredField39.setAccessible(true);
                    declaredField39.set(zIMTextMessage, readableMap.getString("fileUID"));
                    declaredField39.setAccessible(false);
                }
                if (readableMap.hasKey("fileName")) {
                    Field declaredField40 = ZIMMediaMessage.class.getDeclaredField("fileName");
                    declaredField40.setAccessible(true);
                    declaredField40.set(zIMTextMessage, readableMap.getString("fileName"));
                    declaredField40.setAccessible(false);
                }
                if (readableMap.hasKey("fileSize")) {
                    Field declaredField41 = ZIMMediaMessage.class.getDeclaredField("fileSize");
                    declaredField41.setAccessible(true);
                    declaredField41.set(zIMTextMessage, Long.valueOf(Double.valueOf(readableMap.getDouble("fileSize")).longValue()));
                    declaredField41.setAccessible(false);
                }
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
            } catch (NoSuchFieldException e12) {
                e12.printStackTrace();
            }
        }
        return zIMTextMessage;
    }

    public static ZIMMessage convertMessageFromJsToJava(HashMap<String, Object> map) {
        ZIMMessage zIMMessage;
        ZIMMessage zIMTextMessage;
        if (map == null) {
            return null;
        }
        ZIMMessageType zIMMessageType = ZIMMessageType.getZIMMessageType(Double.valueOf(((Double) map.get(SVGParser.XML_STYLESHEET_ATTR_TYPE)).doubleValue()).intValue());
        switch (AnonymousClass1.$SwitchMap$im$zego$zim$enums$ZIMMessageType[zIMMessageType.ordinal()]) {
            case 1:
                zIMTextMessage = new ZIMTextMessage((String) map.get("message"));
                zIMMessage = zIMTextMessage;
                break;
            case 2:
                ArrayList arrayList = (ArrayList) map.get("message");
                int size = arrayList.size();
                byte[] bArr = new byte[size];
                for (int i = 0; i < size; i++) {
                    int iIntValue = Double.valueOf(((Double) arrayList.get(i)).doubleValue()).intValue();
                    if (iIntValue >= 128) {
                        iIntValue += InputDeviceCompat.SOURCE_ANY;
                    }
                    bArr[i] = (byte) iIntValue;
                }
                zIMTextMessage = new ZIMCommandMessage(bArr);
                zIMMessage = zIMTextMessage;
                break;
            case 3:
                zIMTextMessage = new ZIMBarrageMessage((String) map.get("message"));
                zIMMessage = zIMTextMessage;
                break;
            case 4:
                ZIMRevokeMessage zIMRevokeMessage = new ZIMRevokeMessage();
                try {
                    Field declaredField = ZIMRevokeMessage.class.getDeclaredField("revokeType");
                    declaredField.setAccessible(true);
                    declaredField.set(zIMRevokeMessage, ZIMRevokeType.getZIMRevokeType(map.containsKey("revokeType") ? Double.valueOf(((Double) map.get("revokeType")).doubleValue()).intValue() : -1));
                    declaredField.setAccessible(false);
                    Field declaredField2 = ZIMRevokeMessage.class.getDeclaredField("originalMessageType");
                    declaredField2.setAccessible(true);
                    declaredField2.set(zIMRevokeMessage, ZIMMessageType.getZIMMessageType(map.containsKey("originalMessageType") ? Double.valueOf(((Double) map.get("originalMessageType")).doubleValue()).intValue() : 0));
                    declaredField2.setAccessible(false);
                    Field declaredField3 = ZIMRevokeMessage.class.getDeclaredField("revokeStatus");
                    declaredField3.setAccessible(true);
                    declaredField3.set(zIMRevokeMessage, ZIMMessageRevokeStatus.getZIMMessageRevokeStatus(map.containsKey("revokeStatus") ? Double.valueOf(((Double) map.get("revokeStatus")).doubleValue()).intValue() : -1));
                    declaredField3.setAccessible(false);
                    Field declaredField4 = ZIMRevokeMessage.class.getDeclaredField("revokeTimestamp");
                    declaredField4.setAccessible(true);
                    declaredField4.set(zIMRevokeMessage, Long.valueOf(map.containsKey("revokeTimestamp") ? Double.valueOf(((Double) map.get("revokeTimestamp")).doubleValue()).longValue() : 0L));
                    declaredField4.setAccessible(false);
                    Field declaredField5 = ZIMRevokeMessage.class.getDeclaredField("operatedUserID");
                    declaredField5.setAccessible(true);
                    declaredField5.set(zIMRevokeMessage, map.containsKey("operatedUserID") ? (String) map.get("operatedUserID") : "");
                    declaredField5.setAccessible(false);
                    Field declaredField6 = ZIMRevokeMessage.class.getDeclaredField("revokeExtendedData");
                    declaredField6.setAccessible(true);
                    declaredField6.set(zIMRevokeMessage, map.containsKey("revokeExtendedData") ? (String) map.get("revokeExtendedData") : "");
                    declaredField6.setAccessible(false);
                    Field declaredField7 = ZIMRevokeMessage.class.getDeclaredField("originalTextMessageContent");
                    declaredField7.setAccessible(true);
                    declaredField7.set(zIMRevokeMessage, map.containsKey("originalTextMessageContent") ? (String) map.get("originalTextMessageContent") : "");
                    declaredField7.setAccessible(false);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (NoSuchFieldException e2) {
                    e2.printStackTrace();
                }
                zIMMessage = zIMRevokeMessage;
                break;
            case 5:
                ZIMTipsMessage zIMTipsMessage = new ZIMTipsMessage();
                zIMTipsMessage.event = ZIMTipsMessageEvent.getZIMTipsMessageEvent(map.containsKey(NotificationCompat.CATEGORY_EVENT) ? Double.valueOf(((Double) map.get(NotificationCompat.CATEGORY_EVENT)).doubleValue()).intValue() : 0);
                zIMTipsMessage.operatedUser = map.containsKey("operatedUser") ? convertUserOrGroupMemberFromJsToJava((HashMap<String, Object>) map.get("operatedUser")) : null;
                ArrayList<ZIMUserInfo> arrayList2 = new ArrayList<>();
                if (map.get("targetUserList") != null) {
                    Iterator it = ((ArrayList) map.get("targetUserList")).iterator();
                    while (it.hasNext()) {
                        arrayList2.add(convertUserOrGroupMemberFromJsToJava((HashMap<String, Object>) it.next()));
                    }
                }
                zIMTipsMessage.targetUserList = arrayList2;
                zIMTipsMessage.changeInfo = map.containsKey("changeInfo") ? convertTipsMessageChangeInfoFromJsToJava((HashMap<String, Object>) map.get("changeInfo")) : null;
                zIMTextMessage = zIMTipsMessage;
                zIMMessage = zIMTextMessage;
                break;
            case 6:
                ZIMCustomMessage zIMCustomMessage = new ZIMCustomMessage((String) map.get("message"), map.containsKey("subType") ? Double.valueOf(((Double) map.get("subType")).doubleValue()).intValue() : 0);
                zIMMessage = zIMCustomMessage;
                if (map.containsKey("searchedContent")) {
                    zIMCustomMessage.searchedContent = (String) map.get("searchedContent");
                    zIMMessage = zIMCustomMessage;
                }
                break;
            case 7:
                String str = map.containsKey("title") ? (String) map.get("title") : "";
                String str2 = map.containsKey(ErrorBundle.SUMMARY_ENTRY) ? (String) map.get(ErrorBundle.SUMMARY_ENTRY) : "";
                ArrayList arrayList3 = new ArrayList();
                if (map.get("messageList") != null) {
                    Iterator it2 = ((ArrayList) map.get("messageList")).iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(convertMessageFromJsToJava((HashMap<String, Object>) it2.next()));
                    }
                }
                ZIMCombineMessage zIMCombineMessage = new ZIMCombineMessage(str, str2, arrayList3);
                try {
                    if (map.containsKey("combineID")) {
                        Field declaredField8 = ZIMCombineMessage.class.getDeclaredField("combineID");
                        declaredField8.setAccessible(true);
                        declaredField8.set(zIMCombineMessage, (String) map.get("combineID"));
                        declaredField8.setAccessible(false);
                    }
                } catch (IllegalAccessException e3) {
                    e3.printStackTrace();
                } catch (NoSuchFieldException e4) {
                    e4.printStackTrace();
                }
                zIMMessage = zIMCombineMessage;
                break;
            case 8:
                ZIMImageMessage zIMImageMessage = new ZIMImageMessage((String) map.get("fileLocalPath"));
                if (map.containsKey("thumbnailDownloadUrl")) {
                    zIMImageMessage.setThumbnailDownloadUrl((String) map.get("thumbnailDownloadUrl"));
                }
                if (map.containsKey("largeImageDownloadUrl")) {
                    zIMImageMessage.setLargeImageDownloadUrl((String) map.get("largeImageDownloadUrl"));
                }
                try {
                    if (map.containsKey("thumbnailLocalPath")) {
                        Field declaredField9 = ZIMImageMessage.class.getDeclaredField("thumbnailLocalPath");
                        declaredField9.setAccessible(true);
                        declaredField9.set(zIMImageMessage, (String) map.get("thumbnailLocalPath"));
                        declaredField9.setAccessible(false);
                    }
                    if (map.containsKey("largeImageLocalPath")) {
                        Field declaredField10 = ZIMImageMessage.class.getDeclaredField("largeImageLocalPath");
                        declaredField10.setAccessible(true);
                        declaredField10.set(zIMImageMessage, (String) map.get("largeImageLocalPath"));
                        declaredField10.setAccessible(false);
                    }
                    if (map.containsKey("originalImageWidth")) {
                        Field declaredField11 = ZIMImageMessage.class.getDeclaredField("originalImageWidth");
                        declaredField11.setAccessible(true);
                        declaredField11.set(zIMImageMessage, Integer.valueOf(Double.valueOf(((Double) map.get("originalImageWidth")).doubleValue()).intValue()));
                        declaredField11.setAccessible(false);
                    }
                    if (map.containsKey("originalImageHeight")) {
                        Field declaredField12 = ZIMImageMessage.class.getDeclaredField("originalImageHeight");
                        declaredField12.setAccessible(true);
                        declaredField12.set(zIMImageMessage, Integer.valueOf(Double.valueOf(((Double) map.get("originalImageHeight")).doubleValue()).intValue()));
                        declaredField12.setAccessible(false);
                    }
                    if (map.containsKey("thumbnailWidth")) {
                        Field declaredField13 = ZIMImageMessage.class.getDeclaredField("thumbnailWidth");
                        declaredField13.setAccessible(true);
                        declaredField13.set(zIMImageMessage, Integer.valueOf(Double.valueOf(((Double) map.get("thumbnailWidth")).doubleValue()).intValue()));
                        declaredField13.setAccessible(false);
                    }
                    if (map.containsKey("thumbnailHeight")) {
                        Field declaredField14 = ZIMImageMessage.class.getDeclaredField("thumbnailHeight");
                        declaredField14.setAccessible(true);
                        declaredField14.set(zIMImageMessage, Integer.valueOf(Double.valueOf(((Double) map.get("thumbnailHeight")).doubleValue()).intValue()));
                        declaredField14.setAccessible(false);
                    }
                    if (map.containsKey("largeImageWidth")) {
                        Field declaredField15 = ZIMImageMessage.class.getDeclaredField("largeImageWidth");
                        declaredField15.setAccessible(true);
                        declaredField15.set(zIMImageMessage, Integer.valueOf(Double.valueOf(((Double) map.get("largeImageWidth")).doubleValue()).intValue()));
                        declaredField15.setAccessible(false);
                    }
                    zIMMessage = zIMImageMessage;
                    if (map.containsKey("largeImageHeight")) {
                        Field declaredField16 = ZIMImageMessage.class.getDeclaredField("largeImageHeight");
                        declaredField16.setAccessible(true);
                        declaredField16.set(zIMImageMessage, Integer.valueOf(Double.valueOf(((Double) map.get("largeImageHeight")).doubleValue()).intValue()));
                        declaredField16.setAccessible(false);
                        zIMMessage = zIMImageMessage;
                    }
                } catch (IllegalAccessException e5) {
                    e5.printStackTrace();
                    zIMMessage = zIMImageMessage;
                } catch (NoSuchFieldException e6) {
                    e6.printStackTrace();
                    zIMMessage = zIMImageMessage;
                }
                break;
            case 9:
                zIMTextMessage = new ZIMFileMessage((String) map.get("fileLocalPath"));
                zIMMessage = zIMTextMessage;
                break;
            case 10:
                ZIMVideoMessage zIMVideoMessage = new ZIMVideoMessage((String) map.get("fileLocalPath"), Double.valueOf(((Double) map.get("videoDuration")).doubleValue()).longValue());
                try {
                    if (map.containsKey("videoFirstFrameDownloadUrl")) {
                        zIMVideoMessage.setVideoFirstFrameDownloadUrl((String) map.get("videoFirstFrameDownloadUrl"));
                    }
                    if (map.containsKey("videoFirstFrameLocalPath")) {
                        Field declaredField17 = ZIMVideoMessage.class.getDeclaredField("videoFirstFrameLocalPath");
                        declaredField17.setAccessible(true);
                        declaredField17.set(zIMVideoMessage, (String) map.get("videoFirstFrameLocalPath"));
                        declaredField17.setAccessible(false);
                    }
                    if (map.containsKey("videoFirstFrameWidth")) {
                        Field declaredField18 = ZIMVideoMessage.class.getDeclaredField("videoFirstFrameWidth");
                        declaredField18.setAccessible(true);
                        declaredField18.set(zIMVideoMessage, Integer.valueOf(Double.valueOf(((Double) map.get("videoFirstFrameWidth")).doubleValue()).intValue()));
                        declaredField18.setAccessible(false);
                    }
                    zIMMessage = zIMVideoMessage;
                    if (map.containsKey("videoFirstFrameHeight")) {
                        Field declaredField19 = ZIMVideoMessage.class.getDeclaredField("videoFirstFrameHeight");
                        declaredField19.setAccessible(true);
                        declaredField19.set(zIMVideoMessage, Integer.valueOf(Double.valueOf(((Double) map.get("videoFirstFrameHeight")).doubleValue()).intValue()));
                        declaredField19.setAccessible(false);
                        zIMMessage = zIMVideoMessage;
                    }
                } catch (IllegalAccessException e7) {
                    e7.printStackTrace();
                    zIMMessage = zIMVideoMessage;
                } catch (NoSuchFieldException e8) {
                    e8.printStackTrace();
                    zIMMessage = zIMVideoMessage;
                }
                break;
            case 11:
                zIMTextMessage = new ZIMAudioMessage((String) map.get("fileLocalPath"), Double.valueOf(((Double) map.get("audioDuration")).doubleValue()).longValue());
                zIMMessage = zIMTextMessage;
                break;
            case 12:
                ZIMMultipleMessage zIMMultipleMessage = new ZIMMultipleMessage();
                if (map.get("messageInfoList") != null) {
                    ArrayList<ZIMMessageLiteInfo> arrayList4 = new ArrayList<>();
                    Iterator it3 = ((ArrayList) map.get("messageInfoList")).iterator();
                    while (it3.hasNext()) {
                        arrayList4.add(convertLiteInfoFromJsToJava((HashMap) it3.next()));
                    }
                    zIMMultipleMessage.setMessageInfoList(arrayList4);
                }
                zIMTextMessage = zIMMultipleMessage;
                if (map.get("failedIndexList") != null) {
                    ArrayList<Integer> arrayList5 = new ArrayList<>();
                    Iterator it4 = ((ArrayList) map.get("failedIndexList")).iterator();
                    while (it4.hasNext()) {
                        arrayList5.add(Integer.valueOf(Double.valueOf(((Double) it4.next()).doubleValue()).intValue()));
                    }
                    zIMMultipleMessage.setFailedIndexList(arrayList5);
                    zIMTextMessage = zIMMultipleMessage;
                }
                zIMMessage = zIMTextMessage;
                break;
            default:
                zIMTextMessage = new ZIMMessage(ZIMMessageType.UNKNOWN);
                zIMMessage = zIMTextMessage;
                break;
        }
        try {
            zIMMessage.extendedData = map.containsKey("extendedData") ? (String) map.get("extendedData") : "";
            zIMMessage.localExtendedData = map.containsKey("localExtendedData") ? (String) map.get("localExtendedData") : "";
            Field declaredField20 = ZIMMessage.class.getDeclaredField(SVGParser.XML_STYLESHEET_ATTR_TYPE);
            declaredField20.setAccessible(true);
            declaredField20.set(zIMMessage, zIMMessageType);
            declaredField20.setAccessible(false);
            Field declaredField21 = ZIMMessage.class.getDeclaredField("messageID");
            declaredField21.setAccessible(true);
            declaredField21.set(zIMMessage, Long.valueOf(map.containsKey("messageID") ? Long.valueOf((String) map.get("messageID")).longValue() : 0L));
            declaredField21.setAccessible(false);
            Field declaredField22 = ZIMMessage.class.getDeclaredField("conversationID");
            declaredField22.setAccessible(true);
            declaredField22.set(zIMMessage, map.containsKey("conversationID") ? (String) map.get("conversationID") : "");
            declaredField22.setAccessible(false);
            Field declaredField23 = ZIMMessage.class.getDeclaredField("conversationSeq");
            declaredField23.setAccessible(true);
            declaredField23.set(zIMMessage, Long.valueOf(map.containsKey("conversationSeq") ? Double.valueOf(((Double) map.get("conversationSeq")).doubleValue()).longValue() : 0L));
            declaredField23.setAccessible(false);
            Field declaredField24 = ZIMMessage.class.getDeclaredField("messageSeq");
            declaredField24.setAccessible(true);
            declaredField24.set(zIMMessage, Long.valueOf(map.containsKey("messageSeq") ? Double.valueOf(((Double) map.get("messageSeq")).doubleValue()).longValue() : 0L));
            declaredField24.setAccessible(false);
            Field declaredField25 = ZIMMessage.class.getDeclaredField("senderUserID");
            declaredField25.setAccessible(true);
            declaredField25.set(zIMMessage, map.containsKey("senderUserID") ? (String) map.get("senderUserID") : "");
            declaredField25.setAccessible(false);
            Field declaredField26 = ZIMMessage.class.getDeclaredField("timestamp");
            declaredField26.setAccessible(true);
            declaredField26.set(zIMMessage, Long.valueOf(map.containsKey("timestamp") ? Double.valueOf(((Double) map.get("timestamp")).doubleValue()).longValue() : 0L));
            declaredField26.setAccessible(false);
            Field declaredField27 = ZIMMessage.class.getDeclaredField("localMessageID");
            declaredField27.setAccessible(true);
            declaredField27.set(zIMMessage, Long.valueOf(map.containsKey("localMessageID") ? Long.valueOf((String) map.get("localMessageID")).longValue() : 0L));
            declaredField27.setAccessible(false);
            Field declaredField28 = ZIMMessage.class.getDeclaredField("conversationType");
            declaredField28.setAccessible(true);
            declaredField28.set(zIMMessage, ZIMConversationType.getZIMConversationType(map.containsKey("conversationType") ? Double.valueOf(((Double) map.get("conversationType")).doubleValue()).intValue() : -1));
            declaredField28.setAccessible(false);
            Field declaredField29 = ZIMMessage.class.getDeclaredField("direction");
            declaredField29.setAccessible(true);
            declaredField29.set(zIMMessage, ZIMMessageDirection.getZIMMessageDirection(map.containsKey("direction") ? Double.valueOf(((Double) map.get("direction")).doubleValue()).intValue() : -1));
            declaredField29.setAccessible(false);
            Field declaredField30 = ZIMMessage.class.getDeclaredField("sentStatus");
            declaredField30.setAccessible(true);
            declaredField30.set(zIMMessage, ZIMMessageSentStatus.getZIMMessageSentStatus(map.containsKey("sentStatus") ? Double.valueOf(((Double) map.get("sentStatus")).doubleValue()).intValue() : -1));
            declaredField30.setAccessible(false);
            Field declaredField31 = ZIMMessage.class.getDeclaredField("orderKey");
            declaredField31.setAccessible(true);
            declaredField31.set(zIMMessage, Long.valueOf(map.containsKey("orderKey") ? Double.valueOf(((Double) map.get("orderKey")).doubleValue()).longValue() : 0L));
            declaredField31.setAccessible(false);
            Field declaredField32 = ZIMMessage.class.getDeclaredField("receiptStatus");
            declaredField32.setAccessible(true);
            declaredField32.set(zIMMessage, ZIMMessageReceiptStatus.getZIMMessageReceiptStatus(map.containsKey("receiptStatus") ? Double.valueOf(((Double) map.get("receiptStatus")).doubleValue()).intValue() : 0));
            declaredField32.setAccessible(false);
            Field declaredField33 = ZIMMessage.class.getDeclaredField("isUserInserted");
            declaredField33.setAccessible(true);
            declaredField33.set(zIMMessage, Boolean.valueOf(map.containsKey("isUserInserted") ? ((Boolean) map.get("isUserInserted")).booleanValue() : false));
            declaredField33.setAccessible(false);
            Field declaredField34 = ZIMMessage.class.getDeclaredField("isBroadcastMessage");
            declaredField34.setAccessible(true);
            declaredField34.set(zIMMessage, Boolean.valueOf(map.containsKey("isBroadcastMessage") ? ((Boolean) map.get("isBroadcastMessage")).booleanValue() : false));
            declaredField34.setAccessible(false);
            Field declaredField35 = ZIMMessage.class.getDeclaredField("isServerMessage");
            declaredField35.setAccessible(true);
            declaredField35.set(zIMMessage, Boolean.valueOf(map.containsKey("isServerMessage") ? ((Boolean) map.get("isServerMessage")).booleanValue() : false));
            declaredField35.setAccessible(false);
            Field declaredField36 = ZIMMessage.class.getDeclaredField("isGroupTargetedMessage");
            declaredField36.setAccessible(true);
            declaredField36.set(zIMMessage, Boolean.valueOf(map.containsKey("isGroupTargetedMessage") ? ((Boolean) map.get("isGroupTargetedMessage")).booleanValue() : false));
            declaredField36.setAccessible(false);
            Field declaredField37 = ZIMMessage.class.getDeclaredField("isMentionAll");
            declaredField37.setAccessible(true);
            declaredField37.set(zIMMessage, Boolean.valueOf(map.containsKey("isMentionAll") ? ((Boolean) map.get("isMentionAll")).booleanValue() : false));
            declaredField37.setAccessible(false);
            if (map.get("mentionedUserIDs") != null) {
                Field declaredField38 = ZIMMessage.class.getDeclaredField("mentionedUserIDs");
                declaredField38.setAccessible(true);
                declaredField38.set(zIMMessage, (ArrayList) map.get("mentionedUserIDs"));
                declaredField38.setAccessible(false);
            }
        } catch (IllegalAccessException e9) {
            e9.printStackTrace();
        } catch (NoSuchFieldException e10) {
            e10.printStackTrace();
        }
        if (zIMMessage instanceof ZIMMediaMessage) {
            if (map.containsKey("fileDownloadUrl")) {
                ((ZIMMediaMessage) zIMMessage).setFileDownloadUrl((String) map.get("fileDownloadUrl"));
            }
            try {
                if (map.containsKey("fileUID")) {
                    Field declaredField39 = ZIMMediaMessage.class.getDeclaredField("fileUID");
                    declaredField39.setAccessible(true);
                    declaredField39.set(zIMMessage, (String) map.get("fileUID"));
                    declaredField39.setAccessible(false);
                }
                if (map.containsKey("fileName")) {
                    Field declaredField40 = ZIMMediaMessage.class.getDeclaredField("fileName");
                    declaredField40.setAccessible(true);
                    declaredField40.set(zIMMessage, (String) map.get("fileName"));
                    declaredField40.setAccessible(false);
                }
                if (map.containsKey("fileSize")) {
                    Field declaredField41 = ZIMMediaMessage.class.getDeclaredField("fileSize");
                    declaredField41.setAccessible(true);
                    declaredField41.set(zIMMessage, Long.valueOf(Double.valueOf(((Double) map.get("fileSize")).doubleValue()).longValue()));
                    declaredField41.setAccessible(false);
                }
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
            } catch (NoSuchFieldException e12) {
                e12.printStackTrace();
            }
        }
        return zIMMessage;
    }

    public static WritableMap convertMessage(ZIMMessage zIMMessage) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt(SVGParser.XML_STYLESHEET_ATTR_TYPE, zIMMessage.getType().value());
        writableMapCreateMap.putString("messageID", String.valueOf(zIMMessage.getMessageID()));
        writableMapCreateMap.putString("conversationID", zIMMessage.getConversationID());
        writableMapCreateMap.putDouble("conversationSeq", zIMMessage.getConversationSeq());
        writableMapCreateMap.putDouble("messageSeq", zIMMessage.getMessageSeq());
        writableMapCreateMap.putString("senderUserID", zIMMessage.getSenderUserID());
        writableMapCreateMap.putDouble("timestamp", zIMMessage.getTimestamp());
        writableMapCreateMap.putString("localMessageID", String.valueOf(zIMMessage.getLocalMessageID()));
        writableMapCreateMap.putInt("conversationType", zIMMessage.getConversationType().value());
        writableMapCreateMap.putInt("direction", zIMMessage.getDirection().value());
        writableMapCreateMap.putInt("sentStatus", zIMMessage.getSentStatus().value());
        writableMapCreateMap.putDouble("orderKey", zIMMessage.getOrderKey());
        writableMapCreateMap.putBoolean("isUserInserted", zIMMessage.isUserInserted());
        writableMapCreateMap.putInt("receiptStatus", zIMMessage.getReceiptStatus().value());
        writableMapCreateMap.putString("extendedData", zIMMessage.extendedData);
        writableMapCreateMap.putString("localExtendedData", zIMMessage.localExtendedData);
        writableMapCreateMap.putBoolean("isBroadcastMessage", zIMMessage.isBroadcastMessage());
        writableMapCreateMap.putBoolean("isServerMessage", zIMMessage.isServerMessage());
        writableMapCreateMap.putBoolean("isGroupTargetedMessage", zIMMessage.isGroupTargetedMessage());
        writableMapCreateMap.putBoolean("isMentionAll", zIMMessage.isMentionAll());
        writableMapCreateMap.putInt("rootRepliedCount", zIMMessage.getRootRepliedCount());
        writableMapCreateMap.putMap("repliedInfo", convertRepliedInfo(zIMMessage.getRepliedInfo()));
        writableMapCreateMap.putString("editorUserID", zIMMessage.getEditorUserID());
        writableMapCreateMap.putDouble("editedTime", zIMMessage.getEditedTime());
        writableMapCreateMap.putString("pinnedUserID", zIMMessage.getPinnedUserID());
        writableMapCreateMap.putDouble("pinnedTime", zIMMessage.getPinnedTime());
        ArrayList<ZIMMessageReaction> reactions = zIMMessage.getReactions();
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMMessageReaction> it = reactions.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertMessageReaction(it.next()));
        }
        writableMapCreateMap.putArray("reactions", writableArrayCreateArray);
        ArrayList<String> mentionedUserIDs = zIMMessage.getMentionedUserIDs();
        WritableArray writableArrayCreateArray2 = Arguments.createArray();
        Iterator<String> it2 = mentionedUserIDs.iterator();
        while (it2.hasNext()) {
            writableArrayCreateArray2.pushString(it2.next());
        }
        writableMapCreateMap.putArray("mentionedUserIDs", writableArrayCreateArray2);
        switch (AnonymousClass1.$SwitchMap$im$zego$zim$enums$ZIMMessageType[zIMMessage.getType().ordinal()]) {
            case 1:
                writableMapCreateMap.putString("message", ((ZIMTextMessage) zIMMessage).message);
                break;
            case 2:
                byte[] bArr = ((ZIMCommandMessage) zIMMessage).message;
                WritableMap writableMapCreateMap2 = Arguments.createMap();
                for (int i = 0; i < bArr.length; i++) {
                    int i2 = bArr[i];
                    String strValueOf = String.valueOf(i);
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    writableMapCreateMap2.putInt(strValueOf, i2);
                }
                writableMapCreateMap.putMap("message", writableMapCreateMap2);
                break;
            case 3:
                writableMapCreateMap.putString("message", ((ZIMBarrageMessage) zIMMessage).message);
                break;
            case 4:
                ZIMRevokeMessage zIMRevokeMessage = (ZIMRevokeMessage) zIMMessage;
                writableMapCreateMap.putInt("revokeType", zIMRevokeMessage.getRevokeType().value());
                writableMapCreateMap.putInt("revokeStatus", zIMRevokeMessage.getRevokeStatus().value());
                writableMapCreateMap.putDouble("revokeTimestamp", zIMRevokeMessage.getRevokeTimestamp());
                writableMapCreateMap.putString("operatedUserID", zIMRevokeMessage.getOperatedUserID());
                writableMapCreateMap.putString("revokeExtendedData", zIMRevokeMessage.getRevokeExtendedData());
                writableMapCreateMap.putInt("originalMessageType", zIMRevokeMessage.getOriginalMessageType().value());
                writableMapCreateMap.putString("originalTextMessageContent", zIMRevokeMessage.getOriginalTextMessageContent());
                break;
            case 5:
                ZIMTipsMessage zIMTipsMessage = (ZIMTipsMessage) zIMMessage;
                writableMapCreateMap.putInt(NotificationCompat.CATEGORY_EVENT, zIMTipsMessage.event.value());
                writableMapCreateMap.putMap("operatedUser", convertUserOrGroupMember(zIMTipsMessage.operatedUser));
                writableMapCreateMap.putArray("targetUserList", convertUserOrGroupMemberList(zIMTipsMessage.targetUserList));
                writableMapCreateMap.putMap("changeInfo", convertTipsMessageChangeInfo(zIMTipsMessage.changeInfo));
                break;
            case 6:
                ZIMCustomMessage zIMCustomMessage = (ZIMCustomMessage) zIMMessage;
                writableMapCreateMap.putString("message", zIMCustomMessage.message);
                writableMapCreateMap.putInt("subType", zIMCustomMessage.subType);
                writableMapCreateMap.putString("searchedContent", zIMCustomMessage.searchedContent);
                break;
            case 7:
                ZIMCombineMessage zIMCombineMessage = (ZIMCombineMessage) zIMMessage;
                writableMapCreateMap.putString("title", zIMCombineMessage.title);
                writableMapCreateMap.putString(ErrorBundle.SUMMARY_ENTRY, zIMCombineMessage.summary);
                writableMapCreateMap.putString("combineID", zIMCombineMessage.getCombineID());
                writableMapCreateMap.putArray("messageList", convertMessageList(zIMCombineMessage.messageList));
                break;
            case 8:
                ZIMImageMessage zIMImageMessage = (ZIMImageMessage) zIMMessage;
                writableMapCreateMap.putString("thumbnailDownloadUrl", zIMImageMessage.getThumbnailDownloadUrl() != null ? zIMImageMessage.getThumbnailDownloadUrl() : "");
                writableMapCreateMap.putString("thumbnailLocalPath", zIMImageMessage.getThumbnailLocalPath() != null ? zIMImageMessage.getThumbnailLocalPath() : "");
                writableMapCreateMap.putString("largeImageDownloadUrl", zIMImageMessage.getLargeImageDownloadUrl() != null ? zIMImageMessage.getLargeImageDownloadUrl() : "");
                writableMapCreateMap.putString("largeImageLocalPath", zIMImageMessage.getLargeImageLocalPath() != null ? zIMImageMessage.getLargeImageLocalPath() : "");
                writableMapCreateMap.putInt("originalImageWidth", zIMImageMessage.getOriginalImageWidth());
                writableMapCreateMap.putInt("originalImageHeight", zIMImageMessage.getOriginalImageHeight());
                writableMapCreateMap.putInt("thumbnailWidth", zIMImageMessage.getThumbnailWidth());
                writableMapCreateMap.putInt("thumbnailHeight", zIMImageMessage.getThumbnailHeight());
                writableMapCreateMap.putInt("largeImageWidth", zIMImageMessage.getLargeImageWidth());
                writableMapCreateMap.putInt("largeImageHeight", zIMImageMessage.getLargeImageHeight());
                break;
            case 10:
                ZIMVideoMessage zIMVideoMessage = (ZIMVideoMessage) zIMMessage;
                writableMapCreateMap.putDouble("videoDuration", zIMVideoMessage.getVideoDuration());
                writableMapCreateMap.putString("videoFirstFrameDownloadUrl", zIMVideoMessage.getVideoFirstFrameDownloadUrl());
                writableMapCreateMap.putString("videoFirstFrameLocalPath", zIMVideoMessage.getVideoFirstFrameLocalPath());
                writableMapCreateMap.putInt("videoFirstFrameWidth", zIMVideoMessage.getVideoFirstFrameWidth());
                writableMapCreateMap.putInt("videoFirstFrameHeight", zIMVideoMessage.getVideoFirstFrameHeight());
                break;
            case 11:
                writableMapCreateMap.putDouble("audioDuration", ((ZIMAudioMessage) zIMMessage).getAudioDuration());
                break;
            case 12:
                WritableArray writableArrayCreateArray3 = Arguments.createArray();
                ZIMMultipleMessage zIMMultipleMessage = (ZIMMultipleMessage) zIMMessage;
                Iterator<ZIMMessageLiteInfo> it3 = zIMMultipleMessage.getMessageInfoList().iterator();
                while (it3.hasNext()) {
                    writableArrayCreateArray3.pushMap(convertLiteInfo(it3.next()));
                }
                writableMapCreateMap.putArray("messageInfoList", writableArrayCreateArray3);
                WritableArray writableArrayCreateArray4 = Arguments.createArray();
                Iterator<Integer> it4 = zIMMultipleMessage.getFailedIndexList().iterator();
                while (it4.hasNext()) {
                    writableArrayCreateArray4.pushInt(it4.next().intValue());
                }
                writableMapCreateMap.putArray("failedIndexList", writableArrayCreateArray4);
                break;
        }
        if (zIMMessage instanceof ZIMMediaMessage) {
            ZIMMediaMessage zIMMediaMessage = (ZIMMediaMessage) zIMMessage;
            writableMapCreateMap.putString("fileLocalPath", zIMMediaMessage.getFileLocalPath());
            writableMapCreateMap.putString("fileDownloadUrl", zIMMediaMessage.getFileDownloadUrl());
            writableMapCreateMap.putString("fileUID", zIMMediaMessage.getFileUID());
            writableMapCreateMap.putString("fileName", zIMMediaMessage.getFileName());
            writableMapCreateMap.putDouble("fileSize", zIMMediaMessage.getFileSize());
        }
        return writableMapCreateMap;
    }

    public static WritableMap convertLiteInfo(ZIMMessageLiteInfo zIMMessageLiteInfo) {
        if (zIMMessageLiteInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt(SVGParser.XML_STYLESHEET_ATTR_TYPE, zIMMessageLiteInfo.type.value());
        int i = AnonymousClass1.$SwitchMap$im$zego$zim$enums$ZIMMessageType[zIMMessageLiteInfo.type.ordinal()];
        if (i == 1) {
            writableMapCreateMap.putString("message", ((ZIMTextMessageLiteInfo) zIMMessageLiteInfo).message);
        } else if (i == 6) {
            ZIMCustomMessageLiteInfo zIMCustomMessageLiteInfo = (ZIMCustomMessageLiteInfo) zIMMessageLiteInfo;
            writableMapCreateMap.putString("message", zIMCustomMessageLiteInfo.message);
            writableMapCreateMap.putInt("subType", zIMCustomMessageLiteInfo.subType);
            writableMapCreateMap.putString("searchedContent", zIMCustomMessageLiteInfo.searchedContent);
        } else if (i == 7) {
            ZIMCombineMessageLiteInfo zIMCombineMessageLiteInfo = (ZIMCombineMessageLiteInfo) zIMMessageLiteInfo;
            writableMapCreateMap.putString("title", zIMCombineMessageLiteInfo.title);
            writableMapCreateMap.putString(ErrorBundle.SUMMARY_ENTRY, zIMCombineMessageLiteInfo.summary);
        } else if (i == 8) {
            ZIMImageMessageLiteInfo zIMImageMessageLiteInfo = (ZIMImageMessageLiteInfo) zIMMessageLiteInfo;
            writableMapCreateMap.putString("thumbnailDownloadUrl", zIMImageMessageLiteInfo.thumbnailDownloadUrl);
            writableMapCreateMap.putString("thumbnailLocalPath", zIMImageMessageLiteInfo.thumbnailLocalPath);
            writableMapCreateMap.putString("largeImageDownloadUrl", zIMImageMessageLiteInfo.largeImageDownloadUrl);
            writableMapCreateMap.putString("largeImageLocalPath", zIMImageMessageLiteInfo.largeImageLocalPath);
            writableMapCreateMap.putInt("originalImageWidth", zIMImageMessageLiteInfo.originalImageWidth);
            writableMapCreateMap.putInt("originalImageHeight", zIMImageMessageLiteInfo.originalImageHeight);
            writableMapCreateMap.putInt("thumbnailWidth", zIMImageMessageLiteInfo.thumbnailWidth);
            writableMapCreateMap.putInt("thumbnailHeight", zIMImageMessageLiteInfo.thumbnailHeight);
            writableMapCreateMap.putInt("largeImageWidth", zIMImageMessageLiteInfo.largeImageWidth);
            writableMapCreateMap.putInt("largeImageHeight", zIMImageMessageLiteInfo.largeImageHeight);
        } else {
            switch (i) {
                case 10:
                    ZIMVideoMessageLiteInfo zIMVideoMessageLiteInfo = (ZIMVideoMessageLiteInfo) zIMMessageLiteInfo;
                    writableMapCreateMap.putDouble("videoDuration", zIMVideoMessageLiteInfo.videoDuration);
                    writableMapCreateMap.putString("videoFirstFrameDownloadUrl", zIMVideoMessageLiteInfo.videoFirstFrameDownloadUrl);
                    writableMapCreateMap.putString("videoFirstFrameLocalPath", zIMVideoMessageLiteInfo.videoFirstFrameLocalPath);
                    writableMapCreateMap.putInt("videoFirstFrameWidth", zIMVideoMessageLiteInfo.videoFirstFrameWidth);
                    writableMapCreateMap.putInt("videoFirstFrameHeight", zIMVideoMessageLiteInfo.videoFirstFrameHeight);
                    break;
                case 11:
                    writableMapCreateMap.putDouble("audioDuration", ((ZIMAudioMessageLiteInfo) zIMMessageLiteInfo).audioDuration);
                    break;
                case 12:
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMMessageLiteInfo> it = ((ZIMMultipleMessageLiteInfo) zIMMessageLiteInfo).messageInfoList.iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushMap(convertLiteInfo(it.next()));
                    }
                    writableMapCreateMap.putArray("messageInfoList", writableArrayCreateArray);
                    break;
            }
        }
        if (zIMMessageLiteInfo instanceof ZIMMediaMessageLiteInfo) {
            ZIMMediaMessageLiteInfo zIMMediaMessageLiteInfo = (ZIMMediaMessageLiteInfo) zIMMessageLiteInfo;
            writableMapCreateMap.putString("fileLocalPath", zIMMediaMessageLiteInfo.fileLocalPath);
            writableMapCreateMap.putString("fileDownloadUrl", zIMMediaMessageLiteInfo.fileDownloadUrl);
            writableMapCreateMap.putString("fileName", zIMMediaMessageLiteInfo.fileName);
            writableMapCreateMap.putDouble("fileSize", zIMMediaMessageLiteInfo.fileSize);
        }
        return writableMapCreateMap;
    }

    public static ZIMMessageLiteInfo convertLiteInfoFromJsToJava(HashMap<String, Object> map) {
        ZIMMessageLiteInfo zIMRevokeMessageLiteInfo;
        if (map == null) {
            return null;
        }
        int i = AnonymousClass1.$SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.getZIMMessageType(Double.valueOf(((Double) map.get(SVGParser.XML_STYLESHEET_ATTR_TYPE)).doubleValue()).intValue()).ordinal()];
        if (i != 1) {
            if (i == 4) {
                zIMRevokeMessageLiteInfo = new ZIMRevokeMessageLiteInfo();
            } else {
                switch (i) {
                    case 6:
                        ZIMCustomMessageLiteInfo zIMCustomMessageLiteInfo = new ZIMCustomMessageLiteInfo();
                        if (map.containsKey("subType")) {
                            zIMCustomMessageLiteInfo.subType = Double.valueOf(((Double) map.get("subType")).doubleValue()).intValue();
                        }
                        if (map.containsKey("message")) {
                            zIMCustomMessageLiteInfo.message = (String) map.get("message");
                        }
                        zIMRevokeMessageLiteInfo = zIMCustomMessageLiteInfo;
                        if (map.containsKey("searchedContent")) {
                            zIMCustomMessageLiteInfo.searchedContent = (String) map.get("searchedContent");
                            zIMRevokeMessageLiteInfo = zIMCustomMessageLiteInfo;
                        }
                        break;
                    case 7:
                        ZIMCombineMessageLiteInfo zIMCombineMessageLiteInfo = new ZIMCombineMessageLiteInfo();
                        if (map.containsKey("title")) {
                            zIMCombineMessageLiteInfo.title = (String) map.get("title");
                        }
                        zIMRevokeMessageLiteInfo = zIMCombineMessageLiteInfo;
                        if (map.containsKey(ErrorBundle.SUMMARY_ENTRY)) {
                            zIMCombineMessageLiteInfo.summary = (String) map.get(ErrorBundle.SUMMARY_ENTRY);
                            zIMRevokeMessageLiteInfo = zIMCombineMessageLiteInfo;
                        }
                        break;
                    case 8:
                        ZIMImageMessageLiteInfo zIMImageMessageLiteInfo = new ZIMImageMessageLiteInfo();
                        if (map.containsKey("originalImageWidth")) {
                            zIMImageMessageLiteInfo.originalImageWidth = Double.valueOf(((Double) map.get("originalImageWidth")).doubleValue()).intValue();
                        }
                        if (map.containsKey("originalImageHeight")) {
                            zIMImageMessageLiteInfo.originalImageHeight = Double.valueOf(((Double) map.get("originalImageHeight")).doubleValue()).intValue();
                        }
                        if (map.containsKey("thumbnailWidth")) {
                            zIMImageMessageLiteInfo.thumbnailWidth = Double.valueOf(((Double) map.get("thumbnailWidth")).doubleValue()).intValue();
                        }
                        if (map.containsKey("thumbnailHeight")) {
                            zIMImageMessageLiteInfo.thumbnailHeight = Double.valueOf(((Double) map.get("thumbnailHeight")).doubleValue()).intValue();
                        }
                        if (map.containsKey("largeImageWidth")) {
                            zIMImageMessageLiteInfo.largeImageWidth = Double.valueOf(((Double) map.get("largeImageWidth")).doubleValue()).intValue();
                        }
                        if (map.containsKey("largeImageHeight")) {
                            zIMImageMessageLiteInfo.largeImageHeight = Double.valueOf(((Double) map.get("largeImageHeight")).doubleValue()).intValue();
                        }
                        if (map.containsKey("thumbnailDownloadUrl")) {
                            zIMImageMessageLiteInfo.thumbnailDownloadUrl = (String) map.get("thumbnailDownloadUrl");
                        }
                        if (map.containsKey("thumbnailLocalPath")) {
                            zIMImageMessageLiteInfo.thumbnailLocalPath = (String) map.get("thumbnailLocalPath");
                        }
                        if (map.containsKey("largeImageDownloadUrl")) {
                            zIMImageMessageLiteInfo.largeImageDownloadUrl = (String) map.get("largeImageDownloadUrl");
                        }
                        zIMRevokeMessageLiteInfo = zIMImageMessageLiteInfo;
                        if (map.containsKey("largeImageLocalPath")) {
                            zIMImageMessageLiteInfo.largeImageLocalPath = (String) map.get("largeImageLocalPath");
                            zIMRevokeMessageLiteInfo = zIMImageMessageLiteInfo;
                        }
                        break;
                    case 9:
                        zIMRevokeMessageLiteInfo = new ZIMFileMessageLiteInfo();
                        break;
                    case 10:
                        ZIMVideoMessageLiteInfo zIMVideoMessageLiteInfo = new ZIMVideoMessageLiteInfo();
                        if (map.containsKey("videoFirstFrameDownloadUrl")) {
                            zIMVideoMessageLiteInfo.videoFirstFrameDownloadUrl = (String) map.get("videoFirstFrameDownloadUrl");
                        }
                        if (map.containsKey("videoFirstFrameLocalPath")) {
                            zIMVideoMessageLiteInfo.videoFirstFrameLocalPath = (String) map.get("videoFirstFrameLocalPath");
                        }
                        if (map.containsKey("videoDuration")) {
                            zIMVideoMessageLiteInfo.videoDuration = Double.valueOf(((Double) map.get("videoDuration")).doubleValue()).longValue();
                        }
                        if (map.containsKey("videoFirstFrameWidth")) {
                            zIMVideoMessageLiteInfo.videoFirstFrameWidth = Double.valueOf(((Double) map.get("videoFirstFrameWidth")).doubleValue()).intValue();
                        }
                        zIMRevokeMessageLiteInfo = zIMVideoMessageLiteInfo;
                        if (map.containsKey("videoFirstFrameHeight")) {
                            zIMVideoMessageLiteInfo.videoFirstFrameHeight = Double.valueOf(((Double) map.get("videoFirstFrameHeight")).doubleValue()).intValue();
                            zIMRevokeMessageLiteInfo = zIMVideoMessageLiteInfo;
                        }
                        break;
                    case 11:
                        ZIMAudioMessageLiteInfo zIMAudioMessageLiteInfo = new ZIMAudioMessageLiteInfo();
                        zIMRevokeMessageLiteInfo = zIMAudioMessageLiteInfo;
                        if (map.containsKey("audioDuration")) {
                            zIMAudioMessageLiteInfo.audioDuration = Double.valueOf(((Double) map.get("audioDuration")).doubleValue()).longValue();
                            zIMRevokeMessageLiteInfo = zIMAudioMessageLiteInfo;
                        }
                        break;
                    case 12:
                        ZIMMultipleMessageLiteInfo zIMMultipleMessageLiteInfo = new ZIMMultipleMessageLiteInfo();
                        zIMRevokeMessageLiteInfo = zIMMultipleMessageLiteInfo;
                        if (map.get("messageInfoList") != null) {
                            ArrayList<ZIMMessageLiteInfo> arrayList = new ArrayList<>();
                            Iterator it = ((ArrayList) map.get("messageInfoList")).iterator();
                            while (it.hasNext()) {
                                arrayList.add(convertLiteInfoFromJsToJava((HashMap) it.next()));
                            }
                            zIMMultipleMessageLiteInfo.messageInfoList = arrayList;
                            zIMRevokeMessageLiteInfo = zIMMultipleMessageLiteInfo;
                        }
                        break;
                    default:
                        zIMRevokeMessageLiteInfo = new ZIMMessageLiteInfo();
                        break;
                }
            }
        } else {
            ZIMTextMessageLiteInfo zIMTextMessageLiteInfo = new ZIMTextMessageLiteInfo();
            zIMTextMessageLiteInfo.message = (String) map.get("message");
            zIMRevokeMessageLiteInfo = zIMTextMessageLiteInfo;
        }
        if (zIMRevokeMessageLiteInfo instanceof ZIMMediaMessageLiteInfo) {
            if (map.containsKey("fileSize")) {
                ((ZIMMediaMessageLiteInfo) zIMRevokeMessageLiteInfo).fileSize = Double.valueOf(((Double) map.get("fileSize")).doubleValue()).longValue();
            }
            if (map.containsKey("fileName")) {
                ((ZIMMediaMessageLiteInfo) zIMRevokeMessageLiteInfo).fileName = (String) map.get("fileName");
            }
            if (map.containsKey("fileDownloadUrl")) {
                ((ZIMMediaMessageLiteInfo) zIMRevokeMessageLiteInfo).fileDownloadUrl = (String) map.get("fileDownloadUrl");
            }
            if (map.containsKey("fileLocalPath")) {
                ((ZIMMediaMessageLiteInfo) zIMRevokeMessageLiteInfo).fileLocalPath = (String) map.get("fileLocalPath");
            }
        }
        return zIMRevokeMessageLiteInfo;
    }

    public static WritableMap convertRepliedInfo(ZIMMessageRepliedInfo zIMMessageRepliedInfo) {
        if (zIMMessageRepliedInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMMessageRepliedInfo.state.value());
        writableMapCreateMap.putDouble("messageSeq", zIMMessageRepliedInfo.messageSeq);
        writableMapCreateMap.putString("messageID", String.valueOf(zIMMessageRepliedInfo.messageID));
        writableMapCreateMap.putString("senderUserID", zIMMessageRepliedInfo.senderUserID);
        writableMapCreateMap.putDouble("sentTime", zIMMessageRepliedInfo.sentTime);
        ZIMMessageLiteInfo zIMMessageLiteInfo = zIMMessageRepliedInfo.messageInfo;
        if (zIMMessageLiteInfo != null) {
            writableMapCreateMap.putMap("messageInfo", convertLiteInfo(zIMMessageLiteInfo));
            return writableMapCreateMap;
        }
        writableMapCreateMap.putNull("messageInfo");
        return writableMapCreateMap;
    }

    public static ReadableArray convertMessageList(ArrayList<ZIMMessage> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMMessage> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertMessage(it.next()));
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertTipsMessageChangeInfo(ZIMTipsMessageChangeInfo zIMTipsMessageChangeInfo) {
        if (zIMTipsMessageChangeInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt(SVGParser.XML_STYLESHEET_ATTR_TYPE, zIMTipsMessageChangeInfo.type.value());
        if (zIMTipsMessageChangeInfo instanceof ZIMTipsMessageGroupChangeInfo) {
            ZIMTipsMessageGroupChangeInfo zIMTipsMessageGroupChangeInfo = (ZIMTipsMessageGroupChangeInfo) zIMTipsMessageChangeInfo;
            writableMapCreateMap.putInt("groupDataFlag", zIMTipsMessageGroupChangeInfo.groupDataFlag);
            writableMapCreateMap.putString("groupName", zIMTipsMessageGroupChangeInfo.groupName);
            writableMapCreateMap.putString("groupNotice", zIMTipsMessageGroupChangeInfo.groupNotice);
            writableMapCreateMap.putString("groupAvatarUrl", zIMTipsMessageGroupChangeInfo.groupAvatarUrl);
            writableMapCreateMap.putMap("groupMutedInfo", convertGroupMuteInfo(zIMTipsMessageGroupChangeInfo.groupMutedInfo));
            return writableMapCreateMap;
        }
        if (zIMTipsMessageChangeInfo instanceof ZIMTipsMessageGroupMemberChangeInfo) {
            ZIMTipsMessageGroupMemberChangeInfo zIMTipsMessageGroupMemberChangeInfo = (ZIMTipsMessageGroupMemberChangeInfo) zIMTipsMessageChangeInfo;
            writableMapCreateMap.putInt("memberRole", zIMTipsMessageGroupMemberChangeInfo.memberRole);
            writableMapCreateMap.putDouble("muteExpiredTime", zIMTipsMessageGroupMemberChangeInfo.muteExpiredTime);
            writableMapCreateMap.putMap("groupNewOwner", convertUserOrGroupMember(zIMTipsMessageGroupMemberChangeInfo.groupNewOwner));
            return writableMapCreateMap;
        }
        if (zIMTipsMessageChangeInfo instanceof ZIMTipsMessagePinStatusChangeInfo) {
            writableMapCreateMap.putBoolean("isPinned", ((ZIMTipsMessagePinStatusChangeInfo) zIMTipsMessageChangeInfo).isPinned);
        }
        return writableMapCreateMap;
    }

    public static ZIMTipsMessageChangeInfo convertTipsMessageChangeInfoFromJsToJava(ReadableMap readableMap) {
        if (readableMap == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType[ZIMTipsMessageChangeInfoType.getZIMTipsMessageChangeInfoType(readableMap.getInt(SVGParser.XML_STYLESHEET_ATTR_TYPE)).ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return new ZIMTipsMessageGroupChangeInfo();
            case 6:
            case 7:
            case 8:
                return new ZIMTipsMessageGroupMemberChangeInfo();
            default:
                return new ZIMTipsMessageChangeInfo();
        }
    }

    static class AnonymousClass1 {
        static final int[] $SwitchMap$im$zego$zim$enums$ZIMMessageType;
        static final int[] $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType;

        static {
            int[] iArr = new int[ZIMTipsMessageChangeInfoType.values().length];
            $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType = iArr;
            try {
                iArr[ZIMTipsMessageChangeInfoType.GROUP_DATA_CHANGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType[ZIMTipsMessageChangeInfoType.GROUP_NOTICE_CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType[ZIMTipsMessageChangeInfoType.GROUP_NAME_CHANGED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType[ZIMTipsMessageChangeInfoType.GROUP_AVATAR_URL_CHANGED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType[ZIMTipsMessageChangeInfoType.GROUP_MUTE_CHANGED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType[ZIMTipsMessageChangeInfoType.GROUP_OWNER_TRANSFERRED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType[ZIMTipsMessageChangeInfoType.GROUP_MEMBER_ROLE_CHANGED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType[ZIMTipsMessageChangeInfoType.GROUP_MEMBER_MUTE_CHANGED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[ZIMMessageType.values().length];
            $SwitchMap$im$zego$zim$enums$ZIMMessageType = iArr2;
            try {
                iArr2[ZIMMessageType.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.COMMAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.BARRAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.REVOKE.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.TIPS.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.CUSTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.COMBINE.ordinal()] = 7;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.IMAGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.FILE.ordinal()] = 9;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.VIDEO.ordinal()] = 10;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.AUDIO.ordinal()] = 11;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$im$zego$zim$enums$ZIMMessageType[ZIMMessageType.MULTIPLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    public static ZIMTipsMessageChangeInfo convertTipsMessageChangeInfoFromJsToJava(HashMap<String, Object> map) {
        if (map == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType[ZIMTipsMessageChangeInfoType.getZIMTipsMessageChangeInfoType(Double.valueOf(((Double) map.get(SVGParser.XML_STYLESHEET_ATTR_TYPE)).doubleValue()).intValue()).ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return new ZIMTipsMessageGroupChangeInfo();
            case 6:
            case 7:
            case 8:
                return new ZIMTipsMessageGroupMemberChangeInfo();
            default:
                return new ZIMTipsMessageChangeInfo();
        }
    }

    public static ReadableMap convertFullRoomInfo(ZIMRoomFullInfo zIMRoomFullInfo) {
        if (zIMRoomFullInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putString("roomID", zIMRoomFullInfo.baseInfo.roomID);
        writableMapCreateMap2.putString("roomName", zIMRoomFullInfo.baseInfo.roomName);
        writableMapCreateMap.putMap("baseInfo", writableMapCreateMap2);
        return writableMapCreateMap;
    }

    public static ReadableMap convertGroupMuteInfo(ZIMGroupMuteInfo zIMGroupMuteInfo) {
        if (zIMGroupMuteInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt("mode", zIMGroupMuteInfo.mode.value());
        writableMapCreateMap.putDouble("expiredTime", zIMGroupMuteInfo.expiredTime);
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<Integer> it = zIMGroupMuteInfo.roles.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushInt(it.next().intValue());
        }
        writableMapCreateMap.putArray("roles", writableArrayCreateArray);
        return writableMapCreateMap;
    }

    public static ReadableMap convertGroupVerifyInfo(ZIMGroupVerifyInfo zIMGroupVerifyInfo) {
        if (zIMGroupVerifyInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt("joinMode", zIMGroupVerifyInfo.joinMode.value());
        writableMapCreateMap.putInt("inviteMode", zIMGroupVerifyInfo.inviteMode.value());
        writableMapCreateMap.putInt("beInviteMode", zIMGroupVerifyInfo.beInviteMode.value());
        return writableMapCreateMap;
    }

    public static ReadableMap convertGroupInfo(ZIMGroupInfo zIMGroupInfo) {
        if (zIMGroupInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("groupID", zIMGroupInfo.groupID);
        writableMapCreateMap.putString("groupName", zIMGroupInfo.groupName);
        writableMapCreateMap.putString("groupAvatarUrl", zIMGroupInfo.groupAvatarUrl);
        return writableMapCreateMap;
    }

    public static ReadableMap convertGroupFullInfo(ZIMGroupFullInfo zIMGroupFullInfo) {
        if (zIMGroupFullInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putMap("baseInfo", convertGroupInfo(zIMGroupFullInfo.baseInfo));
        writableMapCreateMap.putString("groupAlias", zIMGroupFullInfo.groupAlias);
        writableMapCreateMap.putString("groupNotice", zIMGroupFullInfo.groupNotice);
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        for (String str : zIMGroupFullInfo.groupAttributes.keySet()) {
            writableMapCreateMap2.putString(str, zIMGroupFullInfo.groupAttributes.get(str));
        }
        writableMapCreateMap.putMap("groupAttributes", writableMapCreateMap2);
        writableMapCreateMap.putInt("notificationStatus", zIMGroupFullInfo.notificationStatus.value());
        writableMapCreateMap.putInt("maxMemberCount", zIMGroupFullInfo.maxMemberCount);
        writableMapCreateMap.putDouble("createTime", zIMGroupFullInfo.createTime);
        writableMapCreateMap.putMap("mutedInfo", convertGroupMuteInfo(zIMGroupFullInfo.mutedInfo));
        writableMapCreateMap.putMap("verifyInfo", convertGroupVerifyInfo(zIMGroupFullInfo.verifyInfo));
        return writableMapCreateMap;
    }

    public static ReadableMap convertGroupMemberInfo(ZIMGroupMemberInfo zIMGroupMemberInfo) {
        if (zIMGroupMemberInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMGroupMemberInfo.userID);
        writableMapCreateMap.putString("userName", zIMGroupMemberInfo.userName);
        writableMapCreateMap.putString("userAvatarUrl", zIMGroupMemberInfo.userAvatarUrl);
        writableMapCreateMap.putInt("memberRole", zIMGroupMemberInfo.memberRole);
        writableMapCreateMap.putString("memberNickname", zIMGroupMemberInfo.memberNickname);
        writableMapCreateMap.putDouble("muteExpiredTime", zIMGroupMemberInfo.muteExpiredTime);
        writableMapCreateMap.putString("memberAvatarUrl", zIMGroupMemberInfo.userAvatarUrl);
        if (zIMGroupMemberInfo.groupEnterInfo != null) {
            WritableMap writableMapCreateMap2 = Arguments.createMap();
            writableMapCreateMap2.putDouble("enterTime", zIMGroupMemberInfo.groupEnterInfo.enterTime);
            writableMapCreateMap2.putInt("enterType", zIMGroupMemberInfo.groupEnterInfo.enterType.value());
            writableMapCreateMap2.putMap("operatedUser", convertGroupMemberSimpleInfo(zIMGroupMemberInfo.groupEnterInfo.operatedUser));
            writableMapCreateMap.putMap("groupEnterInfo", writableMapCreateMap2);
        }
        return writableMapCreateMap;
    }

    public static ReadableMap convertUserOrGroupMember(ZIMUserInfo zIMUserInfo) {
        if (zIMUserInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMUserInfo.userID);
        writableMapCreateMap.putString("userName", zIMUserInfo.userName);
        writableMapCreateMap.putString("userAvatarUrl", zIMUserInfo.userAvatarUrl);
        writableMapCreateMap.putString("userExtendedData", zIMUserInfo.userExtendedData);
        if (zIMUserInfo instanceof ZIMGroupMemberSimpleInfo) {
            ZIMGroupMemberSimpleInfo zIMGroupMemberSimpleInfo = (ZIMGroupMemberSimpleInfo) zIMUserInfo;
            writableMapCreateMap.putInt("memberRole", zIMGroupMemberSimpleInfo.memberRole);
            writableMapCreateMap.putString("memberNickname", zIMGroupMemberSimpleInfo.memberNickname);
        }
        return writableMapCreateMap;
    }

    public static ZIMUserInfo convertUserOrGroupMemberFromJsToJava(ReadableMap readableMap) {
        if (readableMap == null) {
            return null;
        }
        ZIMUserInfo zIMGroupMemberSimpleInfo = readableMap.hasKey("memberRole") ? new ZIMGroupMemberSimpleInfo() : new ZIMUserInfo();
        zIMGroupMemberSimpleInfo.userID = readableMap.hasKey("userID") ? readableMap.getString("userID") : "";
        zIMGroupMemberSimpleInfo.userName = readableMap.hasKey("userName") ? readableMap.getString("userName") : "";
        zIMGroupMemberSimpleInfo.userAvatarUrl = readableMap.hasKey("userAvatarUrl") ? readableMap.getString("userAvatarUrl") : "";
        zIMGroupMemberSimpleInfo.userExtendedData = readableMap.hasKey("userExtendedData") ? readableMap.getString("userExtendedData") : "";
        if (zIMGroupMemberSimpleInfo instanceof ZIMGroupMemberSimpleInfo) {
            ZIMGroupMemberSimpleInfo zIMGroupMemberSimpleInfo2 = (ZIMGroupMemberSimpleInfo) zIMGroupMemberSimpleInfo;
            zIMGroupMemberSimpleInfo2.memberRole = readableMap.getInt("memberRole");
            zIMGroupMemberSimpleInfo2.memberNickname = readableMap.hasKey("memberNickname") ? readableMap.getString("memberNickname") : "";
        }
        return zIMGroupMemberSimpleInfo;
    }

    public static ZIMUserInfo convertUserOrGroupMemberFromJsToJava(HashMap<String, Object> map) {
        if (map == null) {
            return null;
        }
        ZIMUserInfo zIMGroupMemberSimpleInfo = map.containsKey("memberRole") ? new ZIMGroupMemberSimpleInfo() : new ZIMUserInfo();
        zIMGroupMemberSimpleInfo.userID = map.containsKey("userID") ? (String) map.get("userID") : "";
        zIMGroupMemberSimpleInfo.userName = map.containsKey("userName") ? (String) map.get("userName") : "";
        zIMGroupMemberSimpleInfo.userAvatarUrl = map.containsKey("userAvatarUrl") ? (String) map.get("userAvatarUrl") : "";
        zIMGroupMemberSimpleInfo.userExtendedData = map.containsKey("userExtendedData") ? (String) map.get("userExtendedData") : "";
        if (zIMGroupMemberSimpleInfo instanceof ZIMGroupMemberSimpleInfo) {
            ZIMGroupMemberSimpleInfo zIMGroupMemberSimpleInfo2 = (ZIMGroupMemberSimpleInfo) zIMGroupMemberSimpleInfo;
            zIMGroupMemberSimpleInfo2.memberRole = map.containsKey("memberRole") ? Double.valueOf(((Double) map.get("memberRole")).doubleValue()).intValue() : 0;
            zIMGroupMemberSimpleInfo2.memberNickname = map.containsKey("memberNickname") ? (String) map.get("memberNickname") : "";
        }
        return zIMGroupMemberSimpleInfo;
    }

    public static ReadableArray convertUserOrGroupMemberList(ArrayList<ZIMUserInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMUserInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertUserOrGroupMember(it.next()));
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertGroupMemberSimpleInfo(ZIMGroupMemberSimpleInfo zIMGroupMemberSimpleInfo) {
        if (zIMGroupMemberSimpleInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMGroupMemberSimpleInfo.userID);
        writableMapCreateMap.putString("userName", zIMGroupMemberSimpleInfo.userName);
        writableMapCreateMap.putString("userAvatarUrl", zIMGroupMemberSimpleInfo.userAvatarUrl);
        writableMapCreateMap.putInt("memberRole", zIMGroupMemberSimpleInfo.memberRole);
        writableMapCreateMap.putString("memberNickname", zIMGroupMemberSimpleInfo.memberNickname);
        return writableMapCreateMap;
    }

    public static ReadableArray convertGroupMemberInfoList(ArrayList<ZIMGroupMemberInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMGroupMemberInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertGroupMemberInfo(it.next()));
        }
        return writableArrayCreateArray;
    }

    public static ReadableArray convertGroupList(ArrayList<ZIMGroup> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        for (ZIMGroup zIMGroup : arrayList) {
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putMap("baseInfo", convertGroupInfo(zIMGroup.baseInfo));
            writableMapCreateMap.putString("groupAlias", zIMGroup.groupAlias);
            writableMapCreateMap.putInt("notificationStatus", zIMGroup.notificationStatus.value());
            writableArrayCreateArray.pushMap(writableMapCreateMap);
        }
        return writableArrayCreateArray;
    }

    public static ReadableArray convertCallUserList(ArrayList<ZIMCallUserInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        for (ZIMCallUserInfo zIMCallUserInfo : arrayList) {
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putString("userID", zIMCallUserInfo.userID);
            writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMCallUserInfo.state.value());
            writableMapCreateMap.putString("extendedData", zIMCallUserInfo.extendedData);
            writableArrayCreateArray.pushMap(writableMapCreateMap);
        }
        return writableArrayCreateArray;
    }

    public static ReadableArray convertConversationChangeInfo(ArrayList<ZIMConversationChangeInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        for (ZIMConversationChangeInfo zIMConversationChangeInfo : arrayList) {
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putInt(NotificationCompat.CATEGORY_EVENT, zIMConversationChangeInfo.event.value());
            writableMapCreateMap.putMap("conversation", convertConversation(zIMConversationChangeInfo.conversation));
            writableArrayCreateArray.pushMap(writableMapCreateMap);
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertGroupOperatedInfo(ZIMGroupOperatedInfo zIMGroupOperatedInfo) {
        if (zIMGroupOperatedInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMGroupOperatedInfo.userID);
        writableMapCreateMap.putString("userName", zIMGroupOperatedInfo.userName);
        writableMapCreateMap.putInt("memberRole", zIMGroupOperatedInfo.memberRole);
        writableMapCreateMap.putString("memberNickname", zIMGroupOperatedInfo.memberNickname);
        writableMapCreateMap.putMap("operatedUserInfo", convertGroupMemberInfo(zIMGroupOperatedInfo.operatedUserInfo));
        return writableMapCreateMap;
    }

    public static ReadableMap convertRoomMemberAttributesInfo(ZIMRoomMemberAttributesInfo zIMRoomMemberAttributesInfo) {
        if (zIMRoomMemberAttributesInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMRoomMemberAttributesInfo.userID);
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        for (String str : zIMRoomMemberAttributesInfo.attributes.keySet()) {
            writableMapCreateMap2.putString(str, zIMRoomMemberAttributesInfo.attributes.get(str));
        }
        writableMapCreateMap.putMap("attributes", writableMapCreateMap2);
        return writableMapCreateMap;
    }

    public static ReadableArray convertRoomMemberAttributesInfoList(ArrayList<ZIMRoomMemberAttributesInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMRoomMemberAttributesInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertRoomMemberAttributesInfo(it.next()));
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertRoomMemberAttributesOperatedInfo(ZIMRoomMemberAttributesOperatedInfo zIMRoomMemberAttributesOperatedInfo) {
        if (zIMRoomMemberAttributesOperatedInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putMap("attributesInfo", convertRoomMemberAttributesInfo(zIMRoomMemberAttributesOperatedInfo.attributesInfo));
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<String> it = zIMRoomMemberAttributesOperatedInfo.errorKeys.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushString(it.next());
        }
        writableMapCreateMap.putArray("errorKeys", writableArrayCreateArray);
        return writableMapCreateMap;
    }

    public static ReadableArray convertRoomMemberAttributesOperatedInfoList(ArrayList<ZIMRoomMemberAttributesOperatedInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMRoomMemberAttributesOperatedInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertRoomMemberAttributesOperatedInfo(it.next()));
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertRoomMemberAttributesUpdateInfo(ZIMRoomMemberAttributesUpdateInfo zIMRoomMemberAttributesUpdateInfo) {
        if (zIMRoomMemberAttributesUpdateInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putMap("attributesInfo", convertRoomMemberAttributesInfo(zIMRoomMemberAttributesUpdateInfo.attributesInfo));
        return writableMapCreateMap;
    }

    public static ReadableArray convertRoomMemberAttributesUpdateInfoList(ArrayList<ZIMRoomMemberAttributesUpdateInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMRoomMemberAttributesUpdateInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertRoomMemberAttributesUpdateInfo(it.next()));
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertRoomOperatedInfo(ZIMRoomOperatedInfo zIMRoomOperatedInfo) {
        if (zIMRoomOperatedInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMRoomOperatedInfo.userID);
        return writableMapCreateMap;
    }

    public static ReadableMap convertFriendInfo(ZIMFriendInfo zIMFriendInfo) {
        if (zIMFriendInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("userID", zIMFriendInfo.userID);
        writableMapCreateMap.putString("userName", zIMFriendInfo.userName);
        writableMapCreateMap.putString("userAvatarUrl", zIMFriendInfo.userAvatarUrl);
        writableMapCreateMap.putString("wording", zIMFriendInfo.wording);
        writableMapCreateMap.putString("friendAlias", zIMFriendInfo.friendAlias);
        writableMapCreateMap.putDouble("createTime", zIMFriendInfo.createTime);
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        if (zIMFriendInfo.friendAttributes != null) {
            for (String str : zIMFriendInfo.friendAttributes.keySet()) {
                writableMapCreateMap2.putString(str, zIMFriendInfo.friendAttributes.get(str));
            }
        }
        writableMapCreateMap.putMap("friendAttributes", writableMapCreateMap2);
        return writableMapCreateMap;
    }

    public static ReadableArray convertFriendInfoList(ArrayList<ZIMFriendInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMFriendInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertFriendInfo(it.next()));
        }
        return writableArrayCreateArray;
    }

    public static ReadableMap convertFriendApplication(ZIMFriendApplicationInfo zIMFriendApplicationInfo) {
        if (zIMFriendApplicationInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt(SVGParser.XML_STYLESHEET_ATTR_TYPE, zIMFriendApplicationInfo.type.value());
        writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMFriendApplicationInfo.state.value());
        writableMapCreateMap.putString("wording", zIMFriendApplicationInfo.wording);
        writableMapCreateMap.putDouble("createTime", zIMFriendApplicationInfo.createTime);
        writableMapCreateMap.putDouble("updateTime", zIMFriendApplicationInfo.updateTime);
        writableMapCreateMap.putMap("applyUser", convertUserInfo(zIMFriendApplicationInfo.applyUser));
        return writableMapCreateMap;
    }

    public static ReadableMap convertGroupApplication(ZIMGroupApplicationInfo zIMGroupApplicationInfo) {
        if (zIMGroupApplicationInfo == null) {
            return null;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt(SVGParser.XML_STYLESHEET_ATTR_TYPE, zIMGroupApplicationInfo.type.value());
        writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMGroupApplicationInfo.state.value());
        writableMapCreateMap.putString("wording", zIMGroupApplicationInfo.wording);
        writableMapCreateMap.putDouble("createTime", zIMGroupApplicationInfo.createTime);
        writableMapCreateMap.putDouble("updateTime", zIMGroupApplicationInfo.updateTime);
        writableMapCreateMap.putMap("applyUser", convertUserInfo(zIMGroupApplicationInfo.applyUser));
        writableMapCreateMap.putMap("groupInfo", convertGroupInfo(zIMGroupApplicationInfo.groupInfo));
        writableMapCreateMap.putMap("operatedUser", convertGroupMemberSimpleInfo(zIMGroupApplicationInfo.operatedUser));
        return writableMapCreateMap;
    }

    public static ReadableArray convertFriendApplicationList(ArrayList<ZIMFriendApplicationInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMFriendApplicationInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertFriendApplication(it.next()));
        }
        return writableArrayCreateArray;
    }

    public static ReadableArray convertGroupApplicationList(ArrayList<ZIMGroupApplicationInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<ZIMGroupApplicationInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(convertGroupApplication(it.next()));
        }
        return writableArrayCreateArray;
    }
}

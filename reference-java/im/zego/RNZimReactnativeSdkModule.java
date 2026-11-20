package im.zego;

import android.app.Application;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import app.notifee.core.event.LogEvent;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.microsoft.codepush.react.CodePushConstants;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import im.zego.zim.ZIM;
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
import im.zego.zim.entity.ZIMCallUserStateChangeInfo;
import im.zego.zim.entity.ZIMCallingInvitationSentInfo;
import im.zego.zim.entity.ZIMCallingInviteConfig;
import im.zego.zim.entity.ZIMCombineMessage;
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
import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMFileCacheClearConfig;
import im.zego.zim.entity.ZIMFileCacheInfo;
import im.zego.zim.entity.ZIMFileCacheQueryConfig;
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
import im.zego.zim.entity.ZIMGroupMessageReceiptMemberQueryConfig;
import im.zego.zim.entity.ZIMGroupMuteConfig;
import im.zego.zim.entity.ZIMGroupMuteInfo;
import im.zego.zim.entity.ZIMGroupOperatedInfo;
import im.zego.zim.entity.ZIMGroupSearchConfig;
import im.zego.zim.entity.ZIMGroupSearchInfo;
import im.zego.zim.entity.ZIMGroupVerifyInfo;
import im.zego.zim.entity.ZIMLogConfig;
import im.zego.zim.entity.ZIMLoginConfig;
import im.zego.zim.entity.ZIMMediaDownloadConfig;
import im.zego.zim.entity.ZIMMediaMessage;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.entity.ZIMMessageDeleteConfig;
import im.zego.zim.entity.ZIMMessageDeletedInfo;
import im.zego.zim.entity.ZIMMessageEditConfig;
import im.zego.zim.entity.ZIMMessageExportConfig;
import im.zego.zim.entity.ZIMMessageImportConfig;
import im.zego.zim.entity.ZIMMessagePinConfig;
import im.zego.zim.entity.ZIMMessagePinStatusChangeInfo;
import im.zego.zim.entity.ZIMMessageQueryConfig;
import im.zego.zim.entity.ZIMMessageReaction;
import im.zego.zim.entity.ZIMMessageReactionAddConfig;
import im.zego.zim.entity.ZIMMessageReactionChangeInfo;
import im.zego.zim.entity.ZIMMessageReactionSimpleInfo;
import im.zego.zim.entity.ZIMMessageReactionUserChangeInfo;
import im.zego.zim.entity.ZIMMessageReactionUserFullInfo;
import im.zego.zim.entity.ZIMMessageReactionUserQueryConfig;
import im.zego.zim.entity.ZIMMessageReceiptInfo;
import im.zego.zim.entity.ZIMMessageReceivedInfo;
import im.zego.zim.entity.ZIMMessageRepliedListQueryConfig;
import im.zego.zim.entity.ZIMMessageRevokeConfig;
import im.zego.zim.entity.ZIMMessageRootRepliedCountInfo;
import im.zego.zim.entity.ZIMMessageRootRepliedInfo;
import im.zego.zim.entity.ZIMMessageSearchConfig;
import im.zego.zim.entity.ZIMMessageSendConfig;
import im.zego.zim.entity.ZIMMessageSentStatusChangeInfo;
import im.zego.zim.entity.ZIMMultipleMessage;
import im.zego.zim.entity.ZIMRevokeMessage;
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
import im.zego.zim.entity.ZIMUserFullInfo;
import im.zego.zim.entity.ZIMUserInfo;
import im.zego.zim.entity.ZIMUserOfflinePushRule;
import im.zego.zim.entity.ZIMUserRule;
import im.zego.zim.entity.ZIMUserStatus;
import im.zego.zim.entity.ZIMUserStatusSubscribeConfig;
import im.zego.zim.entity.ZIMUserStatusSubscription;
import im.zego.zim.entity.ZIMUsersInfoQueryConfig;
import im.zego.zim.enums.ZIMBlacklistChangeAction;
import im.zego.zim.enums.ZIMCallInvitationMode;
import im.zego.zim.enums.ZIMConnectionEvent;
import im.zego.zim.enums.ZIMConnectionState;
import im.zego.zim.enums.ZIMConversationNotificationStatus;
import im.zego.zim.enums.ZIMConversationPinnedFilter;
import im.zego.zim.enums.ZIMConversationSearchMode;
import im.zego.zim.enums.ZIMConversationSyncState;
import im.zego.zim.enums.ZIMConversationType;
import im.zego.zim.enums.ZIMErrorCode;
import im.zego.zim.enums.ZIMFriendApplicationListChangeAction;
import im.zego.zim.enums.ZIMFriendDeleteType;
import im.zego.zim.enums.ZIMFriendListChangeAction;
import im.zego.zim.enums.ZIMFriendRelationCheckType;
import im.zego.zim.enums.ZIMGeofencingType;
import im.zego.zim.enums.ZIMGroupApplicationListChangeAction;
import im.zego.zim.enums.ZIMGroupBeInviteMode;
import im.zego.zim.enums.ZIMGroupEvent;
import im.zego.zim.enums.ZIMGroupInviteMode;
import im.zego.zim.enums.ZIMGroupJoinMode;
import im.zego.zim.enums.ZIMGroupMemberEvent;
import im.zego.zim.enums.ZIMGroupMemberState;
import im.zego.zim.enums.ZIMGroupMuteMode;
import im.zego.zim.enums.ZIMGroupState;
import im.zego.zim.enums.ZIMMediaFileType;
import im.zego.zim.enums.ZIMMessageOrder;
import im.zego.zim.enums.ZIMMessagePriority;
import im.zego.zim.enums.ZIMMessageType;
import im.zego.zim.enums.ZIMRoomEvent;
import im.zego.zim.enums.ZIMRoomState;
import im.zego.zim.event.ZIMMessageReactionsChangedEventResult;
import im.zego.zim.internal.util.ZIMLogUtil;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class RNZimReactnativeSdkModule extends ReactContextBaseJavaModule {
    private static final String Prefix = "im.zego.zim.reactnative.";
    private HashMap<String, ZIM> engineMap;
    private HashMap<ZIM, String> engineMapForCallback;
    private final ReactApplicationContext reactContext;

    @ReactMethod
    public void addListener(String str) {
    }

    @ReactMethod
    public void removeListeners(Integer num) {
    }

    public RNZimReactnativeSdkModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.reactContext = reactApplicationContext;
        this.engineMap = new HashMap<>();
        this.engineMapForCallback = new HashMap<>();
    }

    @Override
    public String getName() {
        return "ZIMNativeModule";
    }

    @Override
    public Map<String, Object> getConstants() {
        HashMap map = new HashMap();
        map.put("prefix", Prefix);
        return map;
    }

    public void sendEvent(String str, WritableMap writableMap, ZIM zim) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("handle", this.engineMapForCallback.get(zim));
        writableMapCreateMap.putMap("data", writableMap);
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) this.reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(Prefix + str, writableMapCreateMap);
    }

    public void sendAPIEvent(String str, WritableMap writableMap) {
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) this.reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(Prefix + str, writableMap);
    }

    @ReactMethod
    public void getVersion(Promise promise) {
        promise.resolve(ZIM.getVersion());
    }

    @ReactMethod
    public void writeCustomLog(String str, String str2) {
        try {
            Method declaredMethod = ZIMLogUtil.class.getDeclaredMethod("writeCustomLog", String.class, String.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, str, str2);
            declaredMethod.setAccessible(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @ReactMethod
    public void setLogConfig(ReadableMap readableMap) {
        ZIMLogConfig zIMLogConfig = new ZIMLogConfig();
        if (readableMap.hasKey("logPath")) {
            zIMLogConfig.logPath = readableMap.getString("logPath");
        }
        if (readableMap.hasKey("logSize")) {
            zIMLogConfig.logSize = Double.valueOf(readableMap.getDouble("logSize")).longValue();
        }
        ZIM.setLogConfig(zIMLogConfig);
    }

    @ReactMethod
    public void setCacheConfig(ReadableMap readableMap) {
        ZIMCacheConfig zIMCacheConfig = new ZIMCacheConfig();
        if (readableMap.hasKey("cachePath")) {
            zIMCacheConfig.cachePath = readableMap.getString("cachePath");
        }
        ZIM.setCacheConfig(zIMCacheConfig);
    }

    @ReactMethod
    public void setAdvancedConfig(String str, String str2) {
        ZIM.setAdvancedConfig(str, str2);
    }

    @ReactMethod
    public void setGeofencingConfig(ReadableArray readableArray, int i, Promise promise) {
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(Double.valueOf(((Double) it.next()).doubleValue()).intValue()));
        }
        promise.resolve(Boolean.valueOf(ZIM.setGeofencingConfig(arrayList, ZIMGeofencingType.getZIMGeofencingType(i))));
    }

    @ReactMethod
    public void createEngine(String str, Double d, String str2) {
        ZIM zim = ZIM.getInstance();
        if (zim != null) {
            zim.destroy();
        }
        ZIMAppConfig zIMAppConfig = new ZIMAppConfig();
        zIMAppConfig.appID = d.longValue();
        zIMAppConfig.appSign = str2;
        ZIM zimCreate = ZIM.create(zIMAppConfig, (Application) this.reactContext.getApplicationContext());
        if (zimCreate != null) {
            this.engineMap.put(str, zimCreate);
            this.engineMapForCallback.put(zimCreate, str);
            zimCreate.setEventHandler(new ZIMEventHandler() {
                @Override
                public void onError(ZIM zim2, ZIMError zIMError) {
                    super.onError(zim2, zIMError);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("code", zIMError.code.value());
                    writableMapCreateMap.putString("message", zIMError.message);
                    RNZimReactnativeSdkModule.this.sendEvent("error", writableMapCreateMap, zim2);
                }

                @Override
                public void onConnectionStateChanged(ZIM zim2, ZIMConnectionState zIMConnectionState, ZIMConnectionEvent zIMConnectionEvent, JSONObject jSONObject) {
                    super.onConnectionStateChanged(zim2, zIMConnectionState, zIMConnectionEvent, jSONObject);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMConnectionState.value());
                    writableMapCreateMap.putInt(NotificationCompat.CATEGORY_EVENT, zIMConnectionEvent.value());
                    writableMapCreateMap.putString("extendedData", jSONObject.toString());
                    RNZimReactnativeSdkModule.this.sendEvent("connectionStateChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onExperimentalEventReceived(ZIM zim2, String str3) {
                    super.onExperimentalEventReceived(zim2, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("data", str3);
                    RNZimReactnativeSdkModule.this.sendEvent("experimentalEventReceived", writableMapCreateMap, zim2);
                }

                @Override
                public void onTokenWillExpire(ZIM zim2, int i) {
                    super.onTokenWillExpire(zim2, i);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("second", i);
                    RNZimReactnativeSdkModule.this.sendEvent("tokenWillExpire", writableMapCreateMap, zim2);
                }

                @Override
                public void onUserInfoUpdated(ZIM zim2, ZIMUserFullInfo zIMUserFullInfo) {
                    super.onUserInfoUpdated(zim2, zIMUserFullInfo);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap(LogEvent.LEVEL_INFO, RNZIMConverter.convertUserFullInfo(zIMUserFullInfo));
                    RNZimReactnativeSdkModule.this.sendEvent("userInfoUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onUserStatusUpdated(ZIM zim2, ArrayList<ZIMUserStatus> arrayList) {
                    super.onUserStatusUpdated(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMUserStatus> it = arrayList.iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertUserStatus(it.next()));
                    }
                    writableMapCreateMap.putArray("userStatusList", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendEvent("userStatusUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onUserRuleUpdated(ZIM zim2, ZIMUserRule zIMUserRule) {
                    super.onUserRuleUpdated(zim2, zIMUserRule);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("userRule", RNZIMConverter.convertUserRule(zIMUserRule.offlinePushRule));
                    RNZimReactnativeSdkModule.this.sendEvent("userRuleUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onConversationsAllDeleted(ZIM zim2, ZIMConversationsAllDeletedInfo zIMConversationsAllDeletedInfo) {
                    super.onConversationsAllDeleted(zim2, zIMConversationsAllDeletedInfo);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, zIMConversationsAllDeletedInfo.count);
                    RNZimReactnativeSdkModule.this.sendEvent("conversationsAllDeleted", writableMapCreateMap, zim2);
                }

                @Override
                public void onConversationChanged(ZIM zim2, ArrayList<ZIMConversationChangeInfo> arrayList) {
                    super.onConversationChanged(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("infoList", RNZIMConverter.convertConversationChangeInfo(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("conversationChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onConversationSyncStateChanged(ZIM zim2, ZIMConversationSyncState zIMConversationSyncState) {
                    super.onConversationSyncStateChanged(zim2, zIMConversationSyncState);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMConversationSyncState.value());
                    RNZimReactnativeSdkModule.this.sendEvent("conversationSyncStateChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onConversationTotalUnreadMessageCountUpdated(ZIM zim2, int i) {
                    super.onConversationTotalUnreadMessageCountUpdated(zim2, i);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("totalUnreadMessageCount", i);
                    RNZimReactnativeSdkModule.this.sendEvent("conversationTotalUnreadMessageCountUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onReceivePeerMessage(ZIM zim2, ArrayList<ZIMMessage> arrayList, String str3) {
                    super.onReceivePeerMessage(zim2, arrayList, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("fromConversationID", str3);
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("receivePeerMessage", writableMapCreateMap, zim2);
                }

                @Override
                public void onReceiveRoomMessage(ZIM zim2, ArrayList<ZIMMessage> arrayList, String str3) {
                    super.onReceiveRoomMessage(zim2, arrayList, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("fromConversationID", str3);
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("receiveRoomMessage", writableMapCreateMap, zim2);
                }

                @Override
                public void onReceiveGroupMessage(ZIM zim2, ArrayList<ZIMMessage> arrayList, String str3) {
                    super.onReceiveGroupMessage(zim2, arrayList, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("fromConversationID", str3);
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("receiveGroupMessage", writableMapCreateMap, zim2);
                }

                @Override
                public void onPeerMessageReceived(ZIM zim2, ArrayList<ZIMMessage> arrayList, ZIMMessageReceivedInfo zIMMessageReceivedInfo, String str3) {
                    super.onPeerMessageReceived(zim2, arrayList, zIMMessageReceivedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("fromConversationID", str3);
                    writableMapCreateMap.putMap(LogEvent.LEVEL_INFO, RNZIMConverter.convertMessageReceivedInfo(zIMMessageReceivedInfo));
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("peerMessageReceived", writableMapCreateMap, zim2);
                }

                @Override
                public void onRoomMessageReceived(ZIM zim2, ArrayList<ZIMMessage> arrayList, ZIMMessageReceivedInfo zIMMessageReceivedInfo, String str3) {
                    super.onRoomMessageReceived(zim2, arrayList, zIMMessageReceivedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("fromConversationID", str3);
                    writableMapCreateMap.putMap(LogEvent.LEVEL_INFO, RNZIMConverter.convertMessageReceivedInfo(zIMMessageReceivedInfo));
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("roomMessageReceived", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupMessageReceived(ZIM zim2, ArrayList<ZIMMessage> arrayList, ZIMMessageReceivedInfo zIMMessageReceivedInfo, String str3) {
                    super.onGroupMessageReceived(zim2, arrayList, zIMMessageReceivedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("fromConversationID", str3);
                    writableMapCreateMap.putMap(LogEvent.LEVEL_INFO, RNZIMConverter.convertMessageReceivedInfo(zIMMessageReceivedInfo));
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("groupMessageReceived", writableMapCreateMap, zim2);
                }

                @Override
                public void onBroadcastMessageReceived(ZIM zim2, ZIMMessage zIMMessage) {
                    super.onBroadcastMessageReceived(zim2, zIMMessage);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessage));
                    RNZimReactnativeSdkModule.this.sendEvent("broadcastMessageReceived", writableMapCreateMap, zim2);
                }

                @Override
                public void onConversationMessageReceiptChanged(ZIM zim2, ArrayList<ZIMMessageReceiptInfo> arrayList) {
                    super.onConversationMessageReceiptChanged(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("infos", RNZIMConverter.convertMessageReceiptInfoList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("conversationMessageReceiptChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onMessageReceiptChanged(ZIM zim2, ArrayList<ZIMMessageReceiptInfo> arrayList) {
                    super.onMessageReceiptChanged(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("infos", RNZIMConverter.convertMessageReceiptInfoList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("messageReceiptChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onMessageRevokeReceived(ZIM zim2, ArrayList<ZIMRevokeMessage> arrayList) {
                    super.onMessageRevokeReceived(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMRevokeMessage> it = arrayList.iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(it.next()));
                    }
                    writableMapCreateMap.putArray("messageList", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendEvent("messageRevokeReceived", writableMapCreateMap, zim2);
                }

                @Override
                public void onMessageReactionsChanged(ZIM zim2, ZIMMessageReactionsChangedEventResult zIMMessageReactionsChangedEventResult) {
                    super.onMessageReactionsChanged(zim2, zIMMessageReactionsChangedEventResult);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMMessageReaction> it = zIMMessageReactionsChangedEventResult.getReactions().iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertMessageReaction(it.next()));
                    }
                    writableMapCreateMap.putArray("reactions", writableArrayCreateArray);
                    WritableArray writableArrayCreateArray2 = Arguments.createArray();
                    for (ZIMMessageReactionChangeInfo zIMMessageReactionChangeInfo : zIMMessageReactionsChangedEventResult.getChangeInfoList()) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putMap("message", RNZIMConverter.convertMessage(zIMMessageReactionChangeInfo.getMessage()));
                        WritableArray writableArrayCreateArray3 = Arguments.createArray();
                        for (ZIMMessageReactionUserChangeInfo zIMMessageReactionUserChangeInfo : zIMMessageReactionChangeInfo.getUserChangeInfoList()) {
                            WritableMap writableMapCreateMap3 = Arguments.createMap();
                            writableMapCreateMap3.putString("userID", zIMMessageReactionUserChangeInfo.getUserID());
                            writableMapCreateMap3.putString("reactionType", zIMMessageReactionUserChangeInfo.getReactionType());
                            writableMapCreateMap3.putInt(TSScheduleManager.ACTION_NAME, zIMMessageReactionUserChangeInfo.getAction().value());
                            writableMapCreateMap3.putInt("sumCount", zIMMessageReactionUserChangeInfo.getSumCount());
                            writableArrayCreateArray3.pushMap(writableMapCreateMap3);
                        }
                        writableMapCreateMap2.putArray("userChangeInfoList", writableArrayCreateArray3);
                        writableArrayCreateArray2.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("changeInfoList", writableArrayCreateArray2);
                    RNZimReactnativeSdkModule.this.sendEvent("messageReactionsChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onMessageRepliedCountChanged(ZIM zim2, ArrayList<ZIMMessageRootRepliedCountInfo> arrayList) {
                    super.onMessageRepliedCountChanged(zim2, arrayList);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMMessageRootRepliedCountInfo zIMMessageRootRepliedCountInfo : arrayList) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("conversationID", zIMMessageRootRepliedCountInfo.conversationID);
                        writableMapCreateMap.putInt("conversationType", zIMMessageRootRepliedCountInfo.conversationType.value());
                        writableMapCreateMap.putInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, zIMMessageRootRepliedCountInfo.count);
                        writableMapCreateMap.putString("messageID", String.valueOf(zIMMessageRootRepliedCountInfo.messageID));
                        writableArrayCreateArray.pushMap(writableMapCreateMap);
                    }
                    WritableMap writableMapCreateMap2 = Arguments.createMap();
                    writableMapCreateMap2.putArray("infos", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendEvent("messageRepliedCountChanged", writableMapCreateMap2, zim2);
                }

                @Override
                public void onMessageRepliedInfoChanged(ZIM zim2, ArrayList<ZIMMessage> arrayList) {
                    super.onMessageRepliedInfoChanged(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("messageRepliedInfoChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onMessagePinStatusChanged(ZIM zim2, ArrayList<ZIMMessagePinStatusChangeInfo> arrayList) {
                    super.onMessagePinStatusChanged(zim2, arrayList);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMMessagePinStatusChangeInfo zIMMessagePinStatusChangeInfo : arrayList) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putInt("pinStatus", zIMMessagePinStatusChangeInfo.getPinStatus().value());
                        writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessagePinStatusChangeInfo.getMessage()));
                        writableArrayCreateArray.pushMap(writableMapCreateMap);
                    }
                    WritableMap writableMapCreateMap2 = Arguments.createMap();
                    writableMapCreateMap2.putArray("infos", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendEvent("messagePinStatusChanged", writableMapCreateMap2, zim2);
                }

                @Override
                public void onMessageEdited(ZIM zim2, ArrayList<ZIMMessage> arrayList) {
                    super.onMessageEdited(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("messageEdited", writableMapCreateMap, zim2);
                }

                @Override
                public void onMessageDeleted(ZIM zim2, ZIMMessageDeletedInfo zIMMessageDeletedInfo) {
                    super.onMessageDeleted(zim2, zIMMessageDeletedInfo);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("conversationID", zIMMessageDeletedInfo.conversationID);
                    writableMapCreateMap.putInt("conversationType", zIMMessageDeletedInfo.conversationType.value());
                    writableMapCreateMap.putBoolean("isDeleteConversationAllMessage", zIMMessageDeletedInfo.isDeleteConversationAllMessage);
                    writableMapCreateMap.putInt("messageDeleteType", zIMMessageDeletedInfo.messageDeleteType.value());
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMMessage> it = zIMMessageDeletedInfo.messageList.iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(it.next()));
                    }
                    writableMapCreateMap.putArray("messageList", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendEvent("messageDeleted", writableMapCreateMap, zim2);
                }

                @Override
                public void onMessageSentStatusChanged(ZIM zim2, ArrayList<ZIMMessageSentStatusChangeInfo> arrayList) {
                    super.onMessageSentStatusChanged(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMMessageSentStatusChangeInfo> it = arrayList.iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertMessageSentStatusChangeInfo(it.next()));
                    }
                    writableMapCreateMap.putArray("infos", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendEvent("messageSentStatusChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onRoomMemberJoined(ZIM zim2, ArrayList<ZIMUserInfo> arrayList, String str3) {
                    super.onRoomMemberJoined(zim2, arrayList, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str3);
                    writableMapCreateMap.putArray("memberList", RNZIMConverter.convertUserInfoList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("roomMemberJoined", writableMapCreateMap, zim2);
                }

                @Override
                public void onRoomMemberLeft(ZIM zim2, ArrayList<ZIMUserInfo> arrayList, String str3) {
                    super.onRoomMemberLeft(zim2, arrayList, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str3);
                    writableMapCreateMap.putArray("memberList", RNZIMConverter.convertUserInfoList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("roomMemberLeft", writableMapCreateMap, zim2);
                }

                @Override
                public void onRoomStateChanged(ZIM zim2, ZIMRoomState zIMRoomState, ZIMRoomEvent zIMRoomEvent, JSONObject jSONObject, String str3) {
                    super.onRoomStateChanged(zim2, zIMRoomState, zIMRoomEvent, jSONObject, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMRoomState.value());
                    writableMapCreateMap.putInt(NotificationCompat.CATEGORY_EVENT, zIMRoomEvent.value());
                    writableMapCreateMap.putString("extendedData", jSONObject.toString());
                    writableMapCreateMap.putString("roomID", str3);
                    RNZimReactnativeSdkModule.this.sendEvent("roomStateChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onRoomAttributesUpdated(ZIM zim2, ZIMRoomAttributesUpdateInfo zIMRoomAttributesUpdateInfo, String str3) {
                    super.onRoomAttributesUpdated(zim2, zIMRoomAttributesUpdateInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str3);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    WritableMap writableMapCreateMap2 = Arguments.createMap();
                    WritableMap writableMapCreateMap3 = Arguments.createMap();
                    for (String str4 : zIMRoomAttributesUpdateInfo.roomAttributes.keySet()) {
                        writableMapCreateMap3.putString(str4, zIMRoomAttributesUpdateInfo.roomAttributes.get(str4));
                    }
                    writableMapCreateMap2.putInt(TSScheduleManager.ACTION_NAME, zIMRoomAttributesUpdateInfo.action.value());
                    writableMapCreateMap2.putMap("roomAttributes", writableMapCreateMap3);
                    writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    writableMapCreateMap.putArray("infos", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendEvent("roomAttributesUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onRoomAttributesBatchUpdated(ZIM zim2, ArrayList<ZIMRoomAttributesUpdateInfo> arrayList, String str3) {
                    super.onRoomAttributesBatchUpdated(zim2, arrayList, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str3);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMRoomAttributesUpdateInfo zIMRoomAttributesUpdateInfo : arrayList) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        WritableMap writableMapCreateMap3 = Arguments.createMap();
                        for (String str4 : zIMRoomAttributesUpdateInfo.roomAttributes.keySet()) {
                            writableMapCreateMap3.putString(str4, zIMRoomAttributesUpdateInfo.roomAttributes.get(str4));
                        }
                        writableMapCreateMap2.putInt(TSScheduleManager.ACTION_NAME, zIMRoomAttributesUpdateInfo.action.value());
                        writableMapCreateMap2.putMap("roomAttributes", writableMapCreateMap3);
                        writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("infos", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendEvent("roomAttributesBatchUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onRoomMemberAttributesUpdated(ZIM zim2, ArrayList<ZIMRoomMemberAttributesUpdateInfo> arrayList, ZIMRoomOperatedInfo zIMRoomOperatedInfo, String str3) {
                    super.onRoomMemberAttributesUpdated(zim2, arrayList, zIMRoomOperatedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("infos", RNZIMConverter.convertRoomMemberAttributesUpdateInfoList(arrayList));
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertRoomOperatedInfo(zIMRoomOperatedInfo));
                    writableMapCreateMap.putString("roomID", str3);
                    RNZimReactnativeSdkModule.this.sendEvent("roomMemberAttributesUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupStateChanged(ZIM zim2, ZIMGroupState zIMGroupState, ZIMGroupEvent zIMGroupEvent, ZIMGroupOperatedInfo zIMGroupOperatedInfo, ZIMGroupFullInfo zIMGroupFullInfo) {
                    super.onGroupStateChanged(zim2, zIMGroupState, zIMGroupEvent, zIMGroupOperatedInfo, zIMGroupFullInfo);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMGroupState.value());
                    writableMapCreateMap.putInt(NotificationCompat.CATEGORY_EVENT, zIMGroupEvent.value());
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertGroupOperatedInfo(zIMGroupOperatedInfo));
                    writableMapCreateMap.putMap("groupInfo", RNZIMConverter.convertGroupFullInfo(zIMGroupFullInfo));
                    RNZimReactnativeSdkModule.this.sendEvent("groupStateChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupNameUpdated(ZIM zim2, String str3, ZIMGroupOperatedInfo zIMGroupOperatedInfo, String str4) {
                    super.onGroupNameUpdated(zim2, str3, zIMGroupOperatedInfo, str4);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str4);
                    writableMapCreateMap.putString("groupName", str3);
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertGroupOperatedInfo(zIMGroupOperatedInfo));
                    RNZimReactnativeSdkModule.this.sendEvent("groupNameUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupAvatarUrlUpdated(ZIM zim2, String str3, ZIMGroupOperatedInfo zIMGroupOperatedInfo, String str4) {
                    super.onGroupAvatarUrlUpdated(zim2, str3, zIMGroupOperatedInfo, str4);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str4);
                    writableMapCreateMap.putString("groupAvatarUrl", str3);
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertGroupOperatedInfo(zIMGroupOperatedInfo));
                    RNZimReactnativeSdkModule.this.sendEvent("groupAvatarUrlUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupAliasUpdated(ZIM zim2, String str3, String str4, String str5) {
                    super.onGroupAliasUpdated(zim2, str3, str4, str5);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str5);
                    writableMapCreateMap.putString("groupAlias", str3);
                    writableMapCreateMap.putString("operatedUserID", str4);
                    RNZimReactnativeSdkModule.this.sendEvent("groupAliasUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupNoticeUpdated(ZIM zim2, String str3, ZIMGroupOperatedInfo zIMGroupOperatedInfo, String str4) {
                    super.onGroupNoticeUpdated(zim2, str3, zIMGroupOperatedInfo, str4);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str4);
                    writableMapCreateMap.putString("groupNotice", str3);
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertGroupOperatedInfo(zIMGroupOperatedInfo));
                    RNZimReactnativeSdkModule.this.sendEvent("groupNoticeUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupAttributesUpdated(ZIM zim2, ArrayList<ZIMGroupAttributesUpdateInfo> arrayList, ZIMGroupOperatedInfo zIMGroupOperatedInfo, String str3) {
                    super.onGroupAttributesUpdated(zim2, arrayList, zIMGroupOperatedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMGroupAttributesUpdateInfo zIMGroupAttributesUpdateInfo : arrayList) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putInt(TSScheduleManager.ACTION_NAME, zIMGroupAttributesUpdateInfo.action.value());
                        WritableMap writableMapCreateMap3 = Arguments.createMap();
                        for (String str4 : zIMGroupAttributesUpdateInfo.groupAttributes.keySet()) {
                            writableMapCreateMap3.putString(str4, zIMGroupAttributesUpdateInfo.groupAttributes.get(str4));
                        }
                        writableMapCreateMap2.putMap("groupAttributes", writableMapCreateMap3);
                        writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("infoList", writableArrayCreateArray);
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertGroupOperatedInfo(zIMGroupOperatedInfo));
                    writableMapCreateMap.putString("groupID", str3);
                    RNZimReactnativeSdkModule.this.sendEvent("groupAttributesUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupMutedInfoUpdated(ZIM zim2, ZIMGroupMuteInfo zIMGroupMuteInfo, ZIMGroupOperatedInfo zIMGroupOperatedInfo, String str3) {
                    super.onGroupMutedInfoUpdated(zim2, zIMGroupMuteInfo, zIMGroupOperatedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("mutedInfo", RNZIMConverter.convertGroupMuteInfo(zIMGroupMuteInfo));
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertGroupOperatedInfo(zIMGroupOperatedInfo));
                    writableMapCreateMap.putString("groupID", str3);
                    RNZimReactnativeSdkModule.this.sendEvent("groupMutedInfoUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupVerifyInfoUpdated(ZIM zim2, ZIMGroupVerifyInfo zIMGroupVerifyInfo, ZIMGroupOperatedInfo zIMGroupOperatedInfo, String str3) {
                    super.onGroupVerifyInfoUpdated(zim2, zIMGroupVerifyInfo, zIMGroupOperatedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("verifyInfo", RNZIMConverter.convertGroupVerifyInfo(zIMGroupVerifyInfo));
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertGroupOperatedInfo(zIMGroupOperatedInfo));
                    writableMapCreateMap.putString("groupID", str3);
                    RNZimReactnativeSdkModule.this.sendEvent("groupVerifyInfoUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupApplicationListChanged(ZIM zim2, ArrayList<ZIMGroupApplicationInfo> arrayList, ZIMGroupApplicationListChangeAction zIMGroupApplicationListChangeAction) {
                    super.onGroupApplicationListChanged(zim2, arrayList, zIMGroupApplicationListChangeAction);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(TSScheduleManager.ACTION_NAME, zIMGroupApplicationListChangeAction.value());
                    writableMapCreateMap.putArray("applicationList", RNZIMConverter.convertGroupApplicationList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("groupApplicationListChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupApplicationUpdated(ZIM zim2, ArrayList<ZIMGroupApplicationInfo> arrayList) {
                    super.onGroupApplicationUpdated(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("applicationList", RNZIMConverter.convertGroupApplicationList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("groupApplicationUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupMemberStateChanged(ZIM zim2, ZIMGroupMemberState zIMGroupMemberState, ZIMGroupMemberEvent zIMGroupMemberEvent, ArrayList<ZIMGroupMemberInfo> arrayList, ZIMGroupOperatedInfo zIMGroupOperatedInfo, String str3) {
                    super.onGroupMemberStateChanged(zim2, zIMGroupMemberState, zIMGroupMemberEvent, arrayList, zIMGroupOperatedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMGroupMemberState.value());
                    writableMapCreateMap.putInt(NotificationCompat.CATEGORY_EVENT, zIMGroupMemberEvent.value());
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertGroupMemberInfoList(arrayList));
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertGroupOperatedInfo(zIMGroupOperatedInfo));
                    writableMapCreateMap.putString("groupID", str3);
                    RNZimReactnativeSdkModule.this.sendEvent("groupMemberStateChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onGroupMemberInfoUpdated(ZIM zim2, ArrayList<ZIMGroupMemberInfo> arrayList, ZIMGroupOperatedInfo zIMGroupOperatedInfo, String str3) {
                    super.onGroupMemberInfoUpdated(zim2, arrayList, zIMGroupOperatedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertGroupMemberInfoList(arrayList));
                    writableMapCreateMap.putMap("operatedInfo", RNZIMConverter.convertGroupOperatedInfo(zIMGroupOperatedInfo));
                    writableMapCreateMap.putString("groupID", str3);
                    RNZimReactnativeSdkModule.this.sendEvent("groupMemberInfoUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onCallInvitationCreated(ZIM zim2, ZIMCallInvitationCreatedInfo zIMCallInvitationCreatedInfo, String str3) {
                    super.onCallInvitationCreated(zim2, zIMCallInvitationCreatedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putInt("timeout", zIMCallInvitationCreatedInfo.timeout);
                    writableMapCreateMap.putString("extendedData", zIMCallInvitationCreatedInfo.extendedData);
                    writableMapCreateMap.putInt("mode", zIMCallInvitationCreatedInfo.mode.value());
                    writableMapCreateMap.putString("caller", zIMCallInvitationCreatedInfo.caller);
                    writableMapCreateMap.putDouble("createTime", zIMCallInvitationCreatedInfo.createTime);
                    writableMapCreateMap.putArray("callUserList", RNZIMConverter.convertCallUserList(zIMCallInvitationCreatedInfo.callUserList));
                    RNZimReactnativeSdkModule.this.sendEvent("callInvitationCreated", writableMapCreateMap, zim2);
                }

                @Override
                public void onCallInvitationReceived(ZIM zim2, ZIMCallInvitationReceivedInfo zIMCallInvitationReceivedInfo, String str3) {
                    super.onCallInvitationReceived(zim2, zIMCallInvitationReceivedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putString("inviter", zIMCallInvitationReceivedInfo.inviter);
                    writableMapCreateMap.putInt("timeout", zIMCallInvitationReceivedInfo.timeout);
                    writableMapCreateMap.putString("extendedData", zIMCallInvitationReceivedInfo.extendedData);
                    writableMapCreateMap.putInt("mode", zIMCallInvitationReceivedInfo.mode.value());
                    writableMapCreateMap.putString("caller", zIMCallInvitationReceivedInfo.caller);
                    writableMapCreateMap.putDouble("createTime", zIMCallInvitationReceivedInfo.createTime);
                    writableMapCreateMap.putArray("callUserList", RNZIMConverter.convertCallUserList(zIMCallInvitationReceivedInfo.callUserList));
                    RNZimReactnativeSdkModule.this.sendEvent("callInvitationReceived", writableMapCreateMap, zim2);
                }

                @Override
                public void onCallInvitationCancelled(ZIM zim2, ZIMCallInvitationCancelledInfo zIMCallInvitationCancelledInfo, String str3) {
                    super.onCallInvitationCancelled(zim2, zIMCallInvitationCancelledInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putString("inviter", zIMCallInvitationCancelledInfo.inviter);
                    writableMapCreateMap.putString("extendedData", zIMCallInvitationCancelledInfo.extendedData);
                    writableMapCreateMap.putInt("mode", zIMCallInvitationCancelledInfo.mode.value());
                    RNZimReactnativeSdkModule.this.sendEvent("callInvitationCancelled", writableMapCreateMap, zim2);
                }

                @Override
                public void onCallInvitationTimeout(ZIM zim2, ZIMCallInvitationTimeoutInfo zIMCallInvitationTimeoutInfo, String str3) {
                    super.onCallInvitationTimeout(zim2, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putInt("mode", zIMCallInvitationTimeoutInfo.mode.value());
                    RNZimReactnativeSdkModule.this.sendEvent("callInvitationTimeout", writableMapCreateMap, zim2);
                }

                @Override
                public void onCallInvitationEnded(ZIM zim2, ZIMCallInvitationEndedInfo zIMCallInvitationEndedInfo, String str3) {
                    super.onCallInvitationEnded(zim2, zIMCallInvitationEndedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putInt("mode", zIMCallInvitationEndedInfo.mode.value());
                    writableMapCreateMap.putString("caller", zIMCallInvitationEndedInfo.caller);
                    writableMapCreateMap.putString("operatedUserID", zIMCallInvitationEndedInfo.operatedUserID);
                    writableMapCreateMap.putString("extendedData", zIMCallInvitationEndedInfo.extendedData);
                    writableMapCreateMap.putDouble("endTime", zIMCallInvitationEndedInfo.endTime);
                    RNZimReactnativeSdkModule.this.sendEvent("callInvitationEnded", writableMapCreateMap, zim2);
                }

                @Override
                public void onCallUserStateChanged(ZIM zim2, ZIMCallUserStateChangeInfo zIMCallUserStateChangeInfo, String str3) {
                    super.onCallUserStateChanged(zim2, zIMCallUserStateChangeInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putArray("callUserList", RNZIMConverter.convertCallUserList(zIMCallUserStateChangeInfo.callUserList));
                    RNZimReactnativeSdkModule.this.sendEvent("callUserStateChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onCallInvitationAccepted(ZIM zim2, ZIMCallInvitationAcceptedInfo zIMCallInvitationAcceptedInfo, String str3) {
                    super.onCallInvitationAccepted(zim2, zIMCallInvitationAcceptedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putString("invitee", zIMCallInvitationAcceptedInfo.invitee);
                    writableMapCreateMap.putString("extendedData", zIMCallInvitationAcceptedInfo.extendedData);
                    RNZimReactnativeSdkModule.this.sendEvent("callInvitationAccepted", writableMapCreateMap, zim2);
                }

                @Override
                public void onCallInvitationRejected(ZIM zim2, ZIMCallInvitationRejectedInfo zIMCallInvitationRejectedInfo, String str3) {
                    super.onCallInvitationRejected(zim2, zIMCallInvitationRejectedInfo, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putString("invitee", zIMCallInvitationRejectedInfo.invitee);
                    writableMapCreateMap.putString("extendedData", zIMCallInvitationRejectedInfo.extendedData);
                    RNZimReactnativeSdkModule.this.sendEvent("callInvitationRejected", writableMapCreateMap, zim2);
                }

                @Override
                public void onCallInviteesAnsweredTimeout(ZIM zim2, ArrayList<String> arrayList, String str3) {
                    super.onCallInviteesAnsweredTimeout(zim2, arrayList, str3);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<String> it = arrayList.iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushString(it.next());
                    }
                    writableMapCreateMap.putArray("invitees", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendEvent("callInviteesAnsweredTimeout", writableMapCreateMap, zim2);
                }

                @Override
                public void onBlacklistChanged(ZIM zim2, ArrayList<ZIMUserInfo> arrayList, ZIMBlacklistChangeAction zIMBlacklistChangeAction) {
                    super.onBlacklistChanged(zim2, arrayList, zIMBlacklistChangeAction);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(TSScheduleManager.ACTION_NAME, zIMBlacklistChangeAction.value());
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertUserInfoList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("blacklistChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onFriendListChanged(ZIM zim2, ArrayList<ZIMFriendInfo> arrayList, ZIMFriendListChangeAction zIMFriendListChangeAction) {
                    super.onFriendListChanged(zim2, arrayList, zIMFriendListChangeAction);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(TSScheduleManager.ACTION_NAME, zIMFriendListChangeAction.value());
                    writableMapCreateMap.putArray("friendList", RNZIMConverter.convertFriendInfoList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("friendListChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onFriendInfoUpdated(ZIM zim2, ArrayList<ZIMFriendInfo> arrayList) {
                    super.onFriendInfoUpdated(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertFriendInfoList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("friendInfoUpdated", writableMapCreateMap, zim2);
                }

                @Override
                public void onFriendApplicationListChanged(ZIM zim2, ArrayList<ZIMFriendApplicationInfo> arrayList, ZIMFriendApplicationListChangeAction zIMFriendApplicationListChangeAction) {
                    super.onFriendApplicationListChanged(zim2, arrayList, zIMFriendApplicationListChangeAction);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(TSScheduleManager.ACTION_NAME, zIMFriendApplicationListChangeAction.value());
                    writableMapCreateMap.putArray("applicationList", RNZIMConverter.convertFriendApplicationList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("friendApplicationListChanged", writableMapCreateMap, zim2);
                }

                @Override
                public void onFriendApplicationUpdated(ZIM zim2, ArrayList<ZIMFriendApplicationInfo> arrayList) {
                    super.onFriendApplicationUpdated(zim2, arrayList);
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("applicationList", RNZIMConverter.convertFriendApplicationList(arrayList));
                    RNZimReactnativeSdkModule.this.sendEvent("friendApplicationUpdated", writableMapCreateMap, zim2);
                }
            });
        }
    }

    @ReactMethod
    public void destroyEngine(String str) {
        ZIM zim = this.engineMap.get(str);
        if (zim != null) {
            zim.destroy();
            this.engineMap.remove(str);
            this.engineMapForCallback.remove(zim);
        }
    }

    @ReactMethod
    public void uploadLog(String str, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.uploadLog(new ZIMLogUploadedCallback() {
                @Override
                public void onLogUploaded(ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        promise.resolve(null);
                    } else {
                        promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                    }
                }
            });
        }
    }

    @ReactMethod
    public void callExperimentalAPI(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.callExperimentalAPI(str2, new ZIMExperimentalAPICalledCallback() {
                @Override
                public void onExperimentalAPICalled(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        promise.resolve(str3);
                    } else {
                        promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                    }
                }
            });
        }
    }

    @ReactMethod
    public void login(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMLoginConfig zIMLoginConfig = new ZIMLoginConfig();
        zIMLoginConfig.userName = readableMap.hasKey("userName") ? readableMap.getString("userName") : "";
        zIMLoginConfig.customStatus = readableMap.hasKey("customStatus") ? readableMap.getString("customStatus") : "";
        zIMLoginConfig.token = readableMap.hasKey("token") ? readableMap.getString("token") : "";
        zIMLoginConfig.isOfflineLogin = readableMap.hasKey("isOfflineLogin") ? readableMap.getBoolean("isOfflineLogin") : false;
        zim.login(str2, zIMLoginConfig, new ZIMLoggedInCallback() {
            @Override
            public void onLoggedIn(ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    promise.resolve(null);
                } else {
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            }
        });
    }

    @ReactMethod
    public void logout(String str, Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.logout();
            promise.resolve(null);
        }
    }

    @ReactMethod
    public void renewToken(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.renewToken(str2, new ZIMTokenRenewedCallback() {
                @Override
                public void onTokenRenewed(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("token", str3);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void queryUsersInfo(String str, ReadableArray readableArray, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        ZIMUsersInfoQueryConfig zIMUsersInfoQueryConfig = new ZIMUsersInfoQueryConfig();
        if (readableMap != null) {
            zIMUsersInfoQueryConfig.isQueryFromServer = readableMap.hasKey("isQueryFromServer") ? readableMap.getBoolean("isQueryFromServer") : false;
        }
        zim.queryUsersInfo(arrayList, zIMUsersInfoQueryConfig, new ZIMUsersInfoQueriedCallback() {
            @Override
            public void onUsersInfoQueried(ArrayList<ZIMUserFullInfo> arrayList2, ArrayList<ZIMErrorUserInfo> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMUserFullInfo> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertUserFullInfo(it2.next()));
                    }
                    writableMapCreateMap.putArray("userList", writableArrayCreateArray);
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList3));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void updateUserBadge(String str, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateUserBadge(i, new ZIMUserBadgeUpdatedCallback() {
                @Override
                public void onUserBadgeUpdated(ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        promise.resolve(null);
                    } else {
                        promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                    }
                }
            });
        }
    }

    @ReactMethod
    public void updateUserName(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateUserName(str2, new ZIMUserNameUpdatedCallback() {
                @Override
                public void onUserNameUpdated(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("userName", str3);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateUserAvatarUrl(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateUserAvatarUrl(str2, new ZIMUserAvatarUrlUpdatedCallback() {
                @Override
                public void onUserAvatarUrlUpdated(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("userAvatarUrl", str3);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateUserExtendedData(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateUserExtendedData(str2, new ZIMUserExtendedDataUpdatedCallback() {
                @Override
                public void onUserExtendedDataUpdated(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("extendedData", str3);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateUserCustomStatus(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateUserCustomStatus(str2, new ZIMUserCustomStatusUpdatedCallback() {
                @Override
                public void onUserCustomStatusUpdated(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("customStatus", str3);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateUserOfflinePushRule(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMUserOfflinePushRule zIMUserOfflinePushRule = new ZIMUserOfflinePushRule();
        if (readableMap != null) {
            if (readableMap.hasKey("onlinePlatforms")) {
                ArrayList<Integer> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap.getArray("onlinePlatforms").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(Double.valueOf(((Double) it.next()).doubleValue()).intValue()));
                }
                zIMUserOfflinePushRule.onlinePlatforms = arrayList;
            }
            if (readableMap.hasKey("notToReceiveOfflinePushPlatforms")) {
                ArrayList<Integer> arrayList2 = new ArrayList<>();
                Iterator<Object> it2 = readableMap.getArray("notToReceiveOfflinePushPlatforms").toArrayList().iterator();
                while (it2.hasNext()) {
                    arrayList2.add(Integer.valueOf(Double.valueOf(((Double) it2.next()).doubleValue()).intValue()));
                }
                zIMUserOfflinePushRule.notToReceiveOfflinePushPlatforms = arrayList2;
            }
        }
        zim.updateUserOfflinePushRule(zIMUserOfflinePushRule, new ZIMUserOfflinePushRuleUpdatedCallback() {
            @Override
            public void onUserOfflinePushRuleInfoUpdated(ZIMUserOfflinePushRule zIMUserOfflinePushRule2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    promise.resolve(RNZIMConverter.convertUserRule(zIMUserOfflinePushRule2));
                } else {
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            }
        });
    }

    @ReactMethod
    public void querySelfUserInfo(String str, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.querySelfUserInfo(new ZIMSelfUserInfoQueriedCallback() {
                @Override
                public void onSelfUserInfoQueried(ZIMSelfUserInfo zIMSelfUserInfo, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putMap("userRule", RNZIMConverter.convertUserRule(zIMSelfUserInfo.userRule.offlinePushRule));
                        writableMapCreateMap2.putMap("userStatus", RNZIMConverter.convertUserStatus(zIMSelfUserInfo.userStatus));
                        writableMapCreateMap2.putMap("userFullInfo", RNZIMConverter.convertUserFullInfo(zIMSelfUserInfo.userFullInfo));
                        writableMapCreateMap.putMap("selfUserInfo", writableMapCreateMap2);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void queryLocalFileCache(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFileCacheQueryConfig zIMFileCacheQueryConfig = new ZIMFileCacheQueryConfig();
        zIMFileCacheQueryConfig.endTime = readableMap.hasKey("endTime") ? Double.valueOf(readableMap.getDouble("endTime")).longValue() : 0L;
        zim.queryLocalFileCache(zIMFileCacheQueryConfig, new ZIMFileCacheQueriedCallback() {
            @Override
            public void onFileCacheQueried(ZIMFileCacheInfo zIMFileCacheInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putDouble("totalFileSize", zIMFileCacheInfo.totalFileSize);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void clearLocalFileCache(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFileCacheClearConfig zIMFileCacheClearConfig = new ZIMFileCacheClearConfig();
        zIMFileCacheClearConfig.endTime = readableMap.hasKey("endTime") ? Double.valueOf(readableMap.getDouble("endTime")).longValue() : 0L;
        zim.clearLocalFileCache(zIMFileCacheClearConfig, new ZIMFileCacheClearedCallback() {
            @Override
            public void onFileCacheCleared(ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    promise.resolve(null);
                } else {
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            }
        });
    }

    @ReactMethod
    public void subscribeUsersStatus(String str, boolean z, ReadableArray readableArray, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        if (z) {
            ZIMUserStatusSubscribeConfig zIMUserStatusSubscribeConfig = new ZIMUserStatusSubscribeConfig();
            zIMUserStatusSubscribeConfig.subscriptionDuration = i;
            zim.subscribeUsersStatus(arrayList, zIMUserStatusSubscribeConfig, new ZIMUsersStatusSubscribedCallback() {
                @Override
                public void onUsersStatusSubscribed(ArrayList<ZIMErrorUserInfo> arrayList2, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList2));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
            return;
        }
        zim.unsubscribeUsersStatus(arrayList, new ZIMUsersStatusUnsubscribedCallback() {
            @Override
            public void onUsersStatusUnsubscribed(ArrayList<ZIMErrorUserInfo> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryUsersStatus(String str, ReadableArray readableArray, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.queryUsersStatus(arrayList, new ZIMUsersStatusQueriedCallback() {
            @Override
            public void onUsersStatusQueried(ArrayList<ZIMUserStatus> arrayList2, ArrayList<ZIMErrorUserInfo> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMUserStatus> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertUserStatus(it2.next()));
                    }
                    writableMapCreateMap.putArray("userStatusList", writableArrayCreateArray);
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList3));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void querySubscribedUsersStatus(String str, ReadableArray readableArray, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        ZIMSubscribedUserStatusQueryConfig zIMSubscribedUserStatusQueryConfig = new ZIMSubscribedUserStatusQueryConfig();
        zIMSubscribedUserStatusQueryConfig.userIDs = arrayList;
        zim.querySubscribedUserStatusList(zIMSubscribedUserStatusQueryConfig, new ZIMSubscribedUserStatusListQueriedCallback() {
            @Override
            public void onSubscribedUserStatusListQueried(ArrayList<ZIMUserStatusSubscription> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMUserStatusSubscription zIMUserStatusSubscription : arrayList2) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putMap("userStatus", RNZIMConverter.convertUserStatus(zIMUserStatusSubscription.userStatus));
                        writableMapCreateMap2.putDouble("subscribeExpiredTime", zIMUserStatusSubscription.subscribeExpiredTime);
                        writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("userStatusSubscriptionList", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryConversation(String str, String str2, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.queryConversation(str2, ZIMConversationType.getZIMConversationType(i), new ZIMConversationQueriedCallback() {
                @Override
                public void onConversationQueried(ZIMConversation zIMConversation, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("conversation", RNZIMConverter.convertConversation(zIMConversation));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void queryConversationList(String str, ReadableMap readableMap, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMConversationQueryConfig zIMConversationQueryConfig = new ZIMConversationQueryConfig();
        if (readableMap != null) {
            zIMConversationQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMConversationQueryConfig.nextConversation = readableMap.hasKey("nextConversation") ? RNZIMConverter.convertConversationFromJsToJava(readableMap.getMap("nextConversation")) : null;
        }
        ZIMConversationFilterOption zIMConversationFilterOption = new ZIMConversationFilterOption();
        if (readableMap2 != null) {
            zIMConversationFilterOption.isOnlyUnreadConversation = readableMap2.hasKey("isOnlyUnreadConversation") ? readableMap2.getBoolean("isOnlyUnreadConversation") : false;
            if (readableMap2.hasKey("pinnedFilter")) {
                zIMConversationFilterOption.pinnedFilter = ZIMConversationPinnedFilter.getZIMConversationPinnedFilter(readableMap2.getInt("pinnedFilter"));
            }
            if (readableMap2.hasKey("marks")) {
                ArrayList<Integer> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap2.getArray("marks").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(Double.valueOf(((Double) it.next()).doubleValue()).intValue()));
                }
                zIMConversationFilterOption.marks = arrayList;
            }
            if (readableMap2.hasKey("conversationTypes")) {
                ArrayList<ZIMConversationType> arrayList2 = new ArrayList<>();
                Iterator<Object> it2 = readableMap2.getArray("conversationTypes").toArrayList().iterator();
                while (it2.hasNext()) {
                    arrayList2.add(ZIMConversationType.getZIMConversationType(Double.valueOf(((Double) it2.next()).doubleValue()).intValue()));
                }
                zIMConversationFilterOption.conversationTypes = arrayList2;
            }
        }
        zim.queryConversationList(zIMConversationQueryConfig, zIMConversationFilterOption, new ZIMConversationListQueriedCallback() {
            @Override
            public void onConversationListQueried(ArrayList<ZIMConversation> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMConversation> it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertConversation(it3.next()));
                    }
                    writableMapCreateMap.putArray("conversationList", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryConversationPinnedList(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMConversationQueryConfig zIMConversationQueryConfig = new ZIMConversationQueryConfig();
        if (readableMap != null) {
            zIMConversationQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMConversationQueryConfig.nextConversation = readableMap.hasKey("nextConversation") ? RNZIMConverter.convertConversationFromJsToJava(readableMap.getMap("nextConversation")) : null;
        }
        zim.queryConversationPinnedList(zIMConversationQueryConfig, new ZIMConversationPinnedListQueriedCallback() {
            @Override
            public void onConversationPinnedListQueried(ArrayList<ZIMConversation> arrayList, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMConversation> it = arrayList.iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertConversation(it.next()));
                    }
                    writableMapCreateMap.putArray("conversationList", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryConversationTotalUnreadMessageCount(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMConversationTotalUnreadMessageCountQueryConfig zIMConversationTotalUnreadMessageCountQueryConfig = new ZIMConversationTotalUnreadMessageCountQueryConfig();
        if (readableMap != null) {
            if (readableMap.hasKey("marks")) {
                ArrayList<Integer> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap.getArray("marks").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(Double.valueOf(((Double) it.next()).doubleValue()).intValue()));
                }
                zIMConversationTotalUnreadMessageCountQueryConfig.marks = arrayList;
            }
            if (readableMap.hasKey("conversationTypes")) {
                ArrayList<ZIMConversationType> arrayList2 = new ArrayList<>();
                Iterator<Object> it2 = readableMap.getArray("conversationTypes").toArrayList().iterator();
                while (it2.hasNext()) {
                    arrayList2.add(ZIMConversationType.getZIMConversationType(Double.valueOf(((Double) it2.next()).doubleValue()).intValue()));
                }
                zIMConversationTotalUnreadMessageCountQueryConfig.conversationTypes = arrayList2;
            }
        }
        zim.queryConversationTotalUnreadMessageCount(zIMConversationTotalUnreadMessageCountQueryConfig, new ZIMConversationTotalUnreadMessageCountQueriedCallback() {
            @Override
            public void onConversationTotalUnreadMessageCountQueried(int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("unreadMessageCount", i);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void deleteConversation(String str, String str2, int i, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMConversationDeleteConfig zIMConversationDeleteConfig = new ZIMConversationDeleteConfig();
        if (readableMap != null) {
            zIMConversationDeleteConfig.isAlsoDeleteServerConversation = readableMap.hasKey("isAlsoDeleteServerConversation") ? readableMap.getBoolean("isAlsoDeleteServerConversation") : true;
        }
        zim.deleteConversation(str2, ZIMConversationType.getZIMConversationType(i), zIMConversationDeleteConfig, new ZIMConversationDeletedCallback() {
            @Override
            public void onConversationDeleted(String str3, ZIMConversationType zIMConversationType, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("conversationID", str3);
                    writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void deleteAllConversations(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMConversationDeleteConfig zIMConversationDeleteConfig = new ZIMConversationDeleteConfig();
        if (readableMap != null) {
            zIMConversationDeleteConfig.isAlsoDeleteServerConversation = readableMap.hasKey("isAlsoDeleteServerConversation") ? readableMap.getBoolean("isAlsoDeleteServerConversation") : true;
        }
        zim.deleteAllConversations(zIMConversationDeleteConfig, new ZIMConversationsAllDeletedCallback() {
            @Override
            public void onConversationsAllDeleted(ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    promise.resolve(null);
                } else {
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            }
        });
    }

    @ReactMethod
    public void setConversationNotificationStatus(String str, int i, String str2, int i2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.setConversationNotificationStatus(ZIMConversationNotificationStatus.getZIMConversationNotificationStatus(i), str2, ZIMConversationType.getZIMConversationType(i2), new ZIMConversationNotificationStatusSetCallback() {
                @Override
                public void onConversationNotificationStatusSet(String str3, ZIMConversationType zIMConversationType, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("conversationID", str3);
                        writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void setConversationDraft(String str, String str2, String str3, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.setConversationDraft(str2, str3, ZIMConversationType.getZIMConversationType(i), new ZIMConversationDraftSetCallback() {
                @Override
                public void onConversationDraftSet(String str4, ZIMConversationType zIMConversationType, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("conversationID", str4);
                        writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateConversationPinnedState(String str, boolean z, String str2, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateConversationPinnedState(z, str2, ZIMConversationType.getZIMConversationType(i), new ZIMConversationPinnedStateUpdatedCallback() {
                @Override
                public void onConversationPinnedStateUpdated(String str3, ZIMConversationType zIMConversationType, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("conversationID", str3);
                        writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void setConversationMark(String str, int i, boolean z, ReadableArray readableArray, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList<ZIMConversationBaseInfo> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            HashMap map = (HashMap) it.next();
            ZIMConversationType zIMConversationType = ZIMConversationType.getZIMConversationType(Double.valueOf(((Double) map.get("conversationType")).doubleValue()).intValue());
            ZIMConversationBaseInfo zIMConversationBaseInfo = new ZIMConversationBaseInfo();
            zIMConversationBaseInfo.conversationID = (String) map.get("conversationID");
            zIMConversationBaseInfo.conversationType = zIMConversationType;
            arrayList.add(zIMConversationBaseInfo);
        }
        zim.setConversationMark(Integer.valueOf(i), z, arrayList, new ZIMConversationMarkSetCallback() {
            @Override
            public void onConversationMarkSet(ArrayList<ZIMConversationBaseInfo> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMConversationBaseInfo zIMConversationBaseInfo2 : arrayList2) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putString("conversationID", zIMConversationBaseInfo2.conversationID);
                        writableMapCreateMap2.putInt("conversationType", zIMConversationBaseInfo2.conversationType.value());
                        writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("failedConversationInfos", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void clearConversationUnreadMessageCount(String str, String str2, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.clearConversationUnreadMessageCount(str2, ZIMConversationType.getZIMConversationType(i), new ZIMConversationUnreadMessageCountClearedCallback() {
                @Override
                public void onConversationUnreadMessageCountCleared(String str3, ZIMConversationType zIMConversationType, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("conversationID", str3);
                        writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void clearConversationTotalUnreadMessageCount(String str, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.clearConversationTotalUnreadMessageCount(new ZIMConversationTotalUnreadMessageCountClearedCallback() {
                @Override
                public void onConversationTotalUnreadMessageCountCleared(ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        promise.resolve(null);
                    } else {
                        promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                    }
                }
            });
        }
    }

    @ReactMethod
    public void deleteAllConversationMessages(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessageDeleteConfig zIMMessageDeleteConfig = new ZIMMessageDeleteConfig();
        if (readableMap != null) {
            zIMMessageDeleteConfig.isAlsoDeleteServerMessage = readableMap.hasKey("isAlsoDeleteServerMessage") ? readableMap.getBoolean("isAlsoDeleteServerMessage") : true;
        }
        zim.deleteAllConversationMessages(zIMMessageDeleteConfig, new ZIMConversationMessagesAllDeletedCallback() {
            @Override
            public void onConversationMessagesAllDeleted(ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    promise.resolve(null);
                } else {
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            }
        });
    }

    @ReactMethod
    public void sendMessage(String str, ReadableMap readableMap, String str2, int i, ReadableMap readableMap2, final String str3, final Promise promise) {
        ZIMMessagePriority zIMMessagePriority;
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMConversationType.getZIMConversationType(i);
        ZIMMessage zIMMessageConvertMessageFromJsToJava = RNZIMConverter.convertMessageFromJsToJava(readableMap);
        ZIMMessageSendConfig zIMMessageSendConfig = new ZIMMessageSendConfig();
        if (readableMap2 != null) {
            if (readableMap2.hasKey("priority")) {
                zIMMessagePriority = ZIMMessagePriority.getZIMMessagePriority(readableMap2.getInt("priority"));
            } else {
                zIMMessagePriority = ZIMMessagePriority.LOW;
            }
            zIMMessageSendConfig.priority = zIMMessagePriority;
            zIMMessageSendConfig.hasReceipt = readableMap2.hasKey("hasReceipt") ? readableMap2.getBoolean("hasReceipt") : false;
            zIMMessageSendConfig.isRetrySend = readableMap2.hasKey("isRetrySend") ? readableMap2.getBoolean("isRetrySend") : false;
            zIMMessageSendConfig.isNotifyMentionedUsers = readableMap2.hasKey("isNotifyMentionedUsers") ? readableMap2.getBoolean("isNotifyMentionedUsers") : true;
            zIMMessageSendConfig.disableUnreadMessageCount = readableMap2.hasKey("disableUnreadMessageCount") ? readableMap2.getBoolean("disableUnreadMessageCount") : false;
            zIMMessageSendConfig.isAllowMultipleMessagePartialFailed = readableMap2.hasKey("isAllowMultipleMessagePartialFailed") ? readableMap2.getBoolean("isAllowMultipleMessagePartialFailed") : false;
            zIMMessageSendConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap2);
        }
        zim.sendMessage(zIMMessageConvertMessageFromJsToJava, str2, ZIMConversationType.getZIMConversationType(i), zIMMessageSendConfig, new ZIMMessageSentFullCallback() {
            @Override
            public void onMessageSent(ZIMMessage zIMMessage, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessage));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }

            @Override
            public void onMessageAttached(ZIMMessage zIMMessage) {
                WritableMap writableMapCreateMap = Arguments.createMap();
                writableMapCreateMap.putString("handle", str3);
                WritableArray writableArrayCreateArray = Arguments.createArray();
                writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMessage));
                writableMapCreateMap.putArray("data", writableArrayCreateArray);
                RNZimReactnativeSdkModule.this.sendAPIEvent("messageAttachedHook", writableMapCreateMap);
            }

            @Override
            public void onMediaUploadingProgress(ZIMMediaMessage zIMMediaMessage, long j, long j2) {
                WritableMap writableMapCreateMap = Arguments.createMap();
                writableMapCreateMap.putString("handle", str3);
                WritableArray writableArrayCreateArray = Arguments.createArray();
                writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMediaMessage));
                writableArrayCreateArray.pushDouble(j);
                writableArrayCreateArray.pushDouble(j2);
                writableMapCreateMap.putArray("data", writableArrayCreateArray);
                RNZimReactnativeSdkModule.this.sendAPIEvent("messageLoadingProgress", writableMapCreateMap);
            }

            @Override
            public void onMultipleMediaUploadingProgress(ZIMMultipleMessage zIMMultipleMessage, long j, long j2, int i2, long j3, long j4) {
                WritableMap writableMapCreateMap = Arguments.createMap();
                writableMapCreateMap.putString("handle", str3);
                WritableArray writableArrayCreateArray = Arguments.createArray();
                writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMultipleMessage));
                writableArrayCreateArray.pushDouble(j);
                writableArrayCreateArray.pushDouble(j2);
                writableArrayCreateArray.pushDouble(i2);
                writableArrayCreateArray.pushDouble(j3);
                writableArrayCreateArray.pushDouble(j4);
                writableMapCreateMap.putArray("data", writableArrayCreateArray);
                RNZimReactnativeSdkModule.this.sendAPIEvent("messageLoadingProgress", writableMapCreateMap);
            }
        });
    }

    @ReactMethod
    public void editMessage(String str, ReadableMap readableMap, final String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.editMessage(RNZIMConverter.convertMessageFromJsToJava(readableMap), new ZIMMessageEditConfig(), new ZIMMessageSentFullCallback() {
                @Override
                public void onMessageSent(ZIMMessage zIMMessage, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessage));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }

                @Override
                public void onMessageAttached(ZIMMessage zIMMessage) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("handle", str2);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMessage));
                    writableMapCreateMap.putArray("data", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendAPIEvent("messageAttachedHook", writableMapCreateMap);
                }

                @Override
                public void onMediaUploadingProgress(ZIMMediaMessage zIMMediaMessage, long j, long j2) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("handle", str2);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMediaMessage));
                    writableArrayCreateArray.pushDouble(j);
                    writableArrayCreateArray.pushDouble(j2);
                    writableMapCreateMap.putArray("data", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendAPIEvent("messageLoadingProgress", writableMapCreateMap);
                }

                @Override
                public void onMultipleMediaUploadingProgress(ZIMMultipleMessage zIMMultipleMessage, long j, long j2, int i, long j3, long j4) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("handle", str2);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMultipleMessage));
                    writableArrayCreateArray.pushDouble(j);
                    writableArrayCreateArray.pushDouble(j2);
                    writableArrayCreateArray.pushDouble(i);
                    writableArrayCreateArray.pushDouble(j3);
                    writableArrayCreateArray.pushDouble(j4);
                    writableMapCreateMap.putArray("data", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendAPIEvent("messageLoadingProgress", writableMapCreateMap);
                }
            });
        }
    }

    @ReactMethod
    public void deleteMessages(String str, ReadableArray readableArray, String str2, int i, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add(RNZIMConverter.convertMessageFromJsToJava((HashMap<String, Object>) it.next()));
        }
        ZIMMessageDeleteConfig zIMMessageDeleteConfig = new ZIMMessageDeleteConfig();
        if (readableMap != null) {
            zIMMessageDeleteConfig.isAlsoDeleteServerMessage = readableMap.hasKey("isAlsoDeleteServerMessage") ? readableMap.getBoolean("isAlsoDeleteServerMessage") : true;
        }
        zim.deleteMessages(arrayList, str2, ZIMConversationType.getZIMConversationType(i), zIMMessageDeleteConfig, new ZIMMessageDeletedCallback() {
            @Override
            public void onMessageDeleted(String str3, ZIMConversationType zIMConversationType, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("conversationID", str3);
                    writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void deleteAllMessage(String str, String str2, int i, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessageDeleteConfig zIMMessageDeleteConfig = new ZIMMessageDeleteConfig();
        if (readableMap != null) {
            zIMMessageDeleteConfig.isAlsoDeleteServerMessage = readableMap.hasKey("isAlsoDeleteServerMessage") ? readableMap.getBoolean("isAlsoDeleteServerMessage") : true;
        }
        zim.deleteAllMessage(str2, ZIMConversationType.getZIMConversationType(i), zIMMessageDeleteConfig, new ZIMMessageDeletedCallback() {
            @Override
            public void onMessageDeleted(String str3, ZIMConversationType zIMConversationType, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("conversationID", str3);
                    writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryHistoryMessage(String str, String str2, int i, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessageQueryConfig zIMMessageQueryConfig = new ZIMMessageQueryConfig();
        if (readableMap != null) {
            zIMMessageQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMMessageQueryConfig.reverse = readableMap.hasKey("reverse") ? readableMap.getBoolean("reverse") : false;
            zIMMessageQueryConfig.nextMessage = readableMap.hasKey("nextMessage") ? RNZIMConverter.convertMessageFromJsToJava(readableMap.getMap("nextMessage")) : null;
        }
        zim.queryHistoryMessage(str2, ZIMConversationType.getZIMConversationType(i), zIMMessageQueryConfig, new ZIMMessageQueriedCallback() {
            @Override
            public void onMessageQueried(String str3, ZIMConversationType zIMConversationType, ArrayList<ZIMMessage> arrayList, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("conversationID", str3);
                    writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void downloadMediaFile(String str, ReadableMap readableMap, int i, ReadableMap readableMap2, final String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessage zIMMessageConvertMessageFromJsToJava = RNZIMConverter.convertMessageFromJsToJava(readableMap);
        ZIMMediaDownloadConfig zIMMediaDownloadConfig = new ZIMMediaDownloadConfig();
        zIMMediaDownloadConfig.messageInfoIndex = readableMap2.hasKey("messageInfoIndex") ? readableMap2.getInt("messageInfoIndex") : 0;
        zim.downloadMediaFile(zIMMessageConvertMessageFromJsToJava, ZIMMediaFileType.getZIMMediaFileType(i), zIMMediaDownloadConfig, new ZIMMediaDownloadedCallback() {
            @Override
            public void onMediaDownloaded(ZIMMessage zIMMessage, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessage));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }

            @Override
            public void onMediaDownloadingProgress(ZIMMessage zIMMessage, long j, long j2) {
                WritableMap writableMapCreateMap = Arguments.createMap();
                writableMapCreateMap.putString("handle", str2);
                WritableArray writableArrayCreateArray = Arguments.createArray();
                writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMessage));
                writableArrayCreateArray.pushDouble(j);
                writableArrayCreateArray.pushDouble(j2);
                writableMapCreateMap.putArray("data", writableArrayCreateArray);
                RNZimReactnativeSdkModule.this.sendAPIEvent("messageLoadingProgress", writableMapCreateMap);
            }
        });
    }

    @ReactMethod
    public void importLocalMessages(String str, String str2, final String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.importLocalMessages(str2, new ZIMMessageImportConfig(), new ZIMMessageImportedCallback() {
                @Override
                public void onMessageImported(ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        promise.resolve(null);
                    } else {
                        promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                    }
                }

                @Override
                public void onMessageImportingProgress(long j, long j2) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("handle", str3);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    writableArrayCreateArray.pushDouble(j);
                    writableArrayCreateArray.pushDouble(j2);
                    writableMapCreateMap.putArray("data", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendAPIEvent("messagePortProgress", writableMapCreateMap);
                }
            });
        }
    }

    @ReactMethod
    public void exportLocalMessages(String str, String str2, final String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.exportLocalMessages(str2, new ZIMMessageExportConfig(), new ZIMMessageExportedCallback() {
                @Override
                public void onMessageExported(ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        promise.resolve(null);
                    } else {
                        promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                    }
                }

                @Override
                public void onMessageExportingProgress(long j, long j2) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("handle", str3);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    writableArrayCreateArray.pushDouble(j);
                    writableArrayCreateArray.pushDouble(j2);
                    writableMapCreateMap.putArray("data", writableArrayCreateArray);
                    RNZimReactnativeSdkModule.this.sendAPIEvent("messagePortProgress", writableMapCreateMap);
                }
            });
        }
    }

    @ReactMethod
    public void insertMessageToLocalDB(String str, ReadableMap readableMap, String str2, int i, String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.insertMessageToLocalDB(RNZIMConverter.convertMessageFromJsToJava(readableMap), str2, ZIMConversationType.getZIMConversationType(i), str3, new ZIMMessageInsertedCallback() {
                @Override
                public void onMessageInserted(ZIMMessage zIMMessage, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessage));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateMessageLocalExtendedData(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateMessageLocalExtendedData(str2, RNZIMConverter.convertMessageFromJsToJava(readableMap), new ZIMMessageLocalExtendedDataUpdatedCallback() {
                @Override
                public void onMessageExtendedDataUpdated(ZIMMessage zIMMessage, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessage));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void cancelSendingMessage(String str, ReadableMap readableMap, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.cancelSendingMessage(RNZIMConverter.convertMessageFromJsToJava(readableMap), new ZIMSendingMessageCancelConfig(), new ZIMSendingMessageCancelledCallback() {
                @Override
                public void onSendingMessageCancelled(ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        promise.resolve(null);
                    } else {
                        promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                    }
                }
            });
        }
    }

    @ReactMethod
    public void sendConversationMessageReceiptRead(String str, String str2, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.sendConversationMessageReceiptRead(str2, ZIMConversationType.getZIMConversationType(i), new ZIMConversationMessageReceiptReadSentCallback() {
                @Override
                public void onConversationMessageReceiptReadSent(String str3, ZIMConversationType zIMConversationType, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("conversationID", str3);
                        writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void sendMessageReceiptsRead(String str, ReadableArray readableArray, String str2, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add(RNZIMConverter.convertMessageFromJsToJava((HashMap<String, Object>) it.next()));
        }
        zim.sendMessageReceiptsRead(arrayList, str2, ZIMConversationType.getZIMConversationType(i), new ZIMMessageReceiptsReadSentCallback() {
            @Override
            public void onMessageReceiptsReadSent(String str3, ZIMConversationType zIMConversationType, ArrayList<Long> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("conversationID", str3);
                    writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<Long> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushString(String.valueOf(it2.next().longValue()));
                    }
                    writableMapCreateMap.putArray("errorMessageIDs", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryMessageReceiptsInfo(String str, ReadableArray readableArray, String str2, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add(RNZIMConverter.convertMessageFromJsToJava((HashMap<String, Object>) it.next()));
        }
        zim.queryMessageReceiptsInfo(arrayList, str2, ZIMConversationType.getZIMConversationType(i), new ZIMMessageReceiptsInfoQueriedCallback() {
            @Override
            public void onMessageReceiptsInfoQueried(ArrayList<ZIMMessageReceiptInfo> arrayList2, ArrayList<Long> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("infos", RNZIMConverter.convertMessageReceiptInfoList(arrayList2));
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<Long> it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushString(String.valueOf(it2.next().longValue()));
                    }
                    writableMapCreateMap.putArray("errorMessageIDs", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryGroupMessageReceiptMemberList(String str, ReadableMap readableMap, String str2, ReadableMap readableMap2, boolean z, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessage zIMMessageConvertMessageFromJsToJava = RNZIMConverter.convertMessageFromJsToJava(readableMap);
        ZIMGroupMessageReceiptMemberQueryConfig zIMGroupMessageReceiptMemberQueryConfig = new ZIMGroupMessageReceiptMemberQueryConfig();
        if (readableMap2 != null) {
            zIMGroupMessageReceiptMemberQueryConfig.count = readableMap2.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap2.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMGroupMessageReceiptMemberQueryConfig.nextFlag = readableMap2.hasKey("nextFlag") ? readableMap2.getInt("nextFlag") : 0;
        }
        ZIMGroupMessageReceiptMemberListQueriedCallback zIMGroupMessageReceiptMemberListQueriedCallback = new ZIMGroupMessageReceiptMemberListQueriedCallback() {
            @Override
            public void onGroupMessageReceiptMemberListQueried(String str3, ArrayList<ZIMGroupMemberInfo> arrayList, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    writableMapCreateMap.putInt("nextFlag", i);
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertGroupMemberInfoList(arrayList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        };
        if (z) {
            zim.queryGroupMessageReceiptReadMemberList(zIMMessageConvertMessageFromJsToJava, str2, zIMGroupMessageReceiptMemberQueryConfig, zIMGroupMessageReceiptMemberListQueriedCallback);
        } else {
            zim.queryGroupMessageReceiptUnreadMemberList(zIMMessageConvertMessageFromJsToJava, str2, zIMGroupMessageReceiptMemberQueryConfig, zIMGroupMessageReceiptMemberListQueriedCallback);
        }
    }

    @ReactMethod
    public void revokeMessage(String str, ReadableMap readableMap, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessage zIMMessageConvertMessageFromJsToJava = RNZIMConverter.convertMessageFromJsToJava(readableMap);
        ZIMMessageRevokeConfig zIMMessageRevokeConfig = new ZIMMessageRevokeConfig();
        if (readableMap2 != null) {
            zIMMessageRevokeConfig.revokeExtendedData = readableMap2.hasKey("revokeExtendedData") ? readableMap2.getString("revokeExtendedData") : "";
            zIMMessageRevokeConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap2);
        }
        zim.revokeMessage(zIMMessageConvertMessageFromJsToJava, zIMMessageRevokeConfig, new ZIMMessageRevokedCallback() {
            @Override
            public void onMessageRevoked(ZIMMessage zIMMessage, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessage));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryCombineMessageDetail(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.queryCombineMessageDetail((ZIMCombineMessage) RNZIMConverter.convertMessageFromJsToJava(readableMap), new ZIMCombineMessageDetailQueriedCallback() {
                @Override
                public void onCombineMessageDetailQueried(ZIMCombineMessage zIMCombineMessage, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMCombineMessage));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void pinMessage(String str, ReadableMap readableMap, boolean z, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessage zIMMessageConvertMessageFromJsToJava = RNZIMConverter.convertMessageFromJsToJava(readableMap);
        ZIMMessagePinConfig zIMMessagePinConfig = new ZIMMessagePinConfig();
        if (readableMap2 != null) {
            zIMMessagePinConfig.disableAutoReplace = readableMap2.hasKey("disableAutoReplace") ? readableMap2.getBoolean("disableAutoReplace") : false;
        }
        zim.pinMessage(zIMMessageConvertMessageFromJsToJava, z, zIMMessagePinConfig, new ZIMMessagePinnedCallback() {
            @Override
            public void onMessagePinned(ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    promise.resolve(null);
                } else {
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            }
        });
    }

    @ReactMethod
    public void queryPinnedMessageList(String str, String str2, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.queryPinnedMessageList(str2, ZIMConversationType.getZIMConversationType(i), new ZIMPinnedMessageListQueriedCallback() {
                @Override
                public void onPinnedMessageListQueried(ArrayList<ZIMMessage> arrayList, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void addMessageReaction(String str, String str2, ReadableMap readableMap, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessage zIMMessageConvertMessageFromJsToJava = RNZIMConverter.convertMessageFromJsToJava(readableMap);
        ZIMMessageReactionAddConfig zIMMessageReactionAddConfig = new ZIMMessageReactionAddConfig();
        if (readableMap2 != null) {
            zIMMessageReactionAddConfig.setIncreaseCount(readableMap2.hasKey("increaseCount") ? readableMap2.getInt("increaseCount") : 0);
        }
        zim.addMessageReaction(str2, zIMMessageConvertMessageFromJsToJava, zIMMessageReactionAddConfig, new ZIMMessageReactionAddedCallback() {
            @Override
            public void onMessageReactionAdded(ZIMMessageReaction zIMMessageReaction, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("reaction", RNZIMConverter.convertMessageReaction(zIMMessageReaction));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void deleteMessageReaction(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.deleteMessageReaction(str2, RNZIMConverter.convertMessageFromJsToJava(readableMap), new ZIMMessageReactionDeletedCallback() {
                @Override
                public void onMessageReactionDeleted(ZIMMessageReaction zIMMessageReaction, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("reaction", RNZIMConverter.convertMessageReaction(zIMMessageReaction));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void deleteMessageAllReactions(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.deleteMessageAllReactions(RNZIMConverter.convertMessageFromJsToJava(readableMap), new ZIMMessageReactionsAllDeletedCallback() {
                @Override
                public void onMessageReactionsAllDeleted(ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        promise.resolve(null);
                    } else {
                        promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                    }
                }
            });
        }
    }

    @ReactMethod
    public void queryMessageReactionUserList(String str, ReadableMap readableMap, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessage zIMMessageConvertMessageFromJsToJava = RNZIMConverter.convertMessageFromJsToJava(readableMap);
        ZIMMessageReactionUserQueryConfig zIMMessageReactionUserQueryConfig = new ZIMMessageReactionUserQueryConfig();
        if (readableMap2 != null) {
            zIMMessageReactionUserQueryConfig.reactionType = readableMap2.hasKey("reactionType") ? readableMap2.getString("reactionType") : "";
            zIMMessageReactionUserQueryConfig.count = readableMap2.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap2.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMMessageReactionUserQueryConfig.nextFlag = readableMap2.hasKey("nextFlag") ? Double.valueOf(readableMap2.getDouble("nextFlag")).longValue() : 0L;
        }
        zim.queryMessageReactionUserList(zIMMessageConvertMessageFromJsToJava, zIMMessageReactionUserQueryConfig, new ZIMMessageReactionUserListQueriedCallback() {
            @Override
            public void onMessageReactionUserListQueried(ZIMMessage zIMMessage, ArrayList<ZIMMessageReactionUserFullInfo> arrayList, String str2, long j, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("reactionType", str2);
                    writableMapCreateMap.putDouble("nextFlag", j);
                    writableMapCreateMap.putInt("totalCount", i);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMMessageReactionUserFullInfo zIMMessageReactionUserFullInfo : arrayList) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putString("userID", zIMMessageReactionUserFullInfo.getUserID());
                        WritableArray writableArrayCreateArray2 = Arguments.createArray();
                        for (ZIMMessageReactionSimpleInfo zIMMessageReactionSimpleInfo : zIMMessageReactionUserFullInfo.getReactions()) {
                            WritableMap writableMapCreateMap3 = Arguments.createMap();
                            writableMapCreateMap3.putString("reactionType", zIMMessageReactionSimpleInfo.getReactionType());
                            writableMapCreateMap3.putInt("sumCount", zIMMessageReactionSimpleInfo.getSumCount());
                            writableArrayCreateArray2.pushMap(writableMapCreateMap3);
                        }
                        writableMapCreateMap2.putArray("reactions", writableArrayCreateArray2);
                        writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("userInfoList", writableArrayCreateArray);
                    writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessage));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void replyMessage(String str, ReadableMap readableMap, ReadableMap readableMap2, ReadableMap readableMap3, final String str2, final Promise promise) {
        ZIMMessagePriority zIMMessagePriority;
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessage zIMMessageConvertMessageFromJsToJava = RNZIMConverter.convertMessageFromJsToJava(readableMap);
        ZIMMessage zIMMessageConvertMessageFromJsToJava2 = RNZIMConverter.convertMessageFromJsToJava(readableMap2);
        ZIMMessageSendConfig zIMMessageSendConfig = new ZIMMessageSendConfig();
        if (readableMap3 != null) {
            if (readableMap3.hasKey("priority")) {
                zIMMessagePriority = ZIMMessagePriority.getZIMMessagePriority(readableMap3.getInt("priority"));
            } else {
                zIMMessagePriority = ZIMMessagePriority.LOW;
            }
            zIMMessageSendConfig.priority = zIMMessagePriority;
            zIMMessageSendConfig.hasReceipt = readableMap3.hasKey("hasReceipt") ? readableMap3.getBoolean("hasReceipt") : false;
            zIMMessageSendConfig.isRetrySend = readableMap3.hasKey("isRetrySend") ? readableMap3.getBoolean("isRetrySend") : false;
            zIMMessageSendConfig.isNotifyMentionedUsers = readableMap3.hasKey("isNotifyMentionedUsers") ? readableMap3.getBoolean("isNotifyMentionedUsers") : true;
            zIMMessageSendConfig.disableUnreadMessageCount = readableMap3.hasKey("disableUnreadMessageCount") ? readableMap3.getBoolean("disableUnreadMessageCount") : false;
            zIMMessageSendConfig.isAllowMultipleMessagePartialFailed = readableMap3.hasKey("isAllowMultipleMessagePartialFailed") ? readableMap3.getBoolean("isAllowMultipleMessagePartialFailed") : false;
            zIMMessageSendConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap3);
        }
        zim.replyMessage(zIMMessageConvertMessageFromJsToJava, zIMMessageConvertMessageFromJsToJava2, zIMMessageSendConfig, new ZIMMessageSentFullCallback() {
            @Override
            public void onMessageSent(ZIMMessage zIMMessage, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessage));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }

            @Override
            public void onMessageAttached(ZIMMessage zIMMessage) {
                WritableMap writableMapCreateMap = Arguments.createMap();
                writableMapCreateMap.putString("handle", str2);
                WritableArray writableArrayCreateArray = Arguments.createArray();
                writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMessage));
                writableMapCreateMap.putArray("data", writableArrayCreateArray);
                RNZimReactnativeSdkModule.this.sendAPIEvent("messageAttachedHook", writableMapCreateMap);
            }

            @Override
            public void onMediaUploadingProgress(ZIMMediaMessage zIMMediaMessage, long j, long j2) {
                WritableMap writableMapCreateMap = Arguments.createMap();
                writableMapCreateMap.putString("handle", str2);
                WritableArray writableArrayCreateArray = Arguments.createArray();
                writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMediaMessage));
                writableArrayCreateArray.pushDouble(j);
                writableArrayCreateArray.pushDouble(j2);
                writableMapCreateMap.putArray("data", writableArrayCreateArray);
                RNZimReactnativeSdkModule.this.sendAPIEvent("messageLoadingProgress", writableMapCreateMap);
            }

            @Override
            public void onMultipleMediaUploadingProgress(ZIMMultipleMessage zIMMultipleMessage, long j, long j2, int i, long j3, long j4) {
                WritableMap writableMapCreateMap = Arguments.createMap();
                writableMapCreateMap.putString("handle", str2);
                WritableArray writableArrayCreateArray = Arguments.createArray();
                writableArrayCreateArray.pushMap(RNZIMConverter.convertMessage(zIMMultipleMessage));
                writableArrayCreateArray.pushDouble(j);
                writableArrayCreateArray.pushDouble(j2);
                writableArrayCreateArray.pushDouble(i);
                writableArrayCreateArray.pushDouble(j3);
                writableArrayCreateArray.pushDouble(j4);
                writableMapCreateMap.putArray("data", writableArrayCreateArray);
                RNZimReactnativeSdkModule.this.sendAPIEvent("messageLoadingProgress", writableMapCreateMap);
            }
        });
    }

    @ReactMethod
    public void queryMessageRepliedList(String str, ReadableMap readableMap, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessage zIMMessageConvertMessageFromJsToJava = RNZIMConverter.convertMessageFromJsToJava(readableMap);
        ZIMMessageRepliedListQueryConfig zIMMessageRepliedListQueryConfig = new ZIMMessageRepliedListQueryConfig();
        if (readableMap2 != null) {
            zIMMessageRepliedListQueryConfig.count = readableMap2.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap2.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMMessageRepliedListQueryConfig.nextFlag = readableMap2.hasKey("nextFlag") ? Double.valueOf(readableMap2.getDouble("nextFlag")).longValue() : 0L;
        }
        zim.queryMessageRepliedList(zIMMessageConvertMessageFromJsToJava, zIMMessageRepliedListQueryConfig, new ZIMMessageRepliedListQueriedCallback() {
            @Override
            public void onMessageRepliedListQueried(ArrayList<ZIMMessage> arrayList, long j, ZIMMessageRootRepliedInfo zIMMessageRootRepliedInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMMessageRootRepliedInfo.state.value());
                    writableMapCreateMap.putDouble("repliedCount", zIMMessageRootRepliedInfo.repliedCount);
                    writableMapCreateMap.putString("senderUserID", zIMMessageRootRepliedInfo.senderUserID);
                    writableMapCreateMap.putDouble("sentTime", zIMMessageRootRepliedInfo.sentTime);
                    if (zIMMessageRootRepliedInfo.message != null) {
                        writableMapCreateMap.putMap("message", RNZIMConverter.convertMessage(zIMMessageRootRepliedInfo.message));
                    }
                    WritableMap writableMapCreateMap2 = Arguments.createMap();
                    writableMapCreateMap2.putDouble("nextFlag", j);
                    writableMapCreateMap2.putMap("rootRepliedInfo", writableMapCreateMap);
                    writableMapCreateMap2.putArray("messageList", RNZIMConverter.convertMessageList(arrayList));
                    promise.resolve(writableMapCreateMap2);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryMessages(String str, ReadableArray readableArray, String str2, int i, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList<Long> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add(Long.valueOf(Double.valueOf(((Double) it.next()).doubleValue()).longValue()));
        }
        zim.queryMessages(arrayList, str2, ZIMConversationType.getZIMConversationType(i), new ZIMMessageQueriedCallback() {
            @Override
            public void onMessageQueried(String str3, ZIMConversationType zIMConversationType, ArrayList<ZIMMessage> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("conversationID", str3);
                    writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void createRoom(String str, ReadableMap readableMap, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMRoomCreatedCallback zIMRoomCreatedCallback = new ZIMRoomCreatedCallback() {
            @Override
            public void onRoomCreated(ZIMRoomFullInfo zIMRoomFullInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("roomInfo", RNZIMConverter.convertFullRoomInfo(zIMRoomFullInfo));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        };
        ZIMRoomInfo zIMRoomInfo = new ZIMRoomInfo();
        zIMRoomInfo.roomID = readableMap.getString("roomID");
        zIMRoomInfo.roomName = readableMap.hasKey("roomName") ? readableMap.getString("roomName") : "";
        if (readableMap2 != null) {
            ZIMRoomAdvancedConfig zIMRoomAdvancedConfig = new ZIMRoomAdvancedConfig();
            zIMRoomAdvancedConfig.roomDestroyDelayTime = readableMap2.hasKey("roomDestroyDelayTime") ? readableMap2.getInt("roomDestroyDelayTime") : 0;
            if (readableMap2.hasKey("roomAttributes")) {
                HashMap<String, String> map = new HashMap<>();
                HashMap<String, Object> hashMap = readableMap2.getMap("roomAttributes").toHashMap();
                for (String str2 : hashMap.keySet()) {
                    map.put(str2, (String) hashMap.get(str2));
                }
                zIMRoomAdvancedConfig.roomAttributes = map;
            }
            zim.createRoom(zIMRoomInfo, zIMRoomAdvancedConfig, zIMRoomCreatedCallback);
            return;
        }
        zim.createRoom(zIMRoomInfo, zIMRoomCreatedCallback);
    }

    @ReactMethod
    public void enterRoom(String str, ReadableMap readableMap, ReadableMap readableMap2, final Promise promise) {
        ZIMRoomAdvancedConfig zIMRoomAdvancedConfig;
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMRoomInfo zIMRoomInfo = new ZIMRoomInfo();
        zIMRoomInfo.roomID = readableMap.getString("roomID");
        zIMRoomInfo.roomName = readableMap.hasKey("roomName") ? readableMap.getString("roomName") : "";
        if (readableMap2 != null) {
            zIMRoomAdvancedConfig = new ZIMRoomAdvancedConfig();
            zIMRoomAdvancedConfig.roomDestroyDelayTime = readableMap2.hasKey("roomDestroyDelayTime") ? readableMap2.getInt("roomDestroyDelayTime") : 0;
            if (readableMap2.hasKey("roomAttributes")) {
                HashMap<String, String> map = new HashMap<>();
                HashMap<String, Object> hashMap = readableMap2.getMap("roomAttributes").toHashMap();
                for (String str2 : hashMap.keySet()) {
                    map.put(str2, (String) hashMap.get(str2));
                }
                zIMRoomAdvancedConfig.roomAttributes = map;
            }
        } else {
            zIMRoomAdvancedConfig = null;
        }
        zim.enterRoom(zIMRoomInfo, zIMRoomAdvancedConfig, new ZIMRoomEnteredCallback() {
            @Override
            public void onRoomEntered(ZIMRoomFullInfo zIMRoomFullInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("roomInfo", RNZIMConverter.convertFullRoomInfo(zIMRoomFullInfo));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void joinRoom(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.joinRoom(str2, new ZIMRoomJoinedCallback() {
                @Override
                public void onRoomJoined(ZIMRoomFullInfo zIMRoomFullInfo, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("roomInfo", RNZIMConverter.convertFullRoomInfo(zIMRoomFullInfo));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void switchRoom(String str, String str2, ReadableMap readableMap, boolean z, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMRoomSwitchedCallback zIMRoomSwitchedCallback = new ZIMRoomSwitchedCallback() {
            @Override
            public void onRoomSwitched(ZIMRoomFullInfo zIMRoomFullInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("roomInfo", RNZIMConverter.convertFullRoomInfo(zIMRoomFullInfo));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        };
        ZIMRoomInfo zIMRoomInfo = new ZIMRoomInfo();
        zIMRoomInfo.roomID = readableMap.getString("roomID");
        zIMRoomInfo.roomName = readableMap.hasKey("roomName") ? readableMap.getString("roomName") : "";
        ZIMRoomAdvancedConfig zIMRoomAdvancedConfig = new ZIMRoomAdvancedConfig();
        if (readableMap2 != null) {
            zIMRoomAdvancedConfig.roomDestroyDelayTime = readableMap2.hasKey("roomDestroyDelayTime") ? readableMap2.getInt("roomDestroyDelayTime") : 0;
            if (readableMap2.hasKey("roomAttributes")) {
                HashMap<String, String> map = new HashMap<>();
                HashMap<String, Object> hashMap = readableMap2.getMap("roomAttributes").toHashMap();
                for (String str3 : hashMap.keySet()) {
                    map.put(str3, (String) hashMap.get(str3));
                }
                zIMRoomAdvancedConfig.roomAttributes = map;
            }
        }
        zim.switchRoom(str2, zIMRoomInfo, z, zIMRoomAdvancedConfig, zIMRoomSwitchedCallback);
    }

    @ReactMethod
    public void leaveRoom(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.leaveRoom(str2, new ZIMRoomLeftCallback() {
                @Override
                public void onRoomLeft(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("roomID", str3);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void leaveAllRoom(String str, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.leaveAllRoom(new ZIMRoomAllLeftCallback() {
                @Override
                public void onRoomAllLeft(ArrayList<String> arrayList, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        WritableArray writableArrayCreateArray = Arguments.createArray();
                        Iterator<String> it = arrayList.iterator();
                        while (it.hasNext()) {
                            writableArrayCreateArray.pushString(it.next());
                        }
                        writableMapCreateMap.putArray("roomIDs", writableArrayCreateArray);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void queryRoomMemberList(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMRoomMemberQueryConfig zIMRoomMemberQueryConfig = new ZIMRoomMemberQueryConfig();
        if (readableMap != null) {
            zIMRoomMemberQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMRoomMemberQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getString("nextFlag") : "";
        }
        zim.queryRoomMemberList(str2, zIMRoomMemberQueryConfig, new ZIMRoomMemberQueriedCallback() {
            @Override
            public void onRoomMemberQueried(String str3, ArrayList<ZIMUserInfo> arrayList, String str4, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str3);
                    writableMapCreateMap.putString("nextFlag", str4);
                    writableMapCreateMap.putArray("memberList", RNZIMConverter.convertUserInfoList(arrayList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryRoomMembers(String str, ReadableArray readableArray, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.queryRoomMembers(arrayList, str2, new ZIMRoomMembersQueriedCallback() {
            @Override
            public void onRoomMembersQueried(String str3, ArrayList<ZIMRoomMemberInfo> arrayList2, ArrayList<ZIMErrorUserInfo> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<ZIMRoomMemberInfo> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushMap(RNZIMConverter.convertRoomMemberInfo(it2.next()));
                    }
                    writableMapCreateMap.putString("roomID", str3);
                    writableMapCreateMap.putArray("memberList", writableArrayCreateArray);
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList3));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryRoomOnlineMemberCount(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.queryRoomOnlineMemberCount(str2, new ZIMRoomOnlineMemberCountQueriedCallback() {
                @Override
                public void onRoomOnlineMemberCountQueried(String str3, int i, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("roomID", str3);
                        writableMapCreateMap.putInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, i);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void queryRoomAllAttributes(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.queryRoomAllAttributes(str2, new ZIMRoomAttributesQueriedCallback() {
                @Override
                public void onRoomAttributesQueried(String str3, HashMap<String, String> map, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        for (String str4 : map.keySet()) {
                            writableMapCreateMap2.putString(str4, map.get(str4));
                        }
                        writableMapCreateMap.putString("roomID", str3);
                        writableMapCreateMap.putMap("roomAttributes", writableMapCreateMap2);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void setRoomAttributes(String str, ReadableMap readableMap, String str2, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        HashMap<String, String> map = new HashMap<>();
        for (String str3 : readableMap.toHashMap().keySet()) {
            map.put(str3, readableMap.getString(str3));
        }
        ZIMRoomAttributesSetConfig zIMRoomAttributesSetConfig = new ZIMRoomAttributesSetConfig();
        if (readableMap2 != null) {
            zIMRoomAttributesSetConfig.isUpdateOwner = readableMap2.hasKey("isUpdateOwner") ? readableMap2.getBoolean("isUpdateOwner") : false;
            zIMRoomAttributesSetConfig.isDeleteAfterOwnerLeft = readableMap2.hasKey("isDeleteAfterOwnerLeft") ? readableMap2.getBoolean("isDeleteAfterOwnerLeft") : false;
            zIMRoomAttributesSetConfig.isForce = readableMap2.hasKey("isForce") ? readableMap2.getBoolean("isForce") : false;
        }
        zim.setRoomAttributes(map, str2, zIMRoomAttributesSetConfig, new ZIMRoomAttributesOperatedCallback() {
            @Override
            public void onRoomAttributesOperated(String str4, ArrayList<String> arrayList, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str4);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<String> it = arrayList.iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushString(it.next());
                    }
                    writableMapCreateMap.putArray("errorKeys", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void deleteRoomAttributes(String str, ReadableArray readableArray, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        ZIMRoomAttributesDeleteConfig zIMRoomAttributesDeleteConfig = new ZIMRoomAttributesDeleteConfig();
        if (readableMap != null) {
            zIMRoomAttributesDeleteConfig.isForce = readableMap.hasKey("isForce") ? readableMap.getBoolean("isForce") : false;
        }
        zim.deleteRoomAttributes(arrayList, str2, zIMRoomAttributesDeleteConfig, new ZIMRoomAttributesOperatedCallback() {
            @Override
            public void onRoomAttributesOperated(String str3, ArrayList<String> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str3);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<String> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushString(it2.next());
                    }
                    writableMapCreateMap.putArray("errorKeys", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void beginRoomAttributesBatchOperation(String str, String str2, ReadableMap readableMap) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            return;
        }
        ZIMRoomAttributesBatchOperationConfig zIMRoomAttributesBatchOperationConfig = new ZIMRoomAttributesBatchOperationConfig();
        if (readableMap != null) {
            zIMRoomAttributesBatchOperationConfig.isUpdateOwner = readableMap.hasKey("isUpdateOwner") ? readableMap.getBoolean("isUpdateOwner") : false;
            zIMRoomAttributesBatchOperationConfig.isDeleteAfterOwnerLeft = readableMap.hasKey("isDeleteAfterOwnerLeft") ? readableMap.getBoolean("isDeleteAfterOwnerLeft") : false;
            zIMRoomAttributesBatchOperationConfig.isForce = readableMap.hasKey("isForce") ? readableMap.getBoolean("isForce") : false;
        }
        zim.beginRoomAttributesBatchOperation(str2, zIMRoomAttributesBatchOperationConfig);
    }

    @ReactMethod
    public void endRoomAttributesBatchOperation(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.endRoomAttributesBatchOperation(str2, new ZIMRoomAttributesBatchOperatedCallback() {
                @Override
                public void onRoomAttributesBatchOperated(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("roomID", str3);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void setRoomMembersAttributes(String str, ReadableMap readableMap, ReadableArray readableArray, String str2, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMRoomMemberAttributesSetConfig zIMRoomMemberAttributesSetConfig = new ZIMRoomMemberAttributesSetConfig();
        zIMRoomMemberAttributesSetConfig.isDeleteAfterOwnerLeft = readableMap2.hasKey("isDeleteAfterOwnerLeft") ? readableMap2.getBoolean("isDeleteAfterOwnerLeft") : true;
        HashMap<String, String> map = new HashMap<>();
        for (String str3 : readableMap.toHashMap().keySet()) {
            map.put(str3, readableMap.getString(str3));
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.setRoomMembersAttributes(map, arrayList, str2, zIMRoomMemberAttributesSetConfig, new ZIMRoomMembersAttributesOperatedCallback() {
            @Override
            public void onRoomMembersAttributesOperated(String str4, ArrayList<ZIMRoomMemberAttributesOperatedInfo> arrayList2, ArrayList<String> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str4);
                    writableMapCreateMap.putArray("infos", RNZIMConverter.convertRoomMemberAttributesOperatedInfoList(arrayList2));
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<String> it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushString(it2.next());
                    }
                    writableMapCreateMap.putArray("errorUserList", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryRoomMembersAttributes(String str, ReadableArray readableArray, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.queryRoomMembersAttributes(arrayList, str2, new ZIMRoomMembersAttributesQueriedCallback() {
            @Override
            public void onRoomMembersAttributesQueried(String str3, ArrayList<ZIMRoomMemberAttributesInfo> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str3);
                    writableMapCreateMap.putArray("infos", RNZIMConverter.convertRoomMemberAttributesInfoList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryRoomMemberAttributesList(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMRoomMemberAttributesQueryConfig zIMRoomMemberAttributesQueryConfig = new ZIMRoomMemberAttributesQueryConfig();
        zIMRoomMemberAttributesQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
        zIMRoomMemberAttributesQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getString("nextFlag") : "";
        zim.queryRoomMemberAttributesList(str2, zIMRoomMemberAttributesQueryConfig, new ZIMRoomMemberAttributesListQueriedCallback() {
            @Override
            public void onRoomMemberAttributesListQueried(String str3, ArrayList<ZIMRoomMemberAttributesInfo> arrayList, String str4, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("roomID", str3);
                    writableMapCreateMap.putArray("infos", RNZIMConverter.convertRoomMemberAttributesInfoList(arrayList));
                    writableMapCreateMap.putString("nextFlag", str4);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void createGroup(String str, ReadableMap readableMap, ReadableArray readableArray, ReadableMap readableMap2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupCreatedCallback zIMGroupCreatedCallback = new ZIMGroupCreatedCallback() {
            @Override
            public void onGroupCreated(ZIMGroupFullInfo zIMGroupFullInfo, ArrayList<ZIMGroupMemberInfo> arrayList, ArrayList<ZIMErrorUserInfo> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("groupInfo", RNZIMConverter.convertGroupFullInfo(zIMGroupFullInfo));
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertGroupMemberInfoList(arrayList));
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        };
        ZIMGroupInfo zIMGroupInfo = new ZIMGroupInfo();
        zIMGroupInfo.groupID = readableMap.getString("groupID");
        zIMGroupInfo.groupName = readableMap.hasKey("groupName") ? readableMap.getString("groupName") : "";
        zIMGroupInfo.groupAvatarUrl = readableMap.hasKey("groupAvatarUrl") ? readableMap.getString("groupAvatarUrl") : "";
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        if (readableMap2 != null) {
            ZIMGroupAdvancedConfig zIMGroupAdvancedConfig = new ZIMGroupAdvancedConfig();
            zIMGroupAdvancedConfig.groupNotice = readableMap2.hasKey("groupNotice") ? readableMap2.getString("groupNotice") : "";
            zIMGroupAdvancedConfig.maxMemberCount = readableMap2.hasKey("maxMemberCount") ? readableMap2.getInt("maxMemberCount") : 0;
            zIMGroupAdvancedConfig.joinMode = ZIMGroupJoinMode.getZIMGroupJoinMode(readableMap2.hasKey("joinMode") ? readableMap2.getInt("joinMode") : 0);
            zIMGroupAdvancedConfig.inviteMode = ZIMGroupInviteMode.getZIMGroupInviteMode(readableMap2.hasKey("inviteMode") ? readableMap2.getInt("inviteMode") : 0);
            zIMGroupAdvancedConfig.beInviteMode = ZIMGroupBeInviteMode.getZIMGroupBeInviteMode(readableMap2.hasKey("beInviteMode") ? readableMap2.getInt("beInviteMode") : 0);
            if (readableMap2.hasKey("groupAttributes")) {
                HashMap<String, String> map = new HashMap<>();
                HashMap<String, Object> hashMap = readableMap2.getMap("groupAttributes").toHashMap();
                for (String str2 : hashMap.keySet()) {
                    map.put(str2, (String) hashMap.get(str2));
                }
                zIMGroupAdvancedConfig.groupAttributes = map;
            }
            zim.createGroup(zIMGroupInfo, arrayList, zIMGroupAdvancedConfig, zIMGroupCreatedCallback);
            return;
        }
        zim.createGroup(zIMGroupInfo, arrayList, zIMGroupCreatedCallback);
    }

    @ReactMethod
    public void joinGroup(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.joinGroup(str2, new ZIMGroupJoinedCallback() {
                @Override
                public void onGroupJoined(ZIMGroupFullInfo zIMGroupFullInfo, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("groupInfo", RNZIMConverter.convertGroupFullInfo(zIMGroupFullInfo));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void leaveGroup(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.leaveGroup(str2, new ZIMGroupLeftCallback() {
                @Override
                public void onGroupLeft(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str3);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void dismissGroup(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.dismissGroup(str2, new ZIMGroupDismissedCallback() {
                @Override
                public void onGroupDismissed(String str3, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str3);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void queryGroupList(String str, int i, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupListQueriedCallback zIMGroupListQueriedCallback = new ZIMGroupListQueriedCallback() {
            @Override
            public void onGroupListQueried(ArrayList<ZIMGroup> arrayList, long j, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putDouble("nextFlag", j);
                    writableMapCreateMap.putArray("groupList", RNZIMConverter.convertGroupList(arrayList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        };
        if (readableMap != null) {
            ZIMGroupListQueryConfig zIMGroupListQueryConfig = new ZIMGroupListQueryConfig();
            zIMGroupListQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? Double.valueOf(readableMap.getDouble("nextFlag")).longValue() : 0L;
            if (readableMap.hasKey("userIDs")) {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap.getArray("userIDs").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                zIMGroupListQueryConfig.userIDs = arrayList;
            }
            zim.queryGroupList(i, zIMGroupListQueryConfig, zIMGroupListQueriedCallback);
            return;
        }
        zim.queryGroupList(zIMGroupListQueriedCallback);
    }

    @ReactMethod
    public void updateGroupNotice(String str, String str2, String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateGroupNotice(str2, str3, new ZIMGroupNoticeUpdatedCallback() {
                @Override
                public void onGroupNoticeUpdated(String str4, String str5, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str4);
                        writableMapCreateMap.putString("groupNotice", str5);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateGroupName(String str, String str2, String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateGroupName(str2, str3, new ZIMGroupNameUpdatedCallback() {
                @Override
                public void onGroupNameUpdated(String str4, String str5, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str4);
                        writableMapCreateMap.putString("groupName", str5);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateGroupAvatarUrl(String str, String str2, String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateGroupAvatarUrl(str2, str3, new ZIMGroupAvatarUrlUpdatedCallback() {
                @Override
                public void onGroupAvatarUrlUpdated(String str4, String str5, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str4);
                        writableMapCreateMap.putString("groupAvatarUrl", str5);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void muteGroup(String str, boolean z, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupMuteConfig zIMGroupMuteConfig = new ZIMGroupMuteConfig();
        zIMGroupMuteConfig.mode = ZIMGroupMuteMode.getZIMGroupMuteMode(readableMap.hasKey("mode") ? readableMap.getInt("mode") : 0);
        zIMGroupMuteConfig.duration = readableMap.hasKey(TypedValues.TransitionType.S_DURATION) ? readableMap.getInt(TypedValues.TransitionType.S_DURATION) : 0;
        if (readableMap.hasKey("roles")) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            Iterator<Object> it = readableMap.getArray("roles").toArrayList().iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(Double.valueOf(((Double) it.next()).doubleValue()).intValue()));
            }
            zIMGroupMuteConfig.roles = arrayList;
        }
        zim.muteGroup(z, str2, zIMGroupMuteConfig, new ZIMGroupMutedCallback() {
            @Override
            public void onGroupMuted(String str3, boolean z2, ZIMGroupMuteInfo zIMGroupMuteInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    writableMapCreateMap.putBoolean("isMute", z2);
                    writableMapCreateMap.putMap("mutedInfo", RNZIMConverter.convertGroupMuteInfo(zIMGroupMuteInfo));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void muteGroupMembers(String str, boolean z, ReadableArray readableArray, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupMemberMuteConfig zIMGroupMemberMuteConfig = new ZIMGroupMemberMuteConfig();
        zIMGroupMemberMuteConfig.duration = readableMap.hasKey(TypedValues.TransitionType.S_DURATION) ? readableMap.getInt(TypedValues.TransitionType.S_DURATION) : 0;
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.muteGroupMembers(z, arrayList, str2, zIMGroupMemberMuteConfig, new ZIMGroupMembersMutedCallback() {
            @Override
            public void onGroupMembersMuted(String str3, boolean z2, int i, ArrayList<String> arrayList2, ArrayList<ZIMErrorUserInfo> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    writableMapCreateMap.putBoolean("isMute", z2);
                    writableMapCreateMap.putInt(TypedValues.TransitionType.S_DURATION, i);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<String> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushString(it2.next());
                    }
                    writableMapCreateMap.putArray("mutedUserIDs", writableArrayCreateArray);
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList3));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryGroupInfo(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.queryGroupInfo(str2, new ZIMGroupInfoQueriedCallback() {
                @Override
                public void onGroupInfoQueried(ZIMGroupFullInfo zIMGroupFullInfo, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("groupInfo", RNZIMConverter.convertGroupFullInfo(zIMGroupFullInfo));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void queryGroupMemberCount(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.queryGroupMemberCount(str2, new ZIMGroupMemberCountQueriedCallback() {
                @Override
                public void onGroupMemberCountQueried(String str3, int i, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str3);
                        writableMapCreateMap.putInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, i);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void setGroupAttributes(String str, ReadableMap readableMap, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        HashMap<String, String> map = new HashMap<>();
        for (String str3 : readableMap.toHashMap().keySet()) {
            map.put(str3, readableMap.getString(str3));
        }
        zim.setGroupAttributes(map, str2, new ZIMGroupAttributesOperatedCallback() {
            @Override
            public void onGroupAttributesOperated(String str4, ArrayList<String> arrayList, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str4);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<String> it = arrayList.iterator();
                    while (it.hasNext()) {
                        writableArrayCreateArray.pushString(it.next());
                    }
                    writableMapCreateMap.putArray("errorKeys", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void deleteGroupAttributes(String str, ReadableArray readableArray, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.deleteGroupAttributes(arrayList, str2, new ZIMGroupAttributesOperatedCallback() {
            @Override
            public void onGroupAttributesOperated(String str3, ArrayList<String> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<String> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushString(it2.next());
                    }
                    writableMapCreateMap.putArray("errorKeys", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryGroupAttributes(String str, ReadableArray readableArray, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.queryGroupAttributes(arrayList, str2, new ZIMGroupAttributesQueriedCallback() {
            @Override
            public void onGroupAttributesQueried(String str3, HashMap<String, String> map, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    WritableMap writableMapCreateMap2 = Arguments.createMap();
                    for (String str4 : map.keySet()) {
                        writableMapCreateMap2.putString(str4, map.get(str4));
                    }
                    writableMapCreateMap.putMap("groupAttributes", writableMapCreateMap2);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryGroupAllAttributes(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.queryGroupAllAttributes(str2, new ZIMGroupAttributesQueriedCallback() {
                @Override
                public void onGroupAttributesQueried(String str3, HashMap<String, String> map, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str3);
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        for (String str4 : map.keySet()) {
                            writableMapCreateMap2.putString(str4, map.get(str4));
                        }
                        writableMapCreateMap.putMap("groupAttributes", writableMapCreateMap2);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateGroupAlias(String str, String str2, String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateGroupAlias(str2, str3, new ZIMGroupAliasUpdatedCallback() {
                @Override
                public void onGroupAliasUpdated(String str4, String str5, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str4);
                        writableMapCreateMap.putString("groupAlias", str5);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void setGroupMemberNickname(String str, String str2, String str3, String str4, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.setGroupMemberNickname(str2, str3, str4, new ZIMGroupMemberNicknameUpdatedCallback() {
                @Override
                public void onGroupMemberNicknameUpdated(String str5, String str6, String str7, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str5);
                        writableMapCreateMap.putString("forUserID", str6);
                        writableMapCreateMap.putString("nickname", str7);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void setGroupMemberRole(String str, int i, String str2, String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.setGroupMemberRole(i, str2, str3, new ZIMGroupMemberRoleUpdatedCallback() {
                @Override
                public void onGroupMemberRoleUpdated(String str4, String str5, int i2, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str4);
                        writableMapCreateMap.putString("forUserID", str5);
                        writableMapCreateMap.putInt(ViewProps.ROLE, i2);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void transferGroupOwner(String str, String str2, String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.transferGroupOwner(str2, str3, new ZIMGroupOwnerTransferredCallback() {
                @Override
                public void onGroupOwnerTransferred(String str4, String str5, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str4);
                        writableMapCreateMap.putString("toUserID", str5);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void queryGroupMemberInfo(String str, String str2, String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.queryGroupMemberInfo(str2, str3, new ZIMGroupMemberInfoQueriedCallback() {
                @Override
                public void onGroupMemberInfoQueried(String str4, ZIMGroupMemberInfo zIMGroupMemberInfo, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str4);
                        writableMapCreateMap.putMap("userInfo", RNZIMConverter.convertGroupMemberInfo(zIMGroupMemberInfo));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void inviteUsersIntoGroup(String str, ReadableArray readableArray, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.inviteUsersIntoGroup(arrayList, str2, new ZIMGroupUsersInvitedCallback() {
            @Override
            public void onGroupUsersInvited(String str3, ArrayList<ZIMGroupMemberInfo> arrayList2, ArrayList<ZIMErrorUserInfo> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertGroupMemberInfoList(arrayList2));
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList3));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void kickGroupMembers(String str, ReadableArray readableArray, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.kickGroupMembers(arrayList, str2, new ZIMGroupMemberKickedCallback() {
            @Override
            public void onGroupMemberKicked(String str3, ArrayList<String> arrayList2, ArrayList<ZIMErrorUserInfo> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<String> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushString(it2.next());
                    }
                    writableMapCreateMap.putArray("kickedUserIDs", writableArrayCreateArray);
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList3));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryGroupMemberList(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupMemberQueryConfig zIMGroupMemberQueryConfig = new ZIMGroupMemberQueryConfig();
        if (readableMap != null) {
            zIMGroupMemberQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMGroupMemberQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getInt("nextFlag") : 0;
        }
        zim.queryGroupMemberList(str2, zIMGroupMemberQueryConfig, new ZIMGroupMemberListQueriedCallback() {
            @Override
            public void onGroupMemberListQueried(String str3, ArrayList<ZIMGroupMemberInfo> arrayList, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertGroupMemberInfoList(arrayList));
                    writableMapCreateMap.putInt("nextFlag", i);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryGroupMemberMutedList(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupMemberMutedListQueryConfig zIMGroupMemberMutedListQueryConfig = new ZIMGroupMemberMutedListQueryConfig();
        if (readableMap != null) {
            zIMGroupMemberMutedListQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMGroupMemberMutedListQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? Double.valueOf(readableMap.getDouble("nextFlag")).longValue() : 0L;
        }
        zim.queryGroupMemberMutedList(str2, zIMGroupMemberMutedListQueryConfig, new ZIMGroupMemberMutedListQueriedCallback() {
            @Override
            public void onGroupMemberListQueried(String str3, long j, ArrayList<ZIMGroupMemberInfo> arrayList, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    writableMapCreateMap.putDouble("nextFlag", j);
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertGroupMemberInfoList(arrayList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void updateGroupJoinMode(String str, int i, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateGroupJoinMode(ZIMGroupJoinMode.getZIMGroupJoinMode(i), str2, new ZIMGroupJoinModeUpdatedCallback() {
                @Override
                public void onGroupJoinModeUpdated(String str3, ZIMGroupJoinMode zIMGroupJoinMode, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str3);
                        writableMapCreateMap.putInt("mode", zIMGroupJoinMode.value());
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateGroupInviteMode(String str, int i, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateGroupInviteMode(ZIMGroupInviteMode.getZIMGroupInviteMode(i), str2, new ZIMGroupInviteModeUpdatedCallback() {
                @Override
                public void onGroupInviteModeUpdated(String str3, ZIMGroupInviteMode zIMGroupInviteMode, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str3);
                        writableMapCreateMap.putInt("mode", zIMGroupInviteMode.value());
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateGroupBeInviteMode(String str, int i, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateGroupBeInviteMode(ZIMGroupBeInviteMode.getZIMGroupBeInviteMode(i), str2, new ZIMGroupBeInviteModeUpdatedCallback() {
                @Override
                public void onGroupBeInviteModeUpdated(String str3, ZIMGroupBeInviteMode zIMGroupBeInviteMode, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putString("groupID", str3);
                        writableMapCreateMap.putInt("mode", zIMGroupBeInviteMode.value());
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void sendGroupJoinApplication(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupJoinApplicationSendConfig zIMGroupJoinApplicationSendConfig = new ZIMGroupJoinApplicationSendConfig();
        zIMGroupJoinApplicationSendConfig.wording = readableMap.hasKey("wording") ? readableMap.getString("wording") : "";
        zIMGroupJoinApplicationSendConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        zim.sendGroupJoinApplication(str2, zIMGroupJoinApplicationSendConfig, new ZIMGroupJoinApplicationSentCallback() {
            @Override
            public void onGroupJoinApplicationSent(String str3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void acceptGroupJoinApplication(String str, String str2, String str3, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupJoinApplicationAcceptConfig zIMGroupJoinApplicationAcceptConfig = new ZIMGroupJoinApplicationAcceptConfig();
        zIMGroupJoinApplicationAcceptConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        zim.acceptGroupJoinApplication(str2, str3, zIMGroupJoinApplicationAcceptConfig, new ZIMGroupJoinApplicationAcceptedCallback() {
            @Override
            public void onGroupJoinApplicationAccepted(String str4, String str5, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str4);
                    writableMapCreateMap.putString("userID", str5);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void rejectGroupJoinApplication(String str, String str2, String str3, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupJoinApplicationRejectConfig zIMGroupJoinApplicationRejectConfig = new ZIMGroupJoinApplicationRejectConfig();
        zIMGroupJoinApplicationRejectConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        zim.rejectGroupJoinApplication(str2, str3, zIMGroupJoinApplicationRejectConfig, new ZIMGroupJoinApplicationRejectedCallback() {
            @Override
            public void onGroupJoinApplicationRejected(String str4, String str5, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str4);
                    writableMapCreateMap.putString("userID", str5);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void sendGroupInviteApplications(String str, ReadableArray readableArray, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        ZIMGroupInviteApplicationSendConfig zIMGroupInviteApplicationSendConfig = new ZIMGroupInviteApplicationSendConfig();
        zIMGroupInviteApplicationSendConfig.wording = readableMap.hasKey("wording") ? readableMap.getString("wording") : "";
        zIMGroupInviteApplicationSendConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        zim.sendGroupInviteApplications(arrayList, str2, zIMGroupInviteApplicationSendConfig, new ZIMGroupInviteApplicationsSentCallback() {
            @Override
            public void onGroupInviteApplicationsSent(String str3, ArrayList<ZIMErrorUserInfo> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void acceptGroupInviteApplication(String str, String str2, String str3, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupInviteApplicationAcceptConfig zIMGroupInviteApplicationAcceptConfig = new ZIMGroupInviteApplicationAcceptConfig();
        zIMGroupInviteApplicationAcceptConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        zim.acceptGroupInviteApplication(str2, str3, zIMGroupInviteApplicationAcceptConfig, new ZIMGroupInviteApplicationAcceptedCallback() {
            @Override
            public void onGroupInviteApplicationAccepted(ZIMGroupFullInfo zIMGroupFullInfo, String str4, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("groupInfo", RNZIMConverter.convertGroupFullInfo(zIMGroupFullInfo));
                    writableMapCreateMap.putString("inviterUserID", str4);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void rejectGroupInviteApplication(String str, String str2, String str3, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupInviteApplicationRejectConfig zIMGroupInviteApplicationRejectConfig = new ZIMGroupInviteApplicationRejectConfig();
        zIMGroupInviteApplicationRejectConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        zim.rejectGroupInviteApplication(str2, str3, zIMGroupInviteApplicationRejectConfig, new ZIMGroupInviteApplicationRejectedCallback() {
            @Override
            public void onGroupInviteApplicationRejected(String str4, String str5, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str4);
                    writableMapCreateMap.putString("inviterUserID", str5);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryGroupApplicationList(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupApplicationListQueryConfig zIMGroupApplicationListQueryConfig = new ZIMGroupApplicationListQueryConfig();
        zIMGroupApplicationListQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
        zIMGroupApplicationListQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getInt("nextFlag") : 0;
        zim.queryGroupApplicationList(zIMGroupApplicationListQueryConfig, new ZIMGroupApplicationListQueriedCallback() {
            @Override
            public void onGroupApplicationListQueried(ArrayList<ZIMGroupApplicationInfo> arrayList, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("applicationList", RNZIMConverter.convertGroupApplicationList(arrayList));
                    writableMapCreateMap.putInt("nextFlag", i);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void callInvite(String str, ReadableArray readableArray, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        ZIMCallInviteConfig zIMCallInviteConfig = new ZIMCallInviteConfig();
        if (readableMap != null) {
            zIMCallInviteConfig.mode = ZIMCallInvitationMode.getZIMCallInvitationMode(readableMap.hasKey("mode") ? readableMap.getInt("mode") : 0);
            zIMCallInviteConfig.timeout = readableMap.hasKey("timeout") ? readableMap.getInt("timeout") : 90;
            zIMCallInviteConfig.extendedData = readableMap.hasKey("extendedData") ? readableMap.getString("extendedData") : "";
            zIMCallInviteConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
            zIMCallInviteConfig.enableNotReceivedCheck = readableMap.hasKey("enableNotReceivedCheck") ? readableMap.getBoolean("enableNotReceivedCheck") : false;
        }
        zim.callInvite(arrayList, zIMCallInviteConfig, new ZIMCallInvitationSentCallback() {
            @Override
            public void onCallInvitationSent(String str2, ZIMCallInvitationSentInfo zIMCallInvitationSentInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str2);
                    writableMapCreateMap.putInt("timeout", zIMCallInvitationSentInfo.timeout);
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(zIMCallInvitationSentInfo.errorUserList));
                    writableMapCreateMap.putArray("errorInvitees", RNZIMConverter.convertCallUserList(zIMCallInvitationSentInfo.errorInvitees));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void callCancel(String str, ReadableArray readableArray, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        ZIMCallCancelConfig zIMCallCancelConfig = new ZIMCallCancelConfig();
        if (readableMap != null) {
            zIMCallCancelConfig.extendedData = readableMap.hasKey("extendedData") ? readableMap.getString("extendedData") : "";
            zIMCallCancelConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        }
        zim.callCancel(arrayList, str2, zIMCallCancelConfig, new ZIMCallCancelSentCallback() {
            @Override
            public void onCallCancelSent(String str3, ArrayList<String> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    Iterator<String> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        writableArrayCreateArray.pushString(it2.next());
                    }
                    writableMapCreateMap.putArray("errorInvitees", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void callAccept(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMCallAcceptConfig zIMCallAcceptConfig = new ZIMCallAcceptConfig();
        if (readableMap != null) {
            zIMCallAcceptConfig.extendedData = readableMap.hasKey("extendedData") ? readableMap.getString("extendedData") : "";
        }
        zim.callAccept(str2, zIMCallAcceptConfig, new ZIMCallAcceptanceSentCallback() {
            @Override
            public void onCallAcceptanceSent(String str3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void callReject(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMCallRejectConfig zIMCallRejectConfig = new ZIMCallRejectConfig();
        if (readableMap != null) {
            zIMCallRejectConfig.extendedData = readableMap.hasKey("extendedData") ? readableMap.getString("extendedData") : "";
        }
        zim.callReject(str2, zIMCallRejectConfig, new ZIMCallRejectionSentCallback() {
            @Override
            public void onCallRejectionSent(String str3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void callQuit(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMCallQuitConfig zIMCallQuitConfig = new ZIMCallQuitConfig();
        if (readableMap != null) {
            zIMCallQuitConfig.extendedData = readableMap.hasKey("extendedData") ? readableMap.getString("extendedData") : "";
            zIMCallQuitConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        }
        zim.callQuit(str2, zIMCallQuitConfig, new ZIMCallQuitSentCallback() {
            @Override
            public void onCallQuitSent(String str3, ZIMCallQuitSentInfo zIMCallQuitSentInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putDouble("createTime", zIMCallQuitSentInfo.createTime);
                    writableMapCreateMap.putDouble("acceptTime", zIMCallQuitSentInfo.acceptTime);
                    writableMapCreateMap.putDouble("quitTime", zIMCallQuitSentInfo.quitTime);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void callEnd(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMCallEndConfig zIMCallEndConfig = new ZIMCallEndConfig();
        if (readableMap != null) {
            zIMCallEndConfig.extendedData = readableMap.hasKey("extendedData") ? readableMap.getString("extendedData") : "";
            zIMCallEndConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        }
        zim.callEnd(str2, zIMCallEndConfig, new ZIMCallEndSentCallback() {
            @Override
            public void onCallEndSent(String str3, ZIMCallEndedSentInfo zIMCallEndedSentInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putDouble("createTime", zIMCallEndedSentInfo.createTime);
                    writableMapCreateMap.putDouble("acceptTime", zIMCallEndedSentInfo.acceptTime);
                    writableMapCreateMap.putDouble("endTime", zIMCallEndedSentInfo.endTime);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void callJoin(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMCallJoinConfig zIMCallJoinConfig = new ZIMCallJoinConfig();
        if (readableMap != null) {
            zIMCallJoinConfig.extendedData = readableMap.hasKey("extendedData") ? readableMap.getString("extendedData") : "";
        }
        zim.callJoin(str2, zIMCallJoinConfig, new ZIMCallJoinSentCallback() {
            @Override
            public void onCallJoinSent(String str3, ZIMCallJoinSentInfo zIMCallJoinSentInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putDouble("createTime", zIMCallJoinSentInfo.createTime);
                    writableMapCreateMap.putDouble("joinTime", zIMCallJoinSentInfo.joinTime);
                    writableMapCreateMap.putString("extendedData", zIMCallJoinSentInfo.extendedData);
                    writableMapCreateMap.putArray("callUserList", RNZIMConverter.convertCallUserList(zIMCallJoinSentInfo.callUserList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void callingInvite(String str, ReadableArray readableArray, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        ZIMCallingInviteConfig zIMCallingInviteConfig = new ZIMCallingInviteConfig();
        if (readableMap != null) {
            zIMCallingInviteConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        }
        zim.callingInvite(arrayList, str2, zIMCallingInviteConfig, new ZIMCallingInvitationSentCallback() {
            @Override
            public void onCallingInvitationSent(String str3, ZIMCallingInvitationSentInfo zIMCallingInvitationSentInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("callID", str3);
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(zIMCallingInvitationSentInfo.errorUserList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryCallInvitationList(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMCallInvitationQueryConfig zIMCallInvitationQueryConfig = new ZIMCallInvitationQueryConfig();
        if (readableMap != null) {
            zIMCallInvitationQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMCallInvitationQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? Double.valueOf(readableMap.getDouble("nextFlag")).longValue() : 0L;
        }
        zim.queryCallInvitationList(zIMCallInvitationQueryConfig, new ZIMCallInvitationListQueriedCallback() {
            @Override
            public void onCallInvitationListQueried(ArrayList<ZIMCallInfo> arrayList, long j, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putDouble("nextFlag", j);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMCallInfo zIMCallInfo : arrayList) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putInt("mode", zIMCallInfo.mode.value());
                        writableMapCreateMap2.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, zIMCallInfo.state.value());
                        writableMapCreateMap2.putString("callID", zIMCallInfo.callID);
                        writableMapCreateMap2.putString("caller", zIMCallInfo.caller);
                        writableMapCreateMap2.putString("extendedData", zIMCallInfo.extendedData);
                        writableMapCreateMap2.putDouble("createTime", zIMCallInfo.createTime);
                        writableMapCreateMap2.putDouble("endTime", zIMCallInfo.endTime);
                        writableMapCreateMap2.putArray("callUserList", RNZIMConverter.convertCallUserList(zIMCallInfo.callUserList));
                        writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("callList", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void searchConversations(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMConversationSearchConfig zIMConversationSearchConfig = new ZIMConversationSearchConfig();
        if (readableMap != null) {
            if (readableMap.hasKey("mode")) {
                zIMConversationSearchConfig.mode = ZIMConversationSearchMode.getZIMConversationSearchMode(readableMap.getInt("mode"));
            }
            zIMConversationSearchConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getInt("nextFlag") : 0;
            zIMConversationSearchConfig.totalConversationCount = readableMap.hasKey("totalConversationCount") ? readableMap.getInt("totalConversationCount") : 0;
            zIMConversationSearchConfig.conversationMessageCount = readableMap.hasKey("conversationMessageCount") ? readableMap.getInt("conversationMessageCount") : 0;
            zIMConversationSearchConfig.startTime = readableMap.hasKey("startTime") ? Double.valueOf(readableMap.getDouble("startTime")).longValue() : 0L;
            zIMConversationSearchConfig.endTime = readableMap.hasKey("endTime") ? Double.valueOf(readableMap.getDouble("endTime")).longValue() : 0L;
            if (readableMap.hasKey("keywords")) {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap.getArray("keywords").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                zIMConversationSearchConfig.keywords = arrayList;
            }
            if (readableMap.hasKey("senderUserIDs")) {
                ArrayList<String> arrayList2 = new ArrayList<>();
                Iterator<Object> it2 = readableMap.getArray("senderUserIDs").toArrayList().iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) it2.next());
                }
                zIMConversationSearchConfig.senderUserIDs = arrayList2;
            }
            if (readableMap.hasKey("messageTypes")) {
                ArrayList<ZIMMessageType> arrayList3 = new ArrayList<>();
                Iterator<Object> it3 = readableMap.getArray("messageTypes").toArrayList().iterator();
                while (it3.hasNext()) {
                    arrayList3.add(ZIMMessageType.getZIMMessageType(Double.valueOf(((Double) it3.next()).doubleValue()).intValue()));
                }
                zIMConversationSearchConfig.messageTypes = arrayList3;
            }
            if (readableMap.hasKey("subMessageTypes")) {
                ArrayList<Integer> arrayList4 = new ArrayList<>();
                Iterator<Object> it4 = readableMap.getArray("subMessageTypes").toArrayList().iterator();
                while (it4.hasNext()) {
                    arrayList4.add(Integer.valueOf(Double.valueOf(((Double) it4.next()).doubleValue()).intValue()));
                }
                zIMConversationSearchConfig.subMessageTypes = arrayList4;
            }
        }
        zim.searchLocalConversations(zIMConversationSearchConfig, new ZIMConversationsSearchedCallback() {
            @Override
            public void onConversationsSearched(ArrayList<ZIMConversationSearchInfo> arrayList5, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("nextFlag", i);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMConversationSearchInfo zIMConversationSearchInfo : arrayList5) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putString("conversationID", zIMConversationSearchInfo.conversationID);
                        writableMapCreateMap2.putInt("conversationType", zIMConversationSearchInfo.conversationType.value());
                        writableMapCreateMap2.putMap("conversation", RNZIMConverter.convertConversation(zIMConversationSearchInfo.conversation));
                        writableMapCreateMap2.putInt("totalMessageCount", zIMConversationSearchInfo.totalMessageCount);
                        writableMapCreateMap2.putArray("messageList", RNZIMConverter.convertMessageList(zIMConversationSearchInfo.messageList));
                        writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("conversationSearchInfoList", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void searchGlobalMessages(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessageSearchConfig zIMMessageSearchConfig = new ZIMMessageSearchConfig();
        if (readableMap != null) {
            zIMMessageSearchConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMMessageSearchConfig.order = ZIMMessageOrder.getZIMMessageOrder(readableMap.hasKey("order") ? readableMap.getInt("order") : 0);
            zIMMessageSearchConfig.startTime = readableMap.hasKey("startTime") ? Double.valueOf(readableMap.getDouble("startTime")).longValue() : 0L;
            zIMMessageSearchConfig.endTime = readableMap.hasKey("endTime") ? Double.valueOf(readableMap.getDouble("endTime")).longValue() : 0L;
            if (readableMap.hasKey("nextMessage")) {
                zIMMessageSearchConfig.nextMessage = RNZIMConverter.convertMessageFromJsToJava(readableMap.getMap("nextMessage"));
            }
            if (readableMap.hasKey("keywords")) {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap.getArray("keywords").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                zIMMessageSearchConfig.keywords = arrayList;
            }
            if (readableMap.hasKey("senderUserIDs")) {
                ArrayList<String> arrayList2 = new ArrayList<>();
                Iterator<Object> it2 = readableMap.getArray("senderUserIDs").toArrayList().iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) it2.next());
                }
                zIMMessageSearchConfig.senderUserIDs = arrayList2;
            }
            if (readableMap.hasKey("messageTypes")) {
                ArrayList<ZIMMessageType> arrayList3 = new ArrayList<>();
                Iterator<Object> it3 = readableMap.getArray("messageTypes").toArrayList().iterator();
                while (it3.hasNext()) {
                    arrayList3.add(ZIMMessageType.getZIMMessageType(Double.valueOf(((Double) it3.next()).doubleValue()).intValue()));
                }
                zIMMessageSearchConfig.messageTypes = arrayList3;
            }
            if (readableMap.hasKey("subMessageTypes")) {
                ArrayList<Integer> arrayList4 = new ArrayList<>();
                Iterator<Object> it4 = readableMap.getArray("subMessageTypes").toArrayList().iterator();
                while (it4.hasNext()) {
                    arrayList4.add(Integer.valueOf(Double.valueOf(((Double) it4.next()).doubleValue()).intValue()));
                }
                zIMMessageSearchConfig.subMessageTypes = arrayList4;
            }
        }
        zim.searchGlobalLocalMessages(zIMMessageSearchConfig, new ZIMMessagesGlobalSearchedCallback() {
            @Override
            public void onMessagesGlobalSearched(ArrayList<ZIMMessage> arrayList5, ZIMMessage zIMMessage, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    if (zIMMessage != null) {
                        writableMapCreateMap.putMap("nextMessage", RNZIMConverter.convertMessage(zIMMessage));
                    } else {
                        writableMapCreateMap.putNull("nextMessage");
                    }
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList5));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void searchMessages(String str, String str2, int i, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMMessageSearchConfig zIMMessageSearchConfig = new ZIMMessageSearchConfig();
        if (readableMap != null) {
            zIMMessageSearchConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMMessageSearchConfig.order = ZIMMessageOrder.getZIMMessageOrder(readableMap.hasKey("order") ? readableMap.getInt("order") : 0);
            zIMMessageSearchConfig.startTime = readableMap.hasKey("startTime") ? Double.valueOf(readableMap.getDouble("startTime")).longValue() : 0L;
            zIMMessageSearchConfig.endTime = readableMap.hasKey("endTime") ? Double.valueOf(readableMap.getDouble("endTime")).longValue() : 0L;
            if (readableMap.hasKey("nextMessage")) {
                zIMMessageSearchConfig.nextMessage = RNZIMConverter.convertMessageFromJsToJava(readableMap.getMap("nextMessage"));
            }
            if (readableMap.hasKey("keywords")) {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap.getArray("keywords").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                zIMMessageSearchConfig.keywords = arrayList;
            }
            if (readableMap.hasKey("senderUserIDs")) {
                ArrayList<String> arrayList2 = new ArrayList<>();
                Iterator<Object> it2 = readableMap.getArray("senderUserIDs").toArrayList().iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) it2.next());
                }
                zIMMessageSearchConfig.senderUserIDs = arrayList2;
            }
            if (readableMap.hasKey("messageTypes")) {
                ArrayList<ZIMMessageType> arrayList3 = new ArrayList<>();
                Iterator<Object> it3 = readableMap.getArray("messageTypes").toArrayList().iterator();
                while (it3.hasNext()) {
                    arrayList3.add(ZIMMessageType.getZIMMessageType(Double.valueOf(((Double) it3.next()).doubleValue()).intValue()));
                }
                zIMMessageSearchConfig.messageTypes = arrayList3;
            }
            if (readableMap.hasKey("subMessageTypes")) {
                ArrayList<Integer> arrayList4 = new ArrayList<>();
                Iterator<Object> it4 = readableMap.getArray("subMessageTypes").toArrayList().iterator();
                while (it4.hasNext()) {
                    arrayList4.add(Integer.valueOf(Double.valueOf(((Double) it4.next()).doubleValue()).intValue()));
                }
                zIMMessageSearchConfig.subMessageTypes = arrayList4;
            }
        }
        zim.searchLocalMessages(str2, ZIMConversationType.getZIMConversationType(i), zIMMessageSearchConfig, new ZIMMessagesSearchedCallback() {
            @Override
            public void onMessagesSearched(String str3, ZIMConversationType zIMConversationType, ArrayList<ZIMMessage> arrayList5, ZIMMessage zIMMessage, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("conversationID", str3);
                    writableMapCreateMap.putInt("conversationType", zIMConversationType.value());
                    if (zIMMessage != null) {
                        writableMapCreateMap.putMap("nextMessage", RNZIMConverter.convertMessage(zIMMessage));
                    } else {
                        writableMapCreateMap.putNull("nextMessage");
                    }
                    writableMapCreateMap.putArray("messageList", RNZIMConverter.convertMessageList(arrayList5));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void searchGroups(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupSearchConfig zIMGroupSearchConfig = new ZIMGroupSearchConfig();
        if (readableMap != null) {
            zIMGroupSearchConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMGroupSearchConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getInt("nextFlag") : 0;
            zIMGroupSearchConfig.isAlsoMatchGroupMemberUserName = readableMap.hasKey("isAlsoMatchGroupMemberUserName") ? readableMap.getBoolean("isAlsoMatchGroupMemberUserName") : false;
            zIMGroupSearchConfig.isAlsoMatchGroupMemberNickname = readableMap.hasKey("isAlsoMatchGroupMemberNickname") ? readableMap.getBoolean("isAlsoMatchGroupMemberNickname") : false;
            if (readableMap.hasKey("keywords")) {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap.getArray("keywords").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                zIMGroupSearchConfig.keywords = arrayList;
            }
        }
        zim.searchLocalGroups(zIMGroupSearchConfig, new ZIMGroupsSearchedCallback() {
            @Override
            public void onGroupsSearched(ArrayList<ZIMGroupSearchInfo> arrayList2, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("nextFlag", i);
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMGroupSearchInfo zIMGroupSearchInfo : arrayList2) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putMap("groupInfo", RNZIMConverter.convertGroupInfo(zIMGroupSearchInfo.groupInfo));
                        writableMapCreateMap2.putArray("userList", RNZIMConverter.convertGroupMemberInfoList(zIMGroupSearchInfo.userList));
                        writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("groupSearchInfoList", writableArrayCreateArray);
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void searchGroupMembers(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMGroupMemberSearchConfig zIMGroupMemberSearchConfig = new ZIMGroupMemberSearchConfig();
        if (readableMap != null) {
            zIMGroupMemberSearchConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMGroupMemberSearchConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getInt("nextFlag") : 0;
            zIMGroupMemberSearchConfig.isAlsoMatchGroupMemberNickname = readableMap.hasKey("isAlsoMatchGroupMemberNickname") ? readableMap.getBoolean("isAlsoMatchGroupMemberNickname") : false;
            if (readableMap.hasKey("keywords")) {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap.getArray("keywords").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                zIMGroupMemberSearchConfig.keywords = arrayList;
            }
        }
        zim.searchLocalGroupMembers(str2, zIMGroupMemberSearchConfig, new ZIMGroupMembersSearchedCallback() {
            @Override
            public void onGroupMembersSearched(String str3, ArrayList<ZIMGroupMemberInfo> arrayList2, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putString("groupID", str3);
                    writableMapCreateMap.putInt("nextFlag", i);
                    writableMapCreateMap.putArray("userList", RNZIMConverter.convertGroupMemberInfoList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void searchFriends(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFriendSearchConfig zIMFriendSearchConfig = new ZIMFriendSearchConfig();
        if (readableMap != null) {
            zIMFriendSearchConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
            zIMFriendSearchConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getInt("nextFlag") : 0;
            zIMFriendSearchConfig.isAlsoMatchFriendAlias = readableMap.hasKey("isAlsoMatchFriendAlias") ? readableMap.getBoolean("isAlsoMatchFriendAlias") : false;
            if (readableMap.hasKey("keywords")) {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<Object> it = readableMap.getArray("keywords").toArrayList().iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                zIMFriendSearchConfig.keywords = arrayList;
            }
        }
        zim.searchLocalFriends(zIMFriendSearchConfig, new ZIMFriendsSearchedCallback() {
            @Override
            public void onFriendsSearched(ArrayList<ZIMFriendInfo> arrayList2, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("nextFlag", i);
                    writableMapCreateMap.putArray("friendInfos", RNZIMConverter.convertFriendInfoList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void addFriend(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFriendAddConfig zIMFriendAddConfig = new ZIMFriendAddConfig();
        zIMFriendAddConfig.wording = readableMap.hasKey("wording") ? readableMap.getString("wording") : "";
        zIMFriendAddConfig.friendAlias = readableMap.hasKey("friendAlias") ? readableMap.getString("friendAlias") : "";
        if (readableMap.hasKey("friendAttributes")) {
            HashMap<String, String> map = new HashMap<>();
            HashMap<String, Object> hashMap = readableMap.getMap("friendAttributes").toHashMap();
            for (String str3 : hashMap.keySet()) {
                map.put(str3, (String) hashMap.get(str3));
            }
            zIMFriendAddConfig.friendAttributes = map;
        }
        zim.addFriend(str2, zIMFriendAddConfig, new ZIMFriendAddedCallback() {
            @Override
            public void onFriendAddedCallback(ZIMFriendInfo zIMFriendInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("friendInfo", RNZIMConverter.convertFriendInfo(zIMFriendInfo));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void sendFriendApplication(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFriendApplicationSendConfig zIMFriendApplicationSendConfig = new ZIMFriendApplicationSendConfig();
        zIMFriendApplicationSendConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        zIMFriendApplicationSendConfig.wording = readableMap.hasKey("wording") ? readableMap.getString("wording") : "";
        zIMFriendApplicationSendConfig.friendAlias = readableMap.hasKey("friendAlias") ? readableMap.getString("friendAlias") : "";
        if (readableMap.hasKey("friendAttributes")) {
            HashMap<String, String> map = new HashMap<>();
            HashMap<String, Object> hashMap = readableMap.getMap("friendAttributes").toHashMap();
            for (String str3 : hashMap.keySet()) {
                map.put(str3, (String) hashMap.get(str3));
            }
            zIMFriendApplicationSendConfig.friendAttributes = map;
        }
        zim.sendFriendApplication(str2, zIMFriendApplicationSendConfig, new ZIMFriendApplicationSentCallback() {
            @Override
            public void onFriendApplicationSentCallback(ZIMFriendApplicationInfo zIMFriendApplicationInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("applicationInfo", RNZIMConverter.convertFriendApplication(zIMFriendApplicationInfo));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void deleteFriends(String str, ReadableArray readableArray, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFriendDeleteConfig zIMFriendDeleteConfig = new ZIMFriendDeleteConfig();
        zIMFriendDeleteConfig.type = ZIMFriendDeleteType.getZIMFriendDeleteType(readableMap.hasKey(SVGParser.XML_STYLESHEET_ATTR_TYPE) ? readableMap.getInt(SVGParser.XML_STYLESHEET_ATTR_TYPE) : 0);
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.deleteFriends(arrayList, zIMFriendDeleteConfig, new ZIMFriendsDeletedCallback() {
            @Override
            public void onFriendsDeletedCallback(ArrayList<ZIMErrorUserInfo> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void checkFriendsRelation(String str, ReadableArray readableArray, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFriendRelationCheckConfig zIMFriendRelationCheckConfig = new ZIMFriendRelationCheckConfig();
        zIMFriendRelationCheckConfig.type = ZIMFriendRelationCheckType.getZIMFriendRelationCheckType(readableMap.hasKey(SVGParser.XML_STYLESHEET_ATTR_TYPE) ? readableMap.getInt(SVGParser.XML_STYLESHEET_ATTR_TYPE) : 0);
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.checkFriendsRelation(arrayList, zIMFriendRelationCheckConfig, new ZIMFriendsRelationCheckedCallback() {
            @Override
            public void onFriendsChecked(ArrayList<ZIMFriendRelationInfo> arrayList2, ArrayList<ZIMErrorUserInfo> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    WritableArray writableArrayCreateArray = Arguments.createArray();
                    for (ZIMFriendRelationInfo zIMFriendRelationInfo : arrayList2) {
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putString("userID", zIMFriendRelationInfo.userID);
                        writableMapCreateMap2.putInt(SVGParser.XML_STYLESHEET_ATTR_TYPE, zIMFriendRelationInfo.type.value());
                        writableArrayCreateArray.pushMap(writableMapCreateMap2);
                    }
                    writableMapCreateMap.putArray("relationInfos", writableArrayCreateArray);
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList3));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void updateFriendAlias(String str, String str2, String str3, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.updateFriendAlias(str2, str3, new ZIMFriendAliasUpdatedCallback() {
                @Override
                public void onFriendAliasUpdated(ZIMFriendInfo zIMFriendInfo, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putMap("friendInfo", RNZIMConverter.convertFriendInfo(zIMFriendInfo));
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void updateFriendAttributes(String str, ReadableMap readableMap, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        HashMap<String, String> map = new HashMap<>();
        for (String str3 : readableMap.toHashMap().keySet()) {
            map.put(str3, readableMap.getString(str3));
        }
        zim.updateFriendAttributes(map, str2, new ZIMFriendAttributesUpdatedCallback() {
            @Override
            public void onFriendAttributesUpdated(ZIMFriendInfo zIMFriendInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("friendInfo", RNZIMConverter.convertFriendInfo(zIMFriendInfo));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void acceptFriendApplication(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFriendApplicationAcceptConfig zIMFriendApplicationAcceptConfig = new ZIMFriendApplicationAcceptConfig();
        zIMFriendApplicationAcceptConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        zIMFriendApplicationAcceptConfig.friendAlias = readableMap.hasKey("friendAlias") ? readableMap.getString("friendAlias") : "";
        if (readableMap.hasKey("friendAttributes")) {
            HashMap<String, String> map = new HashMap<>();
            HashMap<String, Object> hashMap = readableMap.getMap("friendAttributes").toHashMap();
            for (String str3 : hashMap.keySet()) {
                map.put(str3, (String) hashMap.get(str3));
            }
            zIMFriendApplicationAcceptConfig.friendAttributes = map;
        }
        zim.acceptFriendApplication(str2, zIMFriendApplicationAcceptConfig, new ZIMFriendApplicationAcceptedCallback() {
            @Override
            public void onFriendApplicationAccepted(ZIMFriendInfo zIMFriendInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("friendInfo", RNZIMConverter.convertFriendInfo(zIMFriendInfo));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void rejectFriendApplication(String str, String str2, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFriendApplicationRejectConfig zIMFriendApplicationRejectConfig = new ZIMFriendApplicationRejectConfig();
        zIMFriendApplicationRejectConfig.pushConfig = RNZIMConverter.convertZIMPushConfig(readableMap);
        zim.rejectFriendApplication(str2, zIMFriendApplicationRejectConfig, new ZIMFriendApplicationRejectedCallback() {
            @Override
            public void onFriendApplicationRejected(ZIMUserInfo zIMUserInfo, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putMap("userInfo", RNZIMConverter.convertUserInfo(zIMUserInfo));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryFriendsInfo(String str, ReadableArray readableArray, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.queryFriendsInfo(arrayList, new ZIMFriendsInfoQueriedCallback() {
            @Override
            public void onFriendsInfoQueried(ArrayList<ZIMFriendInfo> arrayList2, ArrayList<ZIMErrorUserInfo> arrayList3, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("friendInfos", RNZIMConverter.convertFriendInfoList(arrayList2));
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList3));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryFriendList(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFriendListQueryConfig zIMFriendListQueryConfig = new ZIMFriendListQueryConfig();
        zIMFriendListQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
        zIMFriendListQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getInt("nextFlag") : 0;
        zim.queryFriendList(zIMFriendListQueryConfig, new ZIMFriendListQueriedCallback() {
            @Override
            public void onFriendListQueried(ArrayList<ZIMFriendInfo> arrayList, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("nextFlag", i);
                    writableMapCreateMap.putArray("friendList", RNZIMConverter.convertFriendInfoList(arrayList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void queryFriendApplicationList(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMFriendApplicationListQueryConfig zIMFriendApplicationListQueryConfig = new ZIMFriendApplicationListQueryConfig();
        zIMFriendApplicationListQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
        zIMFriendApplicationListQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getInt("nextFlag") : 0;
        zim.queryFriendApplicationList(zIMFriendApplicationListQueryConfig, new ZIMFriendApplicationListQueriedCallback() {
            @Override
            public void onFriendApplicationListQueried(ArrayList<ZIMFriendApplicationInfo> arrayList, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("nextFlag", i);
                    writableMapCreateMap.putArray("applicationList", RNZIMConverter.convertFriendApplicationList(arrayList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void addUsersToBlacklist(String str, ReadableArray readableArray, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.addUsersToBlacklist(arrayList, new ZIMBlacklistUsersAddedCallback() {
            @Override
            public void onBlacklistUsersAdded(ArrayList<ZIMErrorUserInfo> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void removeUsersFromBlacklist(String str, ReadableArray readableArray, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Object> it = readableArray.toArrayList().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        zim.removeUsersFromBlacklist(arrayList, new ZIMBlacklistUsersRemovedCallback() {
            @Override
            public void onBlacklistUsersRemoved(ArrayList<ZIMErrorUserInfo> arrayList2, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putArray("errorUserList", RNZIMConverter.convertErrorUserInfoList(arrayList2));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }

    @ReactMethod
    public void checkUserIsInBlacklist(String str, String str2, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
        } else {
            zim.checkUserIsInBlacklist(str2, new ZIMBlacklistCheckedCallback() {
                @Override
                public void onBlacklistChecked(boolean z, ZIMError zIMError) {
                    if (zIMError.code == ZIMErrorCode.SUCCESS) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putBoolean("isUserInBlacklist", z);
                        promise.resolve(writableMapCreateMap);
                        return;
                    }
                    promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
                }
            });
        }
    }

    @ReactMethod
    public void queryBlacklist(String str, ReadableMap readableMap, final Promise promise) {
        ZIM zim = this.engineMap.get(str);
        if (zim == null) {
            promise.reject("-1", "no instance");
            return;
        }
        ZIMBlacklistQueryConfig zIMBlacklistQueryConfig = new ZIMBlacklistQueryConfig();
        zIMBlacklistQueryConfig.count = readableMap.hasKey(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) ? readableMap.getInt(CodePushConstants.LATEST_ROLLBACK_COUNT_KEY) : 0;
        zIMBlacklistQueryConfig.nextFlag = readableMap.hasKey("nextFlag") ? readableMap.getInt("nextFlag") : 0;
        zim.queryBlacklist(zIMBlacklistQueryConfig, new ZIMBlacklistQueriedCallback() {
            @Override
            public void onBlacklistQueried(ArrayList<ZIMUserInfo> arrayList, int i, ZIMError zIMError) {
                if (zIMError.code == ZIMErrorCode.SUCCESS) {
                    WritableMap writableMapCreateMap = Arguments.createMap();
                    writableMapCreateMap.putInt("nextFlag", i);
                    writableMapCreateMap.putArray("blacklist", RNZIMConverter.convertUserInfoList(arrayList));
                    promise.resolve(writableMapCreateMap);
                    return;
                }
                promise.reject(String.valueOf(zIMError.code.value()), zIMError.message);
            }
        });
    }
}

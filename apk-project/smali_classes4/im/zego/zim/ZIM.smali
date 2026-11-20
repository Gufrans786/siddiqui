.class public abstract Lim/zego/zim/ZIM;
.super Ljava/lang/Object;
.source "ZIM.java"


# static fields
.field protected static context:Landroid/app/Application;

.field protected static externalSoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(JLandroid/app/Application;)Lim/zego/zim/ZIM;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appID",
            "application"
        }
    .end annotation

    .line 68
    new-instance v0, Lim/zego/zim/entity/ZIMAppConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMAppConfig;-><init>()V

    .line 69
    iput-wide p0, v0, Lim/zego/zim/entity/ZIMAppConfig;->appID:J

    .line 70
    invoke-static {v0, p2}, Lim/zego/zim/internal/ZIMImpl;->createZIM(Lim/zego/zim/entity/ZIMAppConfig;Landroid/content/Context;)Lim/zego/zim/ZIM;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lim/zego/zim/entity/ZIMAppConfig;Landroid/app/Application;)Lim/zego/zim/ZIM;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "application"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lim/zego/zim/internal/ZIMImpl;->createZIM(Lim/zego/zim/entity/ZIMAppConfig;Landroid/content/Context;)Lim/zego/zim/ZIM;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lim/zego/zim/ZIM;
    .locals 1

    .line 86
    invoke-static {}, Lim/zego/zim/internal/ZIMImpl;->getZIMInstance()Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {}, Lim/zego/zim/internal/ZIMImpl;->getVersion()Ljava/lang/String;

    move-result-object v0

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

    .line 101
    invoke-static {p0, p1}, Lim/zego/zim/internal/ZIMImpl;->setAdvancedConfig(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 115
    invoke-static {p0}, Lim/zego/zim/internal/ZIMImpl;->setCacheConfig(Lim/zego/zim/entity/ZIMCacheConfig;)V

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

    .line 105
    invoke-static {p0, p1}, Lim/zego/zim/internal/ZIMImpl;->setGeofencingConfig(Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMGeofencingType;)Z

    move-result p0

    return p0
.end method

.method public static setLogConfig(Lim/zego/zim/entity/ZIMLogConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 113
    invoke-static {p0}, Lim/zego/zim/internal/ZIMImpl;->setLogConfig(Lim/zego/zim/entity/ZIMLogConfig;)V

    return-void
.end method

.method public static setSoCustomPath(Ljava/lang/String;Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fullPath",
            "application"
        }
    .end annotation

    .line 118
    sput-object p0, Lim/zego/zim/ZIM;->externalSoPath:Ljava/lang/String;

    .line 119
    sput-object p1, Lim/zego/zim/ZIM;->context:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public abstract acceptFriendApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;Lim/zego/zim/callback/ZIMFriendApplicationAcceptedCallback;)V
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
.end method

.method public abstract acceptGroupInviteApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupInviteApplicationAcceptConfig;Lim/zego/zim/callback/ZIMGroupInviteApplicationAcceptedCallback;)V
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
.end method

.method public abstract acceptGroupJoinApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupJoinApplicationAcceptConfig;Lim/zego/zim/callback/ZIMGroupJoinApplicationAcceptedCallback;)V
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
.end method

.method public abstract addFriend(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendAddConfig;Lim/zego/zim/callback/ZIMFriendAddedCallback;)V
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
.end method

.method public abstract addMessageReaction(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageReactionAddedCallback;)V
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
.end method

.method public abstract addMessageReaction(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageReactionAddConfig;Lim/zego/zim/callback/ZIMMessageReactionAddedCallback;)V
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
.end method

.method public abstract addUsersToBlacklist(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMBlacklistUsersAddedCallback;)V
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
.end method

.method public abstract beginRoomAttributesBatchOperation(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomAttributesBatchOperationConfig;)V
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
.end method

.method public abstract callAccept(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallAcceptConfig;Lim/zego/zim/callback/ZIMCallAcceptanceSentCallback;)V
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
.end method

.method public abstract callCancel(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMCallCancelConfig;Lim/zego/zim/callback/ZIMCallCancelSentCallback;)V
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
.end method

.method public abstract callEnd(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallEndConfig;Lim/zego/zim/callback/ZIMCallEndSentCallback;)V
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
.end method

.method public abstract callExperimentalAPI(Ljava/lang/String;Lim/zego/zim/callback/ZIMExperimentalAPICalledCallback;)V
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
.end method

.method public abstract callInvite(Ljava/util/List;Lim/zego/zim/entity/ZIMCallInviteConfig;Lim/zego/zim/callback/ZIMCallInvitationSentCallback;)V
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
.end method

.method public abstract callJoin(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallJoinConfig;Lim/zego/zim/callback/ZIMCallJoinSentCallback;)V
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
.end method

.method public abstract callQuit(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallQuitConfig;Lim/zego/zim/callback/ZIMCallQuitSentCallback;)V
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
.end method

.method public abstract callReject(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallRejectConfig;Lim/zego/zim/callback/ZIMCallRejectionSentCallback;)V
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
.end method

.method public abstract callingInvite(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMCallingInviteConfig;Lim/zego/zim/callback/ZIMCallingInvitationSentCallback;)V
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
.end method

.method public abstract cancelSendingMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMSendingMessageCancelConfig;Lim/zego/zim/callback/ZIMSendingMessageCancelledCallback;)V
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
.end method

.method public abstract checkFriendsRelation(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMFriendRelationCheckConfig;Lim/zego/zim/callback/ZIMFriendsRelationCheckedCallback;)V
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
.end method

.method public abstract checkUserIsInBlacklist(Ljava/lang/String;Lim/zego/zim/callback/ZIMBlacklistCheckedCallback;)V
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
.end method

.method public abstract clearConversationTotalUnreadMessageCount(Lim/zego/zim/callback/ZIMConversationTotalUnreadMessageCountClearedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract clearConversationUnreadMessageCount(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationUnreadMessageCountClearedCallback;)V
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
.end method

.method public abstract clearLocalFileCache(Lim/zego/zim/entity/ZIMFileCacheClearConfig;Lim/zego/zim/callback/ZIMFileCacheClearedCallback;)V
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
.end method

.method public abstract createGroup(Lim/zego/zim/entity/ZIMGroupInfo;Ljava/util/List;Lim/zego/zim/callback/ZIMGroupCreatedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupInfo",
            "userIDs",
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
.end method

.method public abstract createGroup(Lim/zego/zim/entity/ZIMGroupInfo;Ljava/util/List;Lim/zego/zim/entity/ZIMGroupAdvancedConfig;Lim/zego/zim/callback/ZIMGroupCreatedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupInfo",
            "userIDs",
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
.end method

.method public abstract createRoom(Lim/zego/zim/entity/ZIMRoomInfo;Lim/zego/zim/callback/ZIMRoomCreatedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomInfo",
            "callback"
        }
    .end annotation
.end method

.method public abstract createRoom(Lim/zego/zim/entity/ZIMRoomInfo;Lim/zego/zim/entity/ZIMRoomAdvancedConfig;Lim/zego/zim/callback/ZIMRoomCreatedCallback;)V
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
.end method

.method public abstract deleteAllConversationMessages(Lim/zego/zim/entity/ZIMMessageDeleteConfig;Lim/zego/zim/callback/ZIMConversationMessagesAllDeletedCallback;)V
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
.end method

.method public abstract deleteAllConversations(Lim/zego/zim/entity/ZIMConversationDeleteConfig;Lim/zego/zim/callback/ZIMConversationsAllDeletedCallback;)V
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
.end method

.method public abstract deleteAllMessage(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageDeleteConfig;Lim/zego/zim/callback/ZIMMessageDeletedCallback;)V
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
.end method

.method public abstract deleteConversation(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMConversationDeleteConfig;Lim/zego/zim/callback/ZIMConversationDeletedCallback;)V
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
.end method

.method public abstract deleteFriends(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMFriendDeleteConfig;Lim/zego/zim/callback/ZIMFriendsDeletedCallback;)V
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
.end method

.method public abstract deleteGroupAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesOperatedCallback;)V
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
.end method

.method public abstract deleteMessageAllReactions(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageReactionsAllDeletedCallback;)V
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
.end method

.method public abstract deleteMessageReaction(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageReactionDeletedCallback;)V
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
.end method

.method public abstract deleteMessages(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageDeleteConfig;Lim/zego/zim/callback/ZIMMessageDeletedCallback;)V
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
            "conversationType",
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
.end method

.method public abstract deleteRoomAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomAttributesDeleteConfig;Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;)V
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
.end method

.method public abstract destroy()V
.end method

.method public abstract dismissGroup(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupDismissedCallback;)V
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
.end method

.method public abstract downloadMediaFile(Lim/zego/zim/entity/ZIMMediaMessage;Lim/zego/zim/enums/ZIMMediaFileType;Lim/zego/zim/callback/ZIMMediaDownloadedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "fileType",
            "callback"
        }
    .end annotation
.end method

.method public abstract downloadMediaFile(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/enums/ZIMMediaFileType;Lim/zego/zim/entity/ZIMMediaDownloadConfig;Lim/zego/zim/callback/ZIMMediaDownloadedCallback;)V
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
.end method

.method public abstract editMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageEditConfig;Lim/zego/zim/callback/ZIMMessageSentFullCallback;)V
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
.end method

.method public abstract endRoomAttributesBatchOperation(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomAttributesBatchOperatedCallback;)V
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
.end method

.method public abstract enterRoom(Lim/zego/zim/entity/ZIMRoomInfo;Lim/zego/zim/entity/ZIMRoomAdvancedConfig;Lim/zego/zim/callback/ZIMRoomEnteredCallback;)V
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
.end method

.method public abstract exportLocalMessages(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageExportConfig;Lim/zego/zim/callback/ZIMMessageExportedCallback;)V
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
.end method

.method public abstract importLocalMessages(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageImportConfig;Lim/zego/zim/callback/ZIMMessageImportedCallback;)V
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
.end method

.method public abstract insertMessageToLocalDB(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Ljava/lang/String;Lim/zego/zim/callback/ZIMMessageInsertedCallback;)V
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
.end method

.method public abstract inviteUsersIntoGroup(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupUsersInvitedCallback;)V
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
.end method

.method public abstract joinGroup(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupJoinedCallback;)V
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
.end method

.method public abstract joinRoom(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomJoinedCallback;)V
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
.end method

.method public abstract kickGroupMembers(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberKickedCallback;)V
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
.end method

.method public abstract leaveAllRoom(Lim/zego/zim/callback/ZIMRoomAllLeftCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract leaveGroup(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupLeftCallback;)V
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
.end method

.method public abstract leaveRoom(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomLeftCallback;)V
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
.end method

.method public abstract login(Lim/zego/zim/entity/ZIMUserInfo;Lim/zego/zim/callback/ZIMLoggedInCallback;)V
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
.end method

.method public abstract login(Lim/zego/zim/entity/ZIMUserInfo;Ljava/lang/String;Lim/zego/zim/callback/ZIMLoggedInCallback;)V
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
.end method

.method public abstract login(Ljava/lang/String;Lim/zego/zim/entity/ZIMLoginConfig;Lim/zego/zim/callback/ZIMLoggedInCallback;)V
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
.end method

.method public abstract logout()V
.end method

.method public abstract muteGroup(ZLjava/lang/String;Lim/zego/zim/entity/ZIMGroupMuteConfig;Lim/zego/zim/callback/ZIMGroupMutedCallback;)V
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
.end method

.method public abstract muteGroupMembers(ZLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberMuteConfig;Lim/zego/zim/callback/ZIMGroupMembersMutedCallback;)V
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
.end method

.method public abstract pinMessage(Lim/zego/zim/entity/ZIMMessage;ZLim/zego/zim/callback/ZIMMessagePinnedCallback;)V
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
.end method

.method public abstract pinMessage(Lim/zego/zim/entity/ZIMMessage;ZLim/zego/zim/entity/ZIMMessagePinConfig;Lim/zego/zim/callback/ZIMMessagePinnedCallback;)V
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
.end method

.method public abstract queryBlacklist(Lim/zego/zim/entity/ZIMBlacklistQueryConfig;Lim/zego/zim/callback/ZIMBlacklistQueriedCallback;)V
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
.end method

.method public abstract queryCallInvitationList(Lim/zego/zim/entity/ZIMCallInvitationQueryConfig;Lim/zego/zim/callback/ZIMCallInvitationListQueriedCallback;)V
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
.end method

.method public abstract queryCombineMessageDetail(Lim/zego/zim/entity/ZIMCombineMessage;Lim/zego/zim/callback/ZIMCombineMessageDetailQueriedCallback;)V
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
.end method

.method public abstract queryConversation(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationQueriedCallback;)V
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
.end method

.method public abstract queryConversationList(Lim/zego/zim/entity/ZIMConversationQueryConfig;Lim/zego/zim/callback/ZIMConversationListQueriedCallback;)V
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
.end method

.method public abstract queryConversationList(Lim/zego/zim/entity/ZIMConversationQueryConfig;Lim/zego/zim/entity/ZIMConversationFilterOption;Lim/zego/zim/callback/ZIMConversationListQueriedCallback;)V
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
.end method

.method public abstract queryConversationPinnedList(Lim/zego/zim/entity/ZIMConversationQueryConfig;Lim/zego/zim/callback/ZIMConversationPinnedListQueriedCallback;)V
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
.end method

.method public abstract queryConversationTotalUnreadMessageCount(Lim/zego/zim/entity/ZIMConversationTotalUnreadMessageCountQueryConfig;Lim/zego/zim/callback/ZIMConversationTotalUnreadMessageCountQueriedCallback;)V
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
.end method

.method public abstract queryFriendApplicationList(Lim/zego/zim/entity/ZIMFriendApplicationListQueryConfig;Lim/zego/zim/callback/ZIMFriendApplicationListQueriedCallback;)V
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
.end method

.method public abstract queryFriendList(Lim/zego/zim/entity/ZIMFriendListQueryConfig;Lim/zego/zim/callback/ZIMFriendListQueriedCallback;)V
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
.end method

.method public abstract queryFriendsInfo(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMFriendsInfoQueriedCallback;)V
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
.end method

.method public abstract queryGroupAllAttributes(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesQueriedCallback;)V
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
.end method

.method public abstract queryGroupApplicationList(Lim/zego/zim/entity/ZIMGroupApplicationListQueryConfig;Lim/zego/zim/callback/ZIMGroupApplicationListQueriedCallback;)V
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
.end method

.method public abstract queryGroupAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesQueriedCallback;)V
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
.end method

.method public abstract queryGroupInfo(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupInfoQueriedCallback;)V
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
.end method

.method public abstract queryGroupList(ILim/zego/zim/entity/ZIMGroupListQueryConfig;Lim/zego/zim/callback/ZIMGroupListQueriedCallback;)V
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
.end method

.method public abstract queryGroupList(Lim/zego/zim/callback/ZIMGroupListQueriedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract queryGroupMemberCount(Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberCountQueriedCallback;)V
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
.end method

.method public abstract queryGroupMemberInfo(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberInfoQueriedCallback;)V
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
.end method

.method public abstract queryGroupMemberList(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberQueryConfig;Lim/zego/zim/callback/ZIMGroupMemberListQueriedCallback;)V
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
.end method

.method public abstract queryGroupMemberMutedList(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberMutedListQueryConfig;Lim/zego/zim/callback/ZIMGroupMemberMutedListQueriedCallback;)V
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
.end method

.method public abstract queryGroupMessageReceiptReadMemberList(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;Lim/zego/zim/callback/ZIMGroupMessageReceiptMemberListQueriedCallback;)V
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
.end method

.method public abstract queryGroupMessageReceiptUnreadMemberList(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMessageReceiptMemberQueryConfig;Lim/zego/zim/callback/ZIMGroupMessageReceiptMemberListQueriedCallback;)V
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
.end method

.method public abstract queryHistoryMessage(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageQueryConfig;Lim/zego/zim/callback/ZIMMessageQueriedCallback;)V
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
.end method

.method public abstract queryLocalFileCache(Lim/zego/zim/entity/ZIMFileCacheQueryConfig;Lim/zego/zim/callback/ZIMFileCacheQueriedCallback;)V
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
.end method

.method public abstract queryMessageReactionUserList(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageReactionUserQueryConfig;Lim/zego/zim/callback/ZIMMessageReactionUserListQueriedCallback;)V
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
.end method

.method public abstract queryMessageReceiptsInfo(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMMessageReceiptsInfoQueriedCallback;)V
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
.end method

.method public abstract queryMessageRepliedList(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageRepliedListQueryConfig;Lim/zego/zim/callback/ZIMMessageRepliedListQueriedCallback;)V
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
.end method

.method public abstract queryMessages(Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMMessageQueriedCallback;)V
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
.end method

.method public abstract queryPinnedMessageList(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMPinnedMessageListQueriedCallback;)V
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
.end method

.method public abstract queryRoomAllAttributes(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomAttributesQueriedCallback;)V
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
.end method

.method public abstract queryRoomMemberAttributesList(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomMemberAttributesQueryConfig;Lim/zego/zim/callback/ZIMRoomMemberAttributesListQueriedCallback;)V
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
.end method

.method public abstract queryRoomMemberList(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomMemberQueryConfig;Lim/zego/zim/callback/ZIMRoomMemberQueriedCallback;)V
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
.end method

.method public abstract queryRoomMembers(Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomMembersQueriedCallback;)V
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
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/callback/ZIMRoomMembersQueriedCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract queryRoomMembersAttributes(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomMembersAttributesQueriedCallback;)V
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
.end method

.method public abstract queryRoomOnlineMemberCount(Ljava/lang/String;Lim/zego/zim/callback/ZIMRoomOnlineMemberCountQueriedCallback;)V
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
.end method

.method public abstract querySelfUserInfo(Lim/zego/zim/callback/ZIMSelfUserInfoQueriedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract querySubscribedUserStatusList(Lim/zego/zim/entity/ZIMSubscribedUserStatusQueryConfig;Lim/zego/zim/callback/ZIMSubscribedUserStatusListQueriedCallback;)V
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
.end method

.method public abstract queryUsersInfo(Ljava/util/List;Lim/zego/zim/entity/ZIMUsersInfoQueryConfig;Lim/zego/zim/callback/ZIMUsersInfoQueriedCallback;)V
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
.end method

.method public abstract queryUsersStatus(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMUsersStatusQueriedCallback;)V
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
.end method

.method public abstract rejectFriendApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendApplicationRejectConfig;Lim/zego/zim/callback/ZIMFriendApplicationRejectedCallback;)V
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
.end method

.method public abstract rejectGroupInviteApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupInviteApplicationRejectConfig;Lim/zego/zim/callback/ZIMGroupInviteApplicationRejectedCallback;)V
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
.end method

.method public abstract rejectGroupJoinApplication(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupJoinApplicationRejectConfig;Lim/zego/zim/callback/ZIMGroupJoinApplicationRejectedCallback;)V
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
.end method

.method public abstract removeUsersFromBlacklist(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMBlacklistUsersRemovedCallback;)V
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
.end method

.method public abstract renewToken(Ljava/lang/String;Lim/zego/zim/callback/ZIMTokenRenewedCallback;)V
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
.end method

.method public abstract replyMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentFullCallback;)V
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
.end method

.method public abstract revokeMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMMessageRevokeConfig;Lim/zego/zim/callback/ZIMMessageRevokedCallback;)V
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
.end method

.method public abstract searchGlobalLocalMessages(Lim/zego/zim/entity/ZIMMessageSearchConfig;Lim/zego/zim/callback/ZIMMessagesGlobalSearchedCallback;)V
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
.end method

.method public abstract searchLocalConversations(Lim/zego/zim/entity/ZIMConversationSearchConfig;Lim/zego/zim/callback/ZIMConversationsSearchedCallback;)V
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
.end method

.method public abstract searchLocalFriends(Lim/zego/zim/entity/ZIMFriendSearchConfig;Lim/zego/zim/callback/ZIMFriendsSearchedCallback;)V
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
.end method

.method public abstract searchLocalGroupMembers(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;Lim/zego/zim/callback/ZIMGroupMembersSearchedCallback;)V
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
.end method

.method public abstract searchLocalGroups(Lim/zego/zim/entity/ZIMGroupSearchConfig;Lim/zego/zim/callback/ZIMGroupsSearchedCallback;)V
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
.end method

.method public abstract searchLocalMessages(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSearchConfig;Lim/zego/zim/callback/ZIMMessagesSearchedCallback;)V
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
.end method

.method public abstract sendConversationMessageReceiptRead(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationMessageReceiptReadSentCallback;)V
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
.end method

.method public abstract sendFriendApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMFriendApplicationSendConfig;Lim/zego/zim/callback/ZIMFriendApplicationSentCallback;)V
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
.end method

.method public abstract sendGroupInviteApplications(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupInviteApplicationSendConfig;Lim/zego/zim/callback/ZIMGroupInviteApplicationsSentCallback;)V
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
.end method

.method public abstract sendGroupJoinApplication(Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupJoinApplicationSendConfig;Lim/zego/zim/callback/ZIMGroupJoinApplicationSentCallback;)V
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
.end method

.method public abstract sendGroupMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentCallback;)V
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
.end method

.method public abstract sendMediaMessage(Lim/zego/zim/entity/ZIMMediaMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMediaMessageSentCallback;)V
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
.end method

.method public abstract sendMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentCallback;)V
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
.end method

.method public abstract sendMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentFullCallback;)V
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
.end method

.method public abstract sendMessageReceiptsRead(Ljava/util/List;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMMessageReceiptsReadSentCallback;)V
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
.end method

.method public abstract sendPeerMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentCallback;)V
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
.end method

.method public abstract sendRoomMessage(Lim/zego/zim/entity/ZIMMessage;Ljava/lang/String;Lim/zego/zim/entity/ZIMMessageSendConfig;Lim/zego/zim/callback/ZIMMessageSentCallback;)V
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
.end method

.method public abstract setConversationDraft(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationDraftSetCallback;)V
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
.end method

.method public abstract setConversationMark(Ljava/lang/Integer;ZLjava/util/ArrayList;Lim/zego/zim/callback/ZIMConversationMarkSetCallback;)V
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
            "conversationInfos",
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
.end method

.method public abstract setConversationNotificationStatus(Lim/zego/zim/enums/ZIMConversationNotificationStatus;Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationNotificationStatusSetCallback;)V
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
            "conversationType",
            "callback"
        }
    .end annotation
.end method

.method public abstract setEventHandler(Lim/zego/zim/callback/ZIMEventHandler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation
.end method

.method public abstract setGroupAttributes(Ljava/util/HashMap;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAttributesOperatedCallback;)V
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
.end method

.method public abstract setGroupMemberNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberNicknameUpdatedCallback;)V
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
.end method

.method public abstract setGroupMemberRole(ILjava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupMemberRoleUpdatedCallback;)V
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
.end method

.method public abstract setRoomAttributes(Ljava/util/HashMap;Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomAttributesSetConfig;Lim/zego/zim/callback/ZIMRoomAttributesOperatedCallback;)V
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
.end method

.method public abstract setRoomMembersAttributes(Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomMemberAttributesSetConfig;Lim/zego/zim/callback/ZIMRoomMembersAttributesOperatedCallback;)V
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
.end method

.method public abstract subscribeUsersStatus(Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMUserStatusSubscribeConfig;Lim/zego/zim/callback/ZIMUsersStatusSubscribedCallback;)V
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
.end method

.method public abstract switchRoom(Ljava/lang/String;Lim/zego/zim/entity/ZIMRoomInfo;ZLim/zego/zim/entity/ZIMRoomAdvancedConfig;Lim/zego/zim/callback/ZIMRoomSwitchedCallback;)V
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
.end method

.method public abstract transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupOwnerTransferredCallback;)V
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
.end method

.method public abstract unsubscribeUsersStatus(Ljava/util/ArrayList;Lim/zego/zim/callback/ZIMUsersStatusUnsubscribedCallback;)V
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
.end method

.method public abstract updateConversationPinnedState(ZLjava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/callback/ZIMConversationPinnedStateUpdatedCallback;)V
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
.end method

.method public abstract updateFriendAlias(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMFriendAliasUpdatedCallback;)V
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
.end method

.method public abstract updateFriendAttributes(Ljava/util/HashMap;Ljava/lang/String;Lim/zego/zim/callback/ZIMFriendAttributesUpdatedCallback;)V
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
.end method

.method public abstract updateGroupAlias(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAliasUpdatedCallback;)V
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
.end method

.method public abstract updateGroupAvatarUrl(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupAvatarUrlUpdatedCallback;)V
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
.end method

.method public abstract updateGroupBeInviteMode(Lim/zego/zim/enums/ZIMGroupBeInviteMode;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupBeInviteModeUpdatedCallback;)V
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
.end method

.method public abstract updateGroupInviteMode(Lim/zego/zim/enums/ZIMGroupInviteMode;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupInviteModeUpdatedCallback;)V
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
.end method

.method public abstract updateGroupJoinMode(Lim/zego/zim/enums/ZIMGroupJoinMode;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupJoinModeUpdatedCallback;)V
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
.end method

.method public abstract updateGroupName(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupNameUpdatedCallback;)V
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
.end method

.method public abstract updateGroupNotice(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/callback/ZIMGroupNoticeUpdatedCallback;)V
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
.end method

.method public abstract updateMessageLocalExtendedData(Ljava/lang/String;Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/callback/ZIMMessageLocalExtendedDataUpdatedCallback;)V
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
.end method

.method public abstract updateUserAvatarUrl(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserAvatarUrlUpdatedCallback;)V
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
.end method

.method public abstract updateUserBadge(ILim/zego/zim/callback/ZIMUserBadgeUpdatedCallback;)V
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
.end method

.method public abstract updateUserCustomStatus(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserCustomStatusUpdatedCallback;)V
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
.end method

.method public abstract updateUserExtendedData(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserExtendedDataUpdatedCallback;)V
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
.end method

.method public abstract updateUserName(Ljava/lang/String;Lim/zego/zim/callback/ZIMUserNameUpdatedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userName",
            "callback"
        }
    .end annotation
.end method

.method public abstract updateUserOfflinePushRule(Lim/zego/zim/entity/ZIMUserOfflinePushRule;Lim/zego/zim/callback/ZIMUserOfflinePushRuleUpdatedCallback;)V
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
.end method

.method public abstract uploadLog(Lim/zego/zim/callback/ZIMLogUploadedCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

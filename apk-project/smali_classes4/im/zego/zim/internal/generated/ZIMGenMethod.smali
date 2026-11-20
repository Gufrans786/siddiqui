.class public interface abstract Lim/zego/zim/internal/generated/ZIMGenMethod;
.super Ljava/lang/Object;
.source "ZIMGenMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;
    }
.end annotation


# direct methods
.method public static acceptFriendApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userID",
            "config",
            "sequence"
        }
    .end annotation

    .line 760
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->acceptFriendApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;I)V

    return-void
.end method

.method public static acceptGroupInviteApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationAcceptConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "inviterUserID",
            "groupID",
            "config",
            "sequence"
        }
    .end annotation

    .line 540
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->acceptGroupInviteApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationAcceptConfig;I)V

    return-void
.end method

.method public static acceptGroupJoinApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationAcceptConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "userID",
            "groupID",
            "config",
            "sequence"
        }
    .end annotation

    .line 520
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->acceptGroupJoinApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationAcceptConfig;I)V

    return-void
.end method

.method public static addFriend(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userId",
            "config",
            "sequence"
        }
    .end annotation

    .line 724
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->addFriend(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;I)V

    return-void
.end method

.method public static addMessageReaction(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageReactionAddConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "reactionType",
            "genMessage",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 278
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->addMessageReaction(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageReactionAddConfig;I)V

    return-void
.end method

.method public static addUsersToBlacklist(JLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIds",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 781
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->addUsersToBlacklist(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public static beginRoomAttributesBatchOperation(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomAttributesBatchOperationConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 410
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->beginRoomAttributesBatchOperation(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomAttributesBatchOperationConfig;I)V

    return-void
.end method

.method public static callAccept(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallAcceptConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 692
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->callAccept(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallAcceptConfig;I)V

    return-void
.end method

.method public static callCancel(JLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallCancelConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "invitees",
            "callId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenCallCancelConfig;",
            "I)V"
        }
    .end annotation

    .line 687
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->callCancel(JLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallCancelConfig;I)V

    return-void
.end method

.method public static callEnd(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallEndConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 677
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->callEnd(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallEndConfig;I)V

    return-void
.end method

.method public static callExperimentalAPI(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "params",
            "sequence"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->callExperimentalAPI(JLjava/lang/String;I)V

    return-void
.end method

.method public static callInvite(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "invitees",
            "genConfig",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;",
            "I)V"
        }
    .end annotation

    .line 657
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->callInvite(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;I)V

    return-void
.end method

.method public static callJoin(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallJoinConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 667
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->callJoin(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallJoinConfig;I)V

    return-void
.end method

.method public static callQuit(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallQuitConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 672
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->callQuit(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallQuitConfig;I)V

    return-void
.end method

.method public static callReject(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallRejectConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 697
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->callReject(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallRejectConfig;I)V

    return-void
.end method

.method public static callingInvite(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "invitees",
            "genConfig",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;",
            "I)V"
        }
    .end annotation

    .line 662
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->callingInvite(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;I)V

    return-void
.end method

.method public static cancelSendingMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenSendingMessageCancelConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 326
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->cancelSendingMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenSendingMessageCancelConfig;I)V

    return-void
.end method

.method public static checkFriendsRelation(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenFriendCheckConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIds",
            "config",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenFriendCheckConfig;",
            "I)V"
        }
    .end annotation

    .line 740
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->checkFriendsRelation(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenFriendCheckConfig;I)V

    return-void
.end method

.method public static checkUserIsInBlacklist(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userID",
            "sequence"
        }
    .end annotation

    .line 795
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->checkUserIsInBlacklist(JLjava/lang/String;I)V

    return-void
.end method

.method public static clearConversationTotalUnreadMessageCount(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "sequence"
        }
    .end annotation

    .line 137
    invoke-static {p0, p1, p2}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->clearConversationTotalUnreadMessageCount(JI)V

    return-void
.end method

.method public static clearConversationUnreadMessageCount(JLjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "type",
            "sequence"
        }
    .end annotation

    .line 133
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->clearConversationUnreadMessageCount(JLjava/lang/String;II)V

    return-void
.end method

.method public static clearLocalFileCache(JLim/zego/zim/internal/generated/ZIMGenFileCacheClearConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 713
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->clearLocalFileCache(JLim/zego/zim/internal/generated/ZIMGenFileCacheClearConfig;I)V

    return-void
.end method

.method public static createGroup(JLim/zego/zim/internal/generated/ZIMGenGroupInfo;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupInfo",
            "userIdList",
            "genConfig",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lim/zego/zim/internal/generated/ZIMGenGroupInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;",
            "I)V"
        }
    .end annotation

    .line 448
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->createGroup(JLim/zego/zim/internal/generated/ZIMGenGroupInfo;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;I)V

    return-void
.end method

.method public static createRoom(JLim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;Lim/zego/zim/internal/generated/ZIMGenRoomInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "roomInfo",
            "sequence"
        }
    .end annotation

    .line 358
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->createRoom(JLim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;Lim/zego/zim/internal/generated/ZIMGenRoomInfo;I)V

    return-void
.end method

.method public static deleteAllConversationMessages(JLim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 267
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteAllConversationMessages(JLim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;I)V

    return-void
.end method

.method public static deleteAllConversations(JLim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 128
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteAllConversations(JLim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;I)V

    return-void
.end method

.method public static deleteAllMessage(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "type",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 262
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteAllMessage(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;I)V

    return-void
.end method

.method public static deleteConversation(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "type",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 123
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteConversation(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;I)V

    return-void
.end method

.method public static deleteFriends(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenFriendDeleteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIds",
            "config",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenFriendDeleteConfig;",
            "I)V"
        }
    .end annotation

    .line 735
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteFriends(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenFriendDeleteConfig;I)V

    return-void
.end method

.method public static deleteGroupAttributes(JLjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupAttributes",
            "groupId",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 584
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteGroupAttributes(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public static deleteMessageAllReactions(JLim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "sequence"
        }
    .end annotation

    .line 288
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteMessageAllReactions(JLim/zego/zim/internal/generated/ZIMGenMessage;I)V

    return-void
.end method

.method public static deleteMessageReaction(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "reactionType",
            "genMessage",
            "sequence"
        }
    .end annotation

    .line 283
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteMessageReaction(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V

    return-void
.end method

.method public static deleteMessages(JLjava/util/ArrayList;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "conversationID",
            "type",
            "genConfig",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;",
            "I)V"
        }
    .end annotation

    .line 257
    invoke-static/range {p0 .. p6}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteMessages(JLjava/util/ArrayList;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageDeleteConfig;I)V

    return-void
.end method

.method public static deleteRoomAttributes(JLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "keys",
            "roomId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;",
            "I)V"
        }
    .end annotation

    .line 403
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->deleteRoomAttributes(JLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;I)V

    return-void
.end method

.method public static destroy(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->destroy(J)V

    return-void
.end method

.method public static dismissGroup(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 452
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->dismissGroup(JLjava/lang/String;I)V

    return-void
.end method

.method public static downloadMediaFile(JLim/zego/zim/internal/generated/ZIMGenMessage;ILim/zego/zim/internal/generated/ZIMGenMediaDownloadConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMediaMessage",
            "fileType",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 219
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->downloadMediaFile(JLim/zego/zim/internal/generated/ZIMGenMessage;ILim/zego/zim/internal/generated/ZIMGenMediaDownloadConfig;I)V

    return-void
.end method

.method public static editMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageEditConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 320
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->editMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageEditConfig;I)V

    return-void
.end method

.method public static endRoomAttributesBatchOperation(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "sequence"
        }
    .end annotation

    .line 414
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->endRoomAttributesBatchOperation(JLjava/lang/String;I)V

    return-void
.end method

.method public static enterRoom(JLim/zego/zim/internal/generated/ZIMGenRoomInfo;Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomInfo",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 363
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->enterRoom(JLim/zego/zim/internal/generated/ZIMGenRoomInfo;Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;I)V

    return-void
.end method

.method public static exportLocalMessages(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageExportConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "folderPath",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 708
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->exportLocalMessages(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageExportConfig;I)V

    return-void
.end method

.method public static getInstance()J
    .locals 2

    .line 25
    invoke-static {}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->getInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static importLocalMessages(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageImportConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "folderPath",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 703
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->importLocalMessages(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageImportConfig;I)V

    return-void
.end method

.method public static insertMessageToLocalDB(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "conversationID",
            "conversationType",
            "senderUserId",
            "sequence"
        }
    .end annotation

    .line 240
    invoke-static/range {p0 .. p6}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->insertMessageToLocalDB(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static inviteUsersIntoGroup(JLjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIds",
            "groupId",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 465
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->inviteUsersIntoGroup(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public static joinGroup(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 456
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->joinGroup(JLjava/lang/String;I)V

    return-void
.end method

.method public static joinRoom(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "sequence"
        }
    .end annotation

    .line 367
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->joinRoom(JLjava/lang/String;I)V

    return-void
.end method

.method public static kickGroupMembers(JLjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIds",
            "groupId",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 470
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->kickGroupMembers(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public static leaveAllRoom(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "sequence"
        }
    .end annotation

    .line 382
    invoke-static {p0, p1, p2}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->leaveAllRoom(JI)V

    return-void
.end method

.method public static leaveGroup(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 460
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->leaveGroup(JLjava/lang/String;I)V

    return-void
.end method

.method public static leaveRoom(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "sequence"
        }
    .end annotation

    .line 378
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->leaveRoom(JLjava/lang/String;I)V

    return-void
.end method

.method public static login(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenLoginConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userID",
            "config",
            "sequence"
        }
    .end annotation

    .line 15
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->login(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenLoginConfig;I)V

    return-void
.end method

.method public static logout(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->logout(J)V

    return-void
.end method

.method public static muteGroup(JZLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "isMute",
            "groupID",
            "config",
            "sequence"
        }
    .end annotation

    .line 558
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->muteGroup(JZLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;I)V

    return-void
.end method

.method public static muteGroupMemberList(JZLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberMuteConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "isMute",
            "userIDs",
            "groupID",
            "config",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberMuteConfig;",
            "I)V"
        }
    .end annotation

    .line 564
    invoke-static/range {p0 .. p6}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->muteGroupMemberList(JZLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberMuteConfig;I)V

    return-void
.end method

.method public static pinMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;ZLim/zego/zim/internal/generated/ZIMGenPinMessageConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "isPinned",
            "config",
            "sequence"
        }
    .end annotation

    .line 331
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->pinMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;ZLim/zego/zim/internal/generated/ZIMGenPinMessageConfig;I)V

    return-void
.end method

.method public static queryBlacklist(JLim/zego/zim/internal/generated/ZIMGenBlacklistQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "config",
            "sequence"
        }
    .end annotation

    .line 791
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryBlacklist(JLim/zego/zim/internal/generated/ZIMGenBlacklistQueryConfig;I)V

    return-void
.end method

.method public static queryCallList(JLim/zego/zim/internal/generated/ZIMGenQueryCallListConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 682
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryCallList(JLim/zego/zim/internal/generated/ZIMGenQueryCallListConfig;I)V

    return-void
.end method

.method public static queryCombineMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "sequence"
        }
    .end annotation

    .line 298
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryCombineMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;I)V

    return-void
.end method

.method public static queryConversation(JLjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "sequence"
        }
    .end annotation

    .line 166
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryConversation(JLjava/lang/String;II)V

    return-void
.end method

.method public static queryConversationList(JLim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryConversationList(JLim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;I)V

    return-void
.end method

.method public static queryConversationListWithConfig(JLim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "genOption",
            "sequence"
        }
    .end annotation

    .line 184
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryConversationListWithConfig(JLim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;I)V

    return-void
.end method

.method public static queryConversationPinnedList(JLim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 155
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryConversationPinnedList(JLim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;I)V

    return-void
.end method

.method public static queryConversationTotalUnreadCount(JLim/zego/zim/internal/generated/ZIMGenConversationTotalUnreadCountQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 189
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryConversationTotalUnreadCount(JLim/zego/zim/internal/generated/ZIMGenConversationTotalUnreadCountQueryConfig;I)V

    return-void
.end method

.method public static queryFriendApplicationList(JLim/zego/zim/internal/generated/ZIMGenFriendApplicationListQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "config",
            "sequence"
        }
    .end annotation

    .line 777
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryFriendApplicationList(JLim/zego/zim/internal/generated/ZIMGenFriendApplicationListQueryConfig;I)V

    return-void
.end method

.method public static queryFriendList(JLim/zego/zim/internal/generated/ZIMGenFriendListQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "config",
            "sequence"
        }
    .end annotation

    .line 771
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryFriendList(JLim/zego/zim/internal/generated/ZIMGenFriendListQueryConfig;I)V

    return-void
.end method

.method public static queryFriendsInfo(JLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIds",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 754
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryFriendsInfo(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public static queryGroupAllAttributes(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 593
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupAllAttributes(JLjava/lang/String;I)V

    return-void
.end method

.method public static queryGroupApplicationList(JLim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "config",
            "sequence"
        }
    .end annotation

    .line 553
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupApplicationList(JLim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;I)V

    return-void
.end method

.method public static queryGroupAttributes(JLjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupAttributes",
            "groupId",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 589
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupAttributes(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public static queryGroupInfo(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 574
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupInfo(JLjava/lang/String;I)V

    return-void
.end method

.method public static queryGroupList(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "sequence"
        }
    .end annotation

    .line 612
    invoke-static {p0, p1, p2}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupList(JI)V

    return-void
.end method

.method public static queryGroupListByCount(JILim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "count",
            "config",
            "sequence"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupListByCount(JILim/zego/zim/internal/generated/ZIMGenGroupListQueryConfig;I)V

    return-void
.end method

.method public static queryGroupMemberCount(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 626
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupMemberCount(JLjava/lang/String;I)V

    return-void
.end method

.method public static queryGroupMemberInfo(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userId",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 608
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupMemberInfo(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static queryGroupMemberList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 622
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupMemberList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;I)V

    return-void
.end method

.method public static queryGroupMemberMutedList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberMutedListQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "config",
            "sequence"
        }
    .end annotation

    .line 570
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupMemberMutedList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberMutedListQueryConfig;I)V

    return-void
.end method

.method public static queryGroupMessageReceiptReadMemberList(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMessageReceiptMemberQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "groupId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 633
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupMessageReceiptReadMemberList(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMessageReceiptMemberQueryConfig;I)V

    return-void
.end method

.method public static queryGroupMessageReceiptUnReadMemberList(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMessageReceiptMemberQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "groupId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 641
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryGroupMessageReceiptUnReadMemberList(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMessageReceiptMemberQueryConfig;I)V

    return-void
.end method

.method public static queryHistoryMessage(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 246
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryHistoryMessage(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;I)V

    return-void
.end method

.method public static queryLocalFileCache(JLim/zego/zim/internal/generated/ZIMGenFileCacheQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 718
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryLocalFileCache(JLim/zego/zim/internal/generated/ZIMGenFileCacheQueryConfig;I)V

    return-void
.end method

.method public static queryMessageReactionUserList(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "config",
            "sequence"
        }
    .end annotation

    .line 294
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryMessageReactionUserList(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserQueryConfig;I)V

    return-void
.end method

.method public static queryMessageReceiptsInfo(JLjava/util/ArrayList;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessageList",
            "conversationID",
            "conversationType",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 233
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryMessageReceiptsInfo(JLjava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method public static queryMessages(JLjava/util/ArrayList;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageSeq",
            "conversationID",
            "conversationType",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 315
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryMessages(JLjava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method public static queryPinnedMessageList(JLjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "sequence"
        }
    .end annotation

    .line 336
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryPinnedMessageList(JLjava/lang/String;II)V

    return-void
.end method

.method public static queryRepliedMessageList(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenRepliedListQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 310
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryRepliedMessageList(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenRepliedListQueryConfig;I)V

    return-void
.end method

.method public static queryRoomAllAttributes(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "sequence"
        }
    .end annotation

    .line 418
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryRoomAllAttributes(JLjava/lang/String;I)V

    return-void
.end method

.method public static queryRoomMemberAttributesList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomid",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 436
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryRoomMemberAttributesList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesQueryConfig;I)V

    return-void
.end method

.method public static queryRoomMemberList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomMemberQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 387
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryRoomMemberList(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomMemberQueryConfig;I)V

    return-void
.end method

.method public static queryRoomMembers(JLjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIDs",
            "roomID",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 441
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryRoomMembers(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public static queryRoomMembersAttributes(JLjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIds",
            "roomId",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 430
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryRoomMembersAttributes(JLjava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public static queryRoomOnlineMemberCount(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "sequence"
        }
    .end annotation

    .line 391
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryRoomOnlineMemberCount(JLjava/lang/String;I)V

    return-void
.end method

.method public static querySelfUserInfo(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "sequence"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1, p2}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->querySelfUserInfo(JI)V

    return-void
.end method

.method public static querySubscribedUserStatusList(JLim/zego/zim/internal/generated/ZIMGenSubscribedUserStatusQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "config",
            "sequence"
        }
    .end annotation

    .line 108
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->querySubscribedUserStatusList(JLim/zego/zim/internal/generated/ZIMGenSubscribedUserStatusQueryConfig;I)V

    return-void
.end method

.method public static queryUsersInfo(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenUsersInfoQueryConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIdList",
            "genUserInfoQueryConfig",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenUsersInfoQueryConfig;",
            "I)V"
        }
    .end annotation

    .line 89
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryUsersInfo(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenUsersInfoQueryConfig;I)V

    return-void
.end method

.method public static queryUsersStatus(JLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIDs",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 93
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->queryUsersStatus(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public static rejectFriendApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendApplicationRejectConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userID",
            "config",
            "sequence"
        }
    .end annotation

    .line 766
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->rejectFriendApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendApplicationRejectConfig;I)V

    return-void
.end method

.method public static rejectGroupInviteApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationRejectConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "inviterUserID",
            "groupID",
            "config",
            "sequence"
        }
    .end annotation

    .line 547
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->rejectGroupInviteApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationRejectConfig;I)V

    return-void
.end method

.method public static rejectGroupJoinApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "userID",
            "groupID",
            "config",
            "sequence"
        }
    .end annotation

    .line 526
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->rejectGroupJoinApplication(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;I)V

    return-void
.end method

.method public static removeUsersFromBlacklist(JLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIds",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 786
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->removeUsersFromBlacklist(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public static renewToken(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "token",
            "sequence"
        }
    .end annotation

    .line 52
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->renewToken(JLjava/lang/String;I)V

    return-void
.end method

.method public static replyMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "genRepliedMessage",
            "sendConfig",
            "sequence"
        }
    .end annotation

    .line 304
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->replyMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public static revokeMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 251
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->revokeMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;I)V

    return-void
.end method

.method public static searchGlobalLocalMessages(JLim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "config",
            "sequence"
        }
    .end annotation

    .line 352
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->searchGlobalLocalMessages(JLim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;I)V

    return-void
.end method

.method public static searchGroupMembers(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 651
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->searchGroupMembers(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;I)V

    return-void
.end method

.method public static searchGroups(JLim/zego/zim/internal/generated/ZIMGenGroupSearchConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 646
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->searchGroups(JLim/zego/zim/internal/generated/ZIMGenGroupSearchConfig;I)V

    return-void
.end method

.method public static searchLocalConversations(JLim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "config",
            "sequence"
        }
    .end annotation

    .line 347
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->searchLocalConversations(JLim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;I)V

    return-void
.end method

.method public static searchLocalFriends(JLim/zego/zim/internal/generated/ZIMGenFriendSearchConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "config",
            "sequence"
        }
    .end annotation

    .line 800
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->searchLocalFriends(JLim/zego/zim/internal/generated/ZIMGenFriendSearchConfig;I)V

    return-void
.end method

.method public static searchLocalMessages(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "config",
            "sequence"
        }
    .end annotation

    .line 342
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->searchLocalMessages(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;I)V

    return-void
.end method

.method public static sendConversationMessageReceiptRead(JLjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "sequence"
        }
    .end annotation

    .line 148
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendConversationMessageReceiptRead(JLjava/lang/String;II)V

    return-void
.end method

.method public static sendFriendApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userId",
            "config",
            "sequence"
        }
    .end annotation

    .line 730
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendFriendApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;I)V

    return-void
.end method

.method public static sendGroupInviteApplications(JLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationSendConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "userIDs",
            "groupID",
            "config",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationSendConfig;",
            "I)V"
        }
    .end annotation

    .line 533
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendGroupInviteApplications(JLjava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupInviteApplicationSendConfig;I)V

    return-void
.end method

.method public static sendGroupJoinApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationSendConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "groupID",
            "config",
            "sequence"
        }
    .end annotation

    .line 514
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendGroupJoinApplication(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationSendConfig;I)V

    return-void
.end method

.method public static sendGroupMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "toGroupId",
            "sendConfig",
            "sequence"
        }
    .end annotation

    .line 200
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendGroupMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public static sendMediaMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMediaMessage",
            "toConversationId",
            "conversationType",
            "sendConfig",
            "sequence"
        }
    .end annotation

    .line 213
    invoke-static/range {p0 .. p6}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendMediaMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public static sendMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "toConversationId",
            "conversationType",
            "sendConfig",
            "sequence"
        }
    .end annotation

    .line 206
    invoke-static/range {p0 .. p6}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public static sendMessageReceiptsRead(JLjava/util/ArrayList;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessageList",
            "conversationID",
            "conversationType",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 225
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendMessageReceiptsRead(JLjava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method public static sendPeerMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "toUserId",
            "sendConfig",
            "sequence"
        }
    .end annotation

    .line 20
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendPeerMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
.end method

.method public static sendRoomMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "toRoomId",
            "sendConfig",
            "sequence"
        }
    .end annotation

    .line 195
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->sendRoomMessage(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;I)V

    return-void
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

    .line 36
    invoke-static {p0, p1}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setAdvancedConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCacheConfig(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cachePath"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setCacheConfig(Ljava/lang/String;)V

    return-void
.end method

.method public static setCallbacks(Lim/zego/zim/internal/generated/ZIMGenCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setCallbacks(Lim/zego/zim/internal/generated/ZIMGenCallbacks;)V

    return-void
.end method

.method public static setConversationDraft(JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "draft",
            "conversationID",
            "conversationType",
            "sequence"
        }
    .end annotation

    .line 171
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setConversationDraft(JLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static setConversationMark(JIZLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "markType",
            "enable",
            "infos",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;",
            ">;I)V"
        }
    .end annotation

    .line 177
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setConversationMark(JIZLjava/util/ArrayList;I)V

    return-void
.end method

.method public static setConversationNotificationStatus(JILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "status",
            "conversationId",
            "type",
            "sequence"
        }
    .end annotation

    .line 143
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setConversationNotificationStatus(JILjava/lang/String;II)V

    return-void
.end method

.method public static setGeofencingConfig(ILjava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "areaList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 32
    invoke-static {p0, p1}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setGeofencingConfig(ILjava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static setGroupAttributes(JLjava/util/HashMap;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupAttributes",
            "groupId",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 579
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setGroupAttributes(JLjava/util/HashMap;Ljava/lang/String;I)V

    return-void
.end method

.method public static setGroupMemberNickname(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "nickName",
            "forUserId",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 603
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setGroupMemberNickname(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setGroupMemberRole(JILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "role",
            "forUserId",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 598
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setGroupMemberRole(JILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setLogConfig(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "logPath",
            "logSize"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1, p2}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setLogConfig(Ljava/lang/String;J)V

    return-void
.end method

.method public static setPushID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pushId"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setPushID(Ljava/lang/String;)V

    return-void
.end method

.method public static setRoomAttributes(JLjava/util/HashMap;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomAttributes",
            "roomId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;",
            "I)V"
        }
    .end annotation

    .line 397
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setRoomAttributes(JLjava/util/HashMap;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;I)V

    return-void
.end method

.method public static setRoomMembersAttributes(JLjava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "attributes",
            "userId",
            "roomId",
            "genConfig",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;",
            "I)V"
        }
    .end annotation

    .line 425
    invoke-static/range {p0 .. p6}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->setRoomMembersAttributes(JLjava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;I)V

    return-void
.end method

.method public static subscribeUsersStatus(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIDs",
            "config",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;",
            "I)V"
        }
    .end annotation

    .line 98
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->subscribeUsersStatus(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscribeConfig;I)V

    return-void
.end method

.method public static switchRoom(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomInfo;ZLim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "fromRoomId",
            "toRoomInfo",
            "isCreateWhenRoomNotExisted",
            "genConfig",
            "sequence"
        }
    .end annotation

    .line 373
    invoke-static/range {p0 .. p6}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->switchRoom(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenRoomInfo;ZLim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;I)V

    return-void
.end method

.method public static transferGroupOwner(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "toUserId",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 475
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->transferGroupOwner(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static unsubscribeUserStatus(JLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userIDs",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->unsubscribeUserStatus(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public static updateConversationPinnedState(JZLjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "isPinned",
            "conversationID",
            "type",
            "sequence"
        }
    .end annotation

    .line 161
    invoke-static/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateConversationPinnedState(JZLjava/lang/String;II)V

    return-void
.end method

.method public static updateFriendAlias(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendAlias",
            "userID",
            "sequence"
        }
    .end annotation

    .line 745
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateFriendAlias(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateFriendAttributes(JLjava/util/HashMap;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "attributes",
            "userID",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 750
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateFriendAttributes(JLjava/util/HashMap;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateGroupAlias(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupAlias",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 490
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateGroupAlias(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateGroupAvatarUrl(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupAvatarUrl",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 485
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateGroupAvatarUrl(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateGroupBeInviteMode(JILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "mode",
            "groupID",
            "sequence"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateGroupBeInviteMode(JILjava/lang/String;I)V

    return-void
.end method

.method public static updateGroupInviteMode(JILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "mode",
            "groupID",
            "sequence"
        }
    .end annotation

    .line 503
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateGroupInviteMode(JILjava/lang/String;I)V

    return-void
.end method

.method public static updateGroupJoinMode(JILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "mode",
            "groupID",
            "sequence"
        }
    .end annotation

    .line 499
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateGroupJoinMode(JILjava/lang/String;I)V

    return-void
.end method

.method public static updateGroupName(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupName",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 480
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateGroupName(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateGroupNotice(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupNotice",
            "groupId",
            "sequence"
        }
    .end annotation

    .line 495
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateGroupNotice(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateMessageLocalExtendedData(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "localExtendedData",
            "genMessage",
            "sequence"
        }
    .end annotation

    .line 272
    invoke-static {p0, p1, p2, p3, p4}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateMessageLocalExtendedData(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V

    return-void
.end method

.method public static updateUserAvatarUrl(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userAvatarUrl",
            "sequence"
        }
    .end annotation

    .line 65
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateUserAvatarUrl(JLjava/lang/String;I)V

    return-void
.end method

.method public static updateUserBadge(JII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "badge",
            "sequence"
        }
    .end annotation

    .line 79
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateUserBadge(JII)V

    return-void
.end method

.method public static updateUserCustomStatus(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "customStatus",
            "sequence"
        }
    .end annotation

    .line 112
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateUserCustomStatus(JLjava/lang/String;I)V

    return-void
.end method

.method public static updateUserExtendedData(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "extendedData",
            "sequence"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateUserExtendedData(JLjava/lang/String;I)V

    return-void
.end method

.method public static updateUserName(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "name",
            "sequence"
        }
    .end annotation

    .line 61
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateUserName(JLjava/lang/String;I)V

    return-void
.end method

.method public static updateUserOfflinePushRule(JLim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "offlinePushRule",
            "sequence"
        }
    .end annotation

    .line 75
    invoke-static {p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->updateUserOfflinePushRule(JLim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;I)V

    return-void
.end method

.method public static uploadLog(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "sequence"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lim/zego/zim/internal/generated/ZIMGenMethod$CppProxy;->uploadLog(JI)V

    return-void
.end method

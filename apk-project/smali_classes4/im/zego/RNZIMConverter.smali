.class public Lim/zego/RNZIMConverter;
.super Ljava/lang/Object;
.source "RNZIMConverter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallUserList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMCallUserInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2073
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2074
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMCallUserInfo;

    .line 2075
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 2076
    const-string/jumbo v3, "userID"

    iget-object v4, v1, Lim/zego/zim/entity/ZIMCallUserInfo;->userID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v3, v1, Lim/zego/zim/entity/ZIMCallUserInfo;->state:Lim/zego/zim/enums/ZIMCallUserState;

    invoke-virtual {v3}, Lim/zego/zim/enums/ZIMCallUserState;->value()I

    move-result v3

    const-string/jumbo v4, "state"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 2078
    const-string v3, "extendedData"

    iget-object v1, v1, Lim/zego/zim/entity/ZIMCallUserInfo;->extendedData:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertConversation(Lim/zego/zim/entity/ZIMConversation;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_0
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversation;->type:Lim/zego/zim/enums/ZIMConversationType;

    invoke-virtual {v0}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v0

    .line 186
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 187
    const-string v2, "conversationID"

    iget-object v3, p0, Lim/zego/zim/entity/ZIMConversation;->conversationID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "conversationName"

    iget-object v3, p0, Lim/zego/zim/entity/ZIMConversation;->conversationName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "conversationAlias"

    iget-object v3, p0, Lim/zego/zim/entity/ZIMConversation;->conversationAlias:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "conversationAvatarUrl"

    iget-object v3, p0, Lim/zego/zim/entity/ZIMConversation;->conversationAvatarUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string/jumbo v3, "unreadMessageCount"

    iget v4, p0, Lim/zego/zim/entity/ZIMConversation;->unreadMessageCount:I

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 193
    iget-wide v3, p0, Lim/zego/zim/entity/ZIMConversation;->orderKey:J

    long-to-double v3, v3

    const-string v5, "orderKey"

    invoke-interface {v1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 194
    iget-object v3, p0, Lim/zego/zim/entity/ZIMConversation;->notificationStatus:Lim/zego/zim/enums/ZIMConversationNotificationStatus;

    invoke-virtual {v3}, Lim/zego/zim/enums/ZIMConversationNotificationStatus;->value()I

    move-result v3

    const-string v4, "notificationStatus"

    invoke-interface {v1, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v3, "isPinned"

    iget-boolean v4, p0, Lim/zego/zim/entity/ZIMConversation;->isPinned:Z

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    iget-wide v3, p0, Lim/zego/zim/entity/ZIMConversation;->pinnedTime:J

    long-to-double v3, v3

    const-string v5, "pinnedTime"

    invoke-interface {v1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 197
    const-string v3, "draft"

    iget-object v4, p0, Lim/zego/zim/entity/ZIMConversation;->draft:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v3, p0, Lim/zego/zim/entity/ZIMConversation;->lastMessage:Lim/zego/zim/entity/ZIMMessage;

    const-string v4, "lastMessage"

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lim/zego/zim/entity/ZIMConversation;->lastMessage:Lim/zego/zim/entity/ZIMMessage;

    invoke-static {v3}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 203
    :goto_0
    iget-object v3, p0, Lim/zego/zim/entity/ZIMConversation;->mentionedInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 204
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lim/zego/zim/entity/ZIMConversation;->mentionedInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/zego/zim/entity/ZIMMessageMentionedInfo;

    .line 206
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 207
    iget-object v7, v5, Lim/zego/zim/entity/ZIMMessageMentionedInfo;->type:Lim/zego/zim/enums/ZIMMessageMentionedType;

    invoke-virtual {v7}, Lim/zego/zim/enums/ZIMMessageMentionedType;->value()I

    move-result v7

    invoke-interface {v6, v2, v7}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v7, "fromUserID"

    iget-object v8, v5, Lim/zego/zim/entity/ZIMMessageMentionedInfo;->fromUserID:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-wide v7, v5, Lim/zego/zim/entity/ZIMMessageMentionedInfo;->messageID:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "messageID"

    invoke-interface {v6, v8, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-wide v7, v5, Lim/zego/zim/entity/ZIMMessageMentionedInfo;->messageSeq:J

    long-to-double v7, v7

    const-string v5, "messageSeq"

    invoke-interface {v6, v5, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 211
    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 213
    :cond_2
    const-string v2, "mentionedInfoList"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 215
    :cond_3
    iget-object v2, p0, Lim/zego/zim/entity/ZIMConversation;->marks:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 216
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 217
    iget-object v3, p0, Lim/zego/zim/entity/ZIMConversation;->marks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 218
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_2

    .line 220
    :cond_4
    const-string v3, "marks"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 223
    instance-of v0, p0, Lim/zego/zim/entity/ZIMGroupConversation;

    if-eqz v0, :cond_6

    .line 224
    check-cast p0, Lim/zego/zim/entity/ZIMGroupConversation;

    iget-boolean v0, p0, Lim/zego/zim/entity/ZIMGroupConversation;->isDisabled:Z

    const-string v2, "isDisabled"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    iget-wide v2, p0, Lim/zego/zim/entity/ZIMGroupConversation;->mutedExpiredTime:J

    long-to-double v2, v2

    const-string p0, "mutedExpiredTime"

    invoke-interface {v1, p0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    :cond_6
    return-object v1
.end method

.method public static convertConversationChangeInfo(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMConversationChangeInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2091
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2092
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMConversationChangeInfo;

    .line 2093
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 2094
    iget-object v3, v1, Lim/zego/zim/entity/ZIMConversationChangeInfo;->event:Lim/zego/zim/enums/ZIMConversationEvent;

    invoke-virtual {v3}, Lim/zego/zim/enums/ZIMConversationEvent;->value()I

    move-result v3

    const-string v4, "event"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 2095
    iget-object v1, v1, Lim/zego/zim/entity/ZIMConversationChangeInfo;->conversation:Lim/zego/zim/entity/ZIMConversation;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertConversation(Lim/zego/zim/entity/ZIMConversation;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v3, "conversation"

    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 2097
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertConversationFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMConversation;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 236
    :cond_0
    new-instance v1, Lim/zego/zim/entity/ZIMConversation;

    invoke-direct {v1}, Lim/zego/zim/entity/ZIMConversation;-><init>()V

    .line 237
    const-string v2, "conversationID"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    iput-object v2, v1, Lim/zego/zim/entity/ZIMConversation;->conversationID:Ljava/lang/String;

    .line 238
    const-string v2, "conversationName"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    iput-object v2, v1, Lim/zego/zim/entity/ZIMConversation;->conversationName:Ljava/lang/String;

    .line 239
    const-string v2, "conversationAlias"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    iput-object v2, v1, Lim/zego/zim/entity/ZIMConversation;->conversationAlias:Ljava/lang/String;

    .line 241
    const-string v2, "conversationAvatarUrl"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v4

    :goto_3
    iput-object v2, v1, Lim/zego/zim/entity/ZIMConversation;->conversationAvatarUrl:Ljava/lang/String;

    .line 242
    const-string/jumbo v2, "unreadMessageCount"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v5

    :goto_4
    iput v2, v1, Lim/zego/zim/entity/ZIMConversation;->unreadMessageCount:I

    .line 243
    const-string v2, "orderKey"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_6

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    goto :goto_5

    :cond_6
    move-wide v2, v6

    .line 244
    :goto_5
    iput-wide v2, v1, Lim/zego/zim/entity/ZIMConversation;->orderKey:J

    .line 245
    const-string/jumbo v2, "type"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object v2

    iput-object v2, v1, Lim/zego/zim/entity/ZIMConversation;->type:Lim/zego/zim/enums/ZIMConversationType;

    .line 246
    const-string v2, "notificationStatus"

    .line 247
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lim/zego/zim/enums/ZIMConversationNotificationStatus;->getZIMConversationNotificationStatus(I)Lim/zego/zim/enums/ZIMConversationNotificationStatus;

    move-result-object v2

    iput-object v2, v1, Lim/zego/zim/entity/ZIMConversation;->notificationStatus:Lim/zego/zim/enums/ZIMConversationNotificationStatus;

    .line 248
    const-string v2, "isPinned"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_7
    iput-boolean v5, v1, Lim/zego/zim/entity/ZIMConversation;->isPinned:Z

    .line 249
    const-string v2, "pinnedTime"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    .line 250
    :cond_8
    iput-wide v6, v1, Lim/zego/zim/entity/ZIMConversation;->pinnedTime:J

    .line 251
    const-string v2, "draft"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_9
    iput-object v4, v1, Lim/zego/zim/entity/ZIMConversation;->draft:Ljava/lang/String;

    .line 252
    iput-object v0, v1, Lim/zego/zim/entity/ZIMConversation;->lastMessage:Lim/zego/zim/entity/ZIMMessage;

    return-object v1
.end method

.method public static convertErrorUserInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMErrorUserInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMErrorUserInfo;

    .line 156
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 157
    const-string/jumbo v3, "userID"

    iget-object v4, v1, Lim/zego/zim/entity/ZIMErrorUserInfo;->userID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v3, "reason"

    iget v1, v1, Lim/zego/zim/entity/ZIMErrorUserInfo;->reason:I

    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 159
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertFriendApplication(Lim/zego/zim/entity/ZIMFriendApplicationInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2257
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2258
    iget-object v1, p0, Lim/zego/zim/entity/ZIMFriendApplicationInfo;->type:Lim/zego/zim/enums/ZIMFriendApplicationType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMFriendApplicationType;->value()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 2259
    iget-object v1, p0, Lim/zego/zim/entity/ZIMFriendApplicationInfo;->state:Lim/zego/zim/enums/ZIMFriendApplicationState;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMFriendApplicationState;->value()I

    move-result v1

    const-string/jumbo v2, "state"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 2260
    const-string/jumbo v1, "wording"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMFriendApplicationInfo;->wording:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMFriendApplicationInfo;->createTime:J

    long-to-double v1, v1

    const-string v3, "createTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 2262
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMFriendApplicationInfo;->updateTime:J

    long-to-double v1, v1

    const-string/jumbo v3, "updateTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 2263
    iget-object p0, p0, Lim/zego/zim/entity/ZIMFriendApplicationInfo;->applyUser:Lim/zego/zim/entity/ZIMUserInfo;

    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertUserInfo(Lim/zego/zim/entity/ZIMUserInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    const-string v1, "applyUser"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertFriendApplicationList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMFriendApplicationInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2291
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2292
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMFriendApplicationInfo;

    .line 2293
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertFriendApplication(Lim/zego/zim/entity/ZIMFriendApplicationInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertFriendInfo(Lim/zego/zim/entity/ZIMFriendInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2220
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2221
    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMFriendInfo;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMFriendInfo;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    const-string/jumbo v1, "userAvatarUrl"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMFriendInfo;->userAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    const-string/jumbo v1, "wording"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMFriendInfo;->wording:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    const-string v1, "friendAlias"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMFriendInfo;->friendAlias:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMFriendInfo;->createTime:J

    long-to-double v1, v1

    const-string v3, "createTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 2228
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 2229
    iget-object v2, p0, Lim/zego/zim/entity/ZIMFriendInfo;->friendAttributes:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 2230
    iget-object v2, p0, Lim/zego/zim/entity/ZIMFriendInfo;->friendAttributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2231
    iget-object v4, p0, Lim/zego/zim/entity/ZIMFriendInfo;->friendAttributes:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2234
    :cond_1
    const-string p0, "friendAttributes"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertFriendInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMFriendInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2244
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2245
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMFriendInfo;

    .line 2246
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertFriendInfo(Lim/zego/zim/entity/ZIMFriendInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertFullRoomInfo(Lim/zego/zim/entity/ZIMRoomFullInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1848
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1849
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 1850
    iget-object v2, p0, Lim/zego/zim/entity/ZIMRoomFullInfo;->baseInfo:Lim/zego/zim/entity/ZIMRoomInfo;

    iget-object v2, v2, Lim/zego/zim/entity/ZIMRoomInfo;->roomID:Ljava/lang/String;

    const-string v3, "roomID"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    iget-object p0, p0, Lim/zego/zim/entity/ZIMRoomFullInfo;->baseInfo:Lim/zego/zim/entity/ZIMRoomInfo;

    iget-object p0, p0, Lim/zego/zim/entity/ZIMRoomInfo;->roomName:Ljava/lang/String;

    const-string v2, "roomName"

    invoke-interface {v1, v2, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string p0, "baseInfo"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertGroupApplication(Lim/zego/zim/entity/ZIMGroupApplicationInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2273
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2274
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupApplicationInfo;->type:Lim/zego/zim/enums/ZIMGroupApplicationType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMGroupApplicationType;->value()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 2275
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupApplicationInfo;->state:Lim/zego/zim/enums/ZIMGroupApplicationState;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMGroupApplicationState;->value()I

    move-result v1

    const-string/jumbo v2, "state"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 2276
    const-string/jumbo v1, "wording"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupApplicationInfo;->wording:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMGroupApplicationInfo;->createTime:J

    long-to-double v1, v1

    const-string v3, "createTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 2278
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMGroupApplicationInfo;->updateTime:J

    long-to-double v1, v1

    const-string/jumbo v3, "updateTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 2279
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupApplicationInfo;->applyUser:Lim/zego/zim/entity/ZIMUserInfo;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertUserInfo(Lim/zego/zim/entity/ZIMUserInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "applyUser"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 2280
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupApplicationInfo;->groupInfo:Lim/zego/zim/entity/ZIMGroupInfo;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertGroupInfo(Lim/zego/zim/entity/ZIMGroupInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "groupInfo"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 2281
    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupApplicationInfo;->operatedUser:Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertGroupMemberSimpleInfo(Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    const-string v1, "operatedUser"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertGroupApplicationList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupApplicationInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2304
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2305
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMGroupApplicationInfo;

    .line 2306
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertGroupApplication(Lim/zego/zim/entity/ZIMGroupApplicationInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertGroupFullInfo(Lim/zego/zim/entity/ZIMGroupFullInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1906
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1907
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->baseInfo:Lim/zego/zim/entity/ZIMGroupInfo;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertGroupInfo(Lim/zego/zim/entity/ZIMGroupInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "baseInfo"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1908
    const-string v1, "groupAlias"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->groupAlias:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const-string v1, "groupNotice"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->groupNotice:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 1911
    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->groupAttributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1912
    iget-object v4, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->groupAttributes:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1914
    :cond_1
    const-string v2, "groupAttributes"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1915
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->notificationStatus:Lim/zego/zim/enums/ZIMGroupMessageNotificationStatus;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMGroupMessageNotificationStatus;->value()I

    move-result v1

    const-string v2, "notificationStatus"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1916
    const-string v1, "maxMemberCount"

    iget v2, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->maxMemberCount:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1917
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->createTime:J

    long-to-double v1, v1

    const-string v3, "createTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1918
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->mutedInfo:Lim/zego/zim/entity/ZIMGroupMuteInfo;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertGroupMuteInfo(Lim/zego/zim/entity/ZIMGroupMuteInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "mutedInfo"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1919
    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupFullInfo;->verifyInfo:Lim/zego/zim/entity/ZIMGroupVerifyInfo;

    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertGroupVerifyInfo(Lim/zego/zim/entity/ZIMGroupVerifyInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    const-string/jumbo v1, "verifyInfo"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertGroupInfo(Lim/zego/zim/entity/ZIMGroupInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1893
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1894
    const-string v1, "groupID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupInfo;->groupID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const-string v1, "groupName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupInfo;->groupName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string v1, "groupAvatarUrl"

    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupInfo;->groupAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convertGroupList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroup;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2055
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2056
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMGroup;

    .line 2057
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 2058
    iget-object v3, v1, Lim/zego/zim/entity/ZIMGroup;->baseInfo:Lim/zego/zim/entity/ZIMGroupInfo;

    invoke-static {v3}, Lim/zego/RNZIMConverter;->convertGroupInfo(Lim/zego/zim/entity/ZIMGroupInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    const-string v4, "baseInfo"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 2059
    const-string v3, "groupAlias"

    iget-object v4, v1, Lim/zego/zim/entity/ZIMGroup;->groupAlias:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    iget-object v1, v1, Lim/zego/zim/entity/ZIMGroup;->notificationStatus:Lim/zego/zim/enums/ZIMGroupMessageNotificationStatus;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMGroupMessageNotificationStatus;->value()I

    move-result v1

    const-string v3, "notificationStatus"

    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 2062
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertGroupMemberInfo(Lim/zego/zim/entity/ZIMGroupMemberInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1929
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1930
    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    const-string/jumbo v1, "userAvatarUrl"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->userAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    const-string v1, "memberRole"

    iget v2, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->memberRole:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1934
    const-string v1, "memberNickname"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->memberNickname:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->muteExpiredTime:J

    long-to-double v1, v1

    const-string v3, "muteExpiredTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1936
    const-string v1, "memberAvatarUrl"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->userAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->groupEnterInfo:Lim/zego/zim/entity/ZIMGroupEnterInfo;

    if-eqz v1, :cond_1

    .line 1939
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 1940
    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->groupEnterInfo:Lim/zego/zim/entity/ZIMGroupEnterInfo;

    iget-wide v2, v2, Lim/zego/zim/entity/ZIMGroupEnterInfo;->enterTime:J

    long-to-double v2, v2

    const-string v4, "enterTime"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1941
    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->groupEnterInfo:Lim/zego/zim/entity/ZIMGroupEnterInfo;

    iget-object v2, v2, Lim/zego/zim/entity/ZIMGroupEnterInfo;->enterType:Lim/zego/zim/enums/ZIMGroupEnterType;

    invoke-virtual {v2}, Lim/zego/zim/enums/ZIMGroupEnterType;->value()I

    move-result v2

    const-string v3, "enterType"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1942
    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupMemberInfo;->groupEnterInfo:Lim/zego/zim/entity/ZIMGroupEnterInfo;

    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupEnterInfo;->operatedUser:Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertGroupMemberSimpleInfo(Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    const-string v2, "operatedUser"

    invoke-interface {v1, v2, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1943
    const-string p0, "groupEnterInfo"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_1
    return-object v0
.end method

.method public static convertGroupMemberInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMGroupMemberInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2042
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2043
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMGroupMemberInfo;

    .line 2044
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertGroupMemberInfo(Lim/zego/zim/entity/ZIMGroupMemberInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertGroupMemberSimpleInfo(Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2027
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2028
    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const-string/jumbo v1, "userAvatarUrl"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->userAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const-string v1, "memberRole"

    iget v2, p0, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->memberRole:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 2032
    const-string v1, "memberNickname"

    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->memberNickname:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convertGroupMuteInfo(Lim/zego/zim/entity/ZIMGroupMuteInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1862
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1863
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupMuteInfo;->mode:Lim/zego/zim/enums/ZIMGroupMuteMode;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMGroupMuteMode;->value()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1864
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMGroupMuteInfo;->expiredTime:J

    long-to-double v1, v1

    const-string v3, "expiredTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1866
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 1867
    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupMuteInfo;->roles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1868
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_0

    .line 1870
    :cond_1
    const-string p0, "roles"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v0
.end method

.method public static convertGroupOperatedInfo(Lim/zego/zim/entity/ZIMGroupOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2108
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2109
    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupOperatedInfo;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupOperatedInfo;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    const-string v1, "memberRole"

    iget v2, p0, Lim/zego/zim/entity/ZIMGroupOperatedInfo;->memberRole:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 2112
    const-string v1, "memberNickname"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMGroupOperatedInfo;->memberNickname:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupOperatedInfo;->operatedUserInfo:Lim/zego/zim/entity/ZIMGroupMemberInfo;

    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertGroupMemberInfo(Lim/zego/zim/entity/ZIMGroupMemberInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    const-string v1, "operatedUserInfo"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertGroupVerifyInfo(Lim/zego/zim/entity/ZIMGroupVerifyInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1880
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1881
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupVerifyInfo;->joinMode:Lim/zego/zim/enums/ZIMGroupJoinMode;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMGroupJoinMode;->value()I

    move-result v1

    const-string v2, "joinMode"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1882
    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroupVerifyInfo;->inviteMode:Lim/zego/zim/enums/ZIMGroupInviteMode;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMGroupInviteMode;->value()I

    move-result v1

    const-string v2, "inviteMode"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1883
    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupVerifyInfo;->beInviteMode:Lim/zego/zim/enums/ZIMGroupBeInviteMode;

    invoke-virtual {p0}, Lim/zego/zim/enums/ZIMGroupBeInviteMode;->value()I

    move-result p0

    const-string v1, "beInviteMode"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static convertLiteInfo(Lim/zego/zim/entity/ZIMMessageLiteInfo;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1509
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1510
    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->value()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1512
    sget-object v1, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    iget-object v2, p0, Lim/zego/zim/entity/ZIMMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v2}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "message"

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 1566
    :pswitch_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 1567
    move-object v2, p0

    check-cast v2, Lim/zego/zim/entity/ZIMMultipleMessageLiteInfo;

    iget-object v2, v2, Lim/zego/zim/entity/ZIMMultipleMessageLiteInfo;->messageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/zego/zim/entity/ZIMMessageLiteInfo;

    .line 1568
    invoke-static {v3}, Lim/zego/RNZIMConverter;->convertLiteInfo(Lim/zego/zim/entity/ZIMMessageLiteInfo;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 1570
    :cond_1
    const-string v2, "messageInfoList"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 1562
    :pswitch_1
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMAudioMessageLiteInfo;

    iget-wide v1, v1, Lim/zego/zim/entity/ZIMAudioMessageLiteInfo;->audioDuration:J

    long-to-double v1, v1

    const-string v3, "audioDuration"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 1548
    :pswitch_2
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;

    iget-wide v2, v1, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoDuration:J

    long-to-double v2, v2

    const-string/jumbo v4, "videoDuration"

    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1549
    const-string/jumbo v2, "videoFirstFrameDownloadUrl"

    iget-object v3, v1, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameDownloadUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const-string/jumbo v2, "videoFirstFrameLocalPath"

    iget-object v3, v1, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameLocalPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    const-string/jumbo v2, "videoFirstFrameWidth"

    iget v3, v1, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameWidth:I

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1558
    const-string/jumbo v2, "videoFirstFrameHeight"

    iget v1, v1, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameHeight:I

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1531
    :cond_2
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    iget-object v2, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailDownloadUrl:Ljava/lang/String;

    const-string/jumbo v3, "thumbnailDownloadUrl"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const-string/jumbo v2, "thumbnailLocalPath"

    iget-object v3, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailLocalPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string v2, "largeImageDownloadUrl"

    iget-object v3, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageDownloadUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string v2, "largeImageLocalPath"

    iget-object v3, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageLocalPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v2, "originalImageWidth"

    iget v3, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->originalImageWidth:I

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1539
    const-string v2, "originalImageHeight"

    iget v3, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->originalImageHeight:I

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1540
    const-string/jumbo v2, "thumbnailWidth"

    iget v3, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailWidth:I

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1541
    const-string/jumbo v2, "thumbnailHeight"

    iget v3, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailHeight:I

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1542
    const-string v2, "largeImageWidth"

    iget v3, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageWidth:I

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1543
    const-string v2, "largeImageHeight"

    iget v1, v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageHeight:I

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1525
    :cond_3
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMCombineMessageLiteInfo;

    iget-object v2, v1, Lim/zego/zim/entity/ZIMCombineMessageLiteInfo;->title:Ljava/lang/String;

    const-string/jumbo v3, "title"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-string/jumbo v2, "summary"

    iget-object v1, v1, Lim/zego/zim/entity/ZIMCombineMessageLiteInfo;->summary:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1519
    :cond_4
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;

    iget-object v2, v1, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->message:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string/jumbo v2, "subType"

    iget v3, v1, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->subType:I

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1521
    const-string v2, "searchedContent"

    iget-object v1, v1, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->searchedContent:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1515
    :cond_5
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMTextMessageLiteInfo;

    iget-object v1, v1, Lim/zego/zim/entity/ZIMTextMessageLiteInfo;->message:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :goto_1
    instance-of v1, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;

    if-eqz v1, :cond_6

    .line 1577
    check-cast p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileLocalPath:Ljava/lang/String;

    const-string v2, "fileLocalPath"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string v1, "fileDownloadUrl"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileDownloadUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string v1, "fileName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileSize:J

    long-to-double v1, v1

    const-string p0, "fileSize"

    invoke-interface {v0, p0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    :cond_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertLiteInfoFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessageLiteInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lim/zego/zim/entity/ZIMMessageLiteInfo;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1592
    :cond_0
    const-string/jumbo v0, "type"

    .line 1593
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 1592
    invoke-static {v0}, Lim/zego/zim/enums/ZIMMessageType;->getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v0

    .line 1595
    sget-object v1, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    invoke-virtual {v0}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "message"

    if-eq v0, v1, :cond_13

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    packed-switch v0, :pswitch_data_0

    .line 1695
    new-instance v0, Lim/zego/zim/entity/ZIMMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMessageLiteInfo;-><init>()V

    goto/16 :goto_1

    .line 1685
    :pswitch_0
    new-instance v0, Lim/zego/zim/entity/ZIMMultipleMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMultipleMessageLiteInfo;-><init>()V

    .line 1686
    const-string v1, "messageInfoList"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1687
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1689
    check-cast v3, Ljava/util/HashMap;

    invoke-static {v3}, Lim/zego/RNZIMConverter;->convertLiteInfoFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessageLiteInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1691
    :cond_1
    move-object v1, v0

    check-cast v1, Lim/zego/zim/entity/ZIMMultipleMessageLiteInfo;

    iput-object v2, v0, Lim/zego/zim/entity/ZIMMultipleMessageLiteInfo;->messageInfoList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1679
    :pswitch_1
    new-instance v0, Lim/zego/zim/entity/ZIMAudioMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMAudioMessageLiteInfo;-><init>()V

    .line 1680
    const-string v1, "audioDuration"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1681
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMAudioMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lim/zego/zim/entity/ZIMAudioMessageLiteInfo;->audioDuration:J

    goto/16 :goto_1

    .line 1661
    :pswitch_2
    new-instance v0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;-><init>()V

    .line 1662
    const-string/jumbo v1, "videoFirstFrameDownloadUrl"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1663
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameDownloadUrl:Ljava/lang/String;

    .line 1665
    :cond_2
    const-string/jumbo v1, "videoFirstFrameLocalPath"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1666
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameLocalPath:Ljava/lang/String;

    .line 1668
    :cond_3
    const-string/jumbo v1, "videoDuration"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1669
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoDuration:J

    .line 1671
    :cond_4
    const-string/jumbo v1, "videoFirstFrameWidth"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1672
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameWidth:I

    .line 1674
    :cond_5
    const-string/jumbo v1, "videoFirstFrameHeight"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1675
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameHeight:I

    goto/16 :goto_1

    .line 1658
    :pswitch_3
    new-instance v0, Lim/zego/zim/entity/ZIMFileMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMFileMessageLiteInfo;-><init>()V

    goto/16 :goto_1

    .line 1625
    :pswitch_4
    new-instance v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;-><init>()V

    .line 1626
    const-string v1, "originalImageWidth"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1627
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->originalImageWidth:I

    .line 1629
    :cond_6
    const-string v1, "originalImageHeight"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1630
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->originalImageHeight:I

    .line 1632
    :cond_7
    const-string/jumbo v1, "thumbnailWidth"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1633
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailWidth:I

    .line 1635
    :cond_8
    const-string/jumbo v1, "thumbnailHeight"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1636
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailHeight:I

    .line 1638
    :cond_9
    const-string v1, "largeImageWidth"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1639
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageWidth:I

    .line 1641
    :cond_a
    const-string v1, "largeImageHeight"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1642
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageHeight:I

    .line 1644
    :cond_b
    const-string/jumbo v1, "thumbnailDownloadUrl"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1645
    move-object v1, v0

    check-cast v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    const-string/jumbo v1, "thumbnailDownloadUrl"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailDownloadUrl:Ljava/lang/String;

    .line 1647
    :cond_c
    const-string/jumbo v1, "thumbnailLocalPath"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1648
    move-object v1, v0

    check-cast v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    const-string/jumbo v1, "thumbnailLocalPath"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailLocalPath:Ljava/lang/String;

    .line 1650
    :cond_d
    const-string v1, "largeImageDownloadUrl"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1651
    move-object v1, v0

    check-cast v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    const-string v1, "largeImageDownloadUrl"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageDownloadUrl:Ljava/lang/String;

    .line 1653
    :cond_e
    const-string v1, "largeImageLocalPath"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1654
    move-object v1, v0

    check-cast v1, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;

    const-string v1, "largeImageLocalPath"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageLocalPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 1616
    :pswitch_5
    new-instance v0, Lim/zego/zim/entity/ZIMCombineMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMCombineMessageLiteInfo;-><init>()V

    .line 1617
    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1618
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMCombineMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMCombineMessageLiteInfo;->title:Ljava/lang/String;

    .line 1620
    :cond_f
    const-string/jumbo v1, "summary"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1621
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMCombineMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMCombineMessageLiteInfo;->summary:Ljava/lang/String;

    goto :goto_1

    .line 1604
    :pswitch_6
    new-instance v0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;-><init>()V

    .line 1605
    const-string/jumbo v1, "subType"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1606
    move-object v3, v0

    check-cast v3, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->subType:I

    .line 1608
    :cond_10
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1609
    move-object v1, v0

    check-cast v1, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->message:Ljava/lang/String;

    .line 1611
    :cond_11
    const-string v1, "searchedContent"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1612
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->searchedContent:Ljava/lang/String;

    goto :goto_1

    .line 1601
    :cond_12
    new-instance v0, Lim/zego/zim/entity/ZIMRevokeMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMRevokeMessageLiteInfo;-><init>()V

    goto :goto_1

    .line 1597
    :cond_13
    new-instance v0, Lim/zego/zim/entity/ZIMTextMessageLiteInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMTextMessageLiteInfo;-><init>()V

    .line 1598
    move-object v1, v0

    check-cast v1, Lim/zego/zim/entity/ZIMTextMessageLiteInfo;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lim/zego/zim/entity/ZIMTextMessageLiteInfo;->message:Ljava/lang/String;

    .line 1699
    :cond_14
    :goto_1
    instance-of v1, v0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;

    if-eqz v1, :cond_18

    .line 1700
    const-string v1, "fileSize"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1701
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileSize:J

    .line 1703
    :cond_15
    const-string v1, "fileName"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1704
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileName:Ljava/lang/String;

    .line 1706
    :cond_16
    const-string v1, "fileDownloadUrl"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1707
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileDownloadUrl:Ljava/lang/String;

    .line 1709
    :cond_17
    const-string v1, "fileLocalPath"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1710
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v2, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileLocalPath:Ljava/lang/String;

    :cond_18
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    .line 1323
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1324
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getType()Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v1

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->value()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1325
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getMessageID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v1, "conversationID"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getConversationID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getConversationSeq()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "conversationSeq"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1328
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getMessageSeq()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "messageSeq"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1329
    const-string v1, "senderUserID"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getSenderUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getTimestamp()J

    move-result-wide v1

    long-to-double v1, v1

    const-string/jumbo v3, "timestamp"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1331
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getLocalMessageID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "localMessageID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getConversationType()Lim/zego/zim/enums/ZIMConversationType;

    move-result-object v1

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v1

    const-string v2, "conversationType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1333
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getDirection()Lim/zego/zim/enums/ZIMMessageDirection;

    move-result-object v1

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageDirection;->value()I

    move-result v1

    const-string v2, "direction"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1334
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getSentStatus()Lim/zego/zim/enums/ZIMMessageSentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageSentStatus;->value()I

    move-result v1

    const-string v2, "sentStatus"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1335
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getOrderKey()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "orderKey"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1336
    const-string v1, "isUserInserted"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->isUserInserted()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1337
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getReceiptStatus()Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    move-result-object v1

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->value()I

    move-result v1

    const-string v2, "receiptStatus"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1338
    const-string v1, "extendedData"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMMessage;->extendedData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string v1, "localExtendedData"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMMessage;->localExtendedData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v1, "isBroadcastMessage"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->isBroadcastMessage()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1341
    const-string v1, "isServerMessage"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->isServerMessage()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1342
    const-string v1, "isGroupTargetedMessage"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->isGroupTargetedMessage()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1343
    const-string v1, "isMentionAll"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->isMentionAll()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1344
    const-string v1, "rootRepliedCount"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getRootRepliedCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1345
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getRepliedInfo()Lim/zego/zim/entity/ZIMMessageRepliedInfo;

    move-result-object v1

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertRepliedInfo(Lim/zego/zim/entity/ZIMMessageRepliedInfo;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "repliedInfo"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1346
    const-string v1, "editorUserID"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getEditorUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getEditedTime()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "editedTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1348
    const-string v1, "pinnedUserID"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getPinnedUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getPinnedTime()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "pinnedTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1351
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getReactions()Ljava/util/ArrayList;

    move-result-object v1

    .line 1352
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 1353
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/zego/zim/entity/ZIMMessageReaction;

    .line 1354
    invoke-static {v3}, Lim/zego/RNZIMConverter;->convertMessageReaction(Lim/zego/zim/entity/ZIMMessageReaction;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 1356
    :cond_0
    const-string v1, "reactions"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1358
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getMentionedUserIDs()Ljava/util/ArrayList;

    move-result-object v1

    .line 1359
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 1360
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1361
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 1363
    :cond_1
    const-string v1, "mentionedUserIDs"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1365
    sget-object v1, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMessage;->getType()Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v2

    invoke-virtual {v2}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "message"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    .line 1477
    :pswitch_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 1478
    move-object v2, p0

    check-cast v2, Lim/zego/zim/entity/ZIMMultipleMessage;

    invoke-virtual {v2}, Lim/zego/zim/entity/ZIMMultipleMessage;->getMessageInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/zego/zim/entity/ZIMMessageLiteInfo;

    .line 1479
    invoke-static {v4}, Lim/zego/RNZIMConverter;->convertLiteInfo(Lim/zego/zim/entity/ZIMMessageLiteInfo;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 1481
    :cond_2
    const-string v3, "messageInfoList"

    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1483
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 1484
    invoke-virtual {v2}, Lim/zego/zim/entity/ZIMMultipleMessage;->getFailedIndexList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1485
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_3

    .line 1487
    :cond_3
    const-string v2, "failedIndexList"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_8

    .line 1470
    :pswitch_1
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMAudioMessage;

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMAudioMessage;->getAudioDuration()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "audioDuration"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_8

    .line 1456
    :pswitch_2
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMVideoMessage;

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMVideoMessage;->getVideoDuration()J

    move-result-wide v2

    long-to-double v2, v2

    const-string/jumbo v4, "videoDuration"

    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1457
    const-string/jumbo v2, "videoFirstFrameDownloadUrl"

    .line 1459
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMVideoMessage;->getVideoFirstFrameDownloadUrl()Ljava/lang/String;

    move-result-object v3

    .line 1457
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string/jumbo v2, "videoFirstFrameLocalPath"

    .line 1463
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMVideoMessage;->getVideoFirstFrameLocalPath()Ljava/lang/String;

    move-result-object v3

    .line 1461
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string/jumbo v2, "videoFirstFrameWidth"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMVideoMessage;->getVideoFirstFrameWidth()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1466
    const-string/jumbo v2, "videoFirstFrameHeight"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMVideoMessage;->getVideoFirstFrameHeight()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 1424
    :pswitch_3
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getThumbnailDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_4

    .line 1425
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getThumbnailDownloadUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v3

    .line 1422
    :goto_4
    const-string/jumbo v4, "thumbnailDownloadUrl"

    invoke-interface {v0, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getThumbnailLocalPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1431
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getThumbnailLocalPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v3

    .line 1428
    :goto_5
    const-string/jumbo v4, "thumbnailLocalPath"

    invoke-interface {v0, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getLargeImageDownloadUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1437
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getLargeImageDownloadUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v3

    .line 1434
    :goto_6
    const-string v4, "largeImageDownloadUrl"

    invoke-interface {v0, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getLargeImageLocalPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1443
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getLargeImageLocalPath()Ljava/lang/String;

    move-result-object v3

    .line 1440
    :cond_7
    const-string v2, "largeImageLocalPath"

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const-string v2, "originalImageWidth"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getOriginalImageWidth()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1447
    const-string v2, "originalImageHeight"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getOriginalImageHeight()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1448
    const-string/jumbo v2, "thumbnailWidth"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getThumbnailWidth()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1449
    const-string/jumbo v2, "thumbnailHeight"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getThumbnailHeight()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1450
    const-string v2, "largeImageWidth"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getLargeImageWidth()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1451
    const-string v2, "largeImageHeight"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMImageMessage;->getLargeImageHeight()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 1414
    :pswitch_4
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMCombineMessage;

    iget-object v2, v1, Lim/zego/zim/entity/ZIMCombineMessage;->title:Ljava/lang/String;

    const-string/jumbo v3, "title"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string/jumbo v2, "summary"

    iget-object v3, v1, Lim/zego/zim/entity/ZIMCombineMessage;->summary:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v2, "combineID"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMCombineMessage;->getCombineID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v1, v1, Lim/zego/zim/entity/ZIMCombineMessage;->messageList:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    const-string v2, "messageList"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_8

    .line 1408
    :pswitch_5
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMCustomMessage;

    iget-object v3, v1, Lim/zego/zim/entity/ZIMCustomMessage;->message:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string/jumbo v2, "subType"

    iget v3, v1, Lim/zego/zim/entity/ZIMCustomMessage;->subType:I

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1410
    const-string v2, "searchedContent"

    iget-object v1, v1, Lim/zego/zim/entity/ZIMCustomMessage;->searchedContent:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1398
    :pswitch_6
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMTipsMessage;

    iget-object v2, v1, Lim/zego/zim/entity/ZIMTipsMessage;->event:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    invoke-virtual {v2}, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value()I

    move-result v2

    const-string v3, "event"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1399
    iget-object v2, v1, Lim/zego/zim/entity/ZIMTipsMessage;->operatedUser:Lim/zego/zim/entity/ZIMUserInfo;

    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertUserOrGroupMember(Lim/zego/zim/entity/ZIMUserInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    const-string v3, "operatedUser"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1400
    iget-object v2, v1, Lim/zego/zim/entity/ZIMTipsMessage;->targetUserList:Ljava/util/ArrayList;

    .line 1402
    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertUserOrGroupMemberList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    .line 1400
    const-string/jumbo v3, "targetUserList"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1404
    iget-object v1, v1, Lim/zego/zim/entity/ZIMTipsMessage;->changeInfo:Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertTipsMessageChangeInfo(Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "changeInfo"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_8

    .line 1385
    :pswitch_7
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMRevokeMessage;

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMRevokeMessage;->getRevokeType()Lim/zego/zim/enums/ZIMRevokeType;

    move-result-object v2

    invoke-virtual {v2}, Lim/zego/zim/enums/ZIMRevokeType;->value()I

    move-result v2

    const-string v3, "revokeType"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1386
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMRevokeMessage;->getRevokeStatus()Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    move-result-object v2

    invoke-virtual {v2}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value()I

    move-result v2

    const-string v3, "revokeStatus"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1387
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMRevokeMessage;->getRevokeTimestamp()J

    move-result-wide v2

    long-to-double v2, v2

    const-string v4, "revokeTimestamp"

    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1388
    const-string v2, "operatedUserID"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMRevokeMessage;->getOperatedUserID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v2, "revokeExtendedData"

    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMRevokeMessage;->getRevokeExtendedData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMRevokeMessage;->getOriginalMessageType()Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v2

    invoke-virtual {v2}, Lim/zego/zim/enums/ZIMMessageType;->value()I

    move-result v2

    const-string v3, "originalMessageType"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1391
    const-string v2, "originalTextMessageContent"

    .line 1393
    invoke-virtual {v1}, Lim/zego/zim/entity/ZIMRevokeMessage;->getOriginalTextMessageContent()Ljava/lang/String;

    move-result-object v1

    .line 1391
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1381
    :pswitch_8
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMBarrageMessage;

    iget-object v1, v1, Lim/zego/zim/entity/ZIMBarrageMessage;->message:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1371
    :pswitch_9
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMCommandMessage;

    iget-object v1, v1, Lim/zego/zim/entity/ZIMCommandMessage;->message:[B

    .line 1372
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const/4 v4, 0x0

    .line 1373
    :goto_7
    array-length v5, v1

    if-ge v4, v5, :cond_9

    .line 1374
    aget-byte v5, v1, v4

    .line 1375
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-gez v5, :cond_8

    add-int/lit16 v5, v5, 0x100

    :cond_8
    invoke-interface {v3, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1377
    :cond_9
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_8

    .line 1368
    :pswitch_a
    move-object v1, p0

    check-cast v1, Lim/zego/zim/entity/ZIMTextMessage;

    iget-object v1, v1, Lim/zego/zim/entity/ZIMTextMessage;->message:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :goto_8
    :pswitch_b
    instance-of v1, p0, Lim/zego/zim/entity/ZIMMediaMessage;

    if-eqz v1, :cond_a

    .line 1494
    check-cast p0, Lim/zego/zim/entity/ZIMMediaMessage;

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMediaMessage;->getFileLocalPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileLocalPath"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string v1, "fileDownloadUrl"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMediaMessage;->getFileDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v1, "fileUID"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMediaMessage;->getFileUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string v1, "fileName"

    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMediaMessage;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Lim/zego/zim/entity/ZIMMediaMessage;->getFileSize()J

    move-result-wide v1

    long-to-double v1, v1

    const-string p0, "fileSize"

    invoke-interface {v0, p0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    :cond_a
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertMessageFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMMessage;
    .locals 23

    move-object/from16 v1, p0

    .line 320
    const-string v2, "fileSize"

    const-string/jumbo v0, "videoFirstFrameHeight"

    const-string v3, "originalImageHeight"

    const-string v4, "originalMessageType"

    const-string v5, "fileName"

    const-string/jumbo v6, "videoFirstFrameWidth"

    const-string v7, "originalImageWidth"

    const-string v8, "fileUID"

    const-string/jumbo v9, "videoFirstFrameLocalPath"

    const-string v10, "largeImageLocalPath"

    const-string v11, "combineID"

    const-string/jumbo v12, "thumbnailLocalPath"

    const-string v13, "revokeType"

    const/4 v14, 0x0

    if-nez v1, :cond_0

    return-object v14

    .line 325
    :cond_0
    const-string/jumbo v15, "type"

    invoke-interface {v1, v15}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lim/zego/zim/enums/ZIMMessageType;->getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v16

    .line 326
    sget-object v17, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    invoke-virtual/range {v16 .. v16}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v16

    aget v16, v17, v16

    const/16 v17, -0x1

    const-string v14, "message"

    move-object/from16 v18, v2

    const-string v2, "fileLocalPath"

    const-wide/16 v19, 0x0

    const-string v21, ""

    move-object/from16 v22, v5

    const/4 v5, 0x0

    packed-switch v16, :pswitch_data_0

    .line 609
    new-instance v0, Lim/zego/zim/entity/ZIMMessage;

    sget-object v2, Lim/zego/zim/enums/ZIMMessageType;->UNKNOWN:Lim/zego/zim/enums/ZIMMessageType;

    invoke-direct {v0, v2}, Lim/zego/zim/entity/ZIMMessage;-><init>(Lim/zego/zim/enums/ZIMMessageType;)V

    :cond_1
    :goto_0
    move-object v2, v0

    goto/16 :goto_20

    .line 592
    :pswitch_0
    new-instance v0, Lim/zego/zim/entity/ZIMMultipleMessage;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMultipleMessage;-><init>()V

    .line 593
    const-string v2, "messageInfoList"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 594
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 595
    const-string v3, "messageInfoList"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 596
    check-cast v4, Ljava/util/HashMap;

    invoke-static {v4}, Lim/zego/RNZIMConverter;->convertLiteInfoFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessageLiteInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 598
    :cond_2
    move-object v3, v0

    check-cast v3, Lim/zego/zim/entity/ZIMMultipleMessage;

    invoke-virtual {v0, v2}, Lim/zego/zim/entity/ZIMMultipleMessage;->setMessageInfoList(Ljava/util/ArrayList;)V

    .line 600
    :cond_3
    const-string v2, "failedIndexList"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 601
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    const-string v3, "failedIndexList"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 603
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 605
    :cond_4
    move-object v3, v0

    check-cast v3, Lim/zego/zim/entity/ZIMMultipleMessage;

    invoke-virtual {v0, v2}, Lim/zego/zim/entity/ZIMMultipleMessage;->setFailedIndexList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 583
    :pswitch_1
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 584
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object/from16 v0, v21

    .line 586
    :goto_3
    const-string v2, "audioDuration"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 587
    const-string v2, "audioDuration"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    goto :goto_4

    :cond_6
    move-wide/from16 v2, v19

    .line 589
    :goto_4
    new-instance v4, Lim/zego/zim/entity/ZIMAudioMessage;

    invoke-direct {v4, v0, v2, v3}, Lim/zego/zim/entity/ZIMAudioMessage;-><init>(Ljava/lang/String;J)V

    :cond_7
    :goto_5
    move-object v2, v4

    goto/16 :goto_20

    .line 539
    :pswitch_2
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 540
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_8
    move-object/from16 v2, v21

    .line 542
    :goto_6
    const-string/jumbo v3, "videoDuration"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 543
    const-string/jumbo v3, "videoDuration"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    goto :goto_7

    :cond_9
    move-wide/from16 v3, v19

    .line 545
    :goto_7
    new-instance v7, Lim/zego/zim/entity/ZIMVideoMessage;

    invoke-direct {v7, v2, v3, v4}, Lim/zego/zim/entity/ZIMVideoMessage;-><init>(Ljava/lang/String;J)V

    .line 547
    :try_start_0
    const-string/jumbo v2, "videoFirstFrameDownloadUrl"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 548
    move-object v2, v7

    check-cast v2, Lim/zego/zim/entity/ZIMVideoMessage;

    const-string/jumbo v2, "videoFirstFrameDownloadUrl"

    .line 549
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-virtual {v7, v2}, Lim/zego/zim/entity/ZIMVideoMessage;->setVideoFirstFrameDownloadUrl(Ljava/lang/String;)V

    .line 553
    :cond_a
    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 554
    const-class v2, Lim/zego/zim/entity/ZIMVideoMessage;

    .line 555
    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 556
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 557
    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 561
    :cond_b
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 562
    const-class v2, Lim/zego/zim/entity/ZIMVideoMessage;

    .line 563
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 564
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 565
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 569
    :cond_c
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 570
    const-class v2, Lim/zego/zim/entity/ZIMVideoMessage;

    .line 571
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 572
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 573
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 574
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 579
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_8

    :catch_1
    move-exception v0

    .line 577
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_d
    :goto_8
    move-object v2, v7

    goto/16 :goto_20

    .line 535
    :pswitch_3
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_e
    move-object/from16 v0, v21

    .line 536
    :goto_9
    new-instance v2, Lim/zego/zim/entity/ZIMFileMessage;

    invoke-direct {v2, v0}, Lim/zego/zim/entity/ZIMFileMessage;-><init>(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 460
    :pswitch_4
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 461
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_f
    move-object/from16 v0, v21

    .line 463
    :goto_a
    new-instance v2, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-direct {v2, v0}, Lim/zego/zim/entity/ZIMImageMessage;-><init>(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v0, "thumbnailDownloadUrl"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 465
    move-object v0, v2

    check-cast v0, Lim/zego/zim/entity/ZIMImageMessage;

    const-string/jumbo v0, "thumbnailDownloadUrl"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lim/zego/zim/entity/ZIMImageMessage;->setThumbnailDownloadUrl(Ljava/lang/String;)V

    .line 468
    :cond_10
    const-string v0, "largeImageDownloadUrl"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 469
    move-object v0, v2

    check-cast v0, Lim/zego/zim/entity/ZIMImageMessage;

    const-string v0, "largeImageDownloadUrl"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lim/zego/zim/entity/ZIMImageMessage;->setLargeImageDownloadUrl(Ljava/lang/String;)V

    .line 473
    :cond_11
    :try_start_1
    invoke-interface {v1, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 474
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 475
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 476
    invoke-interface {v1, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 480
    :cond_12
    invoke-interface {v1, v10}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 481
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 482
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 483
    invoke-interface {v1, v10}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 487
    :cond_13
    invoke-interface {v1, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 488
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 489
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 490
    invoke-interface {v1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 491
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 494
    :cond_14
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 495
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 496
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 497
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 498
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 501
    :cond_15
    const-string/jumbo v0, "thumbnailWidth"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 502
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    const-string/jumbo v3, "thumbnailWidth"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 503
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 504
    const-string/jumbo v3, "thumbnailWidth"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 505
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 508
    :cond_16
    const-string/jumbo v0, "thumbnailHeight"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 509
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    const-string/jumbo v3, "thumbnailHeight"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 510
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 511
    const-string/jumbo v3, "thumbnailHeight"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 512
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 515
    :cond_17
    const-string v0, "largeImageWidth"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 516
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    const-string v3, "largeImageWidth"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 517
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 518
    const-string v3, "largeImageWidth"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 519
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 522
    :cond_18
    const-string v0, "largeImageHeight"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 523
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    const-string v3, "largeImageHeight"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 524
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 525
    const-string v3, "largeImageHeight"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 526
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_20

    :catch_2
    move-exception v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_20

    :catch_3
    move-exception v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_20

    .line 436
    :pswitch_5
    const-string/jumbo v0, "title"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "title"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_19
    move-object/from16 v0, v21

    .line 437
    :goto_b
    const-string/jumbo v2, "summary"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "summary"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_1a
    move-object/from16 v2, v21

    .line 438
    :goto_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 439
    const-string v4, "messageList"

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 440
    const-string v4, "messageList"

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 441
    check-cast v6, Ljava/util/HashMap;

    invoke-static {v6}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 445
    :cond_1b
    new-instance v4, Lim/zego/zim/entity/ZIMCombineMessage;

    invoke-direct {v4, v0, v2, v3}, Lim/zego/zim/entity/ZIMCombineMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 447
    :try_start_2
    invoke-interface {v1, v11}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 448
    const-class v0, Lim/zego/zim/entity/ZIMCombineMessage;

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 449
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 450
    invoke-interface {v1, v11}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_5

    .line 429
    :pswitch_6
    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1c
    move-object/from16 v0, v21

    .line 430
    :goto_e
    const-string/jumbo v2, "subType"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "subType"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_f

    :cond_1d
    move v2, v5

    .line 431
    :goto_f
    new-instance v3, Lim/zego/zim/entity/ZIMCustomMessage;

    invoke-direct {v3, v0, v2}, Lim/zego/zim/entity/ZIMCustomMessage;-><init>(Ljava/lang/String;I)V

    .line 432
    move-object v0, v3

    check-cast v0, Lim/zego/zim/entity/ZIMCustomMessage;

    .line 433
    const-string v0, "searchedContent"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "searchedContent"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1e
    move-object/from16 v0, v21

    :goto_10
    iput-object v0, v3, Lim/zego/zim/entity/ZIMCustomMessage;->searchedContent:Ljava/lang/String;

    move-object v2, v3

    goto/16 :goto_20

    .line 407
    :pswitch_7
    new-instance v0, Lim/zego/zim/entity/ZIMTipsMessage;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMTipsMessage;-><init>()V

    .line 408
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMTipsMessage;

    .line 410
    const-string v2, "event"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "event"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_11

    :cond_1f
    move v2, v5

    .line 409
    :goto_11
    invoke-static {v2}, Lim/zego/zim/enums/ZIMTipsMessageEvent;->getZIMTipsMessageEvent(I)Lim/zego/zim/enums/ZIMTipsMessageEvent;

    move-result-object v2

    iput-object v2, v0, Lim/zego/zim/entity/ZIMTipsMessage;->event:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 413
    const-string v2, "operatedUser"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 414
    const-string v2, "operatedUser"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertUserOrGroupMemberFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMUserInfo;

    move-result-object v2

    goto :goto_12

    :cond_20
    const/4 v2, 0x0

    .line 415
    :goto_12
    iput-object v2, v0, Lim/zego/zim/entity/ZIMTipsMessage;->operatedUser:Lim/zego/zim/entity/ZIMUserInfo;

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    const-string/jumbo v3, "targetUserList"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 418
    const-string/jumbo v3, "targetUserList"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 419
    check-cast v4, Ljava/util/HashMap;

    invoke-static {v4}, Lim/zego/RNZIMConverter;->convertUserOrGroupMemberFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMUserInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 422
    :cond_21
    iput-object v2, v0, Lim/zego/zim/entity/ZIMTipsMessage;->targetUserList:Ljava/util/ArrayList;

    .line 424
    const-string v2, "changeInfo"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 425
    const-string v2, "changeInfo"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertTipsMessageChangeInfoFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;

    move-result-object v14

    goto :goto_14

    :cond_22
    const/4 v14, 0x0

    .line 426
    :goto_14
    iput-object v14, v0, Lim/zego/zim/entity/ZIMTipsMessage;->changeInfo:Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;

    goto/16 :goto_0

    .line 346
    :pswitch_8
    new-instance v2, Lim/zego/zim/entity/ZIMRevokeMessage;

    invoke-direct {v2}, Lim/zego/zim/entity/ZIMRevokeMessage;-><init>()V

    .line 348
    :try_start_3
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 349
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 350
    invoke-interface {v1, v13}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1, v13}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_15

    :cond_23
    move/from16 v3, v17

    .line 351
    :goto_15
    invoke-static {v3}, Lim/zego/zim/enums/ZIMRevokeType;->getZIMRevokeType(I)Lim/zego/zim/enums/ZIMRevokeType;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 354
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 356
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 357
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_16

    :cond_24
    move v3, v5

    .line 359
    :goto_16
    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageType;->getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 362
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v3, "revokeStatus"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 363
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 364
    const-string v3, "revokeStatus"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "revokeStatus"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_17

    :cond_25
    move/from16 v3, v17

    .line 365
    :goto_17
    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->getZIMMessageRevokeStatus(I)Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 368
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v3, "revokeTimestamp"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 369
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 370
    const-string v3, "revokeTimestamp"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 371
    const-string v3, "revokeTimestamp"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    goto :goto_18

    :cond_26
    move-wide/from16 v3, v19

    .line 373
    :goto_18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 376
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v3, "operatedUserID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 377
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 378
    const-string v3, "operatedUserID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 379
    const-string v3, "operatedUserID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_27
    move-object/from16 v3, v21

    .line 381
    :goto_19
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 384
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v3, "revokeExtendedData"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 385
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 386
    const-string v3, "revokeExtendedData"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 387
    const-string v3, "revokeExtendedData"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_28
    move-object/from16 v3, v21

    .line 389
    :goto_1a
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 392
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v3, "originalTextMessageContent"

    .line 393
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 394
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 395
    const-string v3, "originalTextMessageContent"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 396
    const-string v3, "originalTextMessageContent"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :cond_29
    move-object/from16 v3, v21

    .line 398
    :goto_1b
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_20

    :catch_6
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_20

    :catch_7
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_20

    .line 342
    :pswitch_9
    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_2a
    move-object/from16 v0, v21

    .line 343
    :goto_1c
    new-instance v2, Lim/zego/zim/entity/ZIMBarrageMessage;

    invoke-direct {v2, v0}, Lim/zego/zim/entity/ZIMBarrageMessage;-><init>(Ljava/lang/String;)V

    goto :goto_20

    .line 332
    :pswitch_a
    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 333
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    .line 334
    new-array v3, v2, [B

    move v4, v5

    :goto_1d
    if-ge v4, v2, :cond_2c

    .line 336
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    const/16 v7, 0x80

    if-ge v6, v7, :cond_2b

    goto :goto_1e

    :cond_2b
    add-int/lit16 v6, v6, -0x100

    :goto_1e
    int-to-byte v6, v6

    .line 337
    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 339
    :cond_2c
    new-instance v0, Lim/zego/zim/entity/ZIMCommandMessage;

    invoke-direct {v0, v3}, Lim/zego/zim/entity/ZIMCommandMessage;-><init>([B)V

    goto/16 :goto_0

    .line 328
    :pswitch_b
    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_2d
    move-object/from16 v0, v21

    .line 329
    :goto_1f
    new-instance v2, Lim/zego/zim/entity/ZIMTextMessage;

    invoke-direct {v2, v0}, Lim/zego/zim/entity/ZIMTextMessage;-><init>(Ljava/lang/String;)V

    .line 616
    :cond_2e
    :goto_20
    :try_start_4
    const-string v0, "extendedData"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "extendedData"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_2f
    move-object/from16 v0, v21

    :goto_21
    iput-object v0, v2, Lim/zego/zim/entity/ZIMMessage;->extendedData:Ljava/lang/String;

    .line 618
    const-string v0, "localExtendedData"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "localExtendedData"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_30
    move-object/from16 v0, v21

    :goto_22
    iput-object v0, v2, Lim/zego/zim/entity/ZIMMessage;->localExtendedData:Ljava/lang/String;

    .line 622
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    invoke-virtual {v0, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 623
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 624
    invoke-interface {v1, v15}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageType;->getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 625
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 627
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "messageID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 628
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 629
    const-string v3, "messageID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 630
    const-string v3, "messageID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_23

    :cond_31
    move-wide/from16 v3, v19

    .line 632
    :goto_23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 633
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 635
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "conversationID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 636
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 637
    const-string v3, "conversationID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    const-string v3, "conversationID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_32
    move-object/from16 v3, v21

    .line 638
    :goto_24
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 641
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "conversationSeq"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 642
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 643
    const-string v3, "conversationSeq"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 644
    const-string v3, "conversationSeq"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    goto :goto_25

    :cond_33
    move-wide/from16 v3, v19

    .line 646
    :goto_25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 649
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "messageSeq"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 650
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 651
    const-string v3, "messageSeq"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 652
    const-string v3, "messageSeq"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    goto :goto_26

    :cond_34
    move-wide/from16 v3, v19

    .line 654
    :goto_26
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 655
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 657
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "senderUserID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 658
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 659
    const-string v3, "senderUserID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "senderUserID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :cond_35
    move-object/from16 v3, v21

    .line 660
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 661
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 663
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 664
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 665
    const-string/jumbo v3, "timestamp"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 666
    const-string/jumbo v3, "timestamp"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    goto :goto_27

    :cond_36
    move-wide/from16 v3, v19

    .line 668
    :goto_27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 669
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 671
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "localMessageID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 672
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 673
    const-string v3, "localMessageID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 674
    const-string v3, "localMessageID"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_28

    :cond_37
    move-wide/from16 v3, v19

    .line 676
    :goto_28
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 677
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 679
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "conversationType"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 680
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 681
    const-string v3, "conversationType"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "conversationType"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_29

    :cond_38
    move/from16 v3, v17

    .line 682
    :goto_29
    invoke-static {v3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 683
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 685
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "direction"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 686
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 687
    const-string v3, "direction"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "direction"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2a

    :cond_39
    move/from16 v3, v17

    .line 688
    :goto_2a
    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageDirection;->getZIMMessageDirection(I)Lim/zego/zim/enums/ZIMMessageDirection;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 689
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 691
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "sentStatus"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 692
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 693
    const-string v3, "sentStatus"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "sentStatus"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 694
    :cond_3a
    invoke-static/range {v17 .. v17}, Lim/zego/zim/enums/ZIMMessageSentStatus;->getZIMMessageSentStatus(I)Lim/zego/zim/enums/ZIMMessageSentStatus;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 695
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 697
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "orderKey"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 698
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 699
    const-string v3, "orderKey"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 700
    const-string v3, "orderKey"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v19

    .line 702
    :cond_3b
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 703
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 705
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "receiptStatus"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 706
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 707
    const-string v3, "receiptStatus"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "receiptStatus"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2b

    :cond_3c
    move v3, v5

    .line 708
    :goto_2b
    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->getZIMMessageReceiptStatus(I)Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 709
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 711
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isUserInserted"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 712
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 713
    const-string v3, "isUserInserted"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 714
    const-string v3, "isUserInserted"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2c

    :cond_3d
    move v3, v5

    .line 716
    :goto_2c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 719
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isBroadcastMessage"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 720
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 721
    const-string v3, "isBroadcastMessage"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 722
    const-string v3, "isBroadcastMessage"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2d

    :cond_3e
    move v3, v5

    .line 724
    :goto_2d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 725
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 727
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isServerMessage"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 728
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 729
    const-string v3, "isServerMessage"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 730
    const-string v3, "isServerMessage"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2e

    :cond_3f
    move v3, v5

    .line 732
    :goto_2e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 733
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 735
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isGroupTargetedMessage"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 736
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 737
    const-string v3, "isGroupTargetedMessage"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 738
    const-string v3, "isGroupTargetedMessage"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2f

    :cond_40
    move v3, v5

    .line 740
    :goto_2f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 741
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 743
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isMentionAll"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 744
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 745
    const-string v3, "isMentionAll"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "isMentionAll"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_30

    :cond_41
    move v3, v5

    .line 746
    :goto_30
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 747
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 749
    const-string v0, "mentionedUserIDs"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 751
    const-string v3, "mentionedUserIDs"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 752
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 755
    :cond_42
    const-class v3, Lim/zego/zim/entity/ZIMMessage;

    const-string v4, "mentionedUserIDs"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    .line 756
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 757
    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 758
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_32

    :catch_8
    move-exception v0

    .line 763
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_32

    :catch_9
    move-exception v0

    .line 761
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 766
    :cond_43
    :goto_32
    instance-of v0, v2, Lim/zego/zim/entity/ZIMMediaMessage;

    if-eqz v0, :cond_47

    .line 768
    :try_start_5
    const-string v0, "fileDownloadUrl"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 769
    move-object v0, v2

    check-cast v0, Lim/zego/zim/entity/ZIMMediaMessage;

    const-string v3, "fileDownloadUrl"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lim/zego/zim/entity/ZIMMediaMessage;->setFileDownloadUrl(Ljava/lang/String;)V

    .line 771
    :cond_44
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 772
    const-class v0, Lim/zego/zim/entity/ZIMMediaMessage;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 773
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 774
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 775
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_45
    move-object/from16 v3, v22

    .line 778
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 779
    const-class v0, Lim/zego/zim/entity/ZIMMediaMessage;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 780
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 781
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 782
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_46
    move-object/from16 v3, v18

    .line 785
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 786
    const-class v0, Lim/zego/zim/entity/ZIMMediaMessage;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 787
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 788
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 789
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_33

    :catch_a
    move-exception v0

    .line 794
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_33

    :catch_b
    move-exception v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_47
    :goto_33
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertMessageFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessage;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lim/zego/zim/entity/ZIMMessage;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 803
    const-string/jumbo v0, "thumbnailWidth"

    const-string v2, "originalMessageType"

    const-string v3, "fileSize"

    const-string v4, "originalImageHeight"

    const-string/jumbo v5, "videoFirstFrameHeight"

    const-string v6, "fileName"

    const-string v7, "originalImageWidth"

    const-string/jumbo v8, "videoFirstFrameWidth"

    const-string v9, "combineID"

    const-string v10, "fileUID"

    const-string v11, "largeImageLocalPath"

    const-string/jumbo v12, "videoFirstFrameLocalPath"

    const-string/jumbo v13, "thumbnailLocalPath"

    const-string v14, "revokeType"

    const/4 v15, 0x0

    if-nez v1, :cond_0

    return-object v15

    .line 808
    :cond_0
    const-string/jumbo v15, "type"

    .line 809
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->intValue()I

    move-result v15

    .line 808
    invoke-static {v15}, Lim/zego/zim/enums/ZIMMessageType;->getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v15

    .line 811
    sget-object v16, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    invoke-virtual {v15}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    move-object/from16 v17, v3

    const-string v3, "fileLocalPath"

    move-object/from16 v18, v6

    const-string v6, "message"

    const/16 v19, -0x1

    const-wide/16 v20, 0x0

    const-string v22, ""

    move-object/from16 v23, v10

    const/4 v10, 0x0

    packed-switch v16, :pswitch_data_0

    .line 1122
    new-instance v0, Lim/zego/zim/entity/ZIMMessage;

    sget-object v2, Lim/zego/zim/enums/ZIMMessageType;->UNKNOWN:Lim/zego/zim/enums/ZIMMessageType;

    invoke-direct {v0, v2}, Lim/zego/zim/entity/ZIMMessage;-><init>(Lim/zego/zim/enums/ZIMMessageType;)V

    goto/16 :goto_15

    .line 1105
    :pswitch_0
    new-instance v0, Lim/zego/zim/entity/ZIMMultipleMessage;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMMultipleMessage;-><init>()V

    .line 1106
    const-string v2, "messageInfoList"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    const-string v3, "messageInfoList"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1109
    check-cast v4, Ljava/util/HashMap;

    invoke-static {v4}, Lim/zego/RNZIMConverter;->convertLiteInfoFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessageLiteInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1111
    :cond_1
    move-object v3, v0

    check-cast v3, Lim/zego/zim/entity/ZIMMultipleMessage;

    invoke-virtual {v0, v2}, Lim/zego/zim/entity/ZIMMultipleMessage;->setMessageInfoList(Ljava/util/ArrayList;)V

    .line 1113
    :cond_2
    const-string v2, "failedIndexList"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    const-string v3, "failedIndexList"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1116
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1118
    :cond_3
    move-object v3, v0

    check-cast v3, Lim/zego/zim/entity/ZIMMultipleMessage;

    invoke-virtual {v0, v2}, Lim/zego/zim/entity/ZIMMultipleMessage;->setFailedIndexList(Ljava/util/ArrayList;)V

    goto/16 :goto_15

    .line 1098
    :pswitch_1
    new-instance v0, Lim/zego/zim/entity/ZIMAudioMessage;

    .line 1100
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "audioDuration"

    .line 1101
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Lim/zego/zim/entity/ZIMAudioMessage;-><init>(Ljava/lang/String;J)V

    goto/16 :goto_15

    .line 1050
    :pswitch_2
    new-instance v2, Lim/zego/zim/entity/ZIMVideoMessage;

    .line 1052
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "videoDuration"

    .line 1053
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lim/zego/zim/entity/ZIMVideoMessage;-><init>(Ljava/lang/String;J)V

    .line 1056
    :try_start_0
    const-string/jumbo v0, "videoFirstFrameDownloadUrl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1057
    move-object v0, v2

    check-cast v0, Lim/zego/zim/entity/ZIMVideoMessage;

    const-string/jumbo v0, "videoFirstFrameDownloadUrl"

    .line 1058
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1057
    invoke-virtual {v2, v0}, Lim/zego/zim/entity/ZIMVideoMessage;->setVideoFirstFrameDownloadUrl(Ljava/lang/String;)V

    .line 1062
    :cond_4
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1063
    const-class v0, Lim/zego/zim/entity/ZIMVideoMessage;

    .line 1064
    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 1065
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1066
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1067
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1070
    :cond_5
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1071
    const-class v0, Lim/zego/zim/entity/ZIMVideoMessage;

    .line 1072
    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 1073
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1076
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1074
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1081
    :cond_6
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1082
    const-class v0, Lim/zego/zim/entity/ZIMVideoMessage;

    .line 1083
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 1084
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1087
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1085
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1089
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_16

    :catch_0
    move-exception v0

    .line 1094
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_16

    :catch_1
    move-exception v0

    .line 1092
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_16

    .line 1047
    :pswitch_3
    new-instance v0, Lim/zego/zim/entity/ZIMFileMessage;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lim/zego/zim/entity/ZIMFileMessage;-><init>(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 953
    :pswitch_4
    new-instance v2, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lim/zego/zim/entity/ZIMImageMessage;-><init>(Ljava/lang/String;)V

    .line 954
    const-string/jumbo v3, "thumbnailDownloadUrl"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 955
    move-object v3, v2

    check-cast v3, Lim/zego/zim/entity/ZIMImageMessage;

    const-string/jumbo v3, "thumbnailDownloadUrl"

    .line 956
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 955
    invoke-virtual {v2, v3}, Lim/zego/zim/entity/ZIMImageMessage;->setThumbnailDownloadUrl(Ljava/lang/String;)V

    .line 960
    :cond_7
    const-string v3, "largeImageDownloadUrl"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 961
    move-object v3, v2

    check-cast v3, Lim/zego/zim/entity/ZIMImageMessage;

    const-string v3, "largeImageDownloadUrl"

    .line 962
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 961
    invoke-virtual {v2, v3}, Lim/zego/zim/entity/ZIMImageMessage;->setLargeImageDownloadUrl(Ljava/lang/String;)V

    .line 967
    :cond_8
    :try_start_1
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 968
    const-class v3, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v3, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x1

    .line 969
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 970
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 971
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 974
    :cond_9
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 975
    const-class v3, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v3, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x1

    .line 976
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 977
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 978
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 981
    :cond_a
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 982
    const-class v3, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x1

    .line 983
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 986
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 984
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 988
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 991
    :cond_b
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 992
    const-class v3, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x1

    .line 993
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 996
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 994
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 998
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1001
    :cond_c
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1002
    const-class v3, Lim/zego/zim/entity/ZIMImageMessage;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x1

    .line 1003
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1006
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1004
    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1008
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1011
    :cond_d
    const-string/jumbo v0, "thumbnailHeight"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1012
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    const-string/jumbo v3, "thumbnailHeight"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1013
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1014
    const-string/jumbo v3, "thumbnailHeight"

    .line 1016
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1014
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1018
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1021
    :cond_e
    const-string v0, "largeImageWidth"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1022
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    const-string v3, "largeImageWidth"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1023
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1024
    const-string v3, "largeImageWidth"

    .line 1026
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1024
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1028
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1031
    :cond_f
    const-string v0, "largeImageHeight"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1032
    const-class v0, Lim/zego/zim/entity/ZIMImageMessage;

    const-string v3, "largeImageHeight"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1033
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1034
    const-string v3, "largeImageHeight"

    .line 1036
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1034
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1038
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_16

    :catch_2
    move-exception v0

    .line 1043
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_16

    :catch_3
    move-exception v0

    .line 1041
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_16

    .line 929
    :pswitch_5
    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_10
    move-object/from16 v0, v22

    .line 930
    :goto_2
    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_11
    move-object/from16 v2, v22

    .line 931
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 932
    const-string v4, "messageList"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 933
    const-string v4, "messageList"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 934
    check-cast v5, Ljava/util/HashMap;

    invoke-static {v5}, Lim/zego/RNZIMConverter;->convertMessageFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 938
    :cond_12
    new-instance v4, Lim/zego/zim/entity/ZIMCombineMessage;

    invoke-direct {v4, v0, v2, v3}, Lim/zego/zim/entity/ZIMCombineMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 940
    :try_start_2
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 941
    const-class v0, Lim/zego/zim/entity/ZIMCombineMessage;

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 942
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 943
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 944
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 949
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v0

    .line 947
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_13
    :goto_5
    move-object v2, v4

    goto/16 :goto_16

    .line 920
    :pswitch_6
    const-string/jumbo v0, "subType"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 921
    const-string/jumbo v0, "subType"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_6

    :cond_14
    move v0, v10

    .line 923
    :goto_6
    new-instance v2, Lim/zego/zim/entity/ZIMCustomMessage;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lim/zego/zim/entity/ZIMCustomMessage;-><init>(Ljava/lang/String;I)V

    .line 924
    const-string v0, "searchedContent"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 925
    move-object v0, v2

    check-cast v0, Lim/zego/zim/entity/ZIMCustomMessage;

    const-string v0, "searchedContent"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lim/zego/zim/entity/ZIMCustomMessage;->searchedContent:Ljava/lang/String;

    goto/16 :goto_16

    .line 894
    :pswitch_7
    new-instance v0, Lim/zego/zim/entity/ZIMTipsMessage;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMTipsMessage;-><init>()V

    .line 895
    move-object v2, v0

    check-cast v2, Lim/zego/zim/entity/ZIMTipsMessage;

    .line 897
    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 898
    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_7

    :cond_15
    move v2, v10

    .line 896
    :goto_7
    invoke-static {v2}, Lim/zego/zim/enums/ZIMTipsMessageEvent;->getZIMTipsMessageEvent(I)Lim/zego/zim/enums/ZIMTipsMessageEvent;

    move-result-object v2

    iput-object v2, v0, Lim/zego/zim/entity/ZIMTipsMessage;->event:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 902
    const-string v2, "operatedUser"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 903
    const-string v2, "operatedUser"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertUserOrGroupMemberFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMUserInfo;

    move-result-object v2

    goto :goto_8

    :cond_16
    const/4 v2, 0x0

    .line 904
    :goto_8
    iput-object v2, v0, Lim/zego/zim/entity/ZIMTipsMessage;->operatedUser:Lim/zego/zim/entity/ZIMUserInfo;

    .line 905
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 906
    const-string/jumbo v3, "targetUserList"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 907
    const-string/jumbo v3, "targetUserList"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 908
    check-cast v4, Ljava/util/HashMap;

    invoke-static {v4}, Lim/zego/RNZIMConverter;->convertUserOrGroupMemberFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMUserInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 911
    :cond_17
    iput-object v2, v0, Lim/zego/zim/entity/ZIMTipsMessage;->targetUserList:Ljava/util/ArrayList;

    .line 913
    const-string v2, "changeInfo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 914
    const-string v2, "changeInfo"

    .line 915
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 914
    invoke-static {v2}, Lim/zego/RNZIMConverter;->convertTipsMessageChangeInfoFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;

    move-result-object v2

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    .line 917
    :goto_a
    iput-object v2, v0, Lim/zego/zim/entity/ZIMTipsMessage;->changeInfo:Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;

    goto/16 :goto_15

    .line 829
    :pswitch_8
    new-instance v3, Lim/zego/zim/entity/ZIMRevokeMessage;

    invoke-direct {v3}, Lim/zego/zim/entity/ZIMRevokeMessage;-><init>()V

    .line 831
    :try_start_3
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 832
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 833
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 834
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto :goto_b

    :cond_19
    move/from16 v4, v19

    .line 836
    :goto_b
    invoke-static {v4}, Lim/zego/zim/enums/ZIMRevokeType;->getZIMRevokeType(I)Lim/zego/zim/enums/ZIMRevokeType;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 837
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 839
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 840
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 841
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 842
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_c

    :cond_1a
    move v2, v10

    .line 844
    :goto_c
    invoke-static {v2}, Lim/zego/zim/enums/ZIMMessageType;->getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 845
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 847
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v2, "revokeStatus"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 848
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 849
    const-string v2, "revokeStatus"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 850
    const-string v2, "revokeStatus"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_d

    :cond_1b
    move/from16 v2, v19

    .line 852
    :goto_d
    invoke-static {v2}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->getZIMMessageRevokeStatus(I)Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 853
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 855
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v2, "revokeTimestamp"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 856
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 857
    const-string v2, "revokeTimestamp"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 858
    const-string v2, "revokeTimestamp"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    goto :goto_e

    :cond_1c
    move-wide/from16 v4, v20

    .line 860
    :goto_e
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 861
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 863
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v2, "operatedUserID"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 864
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 865
    const-string v2, "operatedUserID"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 866
    const-string v2, "operatedUserID"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_f

    :cond_1d
    move-object/from16 v2, v22

    .line 868
    :goto_f
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 869
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 871
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v2, "revokeExtendedData"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 872
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 873
    const-string v2, "revokeExtendedData"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 874
    const-string v2, "revokeExtendedData"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_10

    :cond_1e
    move-object/from16 v2, v22

    .line 876
    :goto_10
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 877
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 879
    const-class v0, Lim/zego/zim/entity/ZIMRevokeMessage;

    const-string v2, "originalTextMessageContent"

    .line 880
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 881
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 882
    const-string v2, "originalTextMessageContent"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 883
    const-string v2, "originalTextMessageContent"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_11

    :cond_1f
    move-object/from16 v2, v22

    .line 885
    :goto_11
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 886
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    .line 890
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_12

    :catch_7
    move-exception v0

    .line 888
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_12
    move-object v2, v3

    goto :goto_16

    .line 826
    :pswitch_9
    new-instance v0, Lim/zego/zim/entity/ZIMBarrageMessage;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lim/zego/zim/entity/ZIMBarrageMessage;-><init>(Ljava/lang/String;)V

    goto :goto_15

    .line 816
    :pswitch_a
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 817
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 818
    new-array v3, v2, [B

    move v4, v10

    :goto_13
    if-ge v4, v2, :cond_21

    .line 820
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_20

    goto :goto_14

    :cond_20
    add-int/lit16 v5, v5, -0x100

    :goto_14
    int-to-byte v5, v5

    .line 821
    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 823
    :cond_21
    new-instance v0, Lim/zego/zim/entity/ZIMCommandMessage;

    invoke-direct {v0, v3}, Lim/zego/zim/entity/ZIMCommandMessage;-><init>([B)V

    goto :goto_15

    .line 813
    :pswitch_b
    new-instance v0, Lim/zego/zim/entity/ZIMTextMessage;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lim/zego/zim/entity/ZIMTextMessage;-><init>(Ljava/lang/String;)V

    :cond_22
    :goto_15
    move-object v2, v0

    .line 1130
    :cond_23
    :goto_16
    :try_start_4
    const-string v0, "extendedData"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "extendedData"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_17

    :cond_24
    move-object/from16 v0, v22

    :goto_17
    iput-object v0, v2, Lim/zego/zim/entity/ZIMMessage;->extendedData:Ljava/lang/String;

    .line 1132
    const-string v0, "localExtendedData"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "localExtendedData"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_18

    :cond_25
    move-object/from16 v0, v22

    :goto_18
    iput-object v0, v2, Lim/zego/zim/entity/ZIMMessage;->localExtendedData:Ljava/lang/String;

    .line 1136
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1137
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1138
    invoke-virtual {v0, v2, v15}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1139
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1141
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "messageID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1142
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1143
    const-string v3, "messageID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1144
    const-string v3, "messageID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_19

    :cond_26
    move-wide/from16 v3, v20

    .line 1146
    :goto_19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1147
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1149
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "conversationID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1150
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1151
    const-string v3, "conversationID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1152
    const-string v3, "conversationID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1a

    :cond_27
    move-object/from16 v3, v22

    .line 1154
    :goto_1a
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1155
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1157
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "conversationSeq"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1158
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1159
    const-string v3, "conversationSeq"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1160
    const-string v3, "conversationSeq"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    goto :goto_1b

    :cond_28
    move-wide/from16 v3, v20

    .line 1162
    :goto_1b
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1163
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1165
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "messageSeq"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1166
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1167
    const-string v3, "messageSeq"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1168
    const-string v3, "messageSeq"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    goto :goto_1c

    :cond_29
    move-wide/from16 v3, v20

    .line 1170
    :goto_1c
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1171
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1173
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "senderUserID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1174
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1175
    const-string v3, "senderUserID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v3, "senderUserID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Ljava/lang/String;

    :cond_2a
    move-object/from16 v3, v22

    .line 1176
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1177
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1179
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1180
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1181
    const-string/jumbo v3, "timestamp"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1182
    const-string/jumbo v3, "timestamp"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    goto :goto_1d

    :cond_2b
    move-wide/from16 v3, v20

    .line 1184
    :goto_1d
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1185
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1187
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "localMessageID"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1188
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1189
    const-string v3, "localMessageID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1190
    const-string v3, "localMessageID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1e

    :cond_2c
    move-wide/from16 v3, v20

    .line 1192
    :goto_1e
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1193
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1195
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "conversationType"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1196
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1197
    const-string v3, "conversationType"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1198
    const-string v3, "conversationType"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_1f

    :cond_2d
    move/from16 v3, v19

    .line 1200
    :goto_1f
    invoke-static {v3}, Lim/zego/zim/enums/ZIMConversationType;->getZIMConversationType(I)Lim/zego/zim/enums/ZIMConversationType;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1201
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1203
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "direction"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1204
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1205
    const-string v3, "direction"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1206
    const-string v3, "direction"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_20

    :cond_2e
    move/from16 v3, v19

    .line 1208
    :goto_20
    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageDirection;->getZIMMessageDirection(I)Lim/zego/zim/enums/ZIMMessageDirection;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1209
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1211
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "sentStatus"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1212
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1213
    const-string v3, "sentStatus"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1214
    const-string v3, "sentStatus"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v19

    .line 1216
    :cond_2f
    invoke-static/range {v19 .. v19}, Lim/zego/zim/enums/ZIMMessageSentStatus;->getZIMMessageSentStatus(I)Lim/zego/zim/enums/ZIMMessageSentStatus;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1217
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1219
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "orderKey"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1220
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1221
    const-string v3, "orderKey"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1222
    const-string v3, "orderKey"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v20

    .line 1224
    :cond_30
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1225
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1227
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "receiptStatus"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1228
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1229
    const-string v3, "receiptStatus"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1230
    const-string v3, "receiptStatus"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_21

    :cond_31
    move v3, v10

    .line 1232
    :goto_21
    invoke-static {v3}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->getZIMMessageReceiptStatus(I)Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1233
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1235
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isUserInserted"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1236
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1237
    const-string v3, "isUserInserted"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1238
    const-string v3, "isUserInserted"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_22

    :cond_32
    move v3, v10

    .line 1240
    :goto_22
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1241
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1243
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isBroadcastMessage"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1244
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1245
    const-string v3, "isBroadcastMessage"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1246
    const-string v3, "isBroadcastMessage"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_23

    :cond_33
    move v3, v10

    .line 1248
    :goto_23
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1249
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1251
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isServerMessage"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1252
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1253
    const-string v3, "isServerMessage"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1254
    const-string v3, "isServerMessage"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_24

    :cond_34
    move v3, v10

    .line 1256
    :goto_24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1257
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1259
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isGroupTargetedMessage"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1260
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1261
    const-string v3, "isGroupTargetedMessage"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1262
    const-string v3, "isGroupTargetedMessage"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_25

    :cond_35
    move v3, v10

    .line 1264
    :goto_25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1265
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1267
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "isMentionAll"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1268
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1269
    const-string v3, "isMentionAll"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1270
    const-string v3, "isMentionAll"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_26

    :cond_36
    move v3, v10

    .line 1272
    :goto_26
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1273
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1275
    const-string v0, "mentionedUserIDs"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1276
    const-class v0, Lim/zego/zim/entity/ZIMMessage;

    const-string v3, "mentionedUserIDs"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1277
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1278
    const-string v3, "mentionedUserIDs"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1279
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_27

    :catch_8
    move-exception v0

    .line 1284
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_27

    :catch_9
    move-exception v0

    .line 1282
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 1287
    :cond_37
    :goto_27
    instance-of v0, v2, Lim/zego/zim/entity/ZIMMediaMessage;

    if-eqz v0, :cond_3b

    .line 1288
    const-string v0, "fileDownloadUrl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1289
    move-object v0, v2

    check-cast v0, Lim/zego/zim/entity/ZIMMediaMessage;

    const-string v3, "fileDownloadUrl"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lim/zego/zim/entity/ZIMMediaMessage;->setFileDownloadUrl(Ljava/lang/String;)V

    :cond_38
    move-object/from16 v3, v23

    .line 1292
    :try_start_5
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1293
    const-class v0, Lim/zego/zim/entity/ZIMMediaMessage;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1294
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1295
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1296
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_39
    move-object/from16 v3, v18

    .line 1299
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1300
    const-class v0, Lim/zego/zim/entity/ZIMMediaMessage;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1301
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1302
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1303
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_3a
    move-object/from16 v3, v17

    .line 1306
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1307
    const-class v0, Lim/zego/zim/entity/ZIMMediaMessage;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    .line 1308
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1309
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1310
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_28

    :catch_a
    move-exception v0

    .line 1315
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    :catch_b
    move-exception v0

    .line 1313
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_3b
    :goto_28
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertMessageList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1744
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 1745
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMMessage;

    .line 1746
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertMessageReaction(Lim/zego/zim/entity/ZIMMessageReaction;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 285
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 286
    const-string v1, "conversationID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMMessageReaction;->conversationID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessageReaction;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v1

    const-string v2, "conversationType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 288
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessageReaction;->messageID:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "reactionType"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMMessageReaction;->reactionType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v1, "totalCount"

    iget v2, p0, Lim/zego/zim/entity/ZIMMessageReaction;->totalCount:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string/jumbo v1, "sumCount"

    iget v2, p0, Lim/zego/zim/entity/ZIMMessageReaction;->sumCount:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 292
    const-string v1, "isSelfIncluded"

    iget-boolean v2, p0, Lim/zego/zim/entity/ZIMMessageReaction;->isSelfIncluded:Z

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 295
    iget-object p0, p0, Lim/zego/zim/entity/ZIMMessageReaction;->userList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/entity/ZIMMessageReactionUserInfo;

    .line 296
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 297
    const-string/jumbo v4, "userID"

    iget-object v2, v2, Lim/zego/zim/entity/ZIMMessageReactionUserInfo;->userID:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 300
    :cond_1
    const-string/jumbo p0, "userList"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v0
.end method

.method public static convertMessageReceiptInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReceiptInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 262
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMMessageReceiptInfo;

    .line 264
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 265
    const-string v3, "conversationID"

    iget-object v4, v1, Lim/zego/zim/entity/ZIMMessageReceiptInfo;->conversationID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v3, v1, Lim/zego/zim/entity/ZIMMessageReceiptInfo;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    invoke-virtual {v3}, Lim/zego/zim/enums/ZIMConversationType;->value()I

    move-result v3

    const-string v4, "conversationType"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 267
    iget-wide v3, v1, Lim/zego/zim/entity/ZIMMessageReceiptInfo;->messageID:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "messageID"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v3, v1, Lim/zego/zim/entity/ZIMMessageReceiptInfo;->status:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    invoke-virtual {v3}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->value()I

    move-result v3

    const-string/jumbo v4, "status"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string v3, "readMemberCount"

    iget v4, v1, Lim/zego/zim/entity/ZIMMessageReceiptInfo;->readMemberCount:I

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 270
    const-string/jumbo v3, "unreadMemberCount"

    iget v4, v1, Lim/zego/zim/entity/ZIMMessageReceiptInfo;->unreadMemberCount:I

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v3, "isSelfOperated"

    iget-boolean v4, v1, Lim/zego/zim/entity/ZIMMessageReceiptInfo;->isSelfOperated:Z

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    iget-wide v3, v1, Lim/zego/zim/entity/ZIMMessageReceiptInfo;->readTime:J

    long-to-double v3, v3

    const-string v1, "readTime"

    invoke-interface {v2, v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 274
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertMessageReceivedInfo(Lim/zego/zim/entity/ZIMMessageReceivedInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 58
    const-string v1, "isOfflineMessage"

    iget-boolean p0, p0, Lim/zego/zim/entity/ZIMMessageReceivedInfo;->isOfflineMessage:Z

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static convertMessageSentStatusChangeInfo(Lim/zego/zim/entity/ZIMMessageSentStatusChangeInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 310
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 311
    const-string v1, "reason"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMMessageSentStatusChangeInfo;->reason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessageSentStatusChangeInfo;->status:Lim/zego/zim/enums/ZIMMessageSentStatus;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageSentStatus;->value()I

    move-result v1

    const-string/jumbo v2, "status"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 313
    iget-object p0, p0, Lim/zego/zim/entity/ZIMMessageSentStatusChangeInfo;->message:Lim/zego/zim/entity/ZIMMessage;

    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertMessage(Lim/zego/zim/entity/ZIMMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    const-string v1, "message"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertRepliedInfo(Lim/zego/zim/entity/ZIMMessageRepliedInfo;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1722
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1723
    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessageRepliedInfo;->state:Lim/zego/zim/enums/ZIMMessageRepliedInfoState;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageRepliedInfoState;->value()I

    move-result v1

    const-string/jumbo v2, "state"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1724
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessageRepliedInfo;->messageSeq:J

    long-to-double v1, v1

    const-string v3, "messageSeq"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1725
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessageRepliedInfo;->messageID:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const-string v1, "senderUserID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMMessageRepliedInfo;->senderUserID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessageRepliedInfo;->sentTime:J

    long-to-double v1, v1

    const-string v3, "sentTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1729
    iget-object p0, p0, Lim/zego/zim/entity/ZIMMessageRepliedInfo;->messageInfo:Lim/zego/zim/entity/ZIMMessageLiteInfo;

    .line 1730
    const-string v1, "messageInfo"

    if-nez p0, :cond_1

    .line 1731
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    return-object v0

    .line 1735
    :cond_1
    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertLiteInfo(Lim/zego/zim/entity/ZIMMessageLiteInfo;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertRoomMemberAttributesInfo(Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2123
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2124
    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 2126
    iget-object v2, p0, Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;->attributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2127
    iget-object v4, p0, Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;->attributes:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2129
    :cond_1
    const-string p0, "attributes"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertRoomMemberAttributesInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2139
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2140
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;

    .line 2141
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertRoomMemberAttributesInfo(Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertRoomMemberAttributesOperatedInfo(Lim/zego/zim/entity/ZIMRoomMemberAttributesOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2152
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2153
    iget-object v1, p0, Lim/zego/zim/entity/ZIMRoomMemberAttributesOperatedInfo;->attributesInfo:Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertRoomMemberAttributesInfo(Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "attributesInfo"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 2154
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 2155
    iget-object p0, p0, Lim/zego/zim/entity/ZIMRoomMemberAttributesOperatedInfo;->errorKeys:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2156
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 2158
    :cond_1
    const-string p0, "errorKeys"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v0
.end method

.method public static convertRoomMemberAttributesOperatedInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMRoomMemberAttributesOperatedInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2170
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2171
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMRoomMemberAttributesOperatedInfo;

    .line 2172
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertRoomMemberAttributesOperatedInfo(Lim/zego/zim/entity/ZIMRoomMemberAttributesOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertRoomMemberAttributesUpdateInfo(Lim/zego/zim/entity/ZIMRoomMemberAttributesUpdateInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2183
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2184
    iget-object p0, p0, Lim/zego/zim/entity/ZIMRoomMemberAttributesUpdateInfo;->attributesInfo:Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;

    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertRoomMemberAttributesInfo(Lim/zego/zim/entity/ZIMRoomMemberAttributesInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    const-string v1, "attributesInfo"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public static convertRoomMemberAttributesUpdateInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMRoomMemberAttributesUpdateInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2196
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2197
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMRoomMemberAttributesUpdateInfo;

    .line 2198
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertRoomMemberAttributesUpdateInfo(Lim/zego/zim/entity/ZIMRoomMemberAttributesUpdateInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertRoomMemberInfo(Lim/zego/zim/entity/ZIMRoomMemberInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 171
    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMRoomMemberInfo;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMRoomMemberInfo;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "userAvatarUrl"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMRoomMemberInfo;->userAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "userExtendedData"

    iget-object p0, p0, Lim/zego/zim/entity/ZIMRoomMemberInfo;->userExtendedData:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convertRoomOperatedInfo(Lim/zego/zim/entity/ZIMRoomOperatedInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2209
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2210
    const-string/jumbo v1, "userID"

    iget-object p0, p0, Lim/zego/zim/entity/ZIMRoomOperatedInfo;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convertTipsMessageChangeInfo(Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1757
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1758
    iget-object v1, p0, Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;->type:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1760
    instance-of v1, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;

    if-eqz v1, :cond_1

    .line 1761
    check-cast p0, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;

    iget v1, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;->groupDataFlag:I

    const-string v2, "groupDataFlag"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1762
    const-string v1, "groupName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;->groupName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v1, "groupNotice"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;->groupNotice:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const-string v1, "groupAvatarUrl"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;->groupAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object p0, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;->groupMutedInfo:Lim/zego/zim/entity/ZIMGroupMuteInfo;

    .line 1767
    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertGroupMuteInfo(Lim/zego/zim/entity/ZIMGroupMuteInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    .line 1765
    const-string v1, "groupMutedInfo"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0

    .line 1769
    :cond_1
    instance-of v1, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupMemberChangeInfo;

    if-eqz v1, :cond_2

    .line 1770
    check-cast p0, Lim/zego/zim/entity/ZIMTipsMessageGroupMemberChangeInfo;

    iget v1, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupMemberChangeInfo;->memberRole:I

    const-string v2, "memberRole"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1771
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupMemberChangeInfo;->muteExpiredTime:J

    long-to-double v1, v1

    const-string v3, "muteExpiredTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1772
    iget-object p0, p0, Lim/zego/zim/entity/ZIMTipsMessageGroupMemberChangeInfo;->groupNewOwner:Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    .line 1774
    invoke-static {p0}, Lim/zego/RNZIMConverter;->convertUserOrGroupMember(Lim/zego/zim/entity/ZIMUserInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    .line 1772
    const-string v1, "groupNewOwner"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0

    .line 1776
    :cond_2
    instance-of v1, p0, Lim/zego/zim/entity/ZIMTipsMessagePinStatusChangeInfo;

    if-eqz v1, :cond_3

    .line 1777
    check-cast p0, Lim/zego/zim/entity/ZIMTipsMessagePinStatusChangeInfo;

    iget-boolean p0, p0, Lim/zego/zim/entity/ZIMTipsMessagePinStatusChangeInfo;->isPinned:Z

    const-string v1, "isPinned"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-object v0
.end method

.method public static convertTipsMessageChangeInfoFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1789
    :cond_0
    const-string/jumbo v0, "type"

    .line 1790
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 1789
    invoke-static {p0}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->getZIMTipsMessageChangeInfoType(I)Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    move-result-object p0

    .line 1792
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    invoke-virtual {p0}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 1806
    new-instance p0, Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;

    invoke-direct {p0}, Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;-><init>()V

    return-object p0

    .line 1803
    :pswitch_0
    new-instance p0, Lim/zego/zim/entity/ZIMTipsMessageGroupMemberChangeInfo;

    invoke-direct {p0}, Lim/zego/zim/entity/ZIMTipsMessageGroupMemberChangeInfo;-><init>()V

    return-object p0

    .line 1798
    :pswitch_1
    new-instance p0, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;

    invoke-direct {p0}, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertTipsMessageChangeInfoFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1819
    :cond_0
    const-string/jumbo v0, "type"

    .line 1820
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    .line 1819
    invoke-static {p0}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->getZIMTipsMessageChangeInfoType(I)Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    move-result-object p0

    .line 1822
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    invoke-virtual {p0}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 1836
    new-instance p0, Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;

    invoke-direct {p0}, Lim/zego/zim/entity/ZIMTipsMessageChangeInfo;-><init>()V

    return-object p0

    .line 1833
    :pswitch_0
    new-instance p0, Lim/zego/zim/entity/ZIMTipsMessageGroupMemberChangeInfo;

    invoke-direct {p0}, Lim/zego/zim/entity/ZIMTipsMessageGroupMemberChangeInfo;-><init>()V

    return-object p0

    .line 1828
    :pswitch_1
    new-instance p0, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;

    invoke-direct {p0}, Lim/zego/zim/entity/ZIMTipsMessageGroupChangeInfo;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertUserFullInfo(Lim/zego/zim/entity/ZIMUserFullInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserFullInfo;->baseInfo:Lim/zego/zim/entity/ZIMUserInfo;

    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertUserInfo(Lim/zego/zim/entity/ZIMUserInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "baseInfo"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 97
    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserFullInfo;->baseInfo:Lim/zego/zim/entity/ZIMUserInfo;

    iget-object v1, v1, Lim/zego/zim/entity/ZIMUserInfo;->userAvatarUrl:Ljava/lang/String;

    const-string/jumbo v2, "userAvatarUrl"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "extendedData"

    iget-object p0, p0, Lim/zego/zim/entity/ZIMUserFullInfo;->extendedData:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convertUserInfo(Lim/zego/zim/entity/ZIMUserInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserInfo;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserInfo;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "userAvatarUrl"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserInfo;->userAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "userExtendedData"

    iget-object p0, p0, Lim/zego/zim/entity/ZIMUserInfo;->userExtendedData:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convertUserInfoList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMUserInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMUserInfo;

    .line 84
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertUserInfo(Lim/zego/zim/entity/ZIMUserInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertUserOrGroupMember(Lim/zego/zim/entity/ZIMUserInfo;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1954
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1955
    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserInfo;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserInfo;->userName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    const-string/jumbo v1, "userAvatarUrl"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserInfo;->userAvatarUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const-string/jumbo v1, "userExtendedData"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserInfo;->userExtendedData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    instance-of v1, p0, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    if-eqz v1, :cond_1

    .line 1961
    check-cast p0, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    iget v1, p0, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->memberRole:I

    const-string v2, "memberRole"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1962
    const-string v1, "memberNickname"

    iget-object p0, p0, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->memberNickname:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static convertUserOrGroupMemberFromJsToJava(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMUserInfo;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1973
    :cond_0
    const-string v0, "memberRole"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    invoke-direct {v1}, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Lim/zego/zim/entity/ZIMUserInfo;

    invoke-direct {v1}, Lim/zego/zim/entity/ZIMUserInfo;-><init>()V

    .line 1974
    :goto_0
    const-string/jumbo v2, "userID"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    iput-object v2, v1, Lim/zego/zim/entity/ZIMUserInfo;->userID:Ljava/lang/String;

    .line 1975
    const-string/jumbo v2, "userName"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    iput-object v2, v1, Lim/zego/zim/entity/ZIMUserInfo;->userName:Ljava/lang/String;

    .line 1976
    const-string/jumbo v2, "userAvatarUrl"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v4

    :goto_3
    iput-object v2, v1, Lim/zego/zim/entity/ZIMUserInfo;->userAvatarUrl:Ljava/lang/String;

    .line 1977
    const-string/jumbo v2, "userExtendedData"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v4

    :goto_4
    iput-object v2, v1, Lim/zego/zim/entity/ZIMUserInfo;->userExtendedData:Ljava/lang/String;

    .line 1979
    instance-of v2, v1, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    if-eqz v2, :cond_7

    .line 1980
    move-object v2, v1

    check-cast v2, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->memberRole:I

    .line 1982
    const-string v0, "memberNickname"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    iput-object v4, v2, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->memberNickname:Ljava/lang/String;

    :cond_7
    return-object v1
.end method

.method public static convertUserOrGroupMemberFromJsToJava(Ljava/util/HashMap;)Lim/zego/zim/entity/ZIMUserInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lim/zego/zim/entity/ZIMUserInfo;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1993
    :cond_0
    const-string v0, "memberRole"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    invoke-direct {v1}, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Lim/zego/zim/entity/ZIMUserInfo;

    invoke-direct {v1}, Lim/zego/zim/entity/ZIMUserInfo;-><init>()V

    .line 1994
    :goto_0
    const-string/jumbo v2, "userID"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    iput-object v2, v1, Lim/zego/zim/entity/ZIMUserInfo;->userID:Ljava/lang/String;

    .line 1995
    const-string/jumbo v2, "userName"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    iput-object v2, v1, Lim/zego/zim/entity/ZIMUserInfo;->userName:Ljava/lang/String;

    .line 1996
    const-string/jumbo v2, "userAvatarUrl"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v2, v4

    :goto_3
    iput-object v2, v1, Lim/zego/zim/entity/ZIMUserInfo;->userAvatarUrl:Ljava/lang/String;

    .line 1997
    const-string/jumbo v2, "userExtendedData"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v2, v4

    :goto_4
    iput-object v2, v1, Lim/zego/zim/entity/ZIMUserInfo;->userExtendedData:Ljava/lang/String;

    .line 1999
    instance-of v2, v1, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    if-eqz v2, :cond_8

    .line 2000
    move-object v2, v1

    check-cast v2, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;

    .line 2001
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    iput v0, v2, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->memberRole:I

    .line 2003
    const-string v0, "memberNickname"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    :cond_7
    iput-object v4, v2, Lim/zego/zim/entity/ZIMGroupMemberSimpleInfo;->memberNickname:Ljava/lang/String;

    :cond_8
    return-object v1
.end method

.method public static convertUserOrGroupMemberList(Ljava/util/ArrayList;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMUserInfo;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2014
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 2015
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMUserInfo;

    .line 2016
    invoke-static {v1}, Lim/zego/RNZIMConverter;->convertUserOrGroupMember(Lim/zego/zim/entity/ZIMUserInfo;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertUserRule(Lim/zego/zim/entity/ZIMUserOfflinePushRule;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserOfflinePushRule;->onlinePlatforms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 112
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_0

    .line 114
    :cond_1
    const-string v2, "onlinePlatforms"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 116
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 117
    iget-object p0, p0, Lim/zego/zim/entity/ZIMUserOfflinePushRule;->notToReceiveOfflinePushPlatforms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 118
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_1

    .line 120
    :cond_2
    const-string p0, "notToReceiveOfflinePushPlatforms"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 122
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    .line 123
    const-string v1, "offlinePushRule"

    invoke-interface {p0, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object p0
.end method

.method public static convertUserStatus(Lim/zego/zim/entity/ZIMUserStatus;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "userID"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserStatus;->userID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "customStatus"

    iget-object v2, p0, Lim/zego/zim/entity/ZIMUserStatus;->customStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->onlineStatus:Lim/zego/zim/enums/ZIMUserOnlineStatus;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMUserOnlineStatus;->value()I

    move-result v1

    const-string v2, "onlineStatus"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 136
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->lastUpdateTime:J

    long-to-double v1, v1

    const-string v3, "lastUpdateTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 137
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->lastOnlineStatusUpdateTime:J

    long-to-double v1, v1

    const-string v3, "lastOnlineStatusUpdateTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 138
    iget-wide v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->lastCustomStatusUpdateTime:J

    long-to-double v1, v1

    const-string v3, "lastCustomStatusUpdateTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 140
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 141
    iget-object p0, p0, Lim/zego/zim/entity/ZIMUserStatus;->onlinePlatforms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/enums/ZIMPlatformType;

    .line 142
    invoke-virtual {v2}, Lim/zego/zim/enums/ZIMPlatformType;->value()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_0

    .line 144
    :cond_1
    const-string p0, "onlinePlatforms"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v0
.end method

.method public static convertZIMPushConfig(Lcom/facebook/react/bridge/ReadableMap;)Lim/zego/zim/entity/ZIMPushConfig;
    .locals 7

    .line 20
    const-string v0, "pushConfig"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 21
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    .line 22
    new-instance v0, Lim/zego/zim/entity/ZIMPushConfig;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMPushConfig;-><init>()V

    .line 23
    const-string/jumbo v1, "title"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lim/zego/zim/entity/ZIMPushConfig;->title:Ljava/lang/String;

    .line 24
    const-string v1, "content"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    iput-object v1, v0, Lim/zego/zim/entity/ZIMPushConfig;->content:Ljava/lang/String;

    .line 25
    const-string v1, "payload"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    iput-object v1, v0, Lim/zego/zim/entity/ZIMPushConfig;->payload:Ljava/lang/String;

    .line 26
    const-string v1, "resourcesID"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    iput-object v1, v0, Lim/zego/zim/entity/ZIMPushConfig;->resourcesID:Ljava/lang/String;

    .line 27
    const-string/jumbo v1, "threadID"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    iput-object v1, v0, Lim/zego/zim/entity/ZIMPushConfig;->threadID:Ljava/lang/String;

    .line 28
    const-string v1, "badgeIncrement"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v4

    :goto_5
    iput v1, v0, Lim/zego/zim/entity/ZIMPushConfig;->badgeIncrement:I

    .line 29
    const-string v1, "enableBadge"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v4

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lim/zego/zim/entity/ZIMPushConfig;->enableBadge:Ljava/lang/Boolean;

    .line 30
    const-string/jumbo v1, "voIPConfig"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 31
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 32
    new-instance v2, Lim/zego/zim/entity/ZIMVoIPConfig;

    invoke-direct {v2}, Lim/zego/zim/entity/ZIMVoIPConfig;-><init>()V

    .line 33
    const-string v5, "iOSVoIPHandleType"

    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lim/zego/zim/enums/ZIMCXHandleType;->getZIMCXHandleType(I)Lim/zego/zim/enums/ZIMCXHandleType;

    move-result-object v5

    iput-object v5, v2, Lim/zego/zim/entity/ZIMVoIPConfig;->iOSVoIPHandleType:Lim/zego/zim/enums/ZIMCXHandleType;

    .line 35
    const-string v5, "iOSVoIPHandleValue"

    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_7
    move-object v5, v3

    :goto_7
    iput-object v5, v2, Lim/zego/zim/entity/ZIMVoIPConfig;->iOSVoIPHandleValue:Ljava/lang/String;

    .line 36
    const-string v5, "iOSVoIPHasVideo"

    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lim/zego/zim/entity/ZIMVoIPConfig;->iOSVoIPHasVideo:Ljava/lang/Boolean;

    .line 37
    iput-object v2, v0, Lim/zego/zim/entity/ZIMPushConfig;->voIPConfig:Lim/zego/zim/entity/ZIMVoIPConfig;

    .line 39
    :cond_9
    const-string v1, "privateMessageTemplate"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 40
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    .line 41
    new-instance v1, Lim/zego/zim/entity/ZIMOfflinePushPrivateMessageTemplate;

    invoke-direct {v1}, Lim/zego/zim/entity/ZIMOfflinePushPrivateMessageTemplate;-><init>()V

    .line 42
    const-string/jumbo v2, "templateID"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_a
    move-object v2, v3

    :goto_8
    iput-object v2, v1, Lim/zego/zim/entity/ZIMOfflinePushPrivateMessageTemplate;->templateID:Ljava/lang/String;

    .line 43
    const-string/jumbo v2, "titleParameters"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_b
    move-object v2, v3

    :goto_9
    iput-object v2, v1, Lim/zego/zim/entity/ZIMOfflinePushPrivateMessageTemplate;->titleParameters:Ljava/lang/String;

    .line 44
    const-string v2, "contentParameters"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_c
    iput-object v3, v1, Lim/zego/zim/entity/ZIMOfflinePushPrivateMessageTemplate;->contentParameters:Ljava/lang/String;

    .line 45
    iput-object v1, v0, Lim/zego/zim/entity/ZIMPushConfig;->privateMessageTemplate:Lim/zego/zim/entity/ZIMOfflinePushPrivateMessageTemplate;

    :cond_d
    return-object v0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

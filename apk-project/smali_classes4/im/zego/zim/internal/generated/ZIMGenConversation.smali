.class final Lim/zego/zim/internal/generated/ZIMGenConversation;
.super Ljava/lang/Object;
.source "ZIMGenConversation.java"


# instance fields
.field ConversationAlias:Ljava/lang/String;

.field ConversationAvatarUrl:Ljava/lang/String;

.field ConversationID:Ljava/lang/String;

.field ConversationName:Ljava/lang/String;

.field Draft:Ljava/lang/String;

.field GroupIsDisabled:Z

.field GroupMutedExpiredTime:J

.field IsNullFromJava:Z

.field IsPinned:Z

.field LastMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field Marks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field MentionedInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;",
            ">;"
        }
    .end annotation
.end field

.field NotificationStatus:I

.field OrderKey:J

.field PinnedTime:J

.field Type:I

.field UnreadMessageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIILim/zego/zim/internal/generated/ZIMGenMessage;JIZJLjava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationName",
            "conversationAvatarUrl",
            "conversationAlias",
            "groupMutedExpiredTime",
            "groupIsDisabled",
            "type",
            "unreadMessageCount",
            "lastMessage",
            "orderKey",
            "notificationStatus",
            "isPinned",
            "pinnedTime",
            "mentionedInfoList",
            "draft",
            "marks",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZII",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            "JIZJ",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationID:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationAvatarUrl:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationAlias:Ljava/lang/String;

    .line 57
    iput-wide p5, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->GroupMutedExpiredTime:J

    .line 58
    iput-boolean p7, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->GroupIsDisabled:Z

    .line 59
    iput p8, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Type:I

    .line 60
    iput p9, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->UnreadMessageCount:I

    .line 61
    iput-object p10, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->LastMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 62
    iput-wide p11, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->OrderKey:J

    .line 63
    iput p13, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->NotificationStatus:I

    .line 64
    iput-boolean p14, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->IsPinned:Z

    move-wide p1, p15

    .line 65
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->PinnedTime:J

    move-object/from16 p1, p17

    .line 66
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->MentionedInfoList:Ljava/util/ArrayList;

    move-object/from16 p1, p18

    .line 67
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Draft:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 68
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Marks:Ljava/util/ArrayList;

    move/from16 p1, p20

    .line 69
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getConversationAlias()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationName:Ljava/lang/String;

    return-object v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Draft:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIsDisabled()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->GroupIsDisabled:Z

    return v0
.end method

.method public getGroupMutedExpiredTime()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->GroupMutedExpiredTime:J

    return-wide v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->IsNullFromJava:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->IsPinned:Z

    return v0
.end method

.method public getLastMessage()Lim/zego/zim/internal/generated/ZIMGenMessage;
    .locals 1

    .line 108
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->LastMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-object v0
.end method

.method public getMarks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Marks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMentionedInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->MentionedInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNotificationStatus()I
    .locals 1

    .line 114
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->NotificationStatus:I

    return v0
.end method

.method public getOrderKey()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->OrderKey:J

    return-wide v0
.end method

.method public getPinnedTime()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->PinnedTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 100
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Type:I

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .line 103
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->UnreadMessageCount:I

    return v0
.end method

.method public setConversationAlias(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationAlias"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationAlias:Ljava/lang/String;

    return-void
.end method

.method public setConversationAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationAvatarUrl"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setConversationID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationID"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationID:Ljava/lang/String;

    return-void
.end method

.method public setConversationName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationName"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationName:Ljava/lang/String;

    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draft"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Draft:Ljava/lang/String;

    return-void
.end method

.method public setGroupIsDisabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupIsDisabled"
        }
    .end annotation

    .line 97
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->GroupIsDisabled:Z

    return-void
.end method

.method public setGroupMutedExpiredTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupMutedExpiredTime"
        }
    .end annotation

    .line 92
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->GroupMutedExpiredTime:J

    return-void
.end method

.method public setIsNullFromJava(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNullFromJava"
        }
    .end annotation

    .line 139
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->IsNullFromJava:Z

    return-void
.end method

.method public setIsPinned(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPinned"
        }
    .end annotation

    .line 120
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->IsPinned:Z

    return-void
.end method

.method public setLastMessage(Lim/zego/zim/internal/generated/ZIMGenMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastMessage"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->LastMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-void
.end method

.method public setMarks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Marks:Ljava/util/ArrayList;

    return-void
.end method

.method public setMentionedInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mentionedInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->MentionedInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setNotificationStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationStatus"
        }
    .end annotation

    .line 116
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->NotificationStatus:I

    return-void
.end method

.method public setOrderKey(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderKey"
        }
    .end annotation

    .line 112
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->OrderKey:J

    return-void
.end method

.method public setPinnedTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinnedTime"
        }
    .end annotation

    .line 123
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->PinnedTime:J

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 101
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Type:I

    return-void
.end method

.method public setUnreadMessageCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unreadMessageCount"
        }
    .end annotation

    .line 105
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->UnreadMessageCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenConversation{ConversationID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationAvatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->ConversationAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupMutedExpiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->GroupMutedExpiredTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupIsDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->GroupIsDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UnreadMessageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->UnreadMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LastMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->LastMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OrderKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->OrderKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NotificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->NotificationStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsPinned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->IsPinned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PinnedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->PinnedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MentionedInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->MentionedInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Draft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Draft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Marks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->Marks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversation;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

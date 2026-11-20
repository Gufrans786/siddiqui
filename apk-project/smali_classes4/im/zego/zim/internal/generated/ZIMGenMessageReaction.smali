.class final Lim/zego/zim/internal/generated/ZIMGenMessageReaction;
.super Ljava/lang/Object;
.source "ZIMGenMessageReaction.java"


# instance fields
.field ConversationID:Ljava/lang/String;

.field ConversationType:I

.field IsNullFromJava:Z

.field MessageID:J

.field ReactionSumCount:I

.field ReactionType:Ljava/lang/String;

.field SelfIncluded:Z

.field TotalCount:I

.field UserInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJILjava/lang/String;ZLjava/util/ArrayList;IZ)V
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
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "messageID",
            "totalCount",
            "reactionType",
            "selfIncluded",
            "userInfos",
            "reactionSumCount",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJI",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserInfo;",
            ">;IZ)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ConversationID:Ljava/lang/String;

    .line 35
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ConversationType:I

    .line 36
    iput-wide p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->MessageID:J

    .line 37
    iput p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->TotalCount:I

    .line 38
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ReactionType:Ljava/lang/String;

    .line 39
    iput-boolean p7, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->SelfIncluded:Z

    .line 40
    iput-object p8, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->UserInfos:Ljava/util/ArrayList;

    .line 41
    iput p9, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ReactionSumCount:I

    .line 42
    iput-boolean p10, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ConversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .line 48
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ConversationType:I

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->IsNullFromJava:Z

    return v0
.end method

.method public getMessageID()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->MessageID:J

    return-wide v0
.end method

.method public getReactionSumCount()I
    .locals 1

    .line 70
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ReactionSumCount:I

    return v0
.end method

.method public getReactionType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ReactionType:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfIncluded()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->SelfIncluded:Z

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 56
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->TotalCount:I

    return v0
.end method

.method public getUserInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->UserInfos:Ljava/util/ArrayList;

    return-object v0
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

    .line 46
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ConversationID:Ljava/lang/String;

    return-void
.end method

.method public setConversationType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationType"
        }
    .end annotation

    .line 50
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ConversationType:I

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

    .line 76
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->IsNullFromJava:Z

    return-void
.end method

.method public setMessageID(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageID"
        }
    .end annotation

    .line 54
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->MessageID:J

    return-void
.end method

.method public setReactionSumCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reactionSumCount"
        }
    .end annotation

    .line 72
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ReactionSumCount:I

    return-void
.end method

.method public setReactionType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reactionType"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ReactionType:Ljava/lang/String;

    return-void
.end method

.method public setSelfIncluded(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfIncluded"
        }
    .end annotation

    .line 63
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->SelfIncluded:Z

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalCount"
        }
    .end annotation

    .line 57
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->TotalCount:I

    return-void
.end method

.method public setUserInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->UserInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageReaction{ConversationID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ConversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ConversationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->MessageID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",TotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->TotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ReactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ReactionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SelfIncluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->SelfIncluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->UserInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ReactionSumCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->ReactionSumCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReaction;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageReactionUserChangeInfo.java"


# instance fields
.field Action:I

.field ReactionSumCount:I

.field ReactionType:Ljava/lang/String;

.field UserID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "reactionType",
            "action",
            "reactionSumCount"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->UserID:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->ReactionType:Ljava/lang/String;

    .line 22
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->Action:I

    .line 23
    iput p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->ReactionSumCount:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 32
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->Action:I

    return v0
.end method

.method public getReactionSumCount()I
    .locals 1

    .line 35
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->ReactionSumCount:I

    return v0
.end method

.method public getReactionType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->ReactionType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->UserID:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 33
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->Action:I

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

    .line 37
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->ReactionSumCount:I

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

    .line 30
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->ReactionType:Ljava/lang/String;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userID"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->UserID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageReactionUserChangeInfo{UserID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ReactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->ReactionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->Action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ReactionSumCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;->ReactionSumCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

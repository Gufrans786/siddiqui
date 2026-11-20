.class final Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageReactionSimpleInfo.java"


# instance fields
.field ReactionSumCount:I

.field ReactionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reactionType",
            "reactionSumCount"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;->ReactionType:Ljava/lang/String;

    .line 16
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;->ReactionSumCount:I

    return-void
.end method


# virtual methods
.method public getReactionSumCount()I
    .locals 1

    .line 22
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;->ReactionSumCount:I

    return v0
.end method

.method public getReactionType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;->ReactionType:Ljava/lang/String;

    return-object v0
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

    .line 24
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;->ReactionSumCount:I

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

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;->ReactionType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageReactionSimpleInfo{ReactionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;->ReactionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ReactionSumCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;->ReactionSumCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

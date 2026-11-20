.class final Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageMentionedInfo.java"


# instance fields
.field FromUserID:Ljava/lang/String;

.field MessageID:J

.field MessageSeq:J

.field Type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageID",
            "messageSeq",
            "fromUserID",
            "type"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->MessageID:J

    .line 21
    iput-wide p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->MessageSeq:J

    .line 22
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->FromUserID:Ljava/lang/String;

    .line 23
    iput p6, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->Type:I

    return-void
.end method


# virtual methods
.method public getFromUserID()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->FromUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageID()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->MessageID:J

    return-wide v0
.end method

.method public getMessageSeq()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->MessageSeq:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 35
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->Type:I

    return v0
.end method

.method public setFromUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromUserID"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->FromUserID:Ljava/lang/String;

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

    .line 27
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->MessageID:J

    return-void
.end method

.method public setMessageSeq(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSeq"
        }
    .end annotation

    .line 30
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->MessageSeq:J

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

    .line 36
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->Type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageMentionedInfo{MessageID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->MessageID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->MessageSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FromUserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->FromUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageMentionedInfo;->Type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

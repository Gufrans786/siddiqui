.class final Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageRepliedInfo.java"


# instance fields
.field IsNullFromJava:Z

.field MessageID:J

.field MessageInfo:Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;

.field MessageSeq:J

.field SenderUserID:Ljava/lang/String;

.field SentTime:J

.field State:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;Ljava/lang/String;JJJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "messageInfo",
            "senderUserID",
            "sentTime",
            "messageID",
            "messageSeq",
            "isNullFromJava"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->State:I

    .line 28
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageInfo:Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;

    .line 29
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->SenderUserID:Ljava/lang/String;

    .line 30
    iput-wide p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->SentTime:J

    .line 31
    iput-wide p6, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageID:J

    .line 32
    iput-wide p8, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageSeq:J

    .line 33
    iput-boolean p10, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getMessageID()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageID:J

    return-wide v0
.end method

.method public getMessageInfo()Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;
    .locals 1

    .line 39
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageInfo:Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;

    return-object v0
.end method

.method public getMessageSeq()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageSeq:J

    return-wide v0
.end method

.method public getSenderUserID()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->SenderUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->SentTime:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 36
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->State:I

    return v0
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

    .line 57
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->IsNullFromJava:Z

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

    .line 51
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageID:J

    return-void
.end method

.method public setMessageInfo(Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfo"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageInfo:Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;

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

    .line 54
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageSeq:J

    return-void
.end method

.method public setSenderUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "senderUserID"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->SenderUserID:Ljava/lang/String;

    return-void
.end method

.method public setSentTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sentTime"
        }
    .end annotation

    .line 48
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->SentTime:J

    return-void
.end method

.method public setState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 37
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->State:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageRepliedInfo{State="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->State:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageInfo:Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SenderUserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->SenderUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->SentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->MessageSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

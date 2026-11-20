.class final Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageRootRepliedInfo.java"


# instance fields
.field Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field RepliedCount:I

.field SenderUserID:Ljava/lang/String;

.field SentTime:J

.field State:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;JI)V
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
            "state",
            "message",
            "senderUserID",
            "sentTime",
            "repliedCount"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->State:I

    .line 23
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 24
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->SenderUserID:Ljava/lang/String;

    .line 25
    iput-wide p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->SentTime:J

    .line 26
    iput p6, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->RepliedCount:I

    return-void
.end method


# virtual methods
.method public getMessage()Lim/zego/zim/internal/generated/ZIMGenMessage;
    .locals 1

    .line 32
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-object v0
.end method

.method public getRepliedCount()I
    .locals 1

    .line 41
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->RepliedCount:I

    return v0
.end method

.method public getSenderUserID()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->SenderUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->SentTime:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 29
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->State:I

    return v0
.end method

.method public setMessage(Lim/zego/zim/internal/generated/ZIMGenMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-void
.end method

.method public setRepliedCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repliedCount"
        }
    .end annotation

    .line 42
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->RepliedCount:I

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

    .line 36
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->SenderUserID:Ljava/lang/String;

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

    .line 39
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->SentTime:J

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

    .line 30
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->State:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageRootRepliedInfo{State="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->State:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SenderUserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->SenderUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->SentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RepliedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;->RepliedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

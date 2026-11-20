.class final Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageReceiptInfo.java"


# instance fields
.field ConversationID:Ljava/lang/String;

.field ConversationType:I

.field IsSelfOperated:Z

.field MessageId:J

.field ReadMemberCount:I

.field ReadTime:J

.field Status:I

.field UnreadMemberCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;IIIZJ)V
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
            0x0
        }
        names = {
            "status",
            "messageId",
            "conversationID",
            "conversationType",
            "readMemberCount",
            "unreadMemberCount",
            "isSelfOperated",
            "readTime"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->Status:I

    .line 30
    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->MessageId:J

    .line 31
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ConversationID:Ljava/lang/String;

    .line 32
    iput p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ConversationType:I

    .line 33
    iput p6, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ReadMemberCount:I

    .line 34
    iput p7, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->UnreadMemberCount:I

    .line 35
    iput-boolean p8, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->IsSelfOperated:Z

    .line 36
    iput-wide p9, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ReadTime:J

    return-void
.end method


# virtual methods
.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ConversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .line 48
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ConversationType:I

    return v0
.end method

.method public getIsSelfOperated()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->IsSelfOperated:Z

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->MessageId:J

    return-wide v0
.end method

.method public getReadMemberCount()I
    .locals 1

    .line 53
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ReadMemberCount:I

    return v0
.end method

.method public getReadTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ReadTime:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 39
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->Status:I

    return v0
.end method

.method public getUnreadMemberCount()I
    .locals 1

    .line 56
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->UnreadMemberCount:I

    return v0
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
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ConversationID:Ljava/lang/String;

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
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ConversationType:I

    return-void
.end method

.method public setIsSelfOperated(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelfOperated"
        }
    .end annotation

    .line 62
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->IsSelfOperated:Z

    return-void
.end method

.method public setMessageId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageId"
        }
    .end annotation

    .line 43
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->MessageId:J

    return-void
.end method

.method public setReadMemberCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readMemberCount"
        }
    .end annotation

    .line 54
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ReadMemberCount:I

    return-void
.end method

.method public setReadTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readTime"
        }
    .end annotation

    .line 65
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ReadTime:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 40
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->Status:I

    return-void
.end method

.method public setUnreadMemberCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unreadMemberCount"
        }
    .end annotation

    .line 58
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->UnreadMemberCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageReceiptInfo{Status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->Status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->MessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ConversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ConversationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ReadMemberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ReadMemberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UnreadMemberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->UnreadMemberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsSelfOperated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->IsSelfOperated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ReadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;->ReadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

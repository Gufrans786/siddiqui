.class final Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageRootRepliedCountInfo.java"


# instance fields
.field ConversationID:Ljava/lang/String;

.field ConversationType:I

.field Count:I

.field MessageID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;I)V
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
            "count",
            "conversationID",
            "conversationType"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->MessageID:J

    .line 21
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->Count:I

    .line 22
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->ConversationID:Ljava/lang/String;

    .line 23
    iput p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->ConversationType:I

    return-void
.end method


# virtual methods
.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->ConversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .line 35
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->ConversationType:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 29
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->Count:I

    return v0
.end method

.method public getMessageID()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->MessageID:J

    return-wide v0
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

    .line 33
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->ConversationID:Ljava/lang/String;

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

    .line 37
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->ConversationType:I

    return-void
.end method

.method public setCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 30
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->Count:I

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
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->MessageID:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageRootRepliedCountInfo{MessageID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->MessageID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->ConversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;->ConversationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

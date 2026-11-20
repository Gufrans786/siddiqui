.class public Lim/zego/zim/entity/ZIMMessage;
.super Ljava/lang/Object;
.source "ZIMMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cbInnerID:Ljava/lang/String;

.field private conversationID:Ljava/lang/String;

.field private conversationSeq:J

.field private conversationType:Lim/zego/zim/enums/ZIMConversationType;

.field private direction:Lim/zego/zim/enums/ZIMMessageDirection;

.field private editedTime:J

.field private editorUserID:Ljava/lang/String;

.field public extendedData:Ljava/lang/String;

.field private isBroadcastMessage:Z

.field private isGroupTargetedMessage:Z

.field private isMentionAll:Z

.field private isServerMessage:Z

.field private isUserInserted:Z

.field public localExtendedData:Ljava/lang/String;

.field private localMessageID:J

.field private mentionedUserIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messageID:J

.field private messageSeq:J

.field private orderKey:J

.field private pinnedTime:J

.field private pinnedUserID:Ljava/lang/String;

.field private reactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReaction;",
            ">;"
        }
    .end annotation
.end field

.field private receiptStatus:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

.field private repliedInfo:Lim/zego/zim/entity/ZIMMessageRepliedInfo;

.field private rootRepliedCount:I

.field private senderUserID:Ljava/lang/String;

.field private sentStatus:Lim/zego/zim/enums/ZIMMessageSentStatus;

.field private timestamp:J

.field private type:Lim/zego/zim/enums/ZIMMessageType;


# direct methods
.method public constructor <init>(Lim/zego/zim/enums/ZIMMessageType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->mentionedUserIDs:Ljava/util/ArrayList;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->extendedData:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->localExtendedData:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->reactions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->repliedInfo:Lim/zego/zim/entity/ZIMMessageRepliedInfo;

    .line 152
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessage;->type:Lim/zego/zim/enums/ZIMMessageType;

    return-void
.end method


# virtual methods
.method public getCbInnerID()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->cbInnerID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->conversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationSeq()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessage;->conversationSeq:J

    return-wide v0
.end method

.method public getConversationType()Lim/zego/zim/enums/ZIMConversationType;
    .locals 1

    .line 168
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    return-object v0
.end method

.method public getDirection()Lim/zego/zim/enums/ZIMMessageDirection;
    .locals 1

    .line 170
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->direction:Lim/zego/zim/enums/ZIMMessageDirection;

    return-object v0
.end method

.method public getEditedTime()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessage;->editedTime:J

    return-wide v0
.end method

.method public getEditorUserID()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->editorUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedData()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->extendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalExtendedData()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->localExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMessageID()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessage;->localMessageID:J

    return-wide v0
.end method

.method public getMentionedUserIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->mentionedUserIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessageID()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessage;->messageID:J

    return-wide v0
.end method

.method public getMessageSeq()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessage;->messageSeq:J

    return-wide v0
.end method

.method public getOrderKey()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessage;->orderKey:J

    return-wide v0
.end method

.method public getPinnedTime()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessage;->pinnedTime:J

    return-wide v0
.end method

.method public getPinnedUserID()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->pinnedUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getReactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReaction;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->reactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReceiptStatus()Lim/zego/zim/enums/ZIMMessageReceiptStatus;
    .locals 1

    .line 174
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->receiptStatus:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    return-object v0
.end method

.method public getRepliedInfo()Lim/zego/zim/entity/ZIMMessageRepliedInfo;
    .locals 1

    .line 185
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->repliedInfo:Lim/zego/zim/entity/ZIMMessageRepliedInfo;

    return-object v0
.end method

.method public getRootRepliedCount()I
    .locals 1

    .line 140
    iget v0, p0, Lim/zego/zim/entity/ZIMMessage;->rootRepliedCount:I

    return v0
.end method

.method public getSenderUserID()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->senderUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSentStatus()Lim/zego/zim/enums/ZIMMessageSentStatus;
    .locals 1

    .line 172
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->sentStatus:Lim/zego/zim/enums/ZIMMessageSentStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessage;->timestamp:J

    return-wide v0
.end method

.method public getType()Lim/zego/zim/enums/ZIMMessageType;
    .locals 1

    .line 154
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessage;->type:Lim/zego/zim/enums/ZIMMessageType;

    return-object v0
.end method

.method public isBroadcastMessage()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lim/zego/zim/entity/ZIMMessage;->isBroadcastMessage:Z

    return v0
.end method

.method public isGroupTargetedMessage()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lim/zego/zim/entity/ZIMMessage;->isGroupTargetedMessage:Z

    return v0
.end method

.method public isMentionAll()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lim/zego/zim/entity/ZIMMessage;->isMentionAll:Z

    return v0
.end method

.method public isServerMessage()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lim/zego/zim/entity/ZIMMessage;->isServerMessage:Z

    return v0
.end method

.method public isUserInserted()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lim/zego/zim/entity/ZIMMessage;->isUserInserted:Z

    return v0
.end method

.method public setExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extendedData"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessage;->extendedData:Ljava/lang/String;

    return-void
.end method

.method public setIsMentionAll(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMentionAll"
        }
    .end annotation

    .line 142
    iput-boolean p1, p0, Lim/zego/zim/entity/ZIMMessage;->isMentionAll:Z

    return-void
.end method

.method public setLocalExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localExtendedData"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessage;->localExtendedData:Ljava/lang/String;

    return-void
.end method

.method public setMentionedUserIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mentionedUserIDs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessage;->mentionedUserIDs:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMMessage{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->type:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessage;->messageID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conversationID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->conversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', conversationSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessage;->conversationSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", senderUserID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->senderUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessage;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localMessageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessage;->localMessageID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->direction:Lim/zego/zim/enums/ZIMMessageDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->sentStatus:Lim/zego/zim/enums/ZIMMessageSentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiptStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->receiptStatus:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessage;->orderKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUserInserted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/entity/ZIMMessage;->isUserInserted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBroadcastMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/entity/ZIMMessage;->isBroadcastMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMentionAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/entity/ZIMMessage;->isMentionAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mentionedUserIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->mentionedUserIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extendedData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->extendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', localExtendedData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->localExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', messageSeq=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessage;->messageSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', rootRepliedCount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMMessage;->rootRepliedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isServerMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/entity/ZIMMessage;->isServerMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repliedInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->repliedInfo:Lim/zego/zim/entity/ZIMMessageRepliedInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cbInnerID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->cbInnerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", editorUserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->editorUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", editedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessage;->editedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGroupTargetedMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/entity/ZIMMessage;->isGroupTargetedMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinnedUserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessage;->pinnedUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinnedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMessage;->pinnedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lim/zego/zim/entity/ZIMRevokeMessage;
.super Lim/zego/zim/entity/ZIMMessage;
.source "ZIMRevokeMessage.java"


# instance fields
.field private operatedUserID:Ljava/lang/String;

.field private originalMessageType:Lim/zego/zim/enums/ZIMMessageType;

.field private originalTextMessageContent:Ljava/lang/String;

.field private revokeExtendedData:Ljava/lang/String;

.field private revokeStatus:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

.field private revokeTimestamp:J

.field private revokeType:Lim/zego/zim/enums/ZIMRevokeType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->REVOKE:Lim/zego/zim/enums/ZIMMessageType;

    invoke-direct {p0, v0}, Lim/zego/zim/entity/ZIMMessage;-><init>(Lim/zego/zim/enums/ZIMMessageType;)V

    return-void
.end method


# virtual methods
.method public getOperatedUserID()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->operatedUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalMessageType()Lim/zego/zim/enums/ZIMMessageType;
    .locals 1

    .line 31
    iget-object v0, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->originalMessageType:Lim/zego/zim/enums/ZIMMessageType;

    return-object v0
.end method

.method public getOriginalTextMessageContent()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->originalTextMessageContent:Ljava/lang/String;

    return-object v0
.end method

.method public getRevokeExtendedData()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->revokeExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getRevokeStatus()Lim/zego/zim/enums/ZIMMessageRevokeStatus;
    .locals 1

    .line 37
    iget-object v0, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->revokeStatus:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    return-object v0
.end method

.method public getRevokeTimestamp()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->revokeTimestamp:J

    return-wide v0
.end method

.method public getRevokeType()Lim/zego/zim/enums/ZIMRevokeType;
    .locals 1

    .line 27
    iget-object v0, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->revokeType:Lim/zego/zim/enums/ZIMRevokeType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lim/zego/zim/entity/ZIMMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMRevokeMessage{revokeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->revokeType:Lim/zego/zim/enums/ZIMRevokeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revokeTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->revokeTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operatedUserID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->operatedUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', originalMessageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->originalMessageType:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalTextMessageContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->originalTextMessageContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', revokeExtendedData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->revokeExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', revokeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMRevokeMessage;->revokeStatus:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

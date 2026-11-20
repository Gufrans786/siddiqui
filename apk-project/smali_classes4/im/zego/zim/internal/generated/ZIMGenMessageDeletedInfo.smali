.class final Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageDeletedInfo.java"


# instance fields
.field ConversationID:Ljava/lang/String;

.field ConversationType:I

.field IsDeleteConversationAllMessage:Z

.field IsNullFromJava:Z

.field MessageDeleteType:I

.field MessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLjava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "messageDeleteType",
            "isDeleteConversationAllMessage",
            "messageList",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->ConversationID:Ljava/lang/String;

    .line 28
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->ConversationType:I

    .line 29
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->MessageDeleteType:I

    .line 30
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->IsDeleteConversationAllMessage:Z

    .line 31
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->MessageList:Ljava/util/ArrayList;

    .line 32
    iput-boolean p6, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->ConversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .line 38
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->ConversationType:I

    return v0
.end method

.method public getIsDeleteConversationAllMessage()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->IsDeleteConversationAllMessage:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getMessageDeleteType()I
    .locals 1

    .line 43
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->MessageDeleteType:I

    return v0
.end method

.method public getMessageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->MessageList:Ljava/util/ArrayList;

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

    .line 36
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->ConversationID:Ljava/lang/String;

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

    .line 40
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->ConversationType:I

    return-void
.end method

.method public setIsDeleteConversationAllMessage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDeleteConversationAllMessage"
        }
    .end annotation

    .line 50
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->IsDeleteConversationAllMessage:Z

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

    .line 59
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setMessageDeleteType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageDeleteType"
        }
    .end annotation

    .line 45
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->MessageDeleteType:I

    return-void
.end method

.method public setMessageList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->MessageList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageDeletedInfo{ConversationID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->ConversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->ConversationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageDeleteType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->MessageDeleteType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsDeleteConversationAllMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->IsDeleteConversationAllMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->MessageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

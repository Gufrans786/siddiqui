.class public Lim/zego/zim/entity/ZIMMessageDeletedInfo;
.super Ljava/lang/Object;
.source "ZIMMessageDeletedInfo.java"


# instance fields
.field public conversationID:Ljava/lang/String;

.field public conversationType:Lim/zego/zim/enums/ZIMConversationType;

.field public isDeleteConversationAllMessage:Z

.field public messageDeleteType:Lim/zego/zim/enums/ZIMMessageDeleteType;

.field public messageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsDeleteConversationAllMessage()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->isDeleteConversationAllMessage:Z

    return v0
.end method

.method public getMessageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->messageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setIsDeleteConversationAllMessage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDeleted"
        }
    .end annotation

    .line 18
    iput-boolean p1, p0, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->isDeleteConversationAllMessage:Z

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
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->messageList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMMessageDeletedInfo{conversationID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->conversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', conversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageDeleteType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->messageDeleteType:Lim/zego/zim/enums/ZIMMessageDeleteType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDeleteConversationAllMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->isDeleteConversationAllMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessageDeletedInfo;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

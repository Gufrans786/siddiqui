.class public Lim/zego/zim/entity/ZIMConversationSearchInfo;
.super Ljava/lang/Object;
.source "ZIMConversationSearchInfo.java"


# instance fields
.field public conversation:Lim/zego/zim/entity/ZIMConversation;

.field public conversationID:Ljava/lang/String;

.field public conversationType:Lim/zego/zim/enums/ZIMConversationType;

.field public messageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessage;",
            ">;"
        }
    .end annotation
.end field

.field public totalMessageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversation()Lim/zego/zim/entity/ZIMConversation;
    .locals 1

    .line 24
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->conversation:Lim/zego/zim/entity/ZIMConversation;

    return-object v0
.end method

.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->conversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()Lim/zego/zim/enums/ZIMConversationType;
    .locals 1

    .line 18
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    return-object v0
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

    .line 34
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->messageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalMessageCount()I
    .locals 1

    .line 28
    iget v0, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->totalMessageCount:I

    return v0
.end method

.method public setConversation(Lim/zego/zim/entity/ZIMConversation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversation"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->conversation:Lim/zego/zim/entity/ZIMConversation;

    return-void
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

    .line 16
    iput-object p1, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->conversationID:Ljava/lang/String;

    return-void
.end method

.method public setConversationType(Lim/zego/zim/enums/ZIMConversationType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationType"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

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

    .line 37
    iput-object p1, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->messageList:Ljava/util/ArrayList;

    return-void
.end method

.method public setTotalMessageCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalMessageCount"
        }
    .end annotation

    .line 31
    iput p1, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->totalMessageCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMConversationSearchInfo{conversationID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->conversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', conversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->conversationType:Lim/zego/zim/enums/ZIMConversationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalMessageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->totalMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMConversationSearchInfo;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

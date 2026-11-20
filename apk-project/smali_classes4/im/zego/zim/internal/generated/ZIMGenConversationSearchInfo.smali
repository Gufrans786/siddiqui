.class final Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;
.super Ljava/lang/Object;
.source "ZIMGenConversationSearchInfo.java"


# instance fields
.field Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

.field ConversationID:Ljava/lang/String;

.field ConversationType:I

.field IsNullFromJava:Z

.field Message:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;"
        }
    .end annotation
.end field

.field TotalMessageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenConversation;ILjava/util/ArrayList;Z)V
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
            "conversation",
            "totalMessageCount",
            "message",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lim/zego/zim/internal/generated/ZIMGenConversation;",
            "I",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->ConversationID:Ljava/lang/String;

    .line 28
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->ConversationType:I

    .line 29
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    .line 30
    iput p4, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->TotalMessageCount:I

    .line 31
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->Message:Ljava/util/ArrayList;

    .line 32
    iput-boolean p6, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getConversation()Lim/zego/zim/internal/generated/ZIMGenConversation;
    .locals 1

    .line 43
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    return-object v0
.end method

.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->ConversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .line 38
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->ConversationType:I

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getMessage()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->Message:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalMessageCount()I
    .locals 1

    .line 48
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->TotalMessageCount:I

    return v0
.end method

.method public setConversation(Lim/zego/zim/internal/generated/ZIMGenConversation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversation"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

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

    .line 36
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->ConversationID:Ljava/lang/String;

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
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->ConversationType:I

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

    .line 57
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setMessage(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
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

    .line 54
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->Message:Ljava/util/ArrayList;

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

    .line 50
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->TotalMessageCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenConversationSearchInfo{ConversationID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->ConversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->ConversationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Conversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",TotalMessageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->TotalMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->Message:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

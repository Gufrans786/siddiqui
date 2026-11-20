.class final Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;
.super Ljava/lang/Object;
.source "ZIMGenConversationChangeInfo.java"


# instance fields
.field Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

.field Event:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenConversation;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "conversation",
            "event"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;->Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    .line 16
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;->Event:I

    return-void
.end method


# virtual methods
.method public getConversation()Lim/zego/zim/internal/generated/ZIMGenConversation;
    .locals 1

    .line 19
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;->Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    return-object v0
.end method

.method public getEvent()I
    .locals 1

    .line 24
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;->Event:I

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

    .line 21
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;->Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    return-void
.end method

.method public setEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 25
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;->Event:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenConversationChangeInfo{Conversation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;->Conversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;->Event:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

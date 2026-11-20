.class final Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;
.super Ljava/lang/Object;
.source "ZIMGenConversationBaseInfo.java"


# instance fields
.field ConversationID:Ljava/lang/String;

.field ConversationType:I

.field IsNullFromJava:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "isNullFromJava"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->ConversationID:Ljava/lang/String;

    .line 19
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->ConversationType:I

    .line 20
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->ConversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .line 26
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->ConversationType:I

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->IsNullFromJava:Z

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

    .line 24
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->ConversationID:Ljava/lang/String;

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

    .line 28
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->ConversationType:I

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

    .line 32
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->IsNullFromJava:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenConversationBaseInfo{ConversationID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->ConversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->ConversationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;
.super Ljava/lang/Object;
.source "ZIMGenConversationQueryConfig.java"


# instance fields
.field Count:I

.field IsNullFromJava:Z

.field NextConversation:Lim/zego/zim/internal/generated/ZIMGenConversation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenConversation;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nextConversation",
            "count",
            "isNullFromJava"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->NextConversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    .line 19
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->Count:I

    .line 20
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 28
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->Count:I

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getNextConversation()Lim/zego/zim/internal/generated/ZIMGenConversation;
    .locals 1

    .line 23
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->NextConversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    return-object v0
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

    .line 29
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->Count:I

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
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setNextConversation(Lim/zego/zim/internal/generated/ZIMGenConversation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextConversation"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->NextConversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenConversationQueryConfig{NextConversation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->NextConversation:Lim/zego/zim/internal/generated/ZIMGenConversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationQueryConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

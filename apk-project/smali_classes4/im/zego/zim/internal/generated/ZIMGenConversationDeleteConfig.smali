.class final Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;
.super Ljava/lang/Object;
.source "ZIMGenConversationDeleteConfig.java"


# instance fields
.field IsAlsoDeleteServerConversation:Z

.field IsNullFromJava:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isAlsoDeleteServerConversation",
            "isNullFromJava"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;->IsAlsoDeleteServerConversation:Z

    .line 17
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsAlsoDeleteServerConversation()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;->IsAlsoDeleteServerConversation:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;->IsNullFromJava:Z

    return v0
.end method

.method public setIsAlsoDeleteServerConversation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAlsoDeleteServerConversation"
        }
    .end annotation

    .line 22
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;->IsAlsoDeleteServerConversation:Z

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

    .line 26
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;->IsNullFromJava:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenConversationDeleteConfig{IsAlsoDeleteServerConversation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;->IsAlsoDeleteServerConversation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationDeleteConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

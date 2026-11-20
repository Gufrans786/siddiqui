.class final Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageReceivedInfo.java"


# instance fields
.field IsOfflineMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOfflineMessage"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;->IsOfflineMessage:Z

    return-void
.end method


# virtual methods
.method public getIsOfflineMessage()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;->IsOfflineMessage:Z

    return v0
.end method

.method public setIsOfflineMessage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOfflineMessage"
        }
    .end annotation

    .line 18
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;->IsOfflineMessage:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageReceivedInfo{IsOfflineMessage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;->IsOfflineMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

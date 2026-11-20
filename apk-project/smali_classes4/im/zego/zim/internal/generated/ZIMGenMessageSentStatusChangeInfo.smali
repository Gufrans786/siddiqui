.class final Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageSentStatusChangeInfo.java"


# instance fields
.field IsNullFromJava:Z

.field Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field Reason:Ljava/lang/String;

.field Status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenMessage;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "status",
            "reason",
            "isNullFromJava"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 21
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Status:I

    .line 22
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Reason:Ljava/lang/String;

    .line 23
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getMessage()Lim/zego/zim/internal/generated/ZIMGenMessage;
    .locals 1

    .line 26
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 29
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Status:I

    return v0
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

    .line 36
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setMessage(Lim/zego/zim/internal/generated/ZIMGenMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Reason:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 30
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageSentStatusChangeInfo{Message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->Reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

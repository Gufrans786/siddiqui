.class final Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessagePinStatusChangeInfo.java"


# instance fields
.field Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field PinStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "pinStatus"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 16
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;->PinStatus:I

    return-void
.end method


# virtual methods
.method public getMessage()Lim/zego/zim/internal/generated/ZIMGenMessage;
    .locals 1

    .line 19
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-object v0
.end method

.method public getPinStatus()I
    .locals 1

    .line 22
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;->PinStatus:I

    return v0
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

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-void
.end method

.method public setPinStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinStatus"
        }
    .end annotation

    .line 23
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;->PinStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessagePinStatusChangeInfo{Message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PinStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;->PinStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

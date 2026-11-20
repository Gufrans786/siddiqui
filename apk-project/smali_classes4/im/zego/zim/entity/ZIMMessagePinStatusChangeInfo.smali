.class public Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;
.super Ljava/lang/Object;
.source "ZIMMessagePinStatusChangeInfo.java"


# instance fields
.field private message:Lim/zego/zim/entity/ZIMMessage;

.field private pinStatus:Lim/zego/zim/enums/ZIMMessagePinStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Lim/zego/zim/entity/ZIMMessage;
    .locals 1

    .line 9
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;->message:Lim/zego/zim/entity/ZIMMessage;

    return-object v0
.end method

.method public getPinStatus()Lim/zego/zim/enums/ZIMMessagePinStatus;
    .locals 1

    .line 13
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;->pinStatus:Lim/zego/zim/enums/ZIMMessagePinStatus;

    return-object v0
.end method

.method public setMessage(Lim/zego/zim/entity/ZIMMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;->message:Lim/zego/zim/entity/ZIMMessage;

    return-void
.end method

.method public setPinStatus(Lim/zego/zim/enums/ZIMMessagePinStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinStatus"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;->pinStatus:Lim/zego/zim/enums/ZIMMessagePinStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMMessagePinStatusChangeInfo{message=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;->message:Lim/zego/zim/entity/ZIMMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pinStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessagePinStatusChangeInfo;->pinStatus:Lim/zego/zim/enums/ZIMMessagePinStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;
.super Ljava/lang/Object;
.source "ZIMGenCallInvitationTimeoutInfo.java"


# instance fields
.field AlsoInvokeDiscardMethod:Z

.field Mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "alsoInvokeDiscardMethod"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;->Mode:I

    .line 16
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;->AlsoInvokeDiscardMethod:Z

    return-void
.end method


# virtual methods
.method public getAlsoInvokeDiscardMethod()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;->AlsoInvokeDiscardMethod:Z

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 19
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;->Mode:I

    return v0
.end method

.method public setAlsoInvokeDiscardMethod(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alsoInvokeDiscardMethod"
        }
    .end annotation

    .line 24
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;->AlsoInvokeDiscardMethod:Z

    return-void
.end method

.method public setMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 20
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;->Mode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallInvitationTimeoutInfo{Mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;->Mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",AlsoInvokeDiscardMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;->AlsoInvokeDiscardMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

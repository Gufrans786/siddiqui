.class final Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;
.super Ljava/lang/Object;
.source "ZIMGenCallInviteConfig.java"


# instance fields
.field EnableNotReceivedCheck:Z

.field EnableOfflinePush:Z

.field ExtendedData:Ljava/lang/String;

.field IsNullFromJava:Z

.field Mode:I

.field PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

.field Timeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenPushConfig;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeout",
            "extendedData",
            "mode",
            "pushConfig",
            "enableOfflinePush",
            "isNullFromJava",
            "enableNotReceivedCheck"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->Timeout:I

    .line 28
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->ExtendedData:Ljava/lang/String;

    .line 29
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->Mode:I

    .line 30
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    .line 31
    iput-boolean p5, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->EnableOfflinePush:Z

    .line 32
    iput-boolean p6, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->IsNullFromJava:Z

    .line 33
    iput-boolean p7, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->EnableNotReceivedCheck:Z

    return-void
.end method


# virtual methods
.method public getEnableNotReceivedCheck()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->EnableNotReceivedCheck:Z

    return v0
.end method

.method public getEnableOfflinePush()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->EnableOfflinePush:Z

    return v0
.end method

.method public getExtendedData()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->ExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 42
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->Mode:I

    return v0
.end method

.method public getPushConfig()Lim/zego/zim/internal/generated/ZIMGenPushConfig;
    .locals 1

    .line 45
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 36
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->Timeout:I

    return v0
.end method

.method public setEnableNotReceivedCheck(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableNotReceivedCheck"
        }
    .end annotation

    .line 58
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->EnableNotReceivedCheck:Z

    return-void
.end method

.method public setEnableOfflinePush(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableOfflinePush"
        }
    .end annotation

    .line 50
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->EnableOfflinePush:Z

    return-void
.end method

.method public setExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extendedData"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->ExtendedData:Ljava/lang/String;

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

    .line 54
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->IsNullFromJava:Z

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

    .line 43
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->Mode:I

    return-void
.end method

.method public setPushConfig(Lim/zego/zim/internal/generated/ZIMGenPushConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pushConfig"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 37
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->Timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallInviteConfig{Timeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->Timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->ExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->Mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PushConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableOfflinePush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->EnableOfflinePush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableNotReceivedCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInviteConfig;->EnableNotReceivedCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

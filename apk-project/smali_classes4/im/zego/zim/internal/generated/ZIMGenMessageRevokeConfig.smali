.class final Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;
.super Ljava/lang/Object;
.source "ZIMGenMessageRevokeConfig.java"


# instance fields
.field EnableOfflinePush:Z

.field IsNullFromJava:Z

.field PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

.field RevokeExtendedData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenPushConfig;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pushConfig",
            "revokeExtendedData",
            "enableOfflinePush",
            "isNullFromJava"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    .line 21
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->RevokeExtendedData:Ljava/lang/String;

    .line 22
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->EnableOfflinePush:Z

    .line 23
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getEnableOfflinePush()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->EnableOfflinePush:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getPushConfig()Lim/zego/zim/internal/generated/ZIMGenPushConfig;
    .locals 1

    .line 26
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-object v0
.end method

.method public getRevokeExtendedData()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->RevokeExtendedData:Ljava/lang/String;

    return-object v0
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

    .line 36
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->EnableOfflinePush:Z

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

    .line 40
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->IsNullFromJava:Z

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

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-void
.end method

.method public setRevokeExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "revokeExtendedData"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->RevokeExtendedData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageRevokeConfig{PushConfig="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RevokeExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->RevokeExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableOfflinePush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->EnableOfflinePush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageRevokeConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

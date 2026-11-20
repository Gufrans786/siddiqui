.class final Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;
.super Ljava/lang/Object;
.source "ZIMGenCallingInviteConfig.java"


# instance fields
.field EnableOfflinePush:Z

.field IsNullFromJava:Z

.field PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenPushConfig;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pushConfig",
            "enableOfflinePush",
            "isNullFromJava"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    .line 19
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->EnableOfflinePush:Z

    .line 20
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getEnableOfflinePush()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->EnableOfflinePush:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getPushConfig()Lim/zego/zim/internal/generated/ZIMGenPushConfig;
    .locals 1

    .line 23
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

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

    .line 28
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->EnableOfflinePush:Z

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
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->IsNullFromJava:Z

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

    .line 24
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallingInviteConfig{PushConfig="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableOfflinePush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->EnableOfflinePush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInviteConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

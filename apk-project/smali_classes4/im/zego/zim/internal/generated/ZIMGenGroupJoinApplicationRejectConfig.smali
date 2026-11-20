.class final Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;
.super Ljava/lang/Object;
.source "ZIMGenGroupJoinApplicationRejectConfig.java"


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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    .line 20
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->EnableOfflinePush:Z

    .line 21
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getEnableOfflinePush()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->EnableOfflinePush:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getPushConfig()Lim/zego/zim/internal/generated/ZIMGenPushConfig;
    .locals 1

    .line 24
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

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

    .line 29
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->EnableOfflinePush:Z

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

    .line 33
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->IsNullFromJava:Z

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

    .line 25
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupJoinApplicationRejectConfig{PushConfig="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableOfflinePush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->EnableOfflinePush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupJoinApplicationRejectConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

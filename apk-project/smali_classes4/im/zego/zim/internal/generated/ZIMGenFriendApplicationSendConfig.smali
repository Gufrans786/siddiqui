.class final Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;
.super Ljava/lang/Object;
.source "ZIMGenFriendApplicationSendConfig.java"


# instance fields
.field Alias:Ljava/lang/String;

.field Attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field EnableOfflinePush:Z

.field IsNullFromJava:Z

.field PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

.field Wording:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lim/zego/zim/internal/generated/ZIMGenPushConfig;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "wording",
            "alias",
            "attributes",
            "pushConfig",
            "enableOfflinePush",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenPushConfig;",
            "ZZ)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Wording:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Alias:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Attributes:Ljava/util/HashMap;

    .line 31
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    .line 32
    iput-boolean p5, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->EnableOfflinePush:Z

    .line 33
    iput-boolean p6, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Attributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getEnableOfflinePush()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->EnableOfflinePush:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getPushConfig()Lim/zego/zim/internal/generated/ZIMGenPushConfig;
    .locals 1

    .line 45
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-object v0
.end method

.method public getWording()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Wording:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Alias:Ljava/lang/String;

    return-void
.end method

.method public setAttributes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Attributes:Ljava/util/HashMap;

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
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->EnableOfflinePush:Z

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
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->IsNullFromJava:Z

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
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-void
.end method

.method public setWording(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wording"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Wording:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenFriendApplicationSendConfig{Wording="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Wording:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->Attributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PushConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableOfflinePush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->EnableOfflinePush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationSendConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

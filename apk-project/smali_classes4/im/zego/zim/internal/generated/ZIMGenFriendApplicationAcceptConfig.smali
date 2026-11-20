.class final Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;
.super Ljava/lang/Object;
.source "ZIMGenFriendApplicationAcceptConfig.java"


# instance fields
.field EnableOfflinePush:Z

.field FriendAlias:Ljava/lang/String;

.field FriendAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field IsNullFromJava:Z

.field PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lim/zego/zim/internal/generated/ZIMGenPushConfig;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "friendAlias",
            "friendAttributes",
            "pushConfig",
            "enableOfflinePush",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenPushConfig;",
            "ZZ)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->FriendAlias:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->FriendAttributes:Ljava/util/HashMap;

    .line 28
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    .line 29
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->EnableOfflinePush:Z

    .line 30
    iput-boolean p5, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getEnableOfflinePush()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->EnableOfflinePush:Z

    return v0
.end method

.method public getFriendAlias()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->FriendAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendAttributes()Ljava/util/HashMap;
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

    .line 36
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->FriendAttributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getPushConfig()Lim/zego/zim/internal/generated/ZIMGenPushConfig;
    .locals 1

    .line 41
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

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

    .line 46
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->EnableOfflinePush:Z

    return-void
.end method

.method public setFriendAlias(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendAlias"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->FriendAlias:Ljava/lang/String;

    return-void
.end method

.method public setFriendAttributes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendAttributes"
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

    .line 38
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->FriendAttributes:Ljava/util/HashMap;

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

    .line 50
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->IsNullFromJava:Z

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

    .line 42
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenFriendApplicationAcceptConfig{FriendAlias="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->FriendAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FriendAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->FriendAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PushConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableOfflinePush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->EnableOfflinePush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendApplicationAcceptConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

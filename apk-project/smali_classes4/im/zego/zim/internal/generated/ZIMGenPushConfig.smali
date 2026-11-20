.class final Lim/zego/zim/internal/generated/ZIMGenPushConfig;
.super Ljava/lang/Object;
.source "ZIMGenPushConfig.java"


# instance fields
.field BadgeIncrement:I

.field EnableBadgeIncrement:Z

.field EnablePrivateMessageTemplate:Z

.field EnableVoIPPush:Z

.field IsNullFromJava:Z

.field OfflineExtendedData:Ljava/lang/String;

.field OfflinePushContent:Ljava/lang/String;

.field OfflinePushResourceId:Ljava/lang/String;

.field OfflinePushTitle:Ljava/lang/String;

.field OfflinePushVoIPConfig:Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;

.field PrivateMessageTemplate:Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;

.field ThreadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;ZIZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offlinePushTitle",
            "offlinePushContent",
            "offlineExtendedData",
            "offlinePushResourceId",
            "threadId",
            "offlinePushVoIPConfig",
            "privateMessageTemplate",
            "enableBadgeIncrement",
            "badgeIncrement",
            "enableVoIPPush",
            "enablePrivateMessageTemplate",
            "isNullFromJava"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushTitle:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushContent:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflineExtendedData:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushResourceId:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->ThreadId:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushVoIPConfig:Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;

    .line 47
    iput-object p7, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->PrivateMessageTemplate:Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;

    .line 48
    iput-boolean p8, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnableBadgeIncrement:Z

    .line 49
    iput p9, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->BadgeIncrement:I

    .line 50
    iput-boolean p10, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnableVoIPPush:Z

    .line 51
    iput-boolean p11, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnablePrivateMessageTemplate:Z

    .line 52
    iput-boolean p12, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getBadgeIncrement()I
    .locals 1

    .line 96
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->BadgeIncrement:I

    return v0
.end method

.method public getEnableBadgeIncrement()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnableBadgeIncrement:Z

    return v0
.end method

.method public getEnablePrivateMessageTemplate()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnablePrivateMessageTemplate:Z

    return v0
.end method

.method public getEnableVoIPPush()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnableVoIPPush:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getOfflineExtendedData()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflineExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflinePushContent()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushContent:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflinePushResourceId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflinePushTitle()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflinePushVoIPConfig()Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;
    .locals 1

    .line 78
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushVoIPConfig:Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;

    return-object v0
.end method

.method public getPrivateMessageTemplate()Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;
    .locals 1

    .line 84
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->PrivateMessageTemplate:Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->ThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBadgeIncrement(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "badgeIncrement"
        }
    .end annotation

    .line 97
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->BadgeIncrement:I

    return-void
.end method

.method public setEnableBadgeIncrement(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableBadgeIncrement"
        }
    .end annotation

    .line 93
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnableBadgeIncrement:Z

    return-void
.end method

.method public setEnablePrivateMessageTemplate(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enablePrivateMessageTemplate"
        }
    .end annotation

    .line 104
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnablePrivateMessageTemplate:Z

    return-void
.end method

.method public setEnableVoIPPush(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableVoIPPush"
        }
    .end annotation

    .line 100
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnableVoIPPush:Z

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

    .line 108
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setOfflineExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offlineExtendedData"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflineExtendedData:Ljava/lang/String;

    return-void
.end method

.method public setOfflinePushContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offlinePushContent"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushContent:Ljava/lang/String;

    return-void
.end method

.method public setOfflinePushResourceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offlinePushResourceId"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushResourceId:Ljava/lang/String;

    return-void
.end method

.method public setOfflinePushTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offlinePushTitle"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushTitle:Ljava/lang/String;

    return-void
.end method

.method public setOfflinePushVoIPConfig(Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offlinePushVoIPConfig"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushVoIPConfig:Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;

    return-void
.end method

.method public setPrivateMessageTemplate(Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateMessageTemplate"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->PrivateMessageTemplate:Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;

    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadId"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->ThreadId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenPushConfig{OfflinePushTitle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OfflinePushContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OfflineExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflineExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OfflinePushResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushResourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->ThreadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OfflinePushVoIPConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->OfflinePushVoIPConfig:Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PrivateMessageTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->PrivateMessageTemplate:Lim/zego/zim/internal/generated/ZIMGenOfflinePushPrivateMessageTemplate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableBadgeIncrement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnableBadgeIncrement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",BadgeIncrement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->BadgeIncrement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableVoIPPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnableVoIPPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnablePrivateMessageTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->EnablePrivateMessageTemplate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenPushConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

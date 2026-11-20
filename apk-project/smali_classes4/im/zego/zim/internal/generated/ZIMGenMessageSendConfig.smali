.class final Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;
.super Ljava/lang/Object;
.source "ZIMGenMessageSendConfig.java"


# instance fields
.field DisableUnreadMessageCount:Z

.field EnableOfflinePush:Z

.field HasReadReceipt:Z

.field IsAllowMultipleMessagePartialFailed:Z

.field IsNotifyMentionedUsers:Z

.field IsNullFromJava:Z

.field IsRetrySendMessage:Z

.field Priority:I

.field PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZZZZLim/zego/zim/internal/generated/ZIMGenPushConfig;ZZZ)V
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
            0x0
        }
        names = {
            "priority",
            "enableOfflinePush",
            "hasReadReceipt",
            "isNotifyMentionedUsers",
            "isRetrySendMessage",
            "pushConfig",
            "isNullFromJava",
            "disableUnreadMessageCount",
            "isAllowMultipleMessagePartialFailed"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->Priority:I

    .line 34
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->EnableOfflinePush:Z

    .line 35
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->HasReadReceipt:Z

    .line 36
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsNotifyMentionedUsers:Z

    .line 37
    iput-boolean p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsRetrySendMessage:Z

    .line 38
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    .line 39
    iput-boolean p7, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsNullFromJava:Z

    .line 40
    iput-boolean p8, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->DisableUnreadMessageCount:Z

    .line 41
    iput-boolean p9, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsAllowMultipleMessagePartialFailed:Z

    return-void
.end method


# virtual methods
.method public getDisableUnreadMessageCount()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->DisableUnreadMessageCount:Z

    return v0
.end method

.method public getEnableOfflinePush()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->EnableOfflinePush:Z

    return v0
.end method

.method public getHasReadReceipt()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->HasReadReceipt:Z

    return v0
.end method

.method public getIsAllowMultipleMessagePartialFailed()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsAllowMultipleMessagePartialFailed:Z

    return v0
.end method

.method public getIsNotifyMentionedUsers()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsNotifyMentionedUsers:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getIsRetrySendMessage()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsRetrySendMessage:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 44
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->Priority:I

    return v0
.end method

.method public getPushConfig()Lim/zego/zim/internal/generated/ZIMGenPushConfig;
    .locals 1

    .line 65
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-object v0
.end method

.method public setDisableUnreadMessageCount(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableUnreadMessageCount"
        }
    .end annotation

    .line 73
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->DisableUnreadMessageCount:Z

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

    .line 49
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->EnableOfflinePush:Z

    return-void
.end method

.method public setHasReadReceipt(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasReadReceipt"
        }
    .end annotation

    .line 53
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->HasReadReceipt:Z

    return-void
.end method

.method public setIsAllowMultipleMessagePartialFailed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAllowMultipleMessagePartialFailed"
        }
    .end annotation

    .line 81
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsAllowMultipleMessagePartialFailed:Z

    return-void
.end method

.method public setIsNotifyMentionedUsers(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNotifyMentionedUsers"
        }
    .end annotation

    .line 57
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsNotifyMentionedUsers:Z

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

    .line 69
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setIsRetrySendMessage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRetrySendMessage"
        }
    .end annotation

    .line 62
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsRetrySendMessage:Z

    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    .line 45
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->Priority:I

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

    .line 66
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageSendConfig{Priority="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->Priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnableOfflinePush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->EnableOfflinePush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",HasReadReceipt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->HasReadReceipt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNotifyMentionedUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsNotifyMentionedUsers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsRetrySendMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsRetrySendMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PushConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->PushConfig:Lim/zego/zim/internal/generated/ZIMGenPushConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",DisableUnreadMessageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->DisableUnreadMessageCount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsAllowMultipleMessagePartialFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSendConfig;->IsAllowMultipleMessagePartialFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

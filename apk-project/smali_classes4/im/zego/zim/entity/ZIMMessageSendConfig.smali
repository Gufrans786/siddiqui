.class public Lim/zego/zim/entity/ZIMMessageSendConfig;
.super Ljava/lang/Object;
.source "ZIMMessageSendConfig.java"


# instance fields
.field public disableUnreadMessageCount:Z

.field public hasReceipt:Z

.field public isAllowMultipleMessagePartialFailed:Z

.field public isNotifyMentionedUsers:Z

.field public isRetrySend:Z

.field public priority:Lim/zego/zim/enums/ZIMMessagePriority;

.field public pushConfig:Lim/zego/zim/entity/ZIMPushConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lim/zego/zim/enums/ZIMMessagePriority;->LOW:Lim/zego/zim/enums/ZIMMessagePriority;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageSendConfig;->priority:Lim/zego/zim/enums/ZIMMessagePriority;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMMessageSendConfig;->hasReceipt:Z

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lim/zego/zim/entity/ZIMMessageSendConfig;->isNotifyMentionedUsers:Z

    .line 34
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMMessageSendConfig;->isRetrySend:Z

    .line 35
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMMessageSendConfig;->disableUnreadMessageCount:Z

    .line 36
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMMessageSendConfig;->isAllowMultipleMessagePartialFailed:Z

    return-void
.end method

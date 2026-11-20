.class public Lim/zego/zim/entity/ZIMPushConfig;
.super Ljava/lang/Object;
.source "ZIMPushConfig.java"


# instance fields
.field public badgeIncrement:I

.field public content:Ljava/lang/String;

.field public enableBadge:Ljava/lang/Boolean;

.field public payload:Ljava/lang/String;

.field public privateMessageTemplate:Lim/zego/zim/entity/ZIMOfflinePushPrivateMessageTemplate;

.field public resourcesID:Ljava/lang/String;

.field public threadID:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public voIPConfig:Lim/zego/zim/entity/ZIMVoIPConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMPushConfig;->title:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lim/zego/zim/entity/ZIMPushConfig;->content:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lim/zego/zim/entity/ZIMPushConfig;->payload:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lim/zego/zim/entity/ZIMPushConfig;->resourcesID:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lim/zego/zim/entity/ZIMPushConfig;->threadID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lim/zego/zim/entity/ZIMPushConfig;->enableBadge:Ljava/lang/Boolean;

    .line 39
    iput v0, p0, Lim/zego/zim/entity/ZIMPushConfig;->badgeIncrement:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lim/zego/zim/entity/ZIMPushConfig;->voIPConfig:Lim/zego/zim/entity/ZIMVoIPConfig;

    .line 41
    iput-object v0, p0, Lim/zego/zim/entity/ZIMPushConfig;->privateMessageTemplate:Lim/zego/zim/entity/ZIMOfflinePushPrivateMessageTemplate;

    return-void
.end method

.class public Lim/zego/zim/entity/ZIMGroup;
.super Ljava/lang/Object;
.source "ZIMGroup.java"


# instance fields
.field public baseInfo:Lim/zego/zim/entity/ZIMGroupInfo;

.field public groupAlias:Ljava/lang/String;

.field public notificationStatus:Lim/zego/zim/enums/ZIMGroupMessageNotificationStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lim/zego/zim/entity/ZIMGroupInfo;

    invoke-direct {v0}, Lim/zego/zim/entity/ZIMGroupInfo;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMGroup;->baseInfo:Lim/zego/zim/entity/ZIMGroupInfo;

    .line 18
    sget-object v0, Lim/zego/zim/enums/ZIMGroupMessageNotificationStatus;->NOTIFY:Lim/zego/zim/enums/ZIMGroupMessageNotificationStatus;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMGroup;->notificationStatus:Lim/zego/zim/enums/ZIMGroupMessageNotificationStatus;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGroup{baseInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroup;->baseInfo:Lim/zego/zim/entity/ZIMGroupInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groupAlias = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroup;->groupAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', notificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMGroup;->notificationStatus:Lim/zego/zim/enums/ZIMGroupMessageNotificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

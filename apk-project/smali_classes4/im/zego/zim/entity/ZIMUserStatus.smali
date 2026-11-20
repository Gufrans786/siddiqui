.class public Lim/zego/zim/entity/ZIMUserStatus;
.super Ljava/lang/Object;
.source "ZIMUserStatus.java"


# instance fields
.field public customStatus:Ljava/lang/String;

.field public lastCustomStatusUpdateTime:J

.field public lastOnlineStatusUpdateTime:J

.field public lastUpdateTime:J

.field public onlinePlatforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/enums/ZIMPlatformType;",
            ">;"
        }
    .end annotation
.end field

.field public onlineStatus:Lim/zego/zim/enums/ZIMUserOnlineStatus;

.field public userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMUserStatus;->userID:Ljava/lang/String;

    .line 18
    sget-object v1, Lim/zego/zim/enums/ZIMUserOnlineStatus;->UNKNOWN:Lim/zego/zim/enums/ZIMUserOnlineStatus;

    iput-object v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->onlineStatus:Lim/zego/zim/enums/ZIMUserOnlineStatus;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->onlinePlatforms:Ljava/util/ArrayList;

    .line 20
    iput-object v0, p0, Lim/zego/zim/entity/ZIMUserStatus;->customStatus:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMUserStatus;->lastUpdateTime:J

    .line 22
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMUserStatus;->lastOnlineStatusUpdateTime:J

    .line 23
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMUserStatus;->lastCustomStatusUpdateTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMUserStatus{userID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onlineStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->onlineStatus:Lim/zego/zim/enums/ZIMUserOnlineStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onlinePlatforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->onlinePlatforms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->customStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastOnlineStatusUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->lastOnlineStatusUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastCustomStatusUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMUserStatus;->lastCustomStatusUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

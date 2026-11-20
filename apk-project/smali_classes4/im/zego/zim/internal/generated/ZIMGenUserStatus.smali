.class final Lim/zego/zim/internal/generated/ZIMGenUserStatus;
.super Ljava/lang/Object;
.source "ZIMGenUserStatus.java"


# instance fields
.field CustomStatus:Ljava/lang/String;

.field LastCustomStatusUpdateTime:J

.field LastOnlineStatusUpdateTime:J

.field LastUpdateTime:J

.field OnlinePlatforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field OnlineStatus:I

.field UserID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "onlineStatus",
            "onlinePlatforms",
            "customStatus",
            "lastUpdateTime",
            "lastOnlineStatusUpdateTime",
            "lastCustomStatusUpdateTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JJJ)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->UserID:Ljava/lang/String;

    .line 30
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->OnlineStatus:I

    .line 31
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->OnlinePlatforms:Ljava/util/ArrayList;

    .line 32
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->CustomStatus:Ljava/lang/String;

    .line 33
    iput-wide p5, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastUpdateTime:J

    .line 34
    iput-wide p7, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastOnlineStatusUpdateTime:J

    .line 35
    iput-wide p9, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastCustomStatusUpdateTime:J

    return-void
.end method


# virtual methods
.method public getCustomStatus()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->CustomStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCustomStatusUpdateTime()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastCustomStatusUpdateTime:J

    return-wide v0
.end method

.method public getLastOnlineStatusUpdateTime()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastOnlineStatusUpdateTime:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastUpdateTime:J

    return-wide v0
.end method

.method public getOnlinePlatforms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->OnlinePlatforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOnlineStatus()I
    .locals 1

    .line 41
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->OnlineStatus:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->UserID:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomStatus(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customStatus"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->CustomStatus:Ljava/lang/String;

    return-void
.end method

.method public setLastCustomStatusUpdateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastCustomStatusUpdateTime"
        }
    .end annotation

    .line 62
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastCustomStatusUpdateTime:J

    return-void
.end method

.method public setLastOnlineStatusUpdateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastOnlineStatusUpdateTime"
        }
    .end annotation

    .line 57
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastOnlineStatusUpdateTime:J

    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastUpdateTime"
        }
    .end annotation

    .line 53
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastUpdateTime:J

    return-void
.end method

.method public setOnlinePlatforms(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlinePlatforms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->OnlinePlatforms:Ljava/util/ArrayList;

    return-void
.end method

.method public setOnlineStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlineStatus"
        }
    .end annotation

    .line 42
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->OnlineStatus:I

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userID"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->UserID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenUserStatus{UserID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OnlineStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->OnlineStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OnlinePlatforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->OnlinePlatforms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CustomStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->CustomStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LastOnlineStatusUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastOnlineStatusUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LastCustomStatusUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatus;->LastCustomStatusUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

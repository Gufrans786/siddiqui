.class final Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;
.super Ljava/lang/Object;
.source "ZIMGenUserStatusSubscription.java"


# instance fields
.field SubscribeExpiredTime:J

.field UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenUserStatus;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userStatus",
            "subscribeExpiredTime"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;->UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;

    .line 16
    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;->SubscribeExpiredTime:J

    return-void
.end method


# virtual methods
.method public getSubscribeExpiredTime()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;->SubscribeExpiredTime:J

    return-wide v0
.end method

.method public getUserStatus()Lim/zego/zim/internal/generated/ZIMGenUserStatus;
    .locals 1

    .line 19
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;->UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;

    return-object v0
.end method

.method public setSubscribeExpiredTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscribeExpiredTime"
        }
    .end annotation

    .line 24
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;->SubscribeExpiredTime:J

    return-void
.end method

.method public setUserStatus(Lim/zego/zim/internal/generated/ZIMGenUserStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userStatus"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;->UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenUserStatusSubscription{UserStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;->UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SubscribeExpiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;->SubscribeExpiredTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

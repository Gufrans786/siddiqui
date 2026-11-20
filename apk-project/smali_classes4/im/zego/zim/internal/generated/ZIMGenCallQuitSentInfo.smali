.class final Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;
.super Ljava/lang/Object;
.source "ZIMGenCallQuitSentInfo.java"


# instance fields
.field AcceptTime:J

.field CreateTime:J

.field QuitTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "createTime",
            "quitTime",
            "acceptTime"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->CreateTime:J

    .line 18
    iput-wide p3, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->QuitTime:J

    .line 19
    iput-wide p5, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->AcceptTime:J

    return-void
.end method


# virtual methods
.method public getAcceptTime()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->AcceptTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->CreateTime:J

    return-wide v0
.end method

.method public getQuitTime()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->QuitTime:J

    return-wide v0
.end method

.method public setAcceptTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceptTime"
        }
    .end annotation

    .line 29
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->AcceptTime:J

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createTime"
        }
    .end annotation

    .line 23
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->CreateTime:J

    return-void
.end method

.method public setQuitTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quitTime"
        }
    .end annotation

    .line 26
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->QuitTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallQuitSentInfo{CreateTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->CreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",QuitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->QuitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",AcceptTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;->AcceptTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

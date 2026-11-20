.class final Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;
.super Ljava/lang/Object;
.source "ZIMGenCallJoinSentInfo.java"


# instance fields
.field CallUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field CreateTime:J

.field ExtendedData:Ljava/lang/String;

.field JoinTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "createTime",
            "joinTime",
            "callUserList",
            "extendedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->CreateTime:J

    .line 23
    iput-wide p3, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->JoinTime:J

    .line 24
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->CallUserList:Ljava/util/ArrayList;

    .line 25
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->ExtendedData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->CallUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->CreateTime:J

    return-wide v0
.end method

.method public getExtendedData()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->ExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinTime()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->JoinTime:J

    return-wide v0
.end method

.method public setCallUserList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callUserList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->CallUserList:Ljava/util/ArrayList;

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

    .line 29
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->CreateTime:J

    return-void
.end method

.method public setExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extendedData"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->ExtendedData:Ljava/lang/String;

    return-void
.end method

.method public setJoinTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "joinTime"
        }
    .end annotation

    .line 32
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->JoinTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallJoinSentInfo{CreateTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->CreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",JoinTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->JoinTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CallUserList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->CallUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;->ExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;
.super Ljava/lang/Object;
.source "ZIMGenGroupEnterInfo.java"


# instance fields
.field EnterTime:J

.field EnterType:I

.field OperatedUser:Lim/zego/zim/internal/generated/ZIMGenGroupMemberSimpleInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JILim/zego/zim/internal/generated/ZIMGenGroupMemberSimpleInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enterTime",
            "enterType",
            "operatedUser"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->EnterTime:J

    .line 19
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->EnterType:I

    .line 20
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->OperatedUser:Lim/zego/zim/internal/generated/ZIMGenGroupMemberSimpleInfo;

    return-void
.end method


# virtual methods
.method public getEnterTime()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->EnterTime:J

    return-wide v0
.end method

.method public getEnterType()I
    .locals 1

    .line 26
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->EnterType:I

    return v0
.end method

.method public getOperatedUser()Lim/zego/zim/internal/generated/ZIMGenGroupMemberSimpleInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->OperatedUser:Lim/zego/zim/internal/generated/ZIMGenGroupMemberSimpleInfo;

    return-object v0
.end method

.method public setEnterTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enterTime"
        }
    .end annotation

    .line 24
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->EnterTime:J

    return-void
.end method

.method public setEnterType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enterType"
        }
    .end annotation

    .line 27
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->EnterType:I

    return-void
.end method

.method public setOperatedUser(Lim/zego/zim/internal/generated/ZIMGenGroupMemberSimpleInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operatedUser"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->OperatedUser:Lim/zego/zim/internal/generated/ZIMGenGroupMemberSimpleInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupEnterInfo{EnterTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->EnterTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EnterType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->EnterType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OperatedUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;->OperatedUser:Lim/zego/zim/internal/generated/ZIMGenGroupMemberSimpleInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

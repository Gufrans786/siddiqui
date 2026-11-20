.class final Lim/zego/zim/internal/generated/ZIMGenCallInfo;
.super Ljava/lang/Object;
.source "ZIMGenCallInfo.java"


# instance fields
.field CallId:Ljava/lang/String;

.field CallUserInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field Caller:Ljava/lang/String;

.field CreateTime:J

.field EndTime:J

.field ExtendedData:Ljava/lang/String;

.field Inviter:Ljava/lang/String;

.field Mode:I

.field State:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
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
            "callId",
            "caller",
            "createTime",
            "endTime",
            "state",
            "mode",
            "extendedData",
            "callUserInfos",
            "inviter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CallId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Caller:Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CreateTime:J

    .line 36
    iput-wide p5, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->EndTime:J

    .line 37
    iput p7, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->State:I

    .line 38
    iput p8, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Mode:I

    .line 39
    iput-object p9, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->ExtendedData:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CallUserInfos:Ljava/util/ArrayList;

    .line 41
    iput-object p11, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Inviter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CallId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallUserInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CallUserInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCaller()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Caller:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CreateTime:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->EndTime:J

    return-wide v0
.end method

.method public getExtendedData()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->ExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getInviter()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Inviter:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 59
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Mode:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 56
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->State:I

    return v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callId"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CallId:Ljava/lang/String;

    return-void
.end method

.method public setCallUserInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callUserInfos"
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

    .line 67
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CallUserInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "caller"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Caller:Ljava/lang/String;

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

    .line 51
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CreateTime:J

    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTime"
        }
    .end annotation

    .line 54
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->EndTime:J

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

    .line 63
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->ExtendedData:Ljava/lang/String;

    return-void
.end method

.method public setInviter(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inviter"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Inviter:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 60
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Mode:I

    return-void
.end method

.method public setState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 57
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->State:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallInfo{CallId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Caller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->EndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->State:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->ExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CallUserInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->CallUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Inviter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInfo;->Inviter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

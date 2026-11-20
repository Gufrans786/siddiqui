.class final Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;
.super Ljava/lang/Object;
.source "ZIMGenCallInvitationEndedInfo.java"


# instance fields
.field Caller:Ljava/lang/String;

.field EndTime:J

.field ExtendedData:Ljava/lang/String;

.field Mode:I

.field OperatedUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "caller",
            "operatedUserId",
            "endTime",
            "extendedData"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->Mode:I

    .line 23
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->Caller:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->OperatedUserId:Ljava/lang/String;

    .line 25
    iput-wide p4, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->EndTime:J

    .line 26
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->ExtendedData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaller()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->Caller:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->EndTime:J

    return-wide v0
.end method

.method public getExtendedData()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->ExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 29
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->Mode:I

    return v0
.end method

.method public getOperatedUserId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->OperatedUserId:Ljava/lang/String;

    return-object v0
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

    .line 33
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->Caller:Ljava/lang/String;

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

    .line 39
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->EndTime:J

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

    .line 42
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->ExtendedData:Ljava/lang/String;

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

    .line 30
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->Mode:I

    return-void
.end method

.method public setOperatedUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operatedUserId"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->OperatedUserId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallInvitationEndedInfo{Mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->Mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->Caller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OperatedUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->OperatedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->EndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;->ExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

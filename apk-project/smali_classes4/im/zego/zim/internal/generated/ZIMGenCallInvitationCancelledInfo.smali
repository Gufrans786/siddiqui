.class final Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;
.super Ljava/lang/Object;
.source "ZIMGenCallInvitationCancelledInfo.java"


# instance fields
.field ExtendedData:Ljava/lang/String;

.field Inviter:Ljava/lang/String;

.field IsNullFromJava:Z

.field Mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inviter",
            "extendedData",
            "mode",
            "isNullFromJava"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->Inviter:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->ExtendedData:Ljava/lang/String;

    .line 22
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->Mode:I

    .line 23
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getExtendedData()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->ExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getInviter()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->Inviter:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 32
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->Mode:I

    return v0
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

    .line 30
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->ExtendedData:Ljava/lang/String;

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

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->Inviter:Ljava/lang/String;

    return-void
.end method

.method public setIsNullFromJava(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNullFromJava"
        }
    .end annotation

    .line 36
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->IsNullFromJava:Z

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

    .line 33
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->Mode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallInvitationCancelledInfo{Inviter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->Inviter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->ExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->Mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

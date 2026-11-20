.class final Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;
.super Ljava/lang/Object;
.source "ZIMGenCallInvitationRejectedInfo.java"


# instance fields
.field ExtendedData:Ljava/lang/String;

.field Invitee:Ljava/lang/String;

.field IsNullFromJava:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "invitee",
            "extendedData",
            "isNullFromJava"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->Invitee:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->ExtendedData:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getExtendedData()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->ExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitee()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->Invitee:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->IsNullFromJava:Z

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

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->ExtendedData:Ljava/lang/String;

    return-void
.end method

.method public setInvitee(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invitee"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->Invitee:Ljava/lang/String;

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

    .line 30
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->IsNullFromJava:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallInvitationRejectedInfo{Invitee="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->Invitee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->ExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;
.super Ljava/lang/Object;
.source "ZIMGenInnerUserInfo.java"


# instance fields
.field GroupMemberExpiredTime:J

.field GroupMemberNickName:Ljava/lang/String;

.field GroupRole:I

.field UserAvatar:Ljava/lang/String;

.field UserExtendedData:Ljava/lang/String;

.field UserID:Ljava/lang/String;

.field UserName:Ljava/lang/String;

.field UserType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
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
            0x0
        }
        names = {
            "userType",
            "userID",
            "userName",
            "userAvatar",
            "userExtendedData",
            "groupMemberNickName",
            "groupRole",
            "groupMemberExpiredTime"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserType:I

    .line 30
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserID:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserAvatar:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserExtendedData:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupMemberNickName:Ljava/lang/String;

    .line 35
    iput p7, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupRole:I

    .line 36
    iput-wide p8, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupMemberExpiredTime:J

    return-void
.end method


# virtual methods
.method public getGroupMemberExpiredTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupMemberExpiredTime:J

    return-wide v0
.end method

.method public getGroupMemberNickName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupMemberNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupRole()I
    .locals 1

    .line 61
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupRole:I

    return v0
.end method

.method public getUserAvatar()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUserExtendedData()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .line 39
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserType:I

    return v0
.end method

.method public setGroupMemberExpiredTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupMemberExpiredTime"
        }
    .end annotation

    .line 66
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupMemberExpiredTime:J

    return-void
.end method

.method public setGroupMemberNickName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupMemberNickName"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupMemberNickName:Ljava/lang/String;

    return-void
.end method

.method public setGroupRole(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupRole"
        }
    .end annotation

    .line 62
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupRole:I

    return-void
.end method

.method public setUserAvatar(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAvatar"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserAvatar:Ljava/lang/String;

    return-void
.end method

.method public setUserExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userExtendedData"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserExtendedData:Ljava/lang/String;

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

    .line 43
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserID:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userName"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserName:Ljava/lang/String;

    return-void
.end method

.method public setUserType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userType"
        }
    .end annotation

    .line 40
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenInnerUserInfo{UserType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->UserExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupMemberNickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupMemberNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupMemberExpiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;->GroupMemberExpiredTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

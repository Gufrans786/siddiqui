.class final Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;
.super Ljava/lang/Object;
.source "ZIMGenTipsMessageChangeInfo.java"


# instance fields
.field GroupAvatarUrl:Ljava/lang/String;

.field GroupDataFlag:I

.field GroupMuteInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;

.field GroupName:Ljava/lang/String;

.field GroupNewOwner:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

.field GroupNotice:Ljava/lang/String;

.field IsNullFromJava:Z

.field IsPinned:Z

.field IsUpdateOwner:Z

.field MuteExpiredTime:J

.field Role:I

.field Type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;ZIJZZ)V
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "groupDataFlag",
            "groupName",
            "groupNotice",
            "groupAvatarUrl",
            "groupMuteInfo",
            "groupNewOwner",
            "isUpdateOwner",
            "role",
            "muteExpiredTime",
            "isPinned",
            "isNullFromJava"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->Type:I

    .line 41
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupDataFlag:I

    .line 42
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupNotice:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupAvatarUrl:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupMuteInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;

    .line 46
    iput-object p7, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupNewOwner:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

    .line 47
    iput-boolean p8, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsUpdateOwner:Z

    .line 48
    iput p9, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->Role:I

    .line 49
    iput-wide p10, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->MuteExpiredTime:J

    .line 50
    iput-boolean p12, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsPinned:Z

    .line 51
    iput-boolean p13, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getGroupAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupDataFlag()I
    .locals 1

    .line 57
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupDataFlag:I

    return v0
.end method

.method public getGroupMuteInfo()Lim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;
    .locals 1

    .line 69
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupMuteInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNewOwner()Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;
    .locals 1

    .line 74
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupNewOwner:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

    return-object v0
.end method

.method public getGroupNotice()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupNotice:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsPinned:Z

    return v0
.end method

.method public getIsUpdateOwner()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsUpdateOwner:Z

    return v0
.end method

.method public getMuteExpiredTime()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->MuteExpiredTime:J

    return-wide v0
.end method

.method public getRole()I
    .locals 1

    .line 82
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->Role:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 54
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->Type:I

    return v0
.end method

.method public setGroupAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupAvatarUrl"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setGroupDataFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupDataFlag"
        }
    .end annotation

    .line 58
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupDataFlag:I

    return-void
.end method

.method public setGroupMuteInfo(Lim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupMuteInfo"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupMuteInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupName:Ljava/lang/String;

    return-void
.end method

.method public setGroupNewOwner(Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupNewOwner"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupNewOwner:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

    return-void
.end method

.method public setGroupNotice(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupNotice"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupNotice:Ljava/lang/String;

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

    .line 92
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setIsPinned(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPinned"
        }
    .end annotation

    .line 89
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsPinned:Z

    return-void
.end method

.method public setIsUpdateOwner(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUpdateOwner"
        }
    .end annotation

    .line 80
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsUpdateOwner:Z

    return-void
.end method

.method public setMuteExpiredTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muteExpiredTime"
        }
    .end annotation

    .line 86
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->MuteExpiredTime:J

    return-void
.end method

.method public setRole(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "role"
        }
    .end annotation

    .line 83
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->Role:I

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 55
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->Type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenTipsMessageChangeInfo{Type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->Type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupDataFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupDataFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupAvatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupMuteInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupMuteInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupNewOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->GroupNewOwner:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsUpdateOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsUpdateOwner:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->Role:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MuteExpiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->MuteExpiredTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsPinned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsPinned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

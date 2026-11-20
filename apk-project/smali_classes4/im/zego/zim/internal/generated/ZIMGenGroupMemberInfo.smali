.class final Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;
.super Ljava/lang/Object;
.source "ZIMGenGroupMemberInfo.java"


# instance fields
.field GroupEnterInfo:Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;

.field IsNullFromJava:Z

.field MemberAvatarUrl:Ljava/lang/String;

.field MemberNickName:Ljava/lang/String;

.field MemberRole:I

.field MuteExpiredTimestamp:J

.field UserInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JLim/zego/zim/internal/generated/ZIMGenUserInfo;Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memberNickName",
            "memberRole",
            "memberAvatarUrl",
            "muteExpiredTimestamp",
            "userInfo",
            "groupEnterInfo",
            "isNullFromJava"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberNickName:Ljava/lang/String;

    .line 28
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberRole:I

    .line 29
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberAvatarUrl:Ljava/lang/String;

    .line 30
    iput-wide p4, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MuteExpiredTimestamp:J

    .line 31
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->UserInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;

    .line 32
    iput-object p7, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->GroupEnterInfo:Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;

    .line 33
    iput-boolean p8, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getGroupEnterInfo()Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->GroupEnterInfo:Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getMemberAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberNickName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberRole()I
    .locals 1

    .line 39
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberRole:I

    return v0
.end method

.method public getMuteExpiredTimestamp()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MuteExpiredTimestamp:J

    return-wide v0
.end method

.method public getUserInfo()Lim/zego/zim/internal/generated/ZIMGenUserInfo;
    .locals 1

    .line 52
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->UserInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;

    return-object v0
.end method

.method public setGroupEnterInfo(Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupEnterInfo"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->GroupEnterInfo:Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;

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

    .line 61
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setMemberAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memberAvatarUrl"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setMemberNickName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memberNickName"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberNickName:Ljava/lang/String;

    return-void
.end method

.method public setMemberRole(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memberRole"
        }
    .end annotation

    .line 40
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberRole:I

    return-void
.end method

.method public setMuteExpiredTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muteExpiredTimestamp"
        }
    .end annotation

    .line 49
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MuteExpiredTimestamp:J

    return-void
.end method

.method public setUserInfo(Lim/zego/zim/internal/generated/ZIMGenUserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->UserInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupMemberInfo{MemberNickName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MemberRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MemberAvatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MemberAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MuteExpiredTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->MuteExpiredTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->UserInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupEnterInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->GroupEnterInfo:Lim/zego/zim/internal/generated/ZIMGenGroupEnterInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

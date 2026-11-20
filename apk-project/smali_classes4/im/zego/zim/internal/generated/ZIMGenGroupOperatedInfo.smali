.class final Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;
.super Ljava/lang/Object;
.source "ZIMGenGroupOperatedInfo.java"


# instance fields
.field MemberNickName:Ljava/lang/String;

.field MemberRole:I

.field OperatedUserInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;

.field UserId:Ljava/lang/String;

.field UserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
            "operatedUserInfo",
            "userId",
            "userName",
            "memberNickName",
            "memberRole"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->OperatedUserInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;

    .line 23
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->UserId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->UserName:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->MemberNickName:Ljava/lang/String;

    .line 26
    iput p5, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->MemberRole:I

    return-void
.end method


# virtual methods
.method public getMemberNickName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->MemberNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberRole()I
    .locals 1

    .line 43
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->MemberRole:I

    return v0
.end method

.method public getOperatedUserInfo()Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->OperatedUserInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->UserName:Ljava/lang/String;

    return-object v0
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

    .line 41
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->MemberNickName:Ljava/lang/String;

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

    .line 44
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->MemberRole:I

    return-void
.end method

.method public setOperatedUserInfo(Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operatedUserInfo"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->OperatedUserInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->UserId:Ljava/lang/String;

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

    .line 38
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->UserName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupOperatedInfo{OperatedUserInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->OperatedUserInfo:Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->UserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->UserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MemberNickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->MemberNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MemberRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;->MemberRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

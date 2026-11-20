.class final Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;
.super Ljava/lang/Object;
.source "ZIMGenFullUserInfo.java"


# instance fields
.field BaseInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;

.field ExtendedData:Ljava/lang/String;

.field IsNullFromJava:Z

.field UserAvatarUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenUserInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseInfo",
            "userAvatarUrl",
            "extendedData",
            "isNullFromJava"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->BaseInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;

    .line 21
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->UserAvatarUrl:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->ExtendedData:Ljava/lang/String;

    .line 23
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getBaseInfo()Lim/zego/zim/internal/generated/ZIMGenUserInfo;
    .locals 1

    .line 26
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->BaseInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;

    return-object v0
.end method

.method public getExtendedData()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->ExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getUserAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->UserAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseInfo(Lim/zego/zim/internal/generated/ZIMGenUserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseInfo"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->BaseInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;

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

    .line 33
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->ExtendedData:Ljava/lang/String;

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
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setUserAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAvatarUrl"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->UserAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenFullUserInfo{BaseInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->BaseInfo:Lim/zego/zim/internal/generated/ZIMGenUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserAvatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->UserAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->ExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

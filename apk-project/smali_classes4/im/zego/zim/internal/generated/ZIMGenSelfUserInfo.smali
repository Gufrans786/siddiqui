.class final Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;
.super Ljava/lang/Object;
.source "ZIMGenSelfUserInfo.java"


# instance fields
.field IsNullFromJava:Z

.field UserFullInfo:Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;

.field UserRule:Lim/zego/zim/internal/generated/ZIMGenUserRule;

.field UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenUserRule;Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;Lim/zego/zim/internal/generated/ZIMGenUserStatus;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userRule",
            "userFullInfo",
            "userStatus",
            "isNullFromJava"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserRule:Lim/zego/zim/internal/generated/ZIMGenUserRule;

    .line 21
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserFullInfo:Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;

    .line 22
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;

    .line 23
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getUserFullInfo()Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserFullInfo:Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;

    return-object v0
.end method

.method public getUserRule()Lim/zego/zim/internal/generated/ZIMGenUserRule;
    .locals 1

    .line 26
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserRule:Lim/zego/zim/internal/generated/ZIMGenUserRule;

    return-object v0
.end method

.method public getUserStatus()Lim/zego/zim/internal/generated/ZIMGenUserStatus;
    .locals 1

    .line 34
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;

    return-object v0
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

    .line 38
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setUserFullInfo(Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userFullInfo"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserFullInfo:Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;

    return-void
.end method

.method public setUserRule(Lim/zego/zim/internal/generated/ZIMGenUserRule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userRule"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserRule:Lim/zego/zim/internal/generated/ZIMGenUserRule;

    return-void
.end method

.method public setUserStatus(Lim/zego/zim/internal/generated/ZIMGenUserStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userStatus"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenSelfUserInfo{UserRule="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserRule:Lim/zego/zim/internal/generated/ZIMGenUserRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserFullInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserFullInfo:Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->UserStatus:Lim/zego/zim/internal/generated/ZIMGenUserStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenSelfUserInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lim/zego/zim/internal/generated/ZIMGenLoginConfig;
.super Ljava/lang/Object;
.source "ZIMGenLoginConfig.java"


# instance fields
.field CustomStatus:Ljava/lang/String;

.field IsNullFromJava:Z

.field IsOfflineLogin:Z

.field Token:Ljava/lang/String;

.field UserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
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
            "userName",
            "token",
            "isOfflineLogin",
            "customStatus",
            "isNullFromJava"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->UserName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->Token:Ljava/lang/String;

    .line 24
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->IsOfflineLogin:Z

    .line 25
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->CustomStatus:Ljava/lang/String;

    .line 26
    iput-boolean p5, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getCustomStatus()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->CustomStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getIsOfflineLogin()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->IsOfflineLogin:Z

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->Token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->UserName:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomStatus(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customStatus"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->CustomStatus:Ljava/lang/String;

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

    .line 42
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setIsOfflineLogin(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOfflineLogin"
        }
    .end annotation

    .line 36
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->IsOfflineLogin:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->Token:Ljava/lang/String;

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

    .line 30
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->UserName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenLoginConfig{UserName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->UserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->Token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsOfflineLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->IsOfflineLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CustomStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->CustomStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenLoginConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

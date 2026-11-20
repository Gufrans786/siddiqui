.class public Lim/zego/zpns/util/ZPNsConfig;
.super Ljava/lang/Object;
.source "ZPNsConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appType:I

.field public enableFCMPush:Z

.field private enableHWBadge:Z

.field public enableHWPush:Z

.field public enableMiPush:Z

.field public enableOppoPush:Z

.field public enableVivoPush:Z

.field public hwAppID:Ljava/lang/String;

.field public miAppID:Ljava/lang/String;

.field public miAppKey:Ljava/lang/String;

.field public oppoAppID:Ljava/lang/String;

.field public oppoAppKey:Ljava/lang/String;

.field public oppoAppSecret:Ljava/lang/String;

.field public vivoAppID:Ljava/lang/String;

.field public vivoAppKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableHWPush:Z

    .line 8
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableMiPush:Z

    .line 9
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableVivoPush:Z

    .line 10
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableOppoPush:Z

    .line 11
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableFCMPush:Z

    .line 12
    const-string v1, ""

    iput-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->miAppID:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->miAppKey:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppID:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppSecret:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppKey:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->vivoAppID:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->vivoAppKey:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->hwAppID:Ljava/lang/String;

    .line 21
    iput v0, p0, Lim/zego/zpns/util/ZPNsConfig;->appType:I

    return-void
.end method


# virtual methods
.method public disableFCMPush()Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableFCMPush:Z

    return-object p0
.end method

.method public disableHWPush()Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableHWPush:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zpns/util/ZPNsConfig;->hwAppID:Ljava/lang/String;

    return-object p0
.end method

.method public disableMiPush()Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableMiPush:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zpns/util/ZPNsConfig;->miAppID:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lim/zego/zpns/util/ZPNsConfig;->miAppKey:Ljava/lang/String;

    return-object p0
.end method

.method public disableOppoPush()Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableOppoPush:Z

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppID:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppKey:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppSecret:Ljava/lang/String;

    return-object p0
.end method

.method public disableVivoPush()Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableVivoPush:Z

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zpns/util/ZPNsConfig;->vivoAppID:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lim/zego/zpns/util/ZPNsConfig;->vivoAppKey:Ljava/lang/String;

    return-object p0
.end method

.method public enableFCMPush()Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableFCMPush:Z

    return-object p0
.end method

.method public enableHWPush(Ljava/lang/String;)Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableHWPush:Z

    .line 35
    iput-object p1, p0, Lim/zego/zpns/util/ZPNsConfig;->hwAppID:Ljava/lang/String;

    return-object p0
.end method

.method public enableHwBadge(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lim/zego/zpns/util/ZPNsConfig;->enableHWBadge:Z

    return-void
.end method

.method public enableMiPush(Ljava/lang/String;Ljava/lang/String;)Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableMiPush:Z

    .line 47
    iput-object p1, p0, Lim/zego/zpns/util/ZPNsConfig;->miAppID:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lim/zego/zpns/util/ZPNsConfig;->miAppKey:Ljava/lang/String;

    return-object p0
.end method

.method public enableOppoPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableOppoPush:Z

    .line 75
    iput-object p1, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppID:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppKey:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppSecret:Ljava/lang/String;

    return-object p0
.end method

.method public enableVivoPush(Ljava/lang/String;Ljava/lang/String;)Lim/zego/zpns/util/ZPNsConfig;
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableVivoPush:Z

    .line 61
    iput-object p1, p0, Lim/zego/zpns/util/ZPNsConfig;->vivoAppID:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lim/zego/zpns/util/ZPNsConfig;->vivoAppKey:Ljava/lang/String;

    return-object p0
.end method

.method public getAppType()I
    .locals 1

    .line 95
    iget v0, p0, Lim/zego/zpns/util/ZPNsConfig;->appType:I

    return v0
.end method

.method public isEnableHWBadge()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lim/zego/zpns/util/ZPNsConfig;->enableHWBadge:Z

    return v0
.end method

.method public setAppType(I)Lim/zego/zpns/util/ZPNsConfig;
    .locals 0

    .line 90
    iput p1, p0, Lim/zego/zpns/util/ZPNsConfig;->appType:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{enableHWPush=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lim/zego/zpns/util/ZPNsConfig;->enableHWPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', enableMiPush=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zpns/util/ZPNsConfig;->enableMiPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', enableVivoPush=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zpns/util/ZPNsConfig;->enableVivoPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', enableOppoPush=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zpns/util/ZPNsConfig;->enableOppoPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', enableFCMPush=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zpns/util/ZPNsConfig;->enableFCMPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', miAppID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->miAppID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', miAppKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->miAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', oppoAppID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', oppoAppSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', oppoAppKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->oppoAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', vivoAppID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->vivoAppID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', vivoAppKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->vivoAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', hwAppID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zpns/util/ZPNsConfig;->hwAppID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', enableHWBadge=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zpns/util/ZPNsConfig;->enableHWBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', appType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zpns/util/ZPNsConfig;->appType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

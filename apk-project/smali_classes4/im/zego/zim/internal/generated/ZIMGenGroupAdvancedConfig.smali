.class final Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;
.super Ljava/lang/Object;
.source "ZIMGenGroupAdvancedConfig.java"


# instance fields
.field BeInviteMode:I

.field GroupAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field GroupNotice:Ljava/lang/String;

.field InviteMode:I

.field IsNullFromJava:Z

.field JoinMode:I

.field MaxMemberCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;IIIIZ)V
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
            "groupNotice",
            "groupAttributes",
            "maxMemberCount",
            "joinMode",
            "inviteMode",
            "beInviteMode",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIIIZ)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->GroupNotice:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->GroupAttributes:Ljava/util/HashMap;

    .line 31
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->MaxMemberCount:I

    .line 32
    iput p4, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->JoinMode:I

    .line 33
    iput p5, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->InviteMode:I

    .line 34
    iput p6, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->BeInviteMode:I

    .line 35
    iput-boolean p7, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getBeInviteMode()I
    .locals 1

    .line 55
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->BeInviteMode:I

    return v0
.end method

.method public getGroupAttributes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->GroupAttributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getGroupNotice()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->GroupNotice:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteMode()I
    .locals 1

    .line 52
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->InviteMode:I

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getJoinMode()I
    .locals 1

    .line 49
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->JoinMode:I

    return v0
.end method

.method public getMaxMemberCount()I
    .locals 1

    .line 46
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->MaxMemberCount:I

    return v0
.end method

.method public setBeInviteMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beInviteMode"
        }
    .end annotation

    .line 56
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->BeInviteMode:I

    return-void
.end method

.method public setGroupAttributes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupAttributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->GroupAttributes:Ljava/util/HashMap;

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

    .line 39
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->GroupNotice:Ljava/lang/String;

    return-void
.end method

.method public setInviteMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inviteMode"
        }
    .end annotation

    .line 53
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->InviteMode:I

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

    .line 59
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setJoinMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "joinMode"
        }
    .end annotation

    .line 50
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->JoinMode:I

    return-void
.end method

.method public setMaxMemberCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxMemberCount"
        }
    .end annotation

    .line 47
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->MaxMemberCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupAdvancedConfig{GroupNotice="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->GroupNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",GroupAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->GroupAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MaxMemberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->MaxMemberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",JoinMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->JoinMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",InviteMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->InviteMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",BeInviteMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->BeInviteMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupAdvancedConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

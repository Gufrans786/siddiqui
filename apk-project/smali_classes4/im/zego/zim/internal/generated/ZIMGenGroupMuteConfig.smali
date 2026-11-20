.class final Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;
.super Ljava/lang/Object;
.source "ZIMGenGroupMuteConfig.java"


# instance fields
.field Duration:I

.field IsNullFromJava:Z

.field Mode:I

.field Roles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "duration",
            "roles",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Mode:I

    .line 23
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Duration:I

    .line 24
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Roles:Ljava/util/ArrayList;

    .line 25
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 31
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Duration:I

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 28
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Mode:I

    return v0
.end method

.method public getRoles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Roles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 32
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Duration:I

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

    .line 38
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 29
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Mode:I

    return-void
.end method

.method public setRoles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Roles:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupMuteConfig{Mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Roles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->Roles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMuteConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

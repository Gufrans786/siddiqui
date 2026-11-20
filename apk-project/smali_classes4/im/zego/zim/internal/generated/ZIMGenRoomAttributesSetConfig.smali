.class final Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;
.super Ljava/lang/Object;
.source "ZIMGenRoomAttributesSetConfig.java"


# instance fields
.field IsDeleteAfterOwnerLeft:Z

.field IsForce:Z

.field IsNullFromJava:Z

.field IsUpdateOwner:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isForce",
            "isDeleteAfterOwnerLeft",
            "isUpdateOwner",
            "isNullFromJava"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsForce:Z

    .line 21
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsDeleteAfterOwnerLeft:Z

    .line 22
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsUpdateOwner:Z

    .line 23
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsDeleteAfterOwnerLeft()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsDeleteAfterOwnerLeft:Z

    return v0
.end method

.method public getIsForce()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsForce:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getIsUpdateOwner()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsUpdateOwner:Z

    return v0
.end method

.method public setIsDeleteAfterOwnerLeft(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDeleteAfterOwnerLeft"
        }
    .end annotation

    .line 31
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsDeleteAfterOwnerLeft:Z

    return-void
.end method

.method public setIsForce(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isForce"
        }
    .end annotation

    .line 27
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsForce:Z

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
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsNullFromJava:Z

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

    .line 35
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsUpdateOwner:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenRoomAttributesSetConfig{IsForce="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsForce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsDeleteAfterOwnerLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsDeleteAfterOwnerLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsUpdateOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsUpdateOwner:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesSetConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

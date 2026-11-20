.class final Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;
.super Ljava/lang/Object;
.source "ZIMGenRoomMemberAttributesSetConfig.java"


# instance fields
.field IsDeleteAfterOwnerLeft:Z

.field IsNullFromJava:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isDeleteAfterOwnerLeft",
            "isNullFromJava"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;->IsDeleteAfterOwnerLeft:Z

    .line 17
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsDeleteAfterOwnerLeft()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;->IsDeleteAfterOwnerLeft:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;->IsNullFromJava:Z

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

    .line 22
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;->IsDeleteAfterOwnerLeft:Z

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

    .line 26
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;->IsNullFromJava:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenRoomMemberAttributesSetConfig{IsDeleteAfterOwnerLeft="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;->IsDeleteAfterOwnerLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesSetConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

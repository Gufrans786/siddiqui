.class final Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;
.super Ljava/lang/Object;
.source "ZIMGenRoomAttributesDeleteConfig.java"


# instance fields
.field IsForce:Z

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
            "isForce",
            "isNullFromJava"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;->IsForce:Z

    .line 16
    iput-boolean p2, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsForce()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;->IsForce:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;->IsNullFromJava:Z

    return v0
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

    .line 20
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;->IsForce:Z

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

    .line 23
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;->IsNullFromJava:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenRoomAttributesDeleteConfig{IsForce="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;->IsForce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAttributesDeleteConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

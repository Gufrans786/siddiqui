.class final Lim/zego/zim/internal/generated/ZIMGenFileCacheInfo;
.super Ljava/lang/Object;
.source "ZIMGenFileCacheInfo.java"


# instance fields
.field IsNullFromJava:Z

.field TotalFileSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "totalFileSize",
            "isNullFromJava"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenFileCacheInfo;->TotalFileSize:J

    .line 16
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenFileCacheInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenFileCacheInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getTotalFileSize()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenFileCacheInfo;->TotalFileSize:J

    return-wide v0
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
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenFileCacheInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setTotalFileSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalFileSize"
        }
    .end annotation

    .line 20
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenFileCacheInfo;->TotalFileSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenFileCacheInfo{TotalFileSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenFileCacheInfo;->TotalFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenFileCacheInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

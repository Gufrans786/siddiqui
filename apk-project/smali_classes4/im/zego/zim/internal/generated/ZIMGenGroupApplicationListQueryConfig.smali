.class final Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;
.super Ljava/lang/Object;
.source "ZIMGenGroupApplicationListQueryConfig.java"


# instance fields
.field Count:I

.field NextFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "nextFlag"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;->Count:I

    .line 16
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;->NextFlag:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 19
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;->Count:I

    return v0
.end method

.method public getNextFlag()I
    .locals 1

    .line 22
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;->NextFlag:I

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 20
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;->Count:I

    return-void
.end method

.method public setNextFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextFlag"
        }
    .end annotation

    .line 23
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;->NextFlag:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupApplicationListQueryConfig{Count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NextFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupApplicationListQueryConfig;->NextFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

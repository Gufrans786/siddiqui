.class final Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;
.super Ljava/lang/Object;
.source "ZIMGenGroupMemberQueryConfig.java"


# instance fields
.field Count:I

.field IsNullFromJava:Z

.field NextFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nextFlag",
            "count",
            "isNullFromJava"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->NextFlag:I

    .line 18
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->Count:I

    .line 19
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 25
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->Count:I

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getNextFlag()I
    .locals 1

    .line 22
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->NextFlag:I

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

    .line 26
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->Count:I

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

    .line 29
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->IsNullFromJava:Z

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
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->NextFlag:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupMemberQueryConfig{NextFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->NextFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberQueryConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

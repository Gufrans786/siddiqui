.class final Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;
.super Ljava/lang/Object;
.source "ZIMGenVoIPConfig.java"


# instance fields
.field IOSVoIPHandleType:I

.field IOSVoIPHandleValue:Ljava/lang/String;

.field IOSVoIPHasVideo:Z

.field IsNullFromJava:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "iOSVoIPHandleType",
            "iOSVoIPHandleValue",
            "iOSVoIPHasVideo",
            "isNullFromJava"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHandleType:I

    .line 21
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHandleValue:Ljava/lang/String;

    .line 22
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHasVideo:Z

    .line 23
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIOSVoIPHandleType()I
    .locals 1

    .line 26
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHandleType:I

    return v0
.end method

.method public getIOSVoIPHandleValue()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHandleValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIOSVoIPHasVideo()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHasVideo:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IsNullFromJava:Z

    return v0
.end method

.method public setIOSVoIPHandleType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iOSVoIPHandleType"
        }
    .end annotation

    .line 28
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHandleType:I

    return-void
.end method

.method public setIOSVoIPHandleValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iOSVoIPHandleValue"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHandleValue:Ljava/lang/String;

    return-void
.end method

.method public setIOSVoIPHasVideo(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iOSVoIPHasVideo"
        }
    .end annotation

    .line 38
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHasVideo:Z

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
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IsNullFromJava:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenVoIPConfig{IOSVoIPHandleType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHandleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IOSVoIPHandleValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHandleValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IOSVoIPHasVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IOSVoIPHasVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenVoIPConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

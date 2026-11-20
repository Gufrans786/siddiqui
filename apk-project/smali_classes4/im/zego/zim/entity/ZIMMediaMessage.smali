.class public Lim/zego/zim/entity/ZIMMediaMessage;
.super Lim/zego/zim/entity/ZIMMessage;
.source "ZIMMediaMessage.java"


# instance fields
.field private fileDownloadUrl:Ljava/lang/String;

.field private fileLocalPath:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private fileUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lim/zego/zim/enums/ZIMMessageType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "fileLocalPath"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lim/zego/zim/entity/ZIMMessage;-><init>(Lim/zego/zim/enums/ZIMMessageType;)V

    .line 59
    iput-object p2, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileLocalPath:Ljava/lang/String;

    .line 60
    const-string p1, ""

    iput-object p1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileDownloadUrl:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileName:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileUID:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 63
    iput-wide p1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileSize:J

    return-void
.end method


# virtual methods
.method public getFileDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLocalPath()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileSize:J

    return-wide v0
.end method

.method public getFileUID()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileUID:Ljava/lang/String;

    return-object v0
.end method

.method public setFileDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileDownloadUrl"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileLocalPath"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lim/zego/zim/entity/ZIMMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMMediaMessage{fileLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fileUID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fileDownloadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMediaMessage;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

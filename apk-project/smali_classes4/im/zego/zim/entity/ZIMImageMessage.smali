.class public Lim/zego/zim/entity/ZIMImageMessage;
.super Lim/zego/zim/entity/ZIMMediaMessage;
.source "ZIMImageMessage.java"


# instance fields
.field private largeImageDownloadUrl:Ljava/lang/String;

.field private largeImageHeight:I

.field private largeImageLocalPath:Ljava/lang/String;

.field private largeImageWidth:I

.field private originalImageHeight:I

.field private originalImageWidth:I

.field private thumbnailDownloadUrl:Ljava/lang/String;

.field private thumbnailHeight:I

.field private thumbnailLocalPath:Ljava/lang/String;

.field private thumbnailWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileLocalPath"
        }
    .end annotation

    .line 56
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->IMAGE:Lim/zego/zim/enums/ZIMMessageType;

    invoke-direct {p0, v0, p1}, Lim/zego/zim/entity/ZIMMediaMessage;-><init>(Lim/zego/zim/enums/ZIMMessageType;Ljava/lang/String;)V

    .line 57
    const-string p1, ""

    iput-object p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageDownloadUrl:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageLocalPath:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailDownloadUrl:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailLocalPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->originalImageWidth:I

    .line 62
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->originalImageHeight:I

    .line 63
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageWidth:I

    .line 64
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageHeight:I

    .line 65
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailWidth:I

    .line 66
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailHeight:I

    return-void
.end method


# virtual methods
.method public getLargeImageDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageHeight()I
    .locals 1

    .line 101
    iget v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageHeight:I

    return v0
.end method

.method public getLargeImageLocalPath()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageWidth()I
    .locals 1

    .line 97
    iget v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageWidth:I

    return v0
.end method

.method public getOriginalImageHeight()I
    .locals 1

    .line 91
    iget v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->originalImageHeight:I

    return v0
.end method

.method public getOriginalImageWidth()I
    .locals 1

    .line 85
    iget v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->originalImageWidth:I

    return v0
.end method

.method public getThumbnailDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .line 111
    iget v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailHeight:I

    return v0
.end method

.method public getThumbnailLocalPath()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .line 107
    iget v0, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailWidth:I

    return v0
.end method

.method public setLargeImageDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "largeImageDownloadUrl"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setLargeImageHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "largeImageHeight"
        }
    .end annotation

    .line 104
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageHeight:I

    return-void
.end method

.method public setLargeImageWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "largeImageWidth"
        }
    .end annotation

    .line 99
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageWidth:I

    return-void
.end method

.method public setOriginalImageHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalImageHeight"
        }
    .end annotation

    .line 94
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->originalImageHeight:I

    return-void
.end method

.method public setOriginalImageWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalImageWidth"
        }
    .end annotation

    .line 88
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->originalImageWidth:I

    return-void
.end method

.method public setThumbnailDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailDownloadUrl"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailHeight"
        }
    .end annotation

    .line 113
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailHeight:I

    return-void
.end method

.method public setThumbnailWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailWidth"
        }
    .end annotation

    .line 109
    iput p1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lim/zego/zim/entity/ZIMMediaMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMImageMessage{thumbnailLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', largeImageLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', thumbnailDownloadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', largeImageDownloadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', originalImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->originalImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->originalImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", largeImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", largeImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->largeImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumbnailWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumbnailHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessage;->thumbnailHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

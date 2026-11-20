.class public Lim/zego/zim/entity/ZIMImageMessageLiteInfo;
.super Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;
.source "ZIMImageMessageLiteInfo.java"


# instance fields
.field public largeImageDownloadUrl:Ljava/lang/String;

.field public largeImageHeight:I

.field public largeImageLocalPath:Ljava/lang/String;

.field public largeImageWidth:I

.field public originalImageHeight:I

.field public originalImageWidth:I

.field public thumbnailDownloadUrl:Ljava/lang/String;

.field public thumbnailHeight:I

.field public thumbnailLocalPath:Ljava/lang/String;

.field public thumbnailWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->originalImageWidth:I

    .line 21
    iput v0, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->originalImageHeight:I

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailLocalPath:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailDownloadUrl:Ljava/lang/String;

    .line 24
    iput v0, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailWidth:I

    .line 25
    iput v0, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailHeight:I

    .line 26
    iput-object v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageLocalPath:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageDownloadUrl:Ljava/lang/String;

    .line 28
    iput v0, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageWidth:I

    .line 29
    iput v0, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageHeight:I

    .line 30
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->IMAGE:Lim/zego/zim/enums/ZIMMessageType;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMMessageLiteInfo{originalImageWidth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->originalImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'originalImageHeight=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->originalImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'thumbnailLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'thumbnailWidth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'thumbnailHeight=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'largeImageLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'largeImageDownloadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'largeImageWidth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'largeImageHeight=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->largeImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'thumbnailDownloadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMImageMessageLiteInfo;->thumbnailDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

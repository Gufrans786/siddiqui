.class final Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageLiteInfo.java"


# instance fields
.field AudioDuration:J

.field FileDownloadUrl:Ljava/lang/String;

.field FileLocalPath:Ljava/lang/String;

.field FileName:Ljava/lang/String;

.field FileSize:J

.field IsNullFromJava:Z

.field LargeImageDownloadUrl:Ljava/lang/String;

.field LargeImageHeight:I

.field LargeImageLocalPath:Ljava/lang/String;

.field LargeImageWidth:I

.field Message:Ljava/lang/String;

.field MultipleMessageInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;",
            ">;"
        }
    .end annotation
.end field

.field OriginalImageHeight:I

.field OriginalImageWidth:I

.field SearchedContent:Ljava/lang/String;

.field SubType:I

.field Summary:Ljava/lang/String;

.field ThumbnailDownloadUrl:Ljava/lang/String;

.field ThumbnailHeight:I

.field ThumbnailLocalPath:Ljava/lang/String;

.field ThumbnailWidth:I

.field Title:Ljava/lang/String;

.field Type:I

.field VideoDuration:J

.field VideoFirstFrameDownloadUrl:Ljava/lang/String;

.field VideoFirstFrameHeight:I

.field VideoFirstFrameLocalPath:Ljava/lang/String;

.field VideoFirstFrameWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;IILjava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "message",
            "subType",
            "searchedContent",
            "title",
            "summary",
            "fileSize",
            "fileName",
            "fileLocalPath",
            "fileDownloadUrl",
            "originalImageWidth",
            "originalImageHeight",
            "thumbnailLocalPath",
            "thumbnailDownloadUrl",
            "thumbnailWidth",
            "thumbnailHeight",
            "largeImageLocalPath",
            "largeImageDownloadUrl",
            "largeImageWidth",
            "largeImageHeight",
            "audioDuration",
            "videoDuration",
            "videoFirstFrameDownloadUrl",
            "videoFirstFrameWidth",
            "videoFirstFrameHeight",
            "videoFirstFrameLocalPath",
            "multipleMessageInfoList",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJJ",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Type:I

    .line 79
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Message:Ljava/lang/String;

    .line 80
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->SubType:I

    .line 81
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->SearchedContent:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Title:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Summary:Ljava/lang/String;

    .line 84
    iput-wide p7, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileSize:J

    .line 85
    iput-object p9, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileName:Ljava/lang/String;

    .line 86
    iput-object p10, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileLocalPath:Ljava/lang/String;

    .line 87
    iput-object p11, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileDownloadUrl:Ljava/lang/String;

    .line 88
    iput p12, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->OriginalImageWidth:I

    .line 89
    iput p13, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->OriginalImageHeight:I

    .line 90
    iput-object p14, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailLocalPath:Ljava/lang/String;

    .line 91
    iput-object p15, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailDownloadUrl:Ljava/lang/String;

    move/from16 p1, p16

    .line 92
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailWidth:I

    move/from16 p1, p17

    .line 93
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailHeight:I

    move-object/from16 p1, p18

    .line 94
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageLocalPath:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 95
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageDownloadUrl:Ljava/lang/String;

    move/from16 p1, p20

    .line 96
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageWidth:I

    move/from16 p1, p21

    .line 97
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageHeight:I

    move-wide/from16 p1, p22

    .line 98
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->AudioDuration:J

    move-wide/from16 p1, p24

    .line 99
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoDuration:J

    move-object/from16 p1, p26

    .line 100
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameDownloadUrl:Ljava/lang/String;

    move/from16 p1, p27

    .line 101
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameWidth:I

    move/from16 p1, p28

    .line 102
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameHeight:I

    move-object/from16 p1, p29

    .line 103
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameLocalPath:Ljava/lang/String;

    move-object/from16 p1, p30

    .line 104
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->MultipleMessageInfoList:Ljava/util/ArrayList;

    move/from16 p1, p31

    .line 105
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getAudioDuration()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->AudioDuration:J

    return-wide v0
.end method

.method public getFileDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLocalPath()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileSize:J

    return-wide v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getLargeImageDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageHeight()I
    .locals 1

    .line 184
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageHeight:I

    return v0
.end method

.method public getLargeImageLocalPath()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageWidth()I
    .locals 1

    .line 181
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageWidth:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Message:Ljava/lang/String;

    return-object v0
.end method

.method public getMultipleMessageInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->MultipleMessageInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOriginalImageHeight()I
    .locals 1

    .line 150
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->OriginalImageHeight:I

    return v0
.end method

.method public getOriginalImageWidth()I
    .locals 1

    .line 145
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->OriginalImageWidth:I

    return v0
.end method

.method public getSearchedContent()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->SearchedContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()I
    .locals 1

    .line 114
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->SubType:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Summary:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .line 168
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailHeight:I

    return v0
.end method

.method public getThumbnailLocalPath()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .line 165
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailWidth:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 108
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Type:I

    return v0
.end method

.method public getVideoDuration()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoDuration:J

    return-wide v0
.end method

.method public getVideoFirstFrameDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFirstFrameHeight()I
    .locals 1

    .line 207
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameHeight:I

    return v0
.end method

.method public getVideoFirstFrameLocalPath()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFirstFrameWidth()I
    .locals 1

    .line 202
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameWidth:I

    return v0
.end method

.method public setAudioDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioDuration"
        }
    .end annotation

    .line 191
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->AudioDuration:J

    return-void
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

    .line 141
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileDownloadUrl:Ljava/lang/String;

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

    .line 137
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileLocalPath:Ljava/lang/String;

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

    .line 134
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSize"
        }
    .end annotation

    .line 131
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileSize:J

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

    .line 227
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->IsNullFromJava:Z

    return-void
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

    .line 178
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageDownloadUrl:Ljava/lang/String;

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

    .line 186
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageHeight:I

    return-void
.end method

.method public setLargeImageLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "largeImageLocalPath"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageLocalPath:Ljava/lang/String;

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

    .line 182
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageWidth:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Message:Ljava/lang/String;

    return-void
.end method

.method public setMultipleMessageInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multipleMessageInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;",
            ">;)V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->MultipleMessageInfoList:Ljava/util/ArrayList;

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

    .line 152
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->OriginalImageHeight:I

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

    .line 147
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->OriginalImageWidth:I

    return-void
.end method

.method public setSearchedContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchedContent"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->SearchedContent:Ljava/lang/String;

    return-void
.end method

.method public setSubType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subType"
        }
    .end annotation

    .line 115
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->SubType:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summary"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Summary:Ljava/lang/String;

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

    .line 162
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailDownloadUrl:Ljava/lang/String;

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

    .line 169
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailHeight:I

    return-void
.end method

.method public setThumbnailLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailLocalPath"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailLocalPath:Ljava/lang/String;

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

    .line 166
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailWidth:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 109
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Type:I

    return-void
.end method

.method public setVideoDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoDuration"
        }
    .end annotation

    .line 195
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoDuration:J

    return-void
.end method

.method public setVideoFirstFrameDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFirstFrameDownloadUrl"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoFirstFrameHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFirstFrameHeight"
        }
    .end annotation

    .line 209
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameHeight:I

    return-void
.end method

.method public setVideoFirstFrameLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFirstFrameLocalPath"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setVideoFirstFrameWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFirstFrameWidth"
        }
    .end annotation

    .line 204
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageLiteInfo{Type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SubType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->SubType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SearchedContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->SearchedContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->Summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FileLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FileDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->FileDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OriginalImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->OriginalImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OriginalImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->OriginalImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ThumbnailLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ThumbnailDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ThumbnailWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ThumbnailHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->ThumbnailHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LargeImageLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LargeImageDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LargeImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LargeImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->LargeImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",AudioDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->AudioDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VideoDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VideoFirstFrameDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VideoFirstFrameWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VideoFirstFrameHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VideoFirstFrameLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->VideoFirstFrameLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MultipleMessageInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->MultipleMessageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

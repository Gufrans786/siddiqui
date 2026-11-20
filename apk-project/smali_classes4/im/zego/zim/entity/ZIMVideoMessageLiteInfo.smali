.class public Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;
.super Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;
.source "ZIMVideoMessageLiteInfo.java"


# instance fields
.field public videoDuration:J

.field public videoFirstFrameDownloadUrl:Ljava/lang/String;

.field public videoFirstFrameHeight:I

.field public videoFirstFrameLocalPath:Ljava/lang/String;

.field public videoFirstFrameWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoDuration:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameDownloadUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameWidth:I

    .line 17
    iput v1, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameHeight:I

    .line 18
    iput-object v0, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameLocalPath:Ljava/lang/String;

    .line 19
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->VIDEO:Lim/zego/zim/enums/ZIMMessageType;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMVideoMessageLiteInfo{videoFirstFrameDownloadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'videoFirstFrameWidth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'videoFirstFrameHeight=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'videoFirstFrameLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoFirstFrameLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'videoDuration=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMVideoMessageLiteInfo;->videoDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

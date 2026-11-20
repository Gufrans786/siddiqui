.class public Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;
.super Lim/zego/zim/entity/ZIMMessageLiteInfo;
.source "ZIMMediaMessageLiteInfo.java"


# instance fields
.field public fileDownloadUrl:Ljava/lang/String;

.field public fileLocalPath:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public fileSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lim/zego/zim/entity/ZIMMessageLiteInfo;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileSize:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileLocalPath:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileDownloadUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lim/zego/zim/entity/ZIMMessageLiteInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMMediaMessageLiteInfo{fileSize=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'fileDownloadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'fileLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->fileLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

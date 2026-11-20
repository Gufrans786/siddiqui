.class public Lim/zego/zim/entity/ZIMAudioMessageLiteInfo;
.super Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;
.source "ZIMAudioMessageLiteInfo.java"


# instance fields
.field public audioDuration:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;-><init>()V

    .line 11
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->AUDIO:Lim/zego/zim/enums/ZIMMessageType;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMAudioMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMAudioMessageLiteInfo{audioDuration=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/entity/ZIMAudioMessageLiteInfo;->audioDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

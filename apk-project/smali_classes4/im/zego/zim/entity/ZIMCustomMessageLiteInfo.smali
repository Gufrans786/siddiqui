.class public Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;
.super Lim/zego/zim/entity/ZIMMessageLiteInfo;
.source "ZIMCustomMessageLiteInfo.java"


# instance fields
.field public message:Ljava/lang/String;

.field public searchedContent:Ljava/lang/String;

.field public subType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lim/zego/zim/entity/ZIMMessageLiteInfo;-><init>()V

    .line 13
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->CUSTOM:Lim/zego/zim/enums/ZIMMessageType;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->message:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->searchedContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lim/zego/zim/entity/ZIMMessageLiteInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMMessageLiteInfo{subType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'searchedContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->searchedContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMCustomMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    .line 22
    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

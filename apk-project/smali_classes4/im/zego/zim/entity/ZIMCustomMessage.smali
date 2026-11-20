.class public Lim/zego/zim/entity/ZIMCustomMessage;
.super Lim/zego/zim/entity/ZIMMessage;
.source "ZIMCustomMessage.java"


# instance fields
.field public message:Ljava/lang/String;

.field public searchedContent:Ljava/lang/String;

.field public subType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "subType"
        }
    .end annotation

    .line 25
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->CUSTOM:Lim/zego/zim/enums/ZIMMessageType;

    invoke-direct {p0, v0}, Lim/zego/zim/entity/ZIMMessage;-><init>(Lim/zego/zim/enums/ZIMMessageType;)V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMCustomMessage;->searchedContent:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lim/zego/zim/entity/ZIMCustomMessage;->message:Ljava/lang/String;

    .line 27
    iput p2, p0, Lim/zego/zim/entity/ZIMCustomMessage;->subType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lim/zego/zim/entity/ZIMMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMCustomMessage{message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMCustomMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', searchedContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMCustomMessage;->searchedContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/entity/ZIMCustomMessage;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

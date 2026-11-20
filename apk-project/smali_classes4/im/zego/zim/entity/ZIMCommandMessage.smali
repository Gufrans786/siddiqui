.class public Lim/zego/zim/entity/ZIMCommandMessage;
.super Lim/zego/zim/entity/ZIMMessage;
.source "ZIMCommandMessage.java"


# instance fields
.field public message:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->COMMAND:Lim/zego/zim/enums/ZIMMessageType;

    invoke-direct {p0, v0}, Lim/zego/zim/entity/ZIMMessage;-><init>(Lim/zego/zim/enums/ZIMMessageType;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 26
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->COMMAND:Lim/zego/zim/enums/ZIMMessageType;

    invoke-direct {p0, v0}, Lim/zego/zim/entity/ZIMMessage;-><init>(Lim/zego/zim/enums/ZIMMessageType;)V

    .line 27
    iput-object p1, p0, Lim/zego/zim/entity/ZIMCommandMessage;->message:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMCommandMessage{message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/entity/ZIMCommandMessage;->message:[B

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

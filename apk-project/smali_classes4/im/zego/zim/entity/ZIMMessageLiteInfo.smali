.class public Lim/zego/zim/entity/ZIMMessageLiteInfo;
.super Ljava/lang/Object;
.source "ZIMMessageLiteInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public type:Lim/zego/zim/enums/ZIMMessageType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->UNKNOWN:Lim/zego/zim/enums/ZIMMessageType;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ZIMMessageLiteInfo{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/entity/ZIMMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    .line 14
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

.class public Lim/zego/zim/entity/ZIMFileMessageLiteInfo;
.super Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;
.source "ZIMFileMessageLiteInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;-><init>()V

    .line 8
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->FILE:Lim/zego/zim/enums/ZIMMessageType;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMFileMessageLiteInfo;->type:Lim/zego/zim/enums/ZIMMessageType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-super {p0}, Lim/zego/zim/entity/ZIMMediaMessageLiteInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

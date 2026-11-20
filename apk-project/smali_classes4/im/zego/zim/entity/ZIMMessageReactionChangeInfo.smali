.class public Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;
.super Ljava/lang/Object;
.source "ZIMMessageReactionChangeInfo.java"


# instance fields
.field private message:Lim/zego/zim/entity/ZIMMessage;

.field private userChangeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;->userChangeInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getMessage()Lim/zego/zim/entity/ZIMMessage;
    .locals 1

    .line 9
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;->message:Lim/zego/zim/entity/ZIMMessage;

    return-object v0
.end method

.method public getUserChangeInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;->userChangeInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMessage(Lim/zego/zim/entity/ZIMMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;->message:Lim/zego/zim/entity/ZIMMessage;

    return-void
.end method

.method public setUserChangeInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userChangeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;->userChangeInfoList:Ljava/util/ArrayList;

    return-void
.end method

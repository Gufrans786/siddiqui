.class public Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;
.super Ljava/lang/Object;
.source "ZIMMessageReactionsChangedEventResult.java"


# instance fields
.field private changeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private reactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;->reactions:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;->changeInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getChangeInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;->changeInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReaction;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;->reactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setChangeInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReactionChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;->changeInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setReactions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reactions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReaction;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lim/zego/zim/event/ZIMMessageReactionsChangedEventResult;->reactions:Ljava/util/ArrayList;

    return-void
.end method

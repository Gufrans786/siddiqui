.class public Lim/zego/zim/entity/ZIMMessageReactionUserFullInfo;
.super Ljava/lang/Object;
.source "ZIMMessageReactionUserFullInfo.java"


# instance fields
.field private reactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserFullInfo;->userID:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserFullInfo;->reactions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getReactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserFullInfo;->reactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserFullInfo;->userID:Ljava/lang/String;

    return-object v0
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
            "Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageReactionUserFullInfo;->reactions:Ljava/util/ArrayList;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userID"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageReactionUserFullInfo;->userID:Ljava/lang/String;

    return-void
.end method

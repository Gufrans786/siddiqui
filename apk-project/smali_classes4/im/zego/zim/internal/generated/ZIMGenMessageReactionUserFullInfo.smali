.class final Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageReactionUserFullInfo.java"


# instance fields
.field Reactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;",
            ">;"
        }
    .end annotation
.end field

.field UserID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userID",
            "reactions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;->UserID:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;->Reactions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getReactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;->Reactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;->UserID:Ljava/lang/String;

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
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionSimpleInfo;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;->Reactions:Ljava/util/ArrayList;

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

    .line 23
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;->UserID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageReactionUserFullInfo{UserID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Reactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;->Reactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

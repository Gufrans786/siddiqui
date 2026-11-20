.class public Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;
.super Ljava/lang/Object;
.source "ZIMMessageReactionSimpleInfo.java"


# instance fields
.field private reactionType:Ljava/lang/String;

.field private sumCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;->reactionType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;->sumCount:I

    return-void
.end method


# virtual methods
.method public getReactionType()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;->reactionType:Ljava/lang/String;

    return-object v0
.end method

.method public getSumCount()I
    .locals 1

    .line 11
    iget v0, p0, Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;->sumCount:I

    return v0
.end method

.method public setReactionType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reactionType"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;->reactionType:Ljava/lang/String;

    return-void
.end method

.method public setSumCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sumCount"
        }
    .end annotation

    .line 13
    iput p1, p0, Lim/zego/zim/entity/ZIMMessageReactionSimpleInfo;->sumCount:I

    return-void
.end method

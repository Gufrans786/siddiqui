.class public Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;
.super Ljava/lang/Object;
.source "ZIMMessageReactionUserChangeInfo.java"


# instance fields
.field private action:Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;

.field private reactionType:Ljava/lang/String;

.field private sumCount:I

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->userID:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->reactionType:Ljava/lang/String;

    .line 30
    sget-object v0, Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;->ADDED:Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->action:Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->sumCount:I

    return-void
.end method


# virtual methods
.method public getAction()Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;
    .locals 1

    .line 19
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->action:Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;

    return-object v0
.end method

.method public getReactionType()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->reactionType:Ljava/lang/String;

    return-object v0
.end method

.method public getSumCount()I
    .locals 1

    .line 23
    iget v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->sumCount:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->action:Lim/zego/zim/enums/ZIMMessageReactionUserChangeAction;

    return-void
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

    .line 17
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->reactionType:Ljava/lang/String;

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

    .line 25
    iput p1, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->sumCount:I

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

    .line 13
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageReactionUserChangeInfo;->userID:Ljava/lang/String;

    return-void
.end method

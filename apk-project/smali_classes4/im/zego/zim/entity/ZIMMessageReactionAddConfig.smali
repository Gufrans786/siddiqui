.class public Lim/zego/zim/entity/ZIMMessageReactionAddConfig;
.super Ljava/lang/Object;
.source "ZIMMessageReactionAddConfig.java"


# instance fields
.field private increaseCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lim/zego/zim/entity/ZIMMessageReactionAddConfig;->increaseCount:I

    return-void
.end method


# virtual methods
.method public getIncreaseCount()I
    .locals 1

    .line 6
    iget v0, p0, Lim/zego/zim/entity/ZIMMessageReactionAddConfig;->increaseCount:I

    return v0
.end method

.method public setIncreaseCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "increaseCount"
        }
    .end annotation

    .line 8
    iput p1, p0, Lim/zego/zim/entity/ZIMMessageReactionAddConfig;->increaseCount:I

    return-void
.end method

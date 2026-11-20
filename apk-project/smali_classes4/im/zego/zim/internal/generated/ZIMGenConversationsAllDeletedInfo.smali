.class final Lim/zego/zim/internal/generated/ZIMGenConversationsAllDeletedInfo;
.super Ljava/lang/Object;
.source "ZIMGenConversationsAllDeletedInfo.java"


# instance fields
.field Count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationsAllDeletedInfo;->Count:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 14
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationsAllDeletedInfo;->Count:I

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 15
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationsAllDeletedInfo;->Count:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenConversationsAllDeletedInfo{Count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationsAllDeletedInfo;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

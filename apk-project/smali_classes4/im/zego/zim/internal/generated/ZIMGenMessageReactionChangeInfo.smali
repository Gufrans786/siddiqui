.class final Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;
.super Ljava/lang/Object;
.source "ZIMGenMessageReactionChangeInfo.java"


# instance fields
.field Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field UserChangeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenMessage;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "userChangeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 19
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;->UserChangeInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getMessage()Lim/zego/zim/internal/generated/ZIMGenMessage;
    .locals 1

    .line 22
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-object v0
.end method

.method public getUserChangeInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;->UserChangeInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMessage(Lim/zego/zim/internal/generated/ZIMGenMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

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
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;->UserChangeInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageReactionChangeInfo{Message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;->Message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserChangeInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;->UserChangeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

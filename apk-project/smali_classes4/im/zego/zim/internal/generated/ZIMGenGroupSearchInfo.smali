.class final Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;
.super Ljava/lang/Object;
.source "ZIMGenGroupSearchInfo.java"


# instance fields
.field GroupInfo:Lim/zego/zim/internal/generated/ZIMGenGroupInfo;

.field UserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
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

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenGroupInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupInfo",
            "userList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/internal/generated/ZIMGenGroupInfo;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;->GroupInfo:Lim/zego/zim/internal/generated/ZIMGenGroupInfo;

    .line 19
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;->UserList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getGroupInfo()Lim/zego/zim/internal/generated/ZIMGenGroupInfo;
    .locals 1

    .line 22
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;->GroupInfo:Lim/zego/zim/internal/generated/ZIMGenGroupInfo;

    return-object v0
.end method

.method public getUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;->UserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setGroupInfo(Lim/zego/zim/internal/generated/ZIMGenGroupInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupInfo"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;->GroupInfo:Lim/zego/zim/internal/generated/ZIMGenGroupInfo;

    return-void
.end method

.method public setUserList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;->UserList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupSearchInfo{GroupInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;->GroupInfo:Lim/zego/zim/internal/generated/ZIMGenGroupInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",UserList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;->UserList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

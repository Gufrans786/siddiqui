.class final Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;
.super Ljava/lang/Object;
.source "ZIMGenRoomMemberAttributesOperatedInfo.java"


# instance fields
.field AttributesInfo:Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;

.field ErrorKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
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

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attributesInfo",
            "errorKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;->AttributesInfo:Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;

    .line 19
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;->ErrorKeys:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAttributesInfo()Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;
    .locals 1

    .line 22
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;->AttributesInfo:Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;

    return-object v0
.end method

.method public getErrorKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;->ErrorKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAttributesInfo(Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributesInfo"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;->AttributesInfo:Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;

    return-void
.end method

.method public setErrorKeys(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;->ErrorKeys:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenRoomMemberAttributesOperatedInfo{AttributesInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;->AttributesInfo:Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ErrorKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;->ErrorKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

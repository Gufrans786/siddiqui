.class final Lim/zego/zim/internal/generated/ZIMGenRoomInfo;
.super Ljava/lang/Object;
.source "ZIMGenRoomInfo.java"


# instance fields
.field IsNullFromJava:Z

.field RoomId:Ljava/lang/String;

.field RoomName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomId",
            "roomName",
            "isNullFromJava"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->RoomId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->RoomName:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->IsNullFromJava:Z

    return v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->RoomId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->RoomName:Ljava/lang/String;

    return-object v0
.end method

.method public setIsNullFromJava(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNullFromJava"
        }
    .end annotation

    .line 29
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->IsNullFromJava:Z

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomId"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->RoomId:Ljava/lang/String;

    return-void
.end method

.method public setRoomName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomName"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->RoomName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenRoomInfo{RoomId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->RoomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RoomName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->RoomName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomInfo;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;
.super Ljava/lang/Object;
.source "ZIMGenRoomAdvancedConfig.java"


# instance fields
.field IsNullFromJava:Z

.field RoomAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field RoomDestroyDelayTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomAttributes",
            "roomDestroyDelayTime",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->RoomAttributes:Ljava/util/HashMap;

    .line 21
    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->RoomDestroyDelayTime:J

    .line 22
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getIsNullFromJava()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getRoomAttributes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->RoomAttributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRoomDestroyDelayTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->RoomDestroyDelayTime:J

    return-wide v0
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

    .line 36
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setRoomAttributes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomAttributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->RoomAttributes:Ljava/util/HashMap;

    return-void
.end method

.method public setRoomDestroyDelayTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomDestroyDelayTime"
        }
    .end annotation

    .line 32
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->RoomDestroyDelayTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenRoomAdvancedConfig{RoomAttributes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->RoomAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RoomDestroyDelayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->RoomDestroyDelayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenRoomAdvancedConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

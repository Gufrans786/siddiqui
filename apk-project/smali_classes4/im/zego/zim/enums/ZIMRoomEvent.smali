.class public final enum Lim/zego/zim/enums/ZIMRoomEvent;
.super Ljava/lang/Enum;
.source "ZIMRoomEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMRoomEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum ACTIVE_CREATE:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum ACTIVE_ENTER:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum ACTIVE_SWITCH:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum CONNECT_TIMEOUT:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum CREATE_FAILED:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum ENTER_FAILED:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum KICKED_OUT:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum KICKED_OUT_BY_OTHER_DEVICE:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum NETWORK_DISCONNECTED:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum NETWORK_INTERRUPTED:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum ROOM_NOT_EXIST:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum SUCCESS:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum SWITCH_FAILED:Lim/zego/zim/enums/ZIMRoomEvent;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMRoomEvent;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 14
    new-instance v0, Lim/zego/zim/enums/ZIMRoomEvent;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->UNKNOWN:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 18
    new-instance v1, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v2, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMRoomEvent;->SUCCESS:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 23
    new-instance v2, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v3, "NETWORK_INTERRUPTED"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMRoomEvent;->NETWORK_INTERRUPTED:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 28
    new-instance v3, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v4, "NETWORK_DISCONNECTED"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMRoomEvent;->NETWORK_DISCONNECTED:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 33
    new-instance v4, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v5, "ROOM_NOT_EXIST"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMRoomEvent;->ROOM_NOT_EXIST:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 38
    new-instance v5, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v6, "ACTIVE_CREATE"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMRoomEvent;->ACTIVE_CREATE:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 43
    new-instance v6, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v7, "CREATE_FAILED"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lim/zego/zim/enums/ZIMRoomEvent;->CREATE_FAILED:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 48
    new-instance v7, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v8, "ACTIVE_ENTER"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lim/zego/zim/enums/ZIMRoomEvent;->ACTIVE_ENTER:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 53
    new-instance v8, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v9, "ENTER_FAILED"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lim/zego/zim/enums/ZIMRoomEvent;->ENTER_FAILED:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 58
    new-instance v9, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v10, "KICKED_OUT"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v12, v11}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lim/zego/zim/enums/ZIMRoomEvent;->KICKED_OUT:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 63
    new-instance v10, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v11, "CONNECT_TIMEOUT"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v13, v12}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lim/zego/zim/enums/ZIMRoomEvent;->CONNECT_TIMEOUT:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 65
    new-instance v11, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v12, "KICKED_OUT_BY_OTHER_DEVICE"

    const/16 v14, 0xb

    invoke-direct {v11, v12, v14, v13}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lim/zego/zim/enums/ZIMRoomEvent;->KICKED_OUT_BY_OTHER_DEVICE:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 67
    new-instance v12, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v13, "ACTIVE_SWITCH"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v15, v14}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lim/zego/zim/enums/ZIMRoomEvent;->ACTIVE_SWITCH:Lim/zego/zim/enums/ZIMRoomEvent;

    .line 69
    new-instance v13, Lim/zego/zim/enums/ZIMRoomEvent;

    const-string v14, "SWITCH_FAILED"

    move-object/from16 v16, v0

    const/16 v0, 0xd

    invoke-direct {v13, v14, v0, v15}, Lim/zego/zim/enums/ZIMRoomEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lim/zego/zim/enums/ZIMRoomEvent;->SWITCH_FAILED:Lim/zego/zim/enums/ZIMRoomEvent;

    move-object/from16 v0, v16

    .line 13
    filled-new-array/range {v0 .. v13}, [Lim/zego/zim/enums/ZIMRoomEvent;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->$VALUES:[Lim/zego/zim/enums/ZIMRoomEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    return-void
.end method

.method public static getZIMRoomEvent(I)Lim/zego/zim/enums/ZIMRoomEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 80
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->SUCCESS:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->NETWORK_INTERRUPTED:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 88
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->NETWORK_DISCONNECTED:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 92
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->ROOM_NOT_EXIST:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_3

    return-object v0

    .line 96
    :cond_3
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->ACTIVE_CREATE:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_4

    return-object v0

    .line 100
    :cond_4
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->CREATE_FAILED:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_5

    return-object v0

    .line 104
    :cond_5
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->ACTIVE_ENTER:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_6

    return-object v0

    .line 108
    :cond_6
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->ENTER_FAILED:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_7

    return-object v0

    .line 112
    :cond_7
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->KICKED_OUT:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_8

    return-object v0

    .line 116
    :cond_8
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->CONNECT_TIMEOUT:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_9

    return-object v0

    .line 120
    :cond_9
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->KICKED_OUT_BY_OTHER_DEVICE:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_a

    return-object v0

    .line 124
    :cond_a
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->ACTIVE_SWITCH:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    if-ne v1, p0, :cond_b

    return-object v0

    .line 128
    :cond_b
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->SWITCH_FAILED:Lim/zego/zim/enums/ZIMRoomEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_c

    return-object v0

    .line 135
    :cond_c
    sget-object p0, Lim/zego/zim/enums/ZIMRoomEvent;->UNKNOWN:Lim/zego/zim/enums/ZIMRoomEvent;

    return-object p0

    .line 133
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMRoomEvent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    const-class v0, Lim/zego/zim/enums/ZIMRoomEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMRoomEvent;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMRoomEvent;
    .locals 1

    .line 13
    sget-object v0, Lim/zego/zim/enums/ZIMRoomEvent;->$VALUES:[Lim/zego/zim/enums/ZIMRoomEvent;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMRoomEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMRoomEvent;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 75
    iget v0, p0, Lim/zego/zim/enums/ZIMRoomEvent;->value:I

    return v0
.end method

.class public final enum Lim/zego/zim/enums/ZIMConnectionEvent;
.super Ljava/lang/Enum;
.source "ZIMConnectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMConnectionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMConnectionEvent;

.field public static final enum ACTIVE_LOGIN:Lim/zego/zim/enums/ZIMConnectionEvent;

.field public static final enum KICKED_OUT:Lim/zego/zim/enums/ZIMConnectionEvent;

.field public static final enum LOGIN_INTERRUPTED:Lim/zego/zim/enums/ZIMConnectionEvent;

.field public static final enum LOGIN_TIMEOUT:Lim/zego/zim/enums/ZIMConnectionEvent;

.field public static final enum SUCCESS:Lim/zego/zim/enums/ZIMConnectionEvent;

.field public static final enum TOKEN_EXPIRED:Lim/zego/zim/enums/ZIMConnectionEvent;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMConnectionEvent;

.field public static final enum UNREGISTERED:Lim/zego/zim/enums/ZIMConnectionEvent;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lim/zego/zim/enums/ZIMConnectionEvent;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lim/zego/zim/enums/ZIMConnectionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->UNKNOWN:Lim/zego/zim/enums/ZIMConnectionEvent;

    .line 18
    new-instance v1, Lim/zego/zim/enums/ZIMConnectionEvent;

    const-string v2, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lim/zego/zim/enums/ZIMConnectionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMConnectionEvent;->SUCCESS:Lim/zego/zim/enums/ZIMConnectionEvent;

    .line 23
    new-instance v2, Lim/zego/zim/enums/ZIMConnectionEvent;

    const-string v3, "ACTIVE_LOGIN"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lim/zego/zim/enums/ZIMConnectionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMConnectionEvent;->ACTIVE_LOGIN:Lim/zego/zim/enums/ZIMConnectionEvent;

    .line 28
    new-instance v3, Lim/zego/zim/enums/ZIMConnectionEvent;

    const-string v4, "LOGIN_TIMEOUT"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lim/zego/zim/enums/ZIMConnectionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMConnectionEvent;->LOGIN_TIMEOUT:Lim/zego/zim/enums/ZIMConnectionEvent;

    .line 33
    new-instance v4, Lim/zego/zim/enums/ZIMConnectionEvent;

    const-string v5, "LOGIN_INTERRUPTED"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lim/zego/zim/enums/ZIMConnectionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMConnectionEvent;->LOGIN_INTERRUPTED:Lim/zego/zim/enums/ZIMConnectionEvent;

    .line 38
    new-instance v5, Lim/zego/zim/enums/ZIMConnectionEvent;

    const-string v6, "KICKED_OUT"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lim/zego/zim/enums/ZIMConnectionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMConnectionEvent;->KICKED_OUT:Lim/zego/zim/enums/ZIMConnectionEvent;

    .line 43
    new-instance v6, Lim/zego/zim/enums/ZIMConnectionEvent;

    const-string v7, "TOKEN_EXPIRED"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lim/zego/zim/enums/ZIMConnectionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lim/zego/zim/enums/ZIMConnectionEvent;->TOKEN_EXPIRED:Lim/zego/zim/enums/ZIMConnectionEvent;

    .line 45
    new-instance v7, Lim/zego/zim/enums/ZIMConnectionEvent;

    const-string v8, "UNREGISTERED"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lim/zego/zim/enums/ZIMConnectionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lim/zego/zim/enums/ZIMConnectionEvent;->UNREGISTERED:Lim/zego/zim/enums/ZIMConnectionEvent;

    .line 13
    filled-new-array/range {v0 .. v7}, [Lim/zego/zim/enums/ZIMConnectionEvent;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->$VALUES:[Lim/zego/zim/enums/ZIMConnectionEvent;

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMConnectionEvent;->value:I

    return-void
.end method

.method public static getZIMConnectionEvent(I)Lim/zego/zim/enums/ZIMConnectionEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 56
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->SUCCESS:Lim/zego/zim/enums/ZIMConnectionEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConnectionEvent;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->ACTIVE_LOGIN:Lim/zego/zim/enums/ZIMConnectionEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConnectionEvent;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 64
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->LOGIN_TIMEOUT:Lim/zego/zim/enums/ZIMConnectionEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConnectionEvent;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 68
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->LOGIN_INTERRUPTED:Lim/zego/zim/enums/ZIMConnectionEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConnectionEvent;->value:I

    if-ne v1, p0, :cond_3

    return-object v0

    .line 72
    :cond_3
    sget-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->KICKED_OUT:Lim/zego/zim/enums/ZIMConnectionEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConnectionEvent;->value:I

    if-ne v1, p0, :cond_4

    return-object v0

    .line 76
    :cond_4
    sget-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->TOKEN_EXPIRED:Lim/zego/zim/enums/ZIMConnectionEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConnectionEvent;->value:I

    if-ne v1, p0, :cond_5

    return-object v0

    .line 80
    :cond_5
    sget-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->UNREGISTERED:Lim/zego/zim/enums/ZIMConnectionEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConnectionEvent;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_6

    return-object v0

    .line 87
    :cond_6
    sget-object p0, Lim/zego/zim/enums/ZIMConnectionEvent;->UNKNOWN:Lim/zego/zim/enums/ZIMConnectionEvent;

    return-object p0

    .line 85
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMConnectionEvent;
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
    const-class v0, Lim/zego/zim/enums/ZIMConnectionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMConnectionEvent;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMConnectionEvent;
    .locals 1

    .line 13
    sget-object v0, Lim/zego/zim/enums/ZIMConnectionEvent;->$VALUES:[Lim/zego/zim/enums/ZIMConnectionEvent;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMConnectionEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMConnectionEvent;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 51
    iget v0, p0, Lim/zego/zim/enums/ZIMConnectionEvent;->value:I

    return v0
.end method

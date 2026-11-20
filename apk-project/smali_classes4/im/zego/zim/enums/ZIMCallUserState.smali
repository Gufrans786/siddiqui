.class public final enum Lim/zego/zim/enums/ZIMCallUserState;
.super Ljava/lang/Enum;
.source "ZIMCallUserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMCallUserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum ACCEPTED:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum BE_CANCELLED:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum CANCELLED:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum ENDED:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum INVITING:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum NOT_YET_RECEIVED:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum OFFLINE:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum QUITED:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum RECEIVED:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum REJECTED:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum TIMEOUT:Lim/zego/zim/enums/ZIMCallUserState;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMCallUserState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMCallUserState;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMCallUserState;->UNKNOWN:Lim/zego/zim/enums/ZIMCallUserState;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v2, "INVITING"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMCallUserState;->INVITING:Lim/zego/zim/enums/ZIMCallUserState;

    .line 6
    new-instance v2, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v3, "ACCEPTED"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMCallUserState;->ACCEPTED:Lim/zego/zim/enums/ZIMCallUserState;

    .line 7
    new-instance v3, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v4, "REJECTED"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMCallUserState;->REJECTED:Lim/zego/zim/enums/ZIMCallUserState;

    .line 8
    new-instance v4, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v5, "CANCELLED"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMCallUserState;->CANCELLED:Lim/zego/zim/enums/ZIMCallUserState;

    .line 9
    new-instance v5, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v6, "OFFLINE"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMCallUserState;->OFFLINE:Lim/zego/zim/enums/ZIMCallUserState;

    .line 10
    new-instance v6, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v7, "RECEIVED"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lim/zego/zim/enums/ZIMCallUserState;->RECEIVED:Lim/zego/zim/enums/ZIMCallUserState;

    .line 11
    new-instance v7, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v8, "TIMEOUT"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lim/zego/zim/enums/ZIMCallUserState;->TIMEOUT:Lim/zego/zim/enums/ZIMCallUserState;

    .line 12
    new-instance v8, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v9, "QUITED"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lim/zego/zim/enums/ZIMCallUserState;->QUITED:Lim/zego/zim/enums/ZIMCallUserState;

    .line 13
    new-instance v9, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v10, "ENDED"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v12, v11}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lim/zego/zim/enums/ZIMCallUserState;->ENDED:Lim/zego/zim/enums/ZIMCallUserState;

    .line 15
    new-instance v10, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v11, "NOT_YET_RECEIVED"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v13, v12}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lim/zego/zim/enums/ZIMCallUserState;->NOT_YET_RECEIVED:Lim/zego/zim/enums/ZIMCallUserState;

    .line 17
    new-instance v11, Lim/zego/zim/enums/ZIMCallUserState;

    const-string v12, "BE_CANCELLED"

    const/16 v14, 0xb

    invoke-direct {v11, v12, v14, v13}, Lim/zego/zim/enums/ZIMCallUserState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lim/zego/zim/enums/ZIMCallUserState;->BE_CANCELLED:Lim/zego/zim/enums/ZIMCallUserState;

    .line 3
    filled-new-array/range {v0 .. v11}, [Lim/zego/zim/enums/ZIMCallUserState;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMCallUserState;->$VALUES:[Lim/zego/zim/enums/ZIMCallUserState;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    return-void
.end method

.method public static getZIMCallUserState(I)Lim/zego/zim/enums/ZIMCallUserState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 28
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->INVITING:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->ACCEPTED:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 36
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->REJECTED:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 40
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->CANCELLED:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    if-ne v1, p0, :cond_3

    return-object v0

    .line 44
    :cond_3
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->RECEIVED:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    if-ne v1, p0, :cond_4

    return-object v0

    .line 48
    :cond_4
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->QUITED:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    if-ne v1, p0, :cond_5

    return-object v0

    .line 52
    :cond_5
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->TIMEOUT:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    if-ne v1, p0, :cond_6

    return-object v0

    .line 56
    :cond_6
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->ENDED:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    if-ne v1, p0, :cond_7

    return-object v0

    .line 60
    :cond_7
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->NOT_YET_RECEIVED:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    if-ne v1, p0, :cond_8

    return-object v0

    .line 64
    :cond_8
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->BE_CANCELLED:Lim/zego/zim/enums/ZIMCallUserState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallUserState;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_9

    return-object v0

    .line 71
    :cond_9
    sget-object p0, Lim/zego/zim/enums/ZIMCallUserState;->UNKNOWN:Lim/zego/zim/enums/ZIMCallUserState;

    return-object p0

    .line 69
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMCallUserState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lim/zego/zim/enums/ZIMCallUserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMCallUserState;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMCallUserState;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMCallUserState;->$VALUES:[Lim/zego/zim/enums/ZIMCallUserState;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMCallUserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMCallUserState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 23
    iget v0, p0, Lim/zego/zim/enums/ZIMCallUserState;->value:I

    return v0
.end method

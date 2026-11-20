.class public final enum Lim/zego/zim/enums/ZIMMessageType;
.super Ljava/lang/Enum;
.source "ZIMMessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum AUDIO:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum BARRAGE:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum COMBINE:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum COMMAND:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum CUSTOM:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum FILE:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum IMAGE:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum MULTIPLE:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum REVOKE:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum SYSTEM:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum TEXT:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum TIPS:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMMessageType;

.field public static final enum VIDEO:Lim/zego/zim/enums/ZIMMessageType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 17
    new-instance v0, Lim/zego/zim/enums/ZIMMessageType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMMessageType;->UNKNOWN:Lim/zego/zim/enums/ZIMMessageType;

    .line 19
    new-instance v1, Lim/zego/zim/enums/ZIMMessageType;

    const-string v2, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMMessageType;->TEXT:Lim/zego/zim/enums/ZIMMessageType;

    .line 21
    new-instance v2, Lim/zego/zim/enums/ZIMMessageType;

    const-string v3, "COMMAND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMMessageType;->COMMAND:Lim/zego/zim/enums/ZIMMessageType;

    .line 23
    new-instance v3, Lim/zego/zim/enums/ZIMMessageType;

    const-string v4, "MULTIPLE"

    const/4 v5, 0x3

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMMessageType;->MULTIPLE:Lim/zego/zim/enums/ZIMMessageType;

    .line 25
    new-instance v4, Lim/zego/zim/enums/ZIMMessageType;

    const-string v5, "IMAGE"

    const/4 v7, 0x4

    const/16 v8, 0xb

    invoke-direct {v4, v5, v7, v8}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMMessageType;->IMAGE:Lim/zego/zim/enums/ZIMMessageType;

    .line 27
    new-instance v5, Lim/zego/zim/enums/ZIMMessageType;

    const-string v7, "FILE"

    const/4 v9, 0x5

    const/16 v10, 0xc

    invoke-direct {v5, v7, v9, v10}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMMessageType;->FILE:Lim/zego/zim/enums/ZIMMessageType;

    .line 29
    new-instance v7, Lim/zego/zim/enums/ZIMMessageType;

    const-string v9, "AUDIO"

    const/4 v11, 0x6

    const/16 v12, 0xd

    invoke-direct {v7, v9, v11, v12}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lim/zego/zim/enums/ZIMMessageType;->AUDIO:Lim/zego/zim/enums/ZIMMessageType;

    move-object v9, v7

    .line 31
    new-instance v7, Lim/zego/zim/enums/ZIMMessageType;

    const/4 v11, 0x7

    const/16 v13, 0xe

    const-string v14, "VIDEO"

    invoke-direct {v7, v14, v11, v13}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lim/zego/zim/enums/ZIMMessageType;->VIDEO:Lim/zego/zim/enums/ZIMMessageType;

    .line 33
    new-instance v11, Lim/zego/zim/enums/ZIMMessageType;

    const/16 v13, 0x8

    const/16 v14, 0x14

    const-string v15, "BARRAGE"

    invoke-direct {v11, v15, v13, v14}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lim/zego/zim/enums/ZIMMessageType;->BARRAGE:Lim/zego/zim/enums/ZIMMessageType;

    move-object v13, v9

    .line 35
    new-instance v9, Lim/zego/zim/enums/ZIMMessageType;

    const/16 v14, 0x9

    const/16 v15, 0x1e

    const-string v12, "SYSTEM"

    invoke-direct {v9, v12, v14, v15}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lim/zego/zim/enums/ZIMMessageType;->SYSTEM:Lim/zego/zim/enums/ZIMMessageType;

    .line 37
    new-instance v12, Lim/zego/zim/enums/ZIMMessageType;

    const-string v14, "REVOKE"

    const/16 v15, 0x1f

    invoke-direct {v12, v14, v6, v15}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lim/zego/zim/enums/ZIMMessageType;->REVOKE:Lim/zego/zim/enums/ZIMMessageType;

    move-object v6, v11

    .line 39
    new-instance v11, Lim/zego/zim/enums/ZIMMessageType;

    const-string v14, "TIPS"

    const/16 v15, 0x20

    invoke-direct {v11, v14, v8, v15}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lim/zego/zim/enums/ZIMMessageType;->TIPS:Lim/zego/zim/enums/ZIMMessageType;

    move-object v8, v12

    .line 41
    new-instance v12, Lim/zego/zim/enums/ZIMMessageType;

    const-string v14, "COMBINE"

    const/16 v15, 0x64

    invoke-direct {v12, v14, v10, v15}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lim/zego/zim/enums/ZIMMessageType;->COMBINE:Lim/zego/zim/enums/ZIMMessageType;

    move-object v10, v8

    move-object v8, v6

    move-object v6, v13

    .line 43
    new-instance v13, Lim/zego/zim/enums/ZIMMessageType;

    const-string v14, "CUSTOM"

    const/16 v15, 0xc8

    move-object/from16 v16, v0

    const/16 v0, 0xd

    invoke-direct {v13, v14, v0, v15}, Lim/zego/zim/enums/ZIMMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lim/zego/zim/enums/ZIMMessageType;->CUSTOM:Lim/zego/zim/enums/ZIMMessageType;

    move-object/from16 v0, v16

    .line 10
    filled-new-array/range {v0 .. v13}, [Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMMessageType;->$VALUES:[Lim/zego/zim/enums/ZIMMessageType;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    return-void
.end method

.method public static getZIMMessageType(I)Lim/zego/zim/enums/ZIMMessageType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 54
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->TEXT:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 58
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->COMMAND:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 62
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->BARRAGE:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 66
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->MULTIPLE:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_3

    return-object v0

    .line 70
    :cond_3
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->AUDIO:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_4

    return-object v0

    .line 74
    :cond_4
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->IMAGE:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_5

    return-object v0

    .line 78
    :cond_5
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->FILE:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_6

    return-object v0

    .line 82
    :cond_6
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->VIDEO:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_7

    return-object v0

    .line 85
    :cond_7
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->SYSTEM:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_8

    return-object v0

    .line 89
    :cond_8
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->REVOKE:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_9

    return-object v0

    .line 93
    :cond_9
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->CUSTOM:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_a

    return-object v0

    .line 97
    :cond_a
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->TIPS:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    if-ne v1, p0, :cond_b

    return-object v0

    .line 101
    :cond_b
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->COMBINE:Lim/zego/zim/enums/ZIMMessageType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageType;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_c

    return-object v0

    .line 107
    :cond_c
    sget-object p0, Lim/zego/zim/enums/ZIMMessageType;->UNKNOWN:Lim/zego/zim/enums/ZIMMessageType;

    return-object p0

    .line 105
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMMessageType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 10
    const-class v0, Lim/zego/zim/enums/ZIMMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMMessageType;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMMessageType;
    .locals 1

    .line 10
    sget-object v0, Lim/zego/zim/enums/ZIMMessageType;->$VALUES:[Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMMessageType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 49
    iget v0, p0, Lim/zego/zim/enums/ZIMMessageType;->value:I

    return v0
.end method

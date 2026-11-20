.class public final enum Lim/zego/zim/enums/ZIMGroupEvent;
.super Ljava/lang/Enum;
.source "ZIMGroupEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMGroupEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMGroupEvent;

.field public static final enum CREATED:Lim/zego/zim/enums/ZIMGroupEvent;

.field public static final enum DISMISSED:Lim/zego/zim/enums/ZIMGroupEvent;

.field public static final enum INVITED:Lim/zego/zim/enums/ZIMGroupEvent;

.field public static final enum JOINED:Lim/zego/zim/enums/ZIMGroupEvent;

.field public static final enum KICKED_OUT:Lim/zego/zim/enums/ZIMGroupEvent;

.field public static final enum LEFT:Lim/zego/zim/enums/ZIMGroupEvent;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMGroupEvent;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMGroupEvent;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lim/zego/zim/enums/ZIMGroupEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMGroupEvent;->UNKNOWN:Lim/zego/zim/enums/ZIMGroupEvent;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMGroupEvent;

    const-string v2, "CREATED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zim/enums/ZIMGroupEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMGroupEvent;->CREATED:Lim/zego/zim/enums/ZIMGroupEvent;

    .line 6
    new-instance v2, Lim/zego/zim/enums/ZIMGroupEvent;

    const-string v3, "DISMISSED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zim/enums/ZIMGroupEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMGroupEvent;->DISMISSED:Lim/zego/zim/enums/ZIMGroupEvent;

    .line 7
    new-instance v3, Lim/zego/zim/enums/ZIMGroupEvent;

    const-string v4, "JOINED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lim/zego/zim/enums/ZIMGroupEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMGroupEvent;->JOINED:Lim/zego/zim/enums/ZIMGroupEvent;

    .line 8
    new-instance v4, Lim/zego/zim/enums/ZIMGroupEvent;

    const-string v5, "INVITED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lim/zego/zim/enums/ZIMGroupEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMGroupEvent;->INVITED:Lim/zego/zim/enums/ZIMGroupEvent;

    .line 9
    new-instance v5, Lim/zego/zim/enums/ZIMGroupEvent;

    const-string v6, "LEFT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lim/zego/zim/enums/ZIMGroupEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMGroupEvent;->LEFT:Lim/zego/zim/enums/ZIMGroupEvent;

    .line 10
    new-instance v6, Lim/zego/zim/enums/ZIMGroupEvent;

    const-string v7, "KICKED_OUT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lim/zego/zim/enums/ZIMGroupEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lim/zego/zim/enums/ZIMGroupEvent;->KICKED_OUT:Lim/zego/zim/enums/ZIMGroupEvent;

    .line 3
    filled-new-array/range {v0 .. v6}, [Lim/zego/zim/enums/ZIMGroupEvent;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMGroupEvent;->$VALUES:[Lim/zego/zim/enums/ZIMGroupEvent;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMGroupEvent;->value:I

    return-void
.end method

.method public static getZIMGroupEvent(I)Lim/zego/zim/enums/ZIMGroupEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEvent;->CREATED:Lim/zego/zim/enums/ZIMGroupEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEvent;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 25
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEvent;->DISMISSED:Lim/zego/zim/enums/ZIMGroupEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEvent;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 29
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEvent;->JOINED:Lim/zego/zim/enums/ZIMGroupEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEvent;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 33
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEvent;->INVITED:Lim/zego/zim/enums/ZIMGroupEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEvent;->value:I

    if-ne v1, p0, :cond_3

    return-object v0

    .line 37
    :cond_3
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEvent;->LEFT:Lim/zego/zim/enums/ZIMGroupEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEvent;->value:I

    if-ne v1, p0, :cond_4

    return-object v0

    .line 41
    :cond_4
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEvent;->KICKED_OUT:Lim/zego/zim/enums/ZIMGroupEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEvent;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_5

    return-object v0

    .line 48
    :cond_5
    sget-object p0, Lim/zego/zim/enums/ZIMGroupEvent;->UNKNOWN:Lim/zego/zim/enums/ZIMGroupEvent;

    return-object p0

    .line 46
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMGroupEvent;
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
    const-class v0, Lim/zego/zim/enums/ZIMGroupEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMGroupEvent;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMGroupEvent;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEvent;->$VALUES:[Lim/zego/zim/enums/ZIMGroupEvent;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMGroupEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMGroupEvent;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 16
    iget v0, p0, Lim/zego/zim/enums/ZIMGroupEvent;->value:I

    return v0
.end method

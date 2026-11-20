.class public final enum Lim/zego/zim/enums/ZIMCallState;
.super Ljava/lang/Enum;
.source "ZIMCallState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMCallState;

.field public static final enum ENDED:Lim/zego/zim/enums/ZIMCallState;

.field public static final enum STARTED:Lim/zego/zim/enums/ZIMCallState;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMCallState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMCallState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lim/zego/zim/enums/ZIMCallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMCallState;->UNKNOWN:Lim/zego/zim/enums/ZIMCallState;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMCallState;

    const-string v2, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zim/enums/ZIMCallState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMCallState;->STARTED:Lim/zego/zim/enums/ZIMCallState;

    .line 6
    new-instance v2, Lim/zego/zim/enums/ZIMCallState;

    const-string v3, "ENDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zim/enums/ZIMCallState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMCallState;->ENDED:Lim/zego/zim/enums/ZIMCallState;

    .line 3
    filled-new-array {v0, v1, v2}, [Lim/zego/zim/enums/ZIMCallState;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMCallState;->$VALUES:[Lim/zego/zim/enums/ZIMCallState;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMCallState;->value:I

    return-void
.end method

.method public static getZIMCallState(I)Lim/zego/zim/enums/ZIMCallState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMCallState;->STARTED:Lim/zego/zim/enums/ZIMCallState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallState;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 21
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMCallState;->ENDED:Lim/zego/zim/enums/ZIMCallState;

    iget v1, v0, Lim/zego/zim/enums/ZIMCallState;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_1

    return-object v0

    .line 28
    :cond_1
    sget-object p0, Lim/zego/zim/enums/ZIMCallState;->UNKNOWN:Lim/zego/zim/enums/ZIMCallState;

    return-object p0

    .line 26
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMCallState;
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
    const-class v0, Lim/zego/zim/enums/ZIMCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMCallState;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMCallState;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMCallState;->$VALUES:[Lim/zego/zim/enums/ZIMCallState;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMCallState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 12
    iget v0, p0, Lim/zego/zim/enums/ZIMCallState;->value:I

    return v0
.end method

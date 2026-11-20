.class public final enum Lim/zego/zim/enums/ZIMRevokeType;
.super Ljava/lang/Enum;
.source "ZIMRevokeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMRevokeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMRevokeType;

.field public static final enum ONE_WAY:Lim/zego/zim/enums/ZIMRevokeType;

.field public static final enum TWO_WAY:Lim/zego/zim/enums/ZIMRevokeType;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMRevokeType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lim/zego/zim/enums/ZIMRevokeType;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lim/zego/zim/enums/ZIMRevokeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMRevokeType;->UNKNOWN:Lim/zego/zim/enums/ZIMRevokeType;

    .line 7
    new-instance v1, Lim/zego/zim/enums/ZIMRevokeType;

    const-string v2, "TWO_WAY"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lim/zego/zim/enums/ZIMRevokeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMRevokeType;->TWO_WAY:Lim/zego/zim/enums/ZIMRevokeType;

    .line 9
    new-instance v2, Lim/zego/zim/enums/ZIMRevokeType;

    const-string v3, "ONE_WAY"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lim/zego/zim/enums/ZIMRevokeType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMRevokeType;->ONE_WAY:Lim/zego/zim/enums/ZIMRevokeType;

    .line 3
    filled-new-array {v0, v1, v2}, [Lim/zego/zim/enums/ZIMRevokeType;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMRevokeType;->$VALUES:[Lim/zego/zim/enums/ZIMRevokeType;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMRevokeType;->value:I

    return-void
.end method

.method public static getZIMRevokeType(I)Lim/zego/zim/enums/ZIMRevokeType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMRevokeType;->UNKNOWN:Lim/zego/zim/enums/ZIMRevokeType;

    iget v1, v0, Lim/zego/zim/enums/ZIMRevokeType;->value:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    sget-object v1, Lim/zego/zim/enums/ZIMRevokeType;->TWO_WAY:Lim/zego/zim/enums/ZIMRevokeType;

    iget v2, v1, Lim/zego/zim/enums/ZIMRevokeType;->value:I

    if-ne v2, p0, :cond_1

    return-object v1

    .line 27
    :cond_1
    sget-object v1, Lim/zego/zim/enums/ZIMRevokeType;->ONE_WAY:Lim/zego/zim/enums/ZIMRevokeType;

    iget v2, v1, Lim/zego/zim/enums/ZIMRevokeType;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    .line 32
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMRevokeType;
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
    const-class v0, Lim/zego/zim/enums/ZIMRevokeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMRevokeType;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMRevokeType;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMRevokeType;->$VALUES:[Lim/zego/zim/enums/ZIMRevokeType;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMRevokeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMRevokeType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 15
    iget v0, p0, Lim/zego/zim/enums/ZIMRevokeType;->value:I

    return v0
.end method

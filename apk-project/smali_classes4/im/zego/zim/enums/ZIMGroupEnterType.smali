.class public final enum Lim/zego/zim/enums/ZIMGroupEnterType;
.super Ljava/lang/Enum;
.source "ZIMGroupEnterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMGroupEnterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMGroupEnterType;

.field public static final enum CREATED:Lim/zego/zim/enums/ZIMGroupEnterType;

.field public static final enum INVITED:Lim/zego/zim/enums/ZIMGroupEnterType;

.field public static final enum INVITE_APPLY:Lim/zego/zim/enums/ZIMGroupEnterType;

.field public static final enum JOINED:Lim/zego/zim/enums/ZIMGroupEnterType;

.field public static final enum JOIN_APPLY:Lim/zego/zim/enums/ZIMGroupEnterType;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMGroupEnterType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMGroupEnterType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lim/zego/zim/enums/ZIMGroupEnterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMGroupEnterType;->UNKNOWN:Lim/zego/zim/enums/ZIMGroupEnterType;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMGroupEnterType;

    const-string v2, "CREATED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zim/enums/ZIMGroupEnterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMGroupEnterType;->CREATED:Lim/zego/zim/enums/ZIMGroupEnterType;

    .line 6
    new-instance v2, Lim/zego/zim/enums/ZIMGroupEnterType;

    const-string v3, "JOIN_APPLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zim/enums/ZIMGroupEnterType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMGroupEnterType;->JOIN_APPLY:Lim/zego/zim/enums/ZIMGroupEnterType;

    .line 7
    new-instance v3, Lim/zego/zim/enums/ZIMGroupEnterType;

    const-string v4, "JOINED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lim/zego/zim/enums/ZIMGroupEnterType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMGroupEnterType;->JOINED:Lim/zego/zim/enums/ZIMGroupEnterType;

    .line 8
    new-instance v4, Lim/zego/zim/enums/ZIMGroupEnterType;

    const-string v5, "INVITED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lim/zego/zim/enums/ZIMGroupEnterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMGroupEnterType;->INVITED:Lim/zego/zim/enums/ZIMGroupEnterType;

    .line 9
    new-instance v5, Lim/zego/zim/enums/ZIMGroupEnterType;

    const-string v6, "INVITE_APPLY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lim/zego/zim/enums/ZIMGroupEnterType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMGroupEnterType;->INVITE_APPLY:Lim/zego/zim/enums/ZIMGroupEnterType;

    .line 3
    filled-new-array/range {v0 .. v5}, [Lim/zego/zim/enums/ZIMGroupEnterType;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMGroupEnterType;->$VALUES:[Lim/zego/zim/enums/ZIMGroupEnterType;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMGroupEnterType;->value:I

    return-void
.end method

.method public static getZIMGroupEnterType(I)Lim/zego/zim/enums/ZIMGroupEnterType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEnterType;->CREATED:Lim/zego/zim/enums/ZIMGroupEnterType;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEnterType;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 20
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEnterType;->JOIN_APPLY:Lim/zego/zim/enums/ZIMGroupEnterType;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEnterType;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 22
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEnterType;->JOINED:Lim/zego/zim/enums/ZIMGroupEnterType;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEnterType;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 24
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEnterType;->INVITED:Lim/zego/zim/enums/ZIMGroupEnterType;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEnterType;->value:I

    if-ne v1, p0, :cond_3

    return-object v0

    .line 26
    :cond_3
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEnterType;->INVITE_APPLY:Lim/zego/zim/enums/ZIMGroupEnterType;

    iget v1, v0, Lim/zego/zim/enums/ZIMGroupEnterType;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_4

    return-object v0

    .line 33
    :cond_4
    sget-object p0, Lim/zego/zim/enums/ZIMGroupEnterType;->UNKNOWN:Lim/zego/zim/enums/ZIMGroupEnterType;

    return-object p0

    .line 31
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMGroupEnterType;
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
    const-class v0, Lim/zego/zim/enums/ZIMGroupEnterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMGroupEnterType;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMGroupEnterType;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMGroupEnterType;->$VALUES:[Lim/zego/zim/enums/ZIMGroupEnterType;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMGroupEnterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMGroupEnterType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 13
    iget v0, p0, Lim/zego/zim/enums/ZIMGroupEnterType;->value:I

    return v0
.end method

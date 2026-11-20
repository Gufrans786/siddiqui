.class public final enum Lim/zego/zim/enums/ZIMMessageReceiptStatus;
.super Ljava/lang/Enum;
.source "ZIMMessageReceiptStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMMessageReceiptStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMMessageReceiptStatus;

.field public static final enum DONE:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

.field public static final enum EXPIRED:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

.field public static final enum FAILED:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

.field public static final enum NONE:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

.field public static final enum PROCESSING:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMMessageReceiptStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->UNKNOWN:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    const-string v2, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->NONE:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    .line 6
    new-instance v2, Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    const-string v3, "PROCESSING"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->PROCESSING:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    .line 7
    new-instance v3, Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    const-string v4, "DONE"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->DONE:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    .line 8
    new-instance v4, Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    const-string v5, "EXPIRED"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->EXPIRED:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    .line 9
    new-instance v5, Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    const-string v6, "FAILED"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lim/zego/zim/enums/ZIMMessageReceiptStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->FAILED:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    .line 3
    filled-new-array/range {v0 .. v5}, [Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->$VALUES:[Lim/zego/zim/enums/ZIMMessageReceiptStatus;

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

    iput p3, p0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->value:I

    return-void
.end method

.method public static getZIMMessageReceiptStatus(I)Lim/zego/zim/enums/ZIMMessageReceiptStatus;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->NONE:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 24
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->PROCESSING:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 28
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->DONE:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 32
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->EXPIRED:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->value:I

    if-ne v1, p0, :cond_3

    return-object v0

    .line 36
    :cond_3
    sget-object v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->FAILED:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_4

    return-object v0

    .line 43
    :cond_4
    sget-object p0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->UNKNOWN:Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    return-object p0

    .line 41
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMMessageReceiptStatus;
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
    const-class v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMMessageReceiptStatus;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->$VALUES:[Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMMessageReceiptStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMMessageReceiptStatus;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 15
    iget v0, p0, Lim/zego/zim/enums/ZIMMessageReceiptStatus;->value:I

    return v0
.end method

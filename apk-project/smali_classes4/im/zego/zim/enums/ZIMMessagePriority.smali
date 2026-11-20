.class public final enum Lim/zego/zim/enums/ZIMMessagePriority;
.super Ljava/lang/Enum;
.source "ZIMMessagePriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMMessagePriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMMessagePriority;

.field public static final enum HIGH:Lim/zego/zim/enums/ZIMMessagePriority;

.field public static final enum LOW:Lim/zego/zim/enums/ZIMMessagePriority;

.field public static final enum MEDIUM:Lim/zego/zim/enums/ZIMMessagePriority;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMMessagePriority;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lim/zego/zim/enums/ZIMMessagePriority;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lim/zego/zim/enums/ZIMMessagePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMMessagePriority;->UNKNOWN:Lim/zego/zim/enums/ZIMMessagePriority;

    .line 20
    new-instance v1, Lim/zego/zim/enums/ZIMMessagePriority;

    const-string v2, "LOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zim/enums/ZIMMessagePriority;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMMessagePriority;->LOW:Lim/zego/zim/enums/ZIMMessagePriority;

    .line 27
    new-instance v2, Lim/zego/zim/enums/ZIMMessagePriority;

    const-string v3, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zim/enums/ZIMMessagePriority;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMMessagePriority;->MEDIUM:Lim/zego/zim/enums/ZIMMessagePriority;

    .line 34
    new-instance v3, Lim/zego/zim/enums/ZIMMessagePriority;

    const-string v4, "HIGH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lim/zego/zim/enums/ZIMMessagePriority;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMMessagePriority;->HIGH:Lim/zego/zim/enums/ZIMMessagePriority;

    .line 13
    filled-new-array {v0, v1, v2, v3}, [Lim/zego/zim/enums/ZIMMessagePriority;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMMessagePriority;->$VALUES:[Lim/zego/zim/enums/ZIMMessagePriority;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMMessagePriority;->value:I

    return-void
.end method

.method public static getZIMMessagePriority(I)Lim/zego/zim/enums/ZIMMessagePriority;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 45
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMMessagePriority;->LOW:Lim/zego/zim/enums/ZIMMessagePriority;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessagePriority;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMMessagePriority;->MEDIUM:Lim/zego/zim/enums/ZIMMessagePriority;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessagePriority;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 53
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMMessagePriority;->HIGH:Lim/zego/zim/enums/ZIMMessagePriority;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessagePriority;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_2

    return-object v0

    .line 60
    :cond_2
    sget-object p0, Lim/zego/zim/enums/ZIMMessagePriority;->UNKNOWN:Lim/zego/zim/enums/ZIMMessagePriority;

    return-object p0

    .line 58
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMMessagePriority;
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
    const-class v0, Lim/zego/zim/enums/ZIMMessagePriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMMessagePriority;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMMessagePriority;
    .locals 1

    .line 13
    sget-object v0, Lim/zego/zim/enums/ZIMMessagePriority;->$VALUES:[Lim/zego/zim/enums/ZIMMessagePriority;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMMessagePriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMMessagePriority;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 40
    iget v0, p0, Lim/zego/zim/enums/ZIMMessagePriority;->value:I

    return v0
.end method

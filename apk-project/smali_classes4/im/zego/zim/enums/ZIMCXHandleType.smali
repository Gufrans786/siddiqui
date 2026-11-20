.class public final enum Lim/zego/zim/enums/ZIMCXHandleType;
.super Ljava/lang/Enum;
.source "ZIMCXHandleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMCXHandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMCXHandleType;

.field public static final enum EmailAddress:Lim/zego/zim/enums/ZIMCXHandleType;

.field public static final enum Generic:Lim/zego/zim/enums/ZIMCXHandleType;

.field public static final enum PhoneNumber:Lim/zego/zim/enums/ZIMCXHandleType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMCXHandleType;

    const-string v1, "Generic"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lim/zego/zim/enums/ZIMCXHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMCXHandleType;->Generic:Lim/zego/zim/enums/ZIMCXHandleType;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMCXHandleType;

    const-string v2, "PhoneNumber"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lim/zego/zim/enums/ZIMCXHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMCXHandleType;->PhoneNumber:Lim/zego/zim/enums/ZIMCXHandleType;

    .line 6
    new-instance v2, Lim/zego/zim/enums/ZIMCXHandleType;

    const-string v3, "EmailAddress"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lim/zego/zim/enums/ZIMCXHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMCXHandleType;->EmailAddress:Lim/zego/zim/enums/ZIMCXHandleType;

    .line 3
    filled-new-array {v0, v1, v2}, [Lim/zego/zim/enums/ZIMCXHandleType;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMCXHandleType;->$VALUES:[Lim/zego/zim/enums/ZIMCXHandleType;

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

    iput p3, p0, Lim/zego/zim/enums/ZIMCXHandleType;->value:I

    return-void
.end method

.method public static getZIMCXHandleType(I)Lim/zego/zim/enums/ZIMCXHandleType;
    .locals 3
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
    sget-object v0, Lim/zego/zim/enums/ZIMCXHandleType;->Generic:Lim/zego/zim/enums/ZIMCXHandleType;

    iget v1, v0, Lim/zego/zim/enums/ZIMCXHandleType;->value:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    sget-object v1, Lim/zego/zim/enums/ZIMCXHandleType;->PhoneNumber:Lim/zego/zim/enums/ZIMCXHandleType;

    iget v2, v1, Lim/zego/zim/enums/ZIMCXHandleType;->value:I

    if-ne v2, p0, :cond_1

    return-object v1

    .line 25
    :cond_1
    sget-object v1, Lim/zego/zim/enums/ZIMCXHandleType;->EmailAddress:Lim/zego/zim/enums/ZIMCXHandleType;

    iget v2, v1, Lim/zego/zim/enums/ZIMCXHandleType;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    .line 30
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMCXHandleType;
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
    const-class v0, Lim/zego/zim/enums/ZIMCXHandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMCXHandleType;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMCXHandleType;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMCXHandleType;->$VALUES:[Lim/zego/zim/enums/ZIMCXHandleType;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMCXHandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMCXHandleType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 12
    iget v0, p0, Lim/zego/zim/enums/ZIMCXHandleType;->value:I

    return v0
.end method

.class public final enum Lim/zego/zim/enums/ZIMPlatformType;
.super Ljava/lang/Enum;
.source "ZIMPlatformType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMPlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum ANDROID:Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum IPAD_OS:Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum IPHONE_OS:Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum LINUX:Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum MAC_OS:Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum MINI_PROGRAM:Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum OHOS:Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum WEB:Lim/zego/zim/enums/ZIMPlatformType;

.field public static final enum WIN:Lim/zego/zim/enums/ZIMPlatformType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 5
    new-instance v0, Lim/zego/zim/enums/ZIMPlatformType;

    const-string v1, "WIN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMPlatformType;->WIN:Lim/zego/zim/enums/ZIMPlatformType;

    .line 7
    new-instance v1, Lim/zego/zim/enums/ZIMPlatformType;

    const-string v2, "IPHONE_OS"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMPlatformType;->IPHONE_OS:Lim/zego/zim/enums/ZIMPlatformType;

    .line 9
    new-instance v2, Lim/zego/zim/enums/ZIMPlatformType;

    const-string v3, "ANDROID"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMPlatformType;->ANDROID:Lim/zego/zim/enums/ZIMPlatformType;

    .line 11
    new-instance v3, Lim/zego/zim/enums/ZIMPlatformType;

    const-string v4, "MAC_OS"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMPlatformType;->MAC_OS:Lim/zego/zim/enums/ZIMPlatformType;

    .line 13
    new-instance v4, Lim/zego/zim/enums/ZIMPlatformType;

    const-string v5, "LINUX"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMPlatformType;->LINUX:Lim/zego/zim/enums/ZIMPlatformType;

    .line 15
    new-instance v5, Lim/zego/zim/enums/ZIMPlatformType;

    const-string v6, "WEB"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMPlatformType;->WEB:Lim/zego/zim/enums/ZIMPlatformType;

    .line 17
    new-instance v6, Lim/zego/zim/enums/ZIMPlatformType;

    const-string v7, "MINI_PROGRAM"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lim/zego/zim/enums/ZIMPlatformType;->MINI_PROGRAM:Lim/zego/zim/enums/ZIMPlatformType;

    .line 19
    new-instance v7, Lim/zego/zim/enums/ZIMPlatformType;

    const-string v8, "IPAD_OS"

    const/16 v10, 0x9

    invoke-direct {v7, v8, v9, v10}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lim/zego/zim/enums/ZIMPlatformType;->IPAD_OS:Lim/zego/zim/enums/ZIMPlatformType;

    .line 21
    new-instance v8, Lim/zego/zim/enums/ZIMPlatformType;

    const/16 v9, 0x8

    const/16 v11, 0xa

    const-string v12, "OHOS"

    invoke-direct {v8, v12, v9, v11}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lim/zego/zim/enums/ZIMPlatformType;->OHOS:Lim/zego/zim/enums/ZIMPlatformType;

    .line 23
    new-instance v9, Lim/zego/zim/enums/ZIMPlatformType;

    const-string v11, "UNKNOWN"

    const/16 v12, 0x20

    invoke-direct {v9, v11, v10, v12}, Lim/zego/zim/enums/ZIMPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lim/zego/zim/enums/ZIMPlatformType;->UNKNOWN:Lim/zego/zim/enums/ZIMPlatformType;

    .line 3
    filled-new-array/range {v0 .. v9}, [Lim/zego/zim/enums/ZIMPlatformType;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMPlatformType;->$VALUES:[Lim/zego/zim/enums/ZIMPlatformType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    return-void
.end method

.method public static getZIMPlatformType(I)Lim/zego/zim/enums/ZIMPlatformType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 33
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->WIN:Lim/zego/zim/enums/ZIMPlatformType;

    iget v1, v0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->IPHONE_OS:Lim/zego/zim/enums/ZIMPlatformType;

    iget v1, v0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 41
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->ANDROID:Lim/zego/zim/enums/ZIMPlatformType;

    iget v1, v0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 45
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->MAC_OS:Lim/zego/zim/enums/ZIMPlatformType;

    iget v1, v0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    if-ne v1, p0, :cond_3

    return-object v0

    .line 49
    :cond_3
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->LINUX:Lim/zego/zim/enums/ZIMPlatformType;

    iget v1, v0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    if-ne v1, p0, :cond_4

    return-object v0

    .line 53
    :cond_4
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->WEB:Lim/zego/zim/enums/ZIMPlatformType;

    iget v1, v0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    if-ne v1, p0, :cond_5

    return-object v0

    .line 57
    :cond_5
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->MINI_PROGRAM:Lim/zego/zim/enums/ZIMPlatformType;

    iget v1, v0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    if-ne v1, p0, :cond_6

    return-object v0

    .line 61
    :cond_6
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->IPAD_OS:Lim/zego/zim/enums/ZIMPlatformType;

    iget v1, v0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    if-ne v1, p0, :cond_7

    return-object v0

    .line 65
    :cond_7
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->OHOS:Lim/zego/zim/enums/ZIMPlatformType;

    iget v1, v0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    if-ne v1, p0, :cond_8

    return-object v0

    .line 69
    :cond_8
    sget-object p0, Lim/zego/zim/enums/ZIMPlatformType;->UNKNOWN:Lim/zego/zim/enums/ZIMPlatformType;

    iget v0, p0, Lim/zego/zim/enums/ZIMPlatformType;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 74
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMPlatformType;
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
    const-class v0, Lim/zego/zim/enums/ZIMPlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMPlatformType;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMPlatformType;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMPlatformType;->$VALUES:[Lim/zego/zim/enums/ZIMPlatformType;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMPlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMPlatformType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 29
    iget v0, p0, Lim/zego/zim/enums/ZIMPlatformType;->value:I

    return v0
.end method

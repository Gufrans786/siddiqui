.class public final enum Lim/zego/zim/enums/ZIMMediaFileType;
.super Ljava/lang/Enum;
.source "ZIMMediaFileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMMediaFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMMediaFileType;

.field public static final enum LARGE_IMAGE:Lim/zego/zim/enums/ZIMMediaFileType;

.field public static final enum ORIGINAL_FILE:Lim/zego/zim/enums/ZIMMediaFileType;

.field public static final enum THUMBNAIL_IMAGE:Lim/zego/zim/enums/ZIMMediaFileType;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMMediaFileType;

.field public static final enum VIDEO_FIRST_FRAME_IMAGE:Lim/zego/zim/enums/ZIMMediaFileType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lim/zego/zim/enums/ZIMMediaFileType;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lim/zego/zim/enums/ZIMMediaFileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMMediaFileType;->UNKNOWN:Lim/zego/zim/enums/ZIMMediaFileType;

    .line 11
    new-instance v1, Lim/zego/zim/enums/ZIMMediaFileType;

    const-string v2, "ORIGINAL_FILE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zim/enums/ZIMMediaFileType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMMediaFileType;->ORIGINAL_FILE:Lim/zego/zim/enums/ZIMMediaFileType;

    .line 15
    new-instance v2, Lim/zego/zim/enums/ZIMMediaFileType;

    const-string v3, "LARGE_IMAGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zim/enums/ZIMMediaFileType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMMediaFileType;->LARGE_IMAGE:Lim/zego/zim/enums/ZIMMediaFileType;

    .line 19
    new-instance v3, Lim/zego/zim/enums/ZIMMediaFileType;

    const-string v4, "THUMBNAIL_IMAGE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lim/zego/zim/enums/ZIMMediaFileType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMMediaFileType;->THUMBNAIL_IMAGE:Lim/zego/zim/enums/ZIMMediaFileType;

    .line 24
    new-instance v4, Lim/zego/zim/enums/ZIMMediaFileType;

    const-string v5, "VIDEO_FIRST_FRAME_IMAGE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lim/zego/zim/enums/ZIMMediaFileType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMMediaFileType;->VIDEO_FIRST_FRAME_IMAGE:Lim/zego/zim/enums/ZIMMediaFileType;

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Lim/zego/zim/enums/ZIMMediaFileType;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMMediaFileType;->$VALUES:[Lim/zego/zim/enums/ZIMMediaFileType;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMMediaFileType;->value:I

    return-void
.end method

.method public static getZIMMediaFileType(I)Lim/zego/zim/enums/ZIMMediaFileType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 34
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMMediaFileType;->ORIGINAL_FILE:Lim/zego/zim/enums/ZIMMediaFileType;

    invoke-virtual {v0}, Lim/zego/zim/enums/ZIMMediaFileType;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    return-object v0

    .line 38
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMMediaFileType;->LARGE_IMAGE:Lim/zego/zim/enums/ZIMMediaFileType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMediaFileType;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 42
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMMediaFileType;->THUMBNAIL_IMAGE:Lim/zego/zim/enums/ZIMMediaFileType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMediaFileType;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 46
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMMediaFileType;->VIDEO_FIRST_FRAME_IMAGE:Lim/zego/zim/enums/ZIMMediaFileType;

    iget v1, v0, Lim/zego/zim/enums/ZIMMediaFileType;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_3

    return-object v0

    .line 53
    :cond_3
    sget-object p0, Lim/zego/zim/enums/ZIMMediaFileType;->UNKNOWN:Lim/zego/zim/enums/ZIMMediaFileType;

    return-object p0

    .line 51
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMMediaFileType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lim/zego/zim/enums/ZIMMediaFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMMediaFileType;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMMediaFileType;
    .locals 1

    .line 6
    sget-object v0, Lim/zego/zim/enums/ZIMMediaFileType;->$VALUES:[Lim/zego/zim/enums/ZIMMediaFileType;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMMediaFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMMediaFileType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 30
    iget v0, p0, Lim/zego/zim/enums/ZIMMediaFileType;->value:I

    return v0
.end method

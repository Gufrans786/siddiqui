.class public final enum Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;
.super Ljava/lang/Enum;
.source "ZIMTipsMessageChangeInfoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum GROUP_AVATAR_URL_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum GROUP_DATA_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum GROUP_MEMBER_MUTE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum GROUP_MEMBER_ROLE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum GROUP_MESSAGE_PIN_INFO_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum GROUP_MUTE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum GROUP_NAME_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum GROUP_NOTICE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum GROUP_OWNER_TRANSFERRED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 5
    new-instance v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->UNKNOWN:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 7
    new-instance v1, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const-string v2, "GROUP_DATA_CHANGED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_DATA_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 9
    new-instance v2, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const-string v3, "GROUP_NOTICE_CHANGED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_NOTICE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 11
    new-instance v3, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const-string v4, "GROUP_NAME_CHANGED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_NAME_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 13
    new-instance v4, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const-string v5, "GROUP_AVATAR_URL_CHANGED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_AVATAR_URL_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 15
    new-instance v5, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const-string v6, "GROUP_MUTE_CHANGED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MUTE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 17
    new-instance v6, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const/4 v7, 0x6

    const/16 v8, 0xa

    const-string v9, "GROUP_OWNER_TRANSFERRED"

    invoke-direct {v6, v9, v7, v8}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_OWNER_TRANSFERRED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 19
    new-instance v7, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const/4 v8, 0x7

    const/16 v9, 0xb

    const-string v10, "GROUP_MEMBER_ROLE_CHANGED"

    invoke-direct {v7, v10, v8, v9}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MEMBER_ROLE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 21
    new-instance v8, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const/16 v9, 0x8

    const/16 v10, 0xc

    const-string v11, "GROUP_MEMBER_MUTE_CHANGED"

    invoke-direct {v8, v11, v9, v10}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MEMBER_MUTE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 23
    new-instance v9, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    const/16 v10, 0x9

    const/16 v11, 0x15

    const-string v12, "GROUP_MESSAGE_PIN_INFO_CHANGED"

    invoke-direct {v9, v12, v10, v11}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MESSAGE_PIN_INFO_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    .line 3
    filled-new-array/range {v0 .. v9}, [Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->$VALUES:[Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

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

    iput p3, p0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    return-void
.end method

.method public static getZIMTipsMessageChangeInfoType(I)Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;
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
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_DATA_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 36
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_NOTICE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 39
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_NAME_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 42
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_AVATAR_URL_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    if-ne v1, p0, :cond_3

    return-object v0

    .line 45
    :cond_3
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MUTE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    if-ne v1, p0, :cond_4

    return-object v0

    .line 48
    :cond_4
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_OWNER_TRANSFERRED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    if-ne v1, p0, :cond_5

    return-object v0

    .line 51
    :cond_5
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MEMBER_ROLE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    if-ne v1, p0, :cond_6

    return-object v0

    .line 54
    :cond_6
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MEMBER_MUTE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    if-ne v1, p0, :cond_7

    return-object v0

    .line 57
    :cond_7
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MESSAGE_PIN_INFO_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_8

    return-object v0

    .line 64
    :cond_8
    sget-object p0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->UNKNOWN:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    return-object p0

    .line 62
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;
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
    const-class v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->$VALUES:[Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 29
    iget v0, p0, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->value:I

    return v0
.end method

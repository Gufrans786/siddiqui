.class public final enum Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;
.super Ljava/lang/Enum;
.source "ZIMRoomAttributesUpdateAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

.field public static final enum DELETE:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

.field public static final enum SET:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->UNKNOWN:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    const-string v2, "SET"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->SET:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    .line 7
    new-instance v2, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    const-string v3, "DELETE"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->DELETE:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    .line 3
    filled-new-array {v0, v1, v2}, [Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->$VALUES:[Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

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

    iput p3, p0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->value:I

    return-void
.end method

.method public static getZIMRoomAttributesUpdateAction(I)Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;
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
    sget-object v0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->SET:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 22
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->DELETE:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    iget v1, v0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_1

    return-object v0

    .line 29
    :cond_1
    sget-object p0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->UNKNOWN:Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    return-object p0

    .line 27
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;
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
    const-class v0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->$VALUES:[Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 13
    iget v0, p0, Lim/zego/zim/enums/ZIMRoomAttributesUpdateAction;->value:I

    return v0
.end method

.class public final enum Lim/zego/zpns/enums/ZPNsErrorCode;
.super Ljava/lang/Enum;
.source "ZPNsErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zpns/enums/ZPNsErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zpns/enums/ZPNsErrorCode;

.field public static final enum APPID_KEY_ERROR:Lim/zego/zpns/enums/ZPNsErrorCode;

.field public static final enum CONNECT_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;

.field public static final enum OBTAIN_PUSH_ID_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;

.field public static final enum REGISTER_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;

.field public static final enum SUCCESS:Lim/zego/zpns/enums/ZPNsErrorCode;

.field public static final enum UNREGISTER_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;


# instance fields
.field public code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lim/zego/zpns/enums/ZPNsErrorCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lim/zego/zpns/enums/ZPNsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zpns/enums/ZPNsErrorCode;->SUCCESS:Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 13
    new-instance v1, Lim/zego/zpns/enums/ZPNsErrorCode;

    const/4 v2, 0x1

    const v3, 0x5b8f11

    const-string v4, "CONNECT_FAILS"

    invoke-direct {v1, v4, v2, v3}, Lim/zego/zpns/enums/ZPNsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zpns/enums/ZPNsErrorCode;->CONNECT_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 16
    new-instance v2, Lim/zego/zpns/enums/ZPNsErrorCode;

    const/4 v3, 0x2

    const v4, 0x5b8f12

    const-string v5, "APPID_KEY_ERROR"

    invoke-direct {v2, v5, v3, v4}, Lim/zego/zpns/enums/ZPNsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zpns/enums/ZPNsErrorCode;->APPID_KEY_ERROR:Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 19
    new-instance v3, Lim/zego/zpns/enums/ZPNsErrorCode;

    const/4 v4, 0x3

    const v5, 0x5b8f13

    const-string v6, "OBTAIN_PUSH_ID_FAILS"

    invoke-direct {v3, v6, v4, v5}, Lim/zego/zpns/enums/ZPNsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zpns/enums/ZPNsErrorCode;->OBTAIN_PUSH_ID_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 22
    new-instance v4, Lim/zego/zpns/enums/ZPNsErrorCode;

    const/4 v5, 0x4

    const v6, 0x5b8f14

    const-string v7, "REGISTER_FAILS"

    invoke-direct {v4, v7, v5, v6}, Lim/zego/zpns/enums/ZPNsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zpns/enums/ZPNsErrorCode;->REGISTER_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 25
    new-instance v5, Lim/zego/zpns/enums/ZPNsErrorCode;

    const/4 v6, 0x5

    const v7, 0x5b8f15

    const-string v8, "UNREGISTER_FAILS"

    invoke-direct {v5, v8, v6, v7}, Lim/zego/zpns/enums/ZPNsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zpns/enums/ZPNsErrorCode;->UNREGISTER_FAILS:Lim/zego/zpns/enums/ZPNsErrorCode;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lim/zego/zpns/enums/ZPNsErrorCode;

    move-result-object v0

    sput-object v0, Lim/zego/zpns/enums/ZPNsErrorCode;->$VALUES:[Lim/zego/zpns/enums/ZPNsErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lim/zego/zpns/enums/ZPNsErrorCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zpns/enums/ZPNsErrorCode;
    .locals 1

    .line 7
    const-class v0, Lim/zego/zpns/enums/ZPNsErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zpns/enums/ZPNsErrorCode;

    return-object p0
.end method

.method public static values()[Lim/zego/zpns/enums/ZPNsErrorCode;
    .locals 1

    .line 7
    sget-object v0, Lim/zego/zpns/enums/ZPNsErrorCode;->$VALUES:[Lim/zego/zpns/enums/ZPNsErrorCode;

    invoke-virtual {v0}, [Lim/zego/zpns/enums/ZPNsErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zpns/enums/ZPNsErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 28
    iget v0, p0, Lim/zego/zpns/enums/ZPNsErrorCode;->code:I

    return v0
.end method

.class public final enum Lim/zego/zpns/enums/ZPNsConstants$PushSource;
.super Ljava/lang/Enum;
.source "ZPNsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/zego/zpns/enums/ZPNsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zpns/enums/ZPNsConstants$PushSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zpns/enums/ZPNsConstants$PushSource;

.field public static final enum FCM:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

.field public static final enum HUAWEI:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

.field public static final enum OPPO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

.field public static final enum VIVO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

.field public static final enum XIAOMI:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

.field public static final enum ZEGO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    new-instance v0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    const-string v1, "ZEGO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lim/zego/zpns/enums/ZPNsConstants$PushSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->ZEGO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    .line 28
    new-instance v1, Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    const-string v2, "VIVO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zpns/enums/ZPNsConstants$PushSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->VIVO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    .line 30
    new-instance v2, Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    const-string v3, "XIAOMI"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zpns/enums/ZPNsConstants$PushSource;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->XIAOMI:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    .line 32
    new-instance v3, Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    const-string v4, "HUAWEI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lim/zego/zpns/enums/ZPNsConstants$PushSource;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->HUAWEI:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    .line 34
    new-instance v4, Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    const-string v5, "OPPO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lim/zego/zpns/enums/ZPNsConstants$PushSource;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->OPPO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    .line 36
    new-instance v5, Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    const-string v6, "FCM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lim/zego/zpns/enums/ZPNsConstants$PushSource;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->FCM:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    .line 24
    filled-new-array/range {v0 .. v5}, [Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    move-result-object v0

    sput-object v0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->$VALUES:[Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->code:I

    return-void
.end method

.method public static fromValue(I)Lim/zego/zpns/enums/ZPNsConstants$PushSource;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 61
    sget-object p0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->ZEGO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object p0

    .line 59
    :cond_0
    sget-object p0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->FCM:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object p0

    .line 57
    :cond_1
    sget-object p0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->OPPO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object p0

    .line 55
    :cond_2
    sget-object p0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->HUAWEI:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object p0

    .line 53
    :cond_3
    sget-object p0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->XIAOMI:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object p0

    .line 51
    :cond_4
    sget-object p0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->VIVO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zpns/enums/ZPNsConstants$PushSource;
    .locals 1

    .line 24
    const-class v0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object p0
.end method

.method public static values()[Lim/zego/zpns/enums/ZPNsConstants$PushSource;
    .locals 1

    .line 24
    sget-object v0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->$VALUES:[Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    invoke-virtual {v0}, [Lim/zego/zpns/enums/ZPNsConstants$PushSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 45
    iget v0, p0, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->code:I

    return v0
.end method

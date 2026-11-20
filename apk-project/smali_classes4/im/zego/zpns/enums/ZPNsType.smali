.class public final enum Lim/zego/zpns/enums/ZPNsType;
.super Ljava/lang/Enum;
.source "ZPNsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zpns/enums/ZPNsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zpns/enums/ZPNsType;

.field public static final enum NOTIFICATION_ARRIVED:Lim/zego/zpns/enums/ZPNsType;

.field public static final enum NOTIFICATION_CLICK:Lim/zego/zpns/enums/ZPNsType;

.field public static final enum NOTIFICATION_THROUGH:Lim/zego/zpns/enums/ZPNsType;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lim/zego/zpns/enums/ZPNsType;

    const-string v1, "NOTIFICATION_THROUGH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lim/zego/zpns/enums/ZPNsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zpns/enums/ZPNsType;->NOTIFICATION_THROUGH:Lim/zego/zpns/enums/ZPNsType;

    .line 10
    new-instance v1, Lim/zego/zpns/enums/ZPNsType;

    const-string v2, "NOTIFICATION_CLICK"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lim/zego/zpns/enums/ZPNsType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zpns/enums/ZPNsType;->NOTIFICATION_CLICK:Lim/zego/zpns/enums/ZPNsType;

    .line 11
    new-instance v2, Lim/zego/zpns/enums/ZPNsType;

    const-string v3, "NOTIFICATION_ARRIVED"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lim/zego/zpns/enums/ZPNsType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zpns/enums/ZPNsType;->NOTIFICATION_ARRIVED:Lim/zego/zpns/enums/ZPNsType;

    .line 6
    filled-new-array {v0, v1, v2}, [Lim/zego/zpns/enums/ZPNsType;

    move-result-object v0

    sput-object v0, Lim/zego/zpns/enums/ZPNsType;->$VALUES:[Lim/zego/zpns/enums/ZPNsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lim/zego/zpns/enums/ZPNsType;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zpns/enums/ZPNsType;
    .locals 1

    .line 6
    const-class v0, Lim/zego/zpns/enums/ZPNsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zpns/enums/ZPNsType;

    return-object p0
.end method

.method public static values()[Lim/zego/zpns/enums/ZPNsType;
    .locals 1

    .line 6
    sget-object v0, Lim/zego/zpns/enums/ZPNsType;->$VALUES:[Lim/zego/zpns/enums/ZPNsType;

    invoke-virtual {v0}, [Lim/zego/zpns/enums/ZPNsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zpns/enums/ZPNsType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 14
    iget v0, p0, Lim/zego/zpns/enums/ZPNsType;->code:I

    return v0
.end method

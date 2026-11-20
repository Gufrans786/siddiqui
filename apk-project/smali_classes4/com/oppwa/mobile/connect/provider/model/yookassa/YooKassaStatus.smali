.class public final enum Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;
.super Ljava/lang/Enum;
.source "YooKassaStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

.field public static final enum PENDING:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

.field public static final enum SUCCEEDED:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

.field public static final enum UNDEFINED:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

.field public static final enum WAITING_FOR_CAPTURE:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->SUCCEEDED:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    .line 4
    new-instance v1, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    const-string v2, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->PENDING:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    .line 7
    new-instance v2, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    const-string v3, "WAITING_FOR_CAPTURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->WAITING_FOR_CAPTURE:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    .line 12
    new-instance v3, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    const-string v4, "CANCELED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->CANCELED:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    .line 14
    new-instance v4, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    const-string v5, "UNDEFINED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->UNDEFINED:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    .line 15
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->a:[Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forName(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;
    .locals 5

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->values()[Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->UNDEFINED:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->a:[Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    return-object v0
.end method

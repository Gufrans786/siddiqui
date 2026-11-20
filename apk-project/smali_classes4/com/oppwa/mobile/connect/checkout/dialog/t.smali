.class final enum Lcom/oppwa/mobile/connect/checkout/dialog/t;
.super Ljava/lang/Enum;
.source "IntegrationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/checkout/dialog/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/oppwa/mobile/connect/checkout/dialog/t;

.field public static final enum c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

.field private static final synthetic d:[Lcom/oppwa/mobile/connect/checkout/dialog/t;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/t;

    const/4 v1, 0x0

    const-string v2, "Checkout UI"

    const-string v3, "CHECKOUT_UI"

    invoke-direct {v0, v3, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/t;->b:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/t;

    const/4 v2, 0x1

    const-string v3, "Drop-In Button"

    const-string v4, "PAYMENT_BUTTON"

    invoke-direct {v1, v4, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/t;->c:Lcom/oppwa/mobile/connect/checkout/dialog/t;

    .line 3
    filled-new-array {v0, v1}, [Lcom/oppwa/mobile/connect/checkout/dialog/t;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/t;->d:[Lcom/oppwa/mobile/connect/checkout/dialog/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/t;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/t;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/checkout/dialog/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/checkout/dialog/t;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/checkout/dialog/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/t;->d:[Lcom/oppwa/mobile/connect/checkout/dialog/t;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/checkout/dialog/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/checkout/dialog/t;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/t;->a:Ljava/lang/String;

    return-object v0
.end method

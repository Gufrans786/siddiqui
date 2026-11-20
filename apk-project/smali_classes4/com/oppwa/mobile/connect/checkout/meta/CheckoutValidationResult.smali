.class public final enum Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
.super Ljava/lang/Enum;
.source "CheckoutValidationResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

.field public static final enum NOT_VALID:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

.field public static final enum VALID:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->DEFAULT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    .line 6
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    const-string v2, "VALID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->VALID:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    .line 11
    new-instance v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    const-string v3, "NOT_VALID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->NOT_VALID:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    .line 12
    filled-new-array {v0, v1, v2}, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    return-object v0
.end method

.class public final enum Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;
.super Ljava/lang/Enum;
.source "PaymentButtonIntegrationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PAYMENT_OPTION:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

.field public static final enum STANDALONE:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    const-string v1, "STANDALONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;->STANDALONE:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    .line 5
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    const-string v2, "PAYMENT_OPTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;->PAYMENT_OPTION:Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    .line 6
    filled-new-array {v0, v1}, [Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;->a:[Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;->a:[Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;

    return-object v0
.end method

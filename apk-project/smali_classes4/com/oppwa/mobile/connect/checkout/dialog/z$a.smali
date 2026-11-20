.class Lcom/oppwa/mobile/connect/checkout/dialog/z$a;
.super Ljava/util/HashMap;
.source "PaymentInfoFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/z;->a()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "DIRECTDEBIT_SEPA"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v0, "CHINAUNIONPAY"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v0, "SOFORTUEBERWEISUNG"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/SofortPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v0, "IDEAL"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v0, "GIROPAY"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v0, "KLARNA_INVOICE"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v0, "KLARNA_INSTALLMENTS"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v0, "KLARNA_PAYMENTS_PAYLATER"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v0, "KLARNA_PAYMENTS_PAYNOW"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v0, "KLARNA_PAYMENTS_SLICEIT"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaInlinePaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v0, "MBWAY"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v0, "IKANOOI_FI"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v0, "IKANOOI_NO"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "IKANOOI_SE"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "IK_PRIVATE_LABEL_VA"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v0, "STC_PAY"

    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

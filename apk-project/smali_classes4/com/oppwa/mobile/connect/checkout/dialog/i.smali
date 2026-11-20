.class Lcom/oppwa/mobile/connect/checkout/dialog/i;
.super Ljava/lang/Object;
.source "CheckoutConstants.java"


# direct methods
.method static a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "KLARNA_PAYMENTS_PAYLATER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    const-string v0, "KLARNA_PAYMENTS_PAYNOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    const-string v0, "KLARNA_PAYMENTS_SLICEIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

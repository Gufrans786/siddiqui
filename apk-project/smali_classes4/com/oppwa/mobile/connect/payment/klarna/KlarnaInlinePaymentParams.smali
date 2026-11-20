.class public Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;
.super Lcom/oppwa/mobile/connect/payment/PaymentParams;
.source "KlarnaInlinePaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsPaymentSchemeInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "KLARNA_PAYMENTS_PAYLATER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    const-string v0, "KLARNA_PAYMENTS_PAYNOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    const-string v0, "KLARNA_PAYMENTS_SLICEIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 9
    :cond_2
    check-cast p1, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getInitialTransactionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsForRequest()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getParamsForRequest()Ljava/util/Map;

    move-result-object v0

    .line 2
    const-string v1, "customParameters[inlineFlow]"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    const-string v2, "customParameters[SHOPPER_submit_payment]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setInitialTransactionId(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->f:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/klarna/KlarnaInlinePaymentParams;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

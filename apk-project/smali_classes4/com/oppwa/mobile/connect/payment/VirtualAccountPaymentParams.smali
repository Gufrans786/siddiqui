.class public abstract Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;
.super Lcom/oppwa/mobile/connect/payment/PaymentParams;
.source "VirtualAccountPaymentParams.java"


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->g()V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "googlePay.paymentToken"

    return-object v0

    .line 5
    :cond_0
    const-string/jumbo v0, "virtualAccount.paymentToken"

    return-object v0
.end method

.method private f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getPaymentBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOOGLEPAY"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 5
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsGooglePayTokenInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0

    .line 8
    :cond_0
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 9
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsPaymentTokenMissingError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw v0

    :cond_1
    return-void
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
    check-cast p1, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
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
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->getPaymentToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPaymentToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

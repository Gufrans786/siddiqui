.class Lcom/oppwa/mobile/connect/payment/bankaccount/b;
.super Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;
.source "GiropayPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/bankaccount/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/bankaccount/b$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/bankaccount/b$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/bankaccount/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/b;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2
    const-string v2, "GIROPAY"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 5
    invoke-static {v4}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isIbanValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 7
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsBankAccountIbanInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v5, :cond_3

    .line 12
    invoke-static {v5}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isAccountNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 14
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsBankAccountNumberInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz v6, :cond_5

    .line 19
    invoke-static {v6}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isBicValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 21
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsBankAccountBicInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz v7, :cond_7

    .line 26
    invoke-static {v7}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isBankCodeValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 27
    :cond_6
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 28
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsBankAccountBankCodeInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

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
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->getParamsForRequest()Ljava/util/Map;

    move-result-object v0

    .line 3
    const-string v1, "bankAccount.country"

    const-string v2, "DE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->getIban()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bankAccount.iban"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->h:[B

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->getAccountNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bankAccount.number"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->i:[B

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->getBic()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bankAccount.bic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->j:[B

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bankAccount.bankCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

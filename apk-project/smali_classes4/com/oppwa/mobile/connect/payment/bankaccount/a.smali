.class Lcom/oppwa/mobile/connect/payment/bankaccount/a;
.super Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;
.source "DirectDebitSepaPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/bankaccount/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/bankaccount/a$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/bankaccount/a$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/bankaccount/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/a;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2
    const-string v2, "DIRECTDEBIT_SEPA"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v3}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isHolderValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {v4}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isIbanValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    iput-boolean p4, v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    return-void

    .line 15
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 16
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsBankAccountIbanInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 18
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsBankAccountHolderInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
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
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->getHolder()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bankAccount.holder"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->getIban()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bankAccount.iban"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    if-eqz v1, :cond_0

    .line 7
    const-string v1, "createRegistration"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

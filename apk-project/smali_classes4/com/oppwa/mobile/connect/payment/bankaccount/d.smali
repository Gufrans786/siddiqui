.class Lcom/oppwa/mobile/connect/payment/bankaccount/d;
.super Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;
.source "PaytrailPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/bankaccount/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/bankaccount/d$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/bankaccount/d$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/bankaccount/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/d;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    const-string v8, "FI"

    const/4 v9, 0x0

    const-string v2, "PAYTRAIL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bankAccount.country"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

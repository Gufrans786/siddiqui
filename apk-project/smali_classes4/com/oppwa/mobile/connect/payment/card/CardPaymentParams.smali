.class public Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;
.super Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;
.source "CardPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:[B

.field private final j:[B

.field private final k:[B

.field private final l:[B

.field private m:[B

.field private n:[B

.field private o:Lcom/oppwa/mobile/connect/payment/BillingAddress;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;-><init>(Landroid/os/Parcel;)V

    .line 40
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->j:[B

    .line 41
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->i:[B

    .line 42
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->k:[B

    .line 43
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->l:[B

    .line 44
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->m:[B

    .line 45
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->n:[B

    .line 46
    const-class v0, Lcom/oppwa/mobile/connect/payment/BillingAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/BillingAddress;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->o:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->p:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 37
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 4
    invoke-static {p4}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isHolderValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsCardHolderInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz p5, :cond_3

    .line 12
    invoke-static {p5}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isExpiryMonthValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsCardMonthInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p6, :cond_5

    .line 15
    invoke-static {p6}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isExpiryYearValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsCardYearInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz p5, :cond_7

    if-eqz p6, :cond_7

    .line 20
    invoke-static {p5, p6}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isCardExpired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsCardExpiredError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    :cond_7
    :goto_3
    if-eqz p7, :cond_9

    .line 25
    invoke-static {p7}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->isCvvValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 26
    :cond_8
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsCardCvvInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 29
    :cond_9
    :goto_4
    invoke-static {p4}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeHolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->j:[B

    .line 30
    invoke-static {p3}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->i:[B

    .line 31
    invoke-static {p5}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->k:[B

    .line 32
    invoke-static {p6}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->l:[B

    .line 33
    invoke-virtual {p0, p7}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->p:Z

    return-void

    .line 36
    :cond_a
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsCardNumberInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method private a(Lcom/oppwa/mobile/connect/payment/BillingAddress;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppwa/mobile/connect/payment/BillingAddress;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "billing.country"

    invoke-virtual {p0, v1, v0, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "billing.state"

    invoke-virtual {p0, v1, v0, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "billing.city"

    invoke-virtual {p0, v1, v0, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getPostCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "billing.postcode"

    invoke-virtual {p0, v1, v0, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getStreet1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "billing.street1"

    invoke-virtual {p0, v1, v0, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getStreet2()Ljava/lang/String;

    move-result-object p1

    const-string v0, "billing.street2"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static checkLuhn(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/oppwa/mobile/connect/payment/card/b;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCardExpired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isExpiryMonthValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isExpiryYearValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt p1, v0, :cond_2

    if-ne p1, v0, :cond_1

    if-ge p0, v3, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public static isCountryCodeValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/card/a;->e()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isExpiryMonthValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/card/a;->b()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isExpiryYearValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/card/a;->c()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHolderValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeHolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/card/a;->d()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    const-string v1, "^[0-9]{10,}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/card/a;->a()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isMobilePhoneNumberValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/card/a;->e()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNumberValid(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/card/a;->f()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNumberValid(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/card/a;->f()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/oppwa/mobile/connect/payment/card/b;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;

    .line 5
    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->p:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->p:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->i:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->i:[B

    .line 6
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->j:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->j:[B

    .line 7
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->k:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->k:[B

    .line 8
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->l:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->l:[B

    .line 9
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->m:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->m:[B

    .line 10
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->n:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->n:[B

    .line 11
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->o:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->o:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 12
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getBillingAddress()Lcom/oppwa/mobile/connect/payment/BillingAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->o:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->n:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryMonth()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->k:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryYear()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->l:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->j:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->m:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->i:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

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
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->getParamsForRequest()Ljava/util/Map;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->j:[B

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->getHolder()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card.holder"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card.number"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->k:[B

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card.expiryMonth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->l:[B

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card.expiryYear"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_2
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->p:Z

    if-eqz v1, :cond_3

    .line 18
    const-string v1, "createRegistration"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->m:[B

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->getMobilePhone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "customer.mobile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->n:[B

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "customParameters[MOBILE_COUNTRY_CODE]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->o:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    if-eqz v1, :cond_6

    .line 30
    invoke-direct {p0, v1, v0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->a(Lcom/oppwa/mobile/connect/payment/BillingAddress;Ljava/util/Map;)V

    :cond_6
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->o:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->i:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->j:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->k:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->l:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->m:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->n:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isTokenizationEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->p:Z

    return v0
.end method

.method public mask()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->mask()V

    .line 3
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->i:[B

    :cond_0
    return-void
.end method

.method public setBillingAddress(Lcom/oppwa/mobile/connect/payment/BillingAddress;)Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->o:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->n:[B

    return-void
.end method

.method public setMobilePhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->m:[B

    return-void
.end method

.method public setTokenizationEnabled(Z)Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->p:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->j:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->i:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 5
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->k:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 6
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->l:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 7
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->m:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 8
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->n:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 9
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->o:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->p:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

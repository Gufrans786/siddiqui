.class public Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;
.super Lcom/oppwa/mobile/connect/payment/PaymentParams;
.source "STCPayPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Landroid/os/Parcel;)V

    .line 13
    const-class v0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    .line 14
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->g:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    const-string v0, "STC_PAY"

    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 9
    :cond_0
    sget-object p1, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;->QR_CODE:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    return-void

    .line 10
    :cond_1
    sget-object p1, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;->MOBILE_PHONE:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    return-void
.end method

.method private static e()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->h:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string v1, "^[0-9].*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->h:Ljava/lang/ref/SoftReference;

    .line 5
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->h:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static isMobilePhoneNumberValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->e()Ljava/util/regex/Pattern;

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


# virtual methods
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

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 9
    :cond_2
    check-cast p1, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;

    .line 11
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->g:[B

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->g:[B

    .line 12
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getMobilePhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->g:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamsForRequest()Ljava/util/Map;
    .locals 4
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

    .line 3
    sget-object v1, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams$b;->a:[I

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "customParameters[SHOPPER_payment_mode]"

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "qr_code"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 12
    :cond_1
    const-string v1, "mobile"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->g:[B

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->getMobilePhoneNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "customer.mobile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getVerificationOption()Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->g:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setMobilePhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->g:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->f:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->g:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    return-void
.end method

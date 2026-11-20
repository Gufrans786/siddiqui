.class public Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;
.super Lcom/oppwa/mobile/connect/payment/PaymentParams;
.source "ChinaUnionPayPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Landroid/os/Parcel;)V

    .line 11
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->f:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    const-string v0, "CHINAUNIONPAY"

    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 4
    invoke-static {p2}, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->isHolderValid(Ljava/lang/String;)Z

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
    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeHolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->f:[B

    return-void
.end method

.method private static e()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->g:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string v1, ".{3,128}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->g:Ljava/lang/ref/SoftReference;

    .line 6
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static isHolderValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->e()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeHolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

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
    check-cast p1, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->f:[B

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->f:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getHolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->f:[B

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
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getParamsForRequest()Ljava/util/Map;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->f:[B

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->getHolder()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "virtualAccount.holder"

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

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;->f:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    return-void
.end method

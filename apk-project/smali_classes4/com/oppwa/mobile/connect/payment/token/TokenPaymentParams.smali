.class public Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;
.super Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;
.source "TokenPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;-><init>(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->isTokenIdValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iput-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->i:Ljava/lang/String;

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsTokenInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 13
    invoke-static {p4}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->isCvvValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsCardCvvInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0, p4}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static e()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->j:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string v1, "[a-zA-Z0-9]{32}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->j:Ljava/lang/ref/SoftReference;

    .line 6
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->j:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static isTokenIdValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->e()Ljava/util/regex/Pattern;

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
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 9
    :cond_2
    check-cast p1, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->getParamsForRequest()Ljava/util/Map;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->i:Ljava/lang/String;

    const-string v2, "registrationId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

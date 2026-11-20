.class public Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;
.super Lcom/oppwa/mobile/connect/payment/PaymentParams;
.source "MBWayPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:[B

.field private g:[B

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Landroid/os/Parcel;)V

    .line 26
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->f:[B

    .line 27
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->g:[B

    .line 28
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->h:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 16
    const-string v0, "MBWAY"

    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 22
    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->h:[B

    return-void

    .line 23
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsEmailInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    const-string v0, "MBWAY"

    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->f:[B

    .line 13
    invoke-static {p3}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->g:[B

    return-void

    .line 14
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsMobilePhoneInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsCountryCodeInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->h:[B

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->getMobilePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    check-cast p1, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;

    .line 11
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->f:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->f:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->g:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->g:[B

    .line 12
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->h:[B

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->h:[B

    .line 13
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->f:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->h:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->g:[B

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
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "virtualAccount.accountId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->g:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->h:[B

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
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->f:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->g:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 5
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;->h:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    return-void
.end method

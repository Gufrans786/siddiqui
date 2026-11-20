.class public abstract Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;
.super Lcom/oppwa/mobile/connect/payment/PaymentParams;
.source "BaseCardPaymentParams.java"


# instance fields
.field private f:[B

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    .line 5
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->g:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->h:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isCvvValid(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/card/a;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->describeContents()I

    move-result v0

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
    check-cast p1, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;

    .line 11
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->g:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->g:Ljava/lang/Integer;

    .line 12
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->h:Ljava/lang/String;

    .line 13
    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfInstallments()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->g:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card.cvv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recurring.numberOfInstallments"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 12
    const-string/jumbo v2, "threeDSecure.deviceInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getThreeDS2AuthParams()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->g:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public mask()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->mask()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x0

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    :cond_0
    return-void
.end method

.method public setNumberOfInstallments(Ljava/lang/Integer;)Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public setThreeDS2AuthParams(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->h:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->f:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->g:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/card/BaseCardPaymentParams;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

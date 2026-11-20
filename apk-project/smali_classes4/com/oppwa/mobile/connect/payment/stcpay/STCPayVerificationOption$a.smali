.class Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption$a;
.super Ljava/lang/Object;
.source "STCPayVerificationOption.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;
    .locals 1

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;->values()[Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(I)[Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption$a;->a(Landroid/os/Parcel;)Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption$a;->a(I)[Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    move-result-object p1

    return-object p1
.end method

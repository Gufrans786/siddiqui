.class Lcom/oppwa/mobile/connect/payment/BrandInfo$a;
.super Ljava/lang/Object;
.source "BrandInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/payment/BrandInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oppwa/mobile/connect/payment/BrandInfo;",
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
.method public a(Landroid/os/Parcel;)Lcom/oppwa/mobile/connect/payment/BrandInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/BrandInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppwa/mobile/connect/payment/BrandInfo;-><init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/BrandInfo$a;)V

    return-object v0
.end method

.method public a(I)[Lcom/oppwa/mobile/connect/payment/BrandInfo;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/oppwa/mobile/connect/payment/BrandInfo;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/payment/BrandInfo$a;->a(Landroid/os/Parcel;)Lcom/oppwa/mobile/connect/payment/BrandInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/payment/BrandInfo$a;->a(I)[Lcom/oppwa/mobile/connect/payment/BrandInfo;

    move-result-object p1

    return-object p1
.end method

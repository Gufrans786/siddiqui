.class Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle$a;
.super Ljava/lang/Object;
.source "CheckoutBrandDetectionAppearanceStyle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;",
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
.method public a(Landroid/os/Parcel;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;
    .locals 1

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;->values()[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(I)[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle$a;->a(Landroid/os/Parcel;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle$a;->a(I)[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionAppearanceStyle;

    move-result-object p1

    return-object p1
.end method

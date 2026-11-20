.class public Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;
.super Ljava/lang/Object;
.source "OrderSummary.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Double;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 22
    iget-object v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->b:Ljava/lang/Double;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/lang/Double;Lcom/google/android/gms/wallet/PaymentData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/lang/Double;",
            "Lcom/google/android/gms/wallet/PaymentData;",
            ")V"
        }
    .end annotation

    .line 7
    const-string v0, ""

    const-string v1, "GOOGLEPAY"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;-><init>(Ljava/util/LinkedHashMap;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/wallet/PaymentData;->getCardInfo()Lcom/google/android/gms/wallet/CardInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/wallet/PaymentData;->getCardInfo()Lcom/google/android/gms/wallet/CardInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/wallet/CardInfo;->getCardDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->c:Ljava/lang/String;

    .line 13
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/wallet/PaymentData;->getShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p3}, Lcom/google/android/gms/wallet/PaymentData;->getShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a(Lcom/google/android/gms/identity/intents/model/UserAddress;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->e:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    .line 4
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->b:Ljava/lang/Double;

    .line 5
    iput-object p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/gms/identity/intents/model/UserAddress;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/identity/intents/model/UserAddress;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/identity/intents/model/UserAddress;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    const-string v1, " "

    invoke-direct {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/identity/intents/model/UserAddress;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/identity/intents/model/UserAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v2, ", "

    invoke-direct {p0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/identity/intents/model/UserAddress;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string p1, "\n"

    invoke-direct {p0, v2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 18
    const-string v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 20
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    .line 7
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->b:Ljava/lang/Double;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p1, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->b:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->c:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->d:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->e:Ljava/lang/String;

    .line 11
    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getOrderItems()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getOrderTotal()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public getPaymentBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDetails()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setOrderItems(Ljava/util/LinkedHashMap;)Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public setOrderTotal(Ljava/lang/Double;)Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->b:Ljava/lang/Double;

    return-object p0
.end method

.method public setPaymentBrand(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setPaymentDetails(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setShippingInfo(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->e:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->b:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 8
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

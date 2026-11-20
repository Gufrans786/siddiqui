.class public Lcom/oppwa/mobile/connect/payment/CheckoutInfo;
.super Ljava/lang/Object;
.source "CheckoutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/CheckoutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:D

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

.field private h:Z

.field private i:Z

.field private j:[Lcom/oppwa/mobile/connect/payment/token/Token;

.field private k:[Ljava/lang/String;

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->e:[Ljava/lang/String;

    .line 4
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->f:[Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->h:Z

    .line 6
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->i:Z

    .line 7
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->l:Z

    .line 8
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->m:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->b:Ljava/lang/String;

    .line 12
    const-class v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->c:D

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->h:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->i:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->e:[Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->f:[Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/oppwa/mobile/connect/payment/token/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/payment/token/Token;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->j:[Lcom/oppwa/mobile/connect/payment/token/Token;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->k:[Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->l:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->m:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/payment/CheckoutInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createCheckoutInfoFromJSON(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/CheckoutInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;-><init>()V

    .line 3
    const-string v1, "amount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->c:D

    .line 6
    :cond_0
    const-string v1, "endpoint"

    invoke-static {p0, v1}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getStringForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->a:Ljava/lang/String;

    .line 7
    const-string v1, "resourcePath"

    invoke-static {p0, v1}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getStringForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->b:Ljava/lang/String;

    .line 8
    const-string v1, "currency"

    invoke-static {p0, v1}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getStringForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->d:Ljava/lang/String;

    .line 10
    const-string v1, "config"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 12
    const-string v1, "brandConfig"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 14
    const-string v2, "overrideShopBrands"

    invoke-static {v1, v2}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->isTrueForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->h:Z

    .line 15
    const-string v2, "activateBrands"

    invoke-static {v1, v2}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->isTrueForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->i:Z

    .line 16
    const-string v2, "brands"

    invoke-static {v1, v2}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getArrayForKey(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->e:[Ljava/lang/String;

    .line 19
    :cond_1
    const-string/jumbo v1, "threeDSecureV2Config"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/oppwa/mobile/connect/payment/b;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->f:[Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/oppwa/mobile/connect/payment/b;->b(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    move-result-object v2

    iput-object v2, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    .line 27
    const-string v2, "populateBrowserParams"

    invoke-static {v1, v2}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->isTrueForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->m:Z

    .line 32
    :cond_2
    const-string v1, "klarnaMerchantIds"

    invoke-static {p0, v1}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->getArrayForKey(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->k:[Ljava/lang/String;

    .line 33
    const-string v1, "redShieldDeviceIdInMsdkActive"

    invoke-static {p0, v1}, Lcom/oppwa/mobile/connect/utils/JsonUtils;->isTrueForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->l:Z

    .line 34
    const-string v1, "registrations"

    invoke-static {p0, v1}, Lcom/oppwa/mobile/connect/payment/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object p0

    iput-object p0, v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->j:[Lcom/oppwa/mobile/connect/payment/token/Token;

    return-object v0
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

    goto/16 :goto_0

    .line 3
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    .line 5
    iget-wide v2, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->c:D

    iget-wide v4, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->c:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->e:[Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->e:[Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->f:[Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->f:[Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->j:[Lcom/oppwa/mobile/connect/payment/token/Token;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->j:[Lcom/oppwa/mobile/connect/payment/token/Token;

    .line 8
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->k:[Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->k:[Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->h:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->h:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->l:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->l:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->i:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->m:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->m:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->a:Ljava/lang/String;

    .line 14
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    .line 15
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->b:Ljava/lang/String;

    .line 16
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->d:Ljava/lang/String;

    .line 17
    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAmount()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->c:D

    return-wide v0
.end method

.method public getBrands()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getKlarnaMerchantIds()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getThreeDS2Brands()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getThreeDS2Flow()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    return-object v0
.end method

.method public getTokens()[Lcom/oppwa/mobile/connect/payment/token/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->j:[Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/payment/b;->a([Lcom/oppwa/mobile/connect/payment/token/Token;)[Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    .line 3
    iget-wide v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->e:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->m:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->j:[Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->k:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->l:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isBrandsActivated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->i:Z

    return v0
.end method

.method public isBrowserParamsRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->m:Z

    return v0
.end method

.method public isCollectRedShieldDeviceId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->l:Z

    return v0
.end method

.method public isShopBrandsOverridden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->h:Z

    return v0
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->g:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-wide v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->h:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->i:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->e:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->f:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->j:[Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 11
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->k:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 12
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->l:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->m:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

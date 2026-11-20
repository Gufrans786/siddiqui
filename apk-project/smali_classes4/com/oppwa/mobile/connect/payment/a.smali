.class Lcom/oppwa/mobile/connect/payment/a;
.super Ljava/lang/Object;
.source "BrandsValidationBuilder.java"


# direct methods
.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/BrandInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/oppwa/mobile/connect/payment/BrandInfo;

    const-string v1, "render"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppwa/mobile/connect/payment/BrandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string p0, "label"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/payment/BrandInfo;->setLabel(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BrandInfo;

    .line 13
    :cond_0
    const-string p0, "customView"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/payment/BrandInfo;->setCustomUiRequired(Z)Lcom/oppwa/mobile/connect/payment/BrandInfo;

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/BrandInfo;->isCardBrand()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 18
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/a;->a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/payment/BrandInfo;->setCardBrandInfo(Lcom/oppwa/mobile/connect/payment/CardBrandInfo;)Lcom/oppwa/mobile/connect/payment/BrandInfo;

    :cond_2
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;-><init>()V

    .line 21
    const-string v1, "number"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppwa/mobile/connect/payment/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setValidation(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 25
    :cond_0
    const-string v1, "detection"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppwa/mobile/connect/payment/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setDetection(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 29
    :cond_1
    const-string v1, "luhn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setLuhnCheckRequired(Z)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 33
    :cond_2
    const-string v1, "pattern"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppwa/mobile/connect/payment/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setPattern(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 37
    :cond_3
    const-string v1, "cvvLength"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setCvvLength(I)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 41
    :cond_4
    const-string v1, "expiryDate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setExpiryDateOptional(Z)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 45
    :cond_5
    const-string v1, "noCvv"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 46
    sget-object v1, Lcom/oppwa/mobile/connect/payment/CVVMode;->NONE:Lcom/oppwa/mobile/connect/payment/CVVMode;

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setCvvMode(Lcom/oppwa/mobile/connect/payment/CVVMode;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    goto :goto_0

    .line 47
    :cond_6
    const-string v1, "optionalCvv"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 48
    sget-object v1, Lcom/oppwa/mobile/connect/payment/CVVMode;->OPTIONAL:Lcom/oppwa/mobile/connect/payment/CVVMode;

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setCvvMode(Lcom/oppwa/mobile/connect/payment/CVVMode;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    goto :goto_0

    .line 50
    :cond_7
    sget-object v1, Lcom/oppwa/mobile/connect/payment/CVVMode;->REQUIRED:Lcom/oppwa/mobile/connect/payment/CVVMode;

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setCvvMode(Lcom/oppwa/mobile/connect/payment/CVVMode;)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    .line 54
    :goto_0
    const-string v1, "mobilePhone"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->setMobilePhoneRequired(Z)Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    :cond_8
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 56
    const-string/jumbo v0, "{"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 57
    const-string v0, "9"

    const-string v1, "#"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/payment/BrandInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppwa/mobile/connect/payment/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/BrandInfo;

    move-result-object v4

    .line 6
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

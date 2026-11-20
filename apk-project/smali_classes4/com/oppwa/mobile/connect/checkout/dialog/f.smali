.class Lcom/oppwa/mobile/connect/checkout/dialog/f;
.super Ljava/lang/Object;
.source "BillingAddressHelper.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->b()Ljava/util/Map;

    move-result-object v0

    .line 17
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    .line 18
    const-string v0, "US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->c()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "CA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 21
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->a()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 25
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    return-object p1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x2

    .line 13
    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p2, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x1

    const-string p2, ""

    aput-object p2, p0, p1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 15
    const-string p0, ", "

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/oppwa/mobile/connect/payment/BillingAddress;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStreet1Required()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getStreet1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/f;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStreet2Required()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getStreet2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/f;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isCityRequired()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/f;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStateRequired()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/f;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isPostCodeRequired()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getPostCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/f;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isCountryRequired()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/f;->a(ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static a(ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method static b(Lcom/oppwa/mobile/connect/payment/BillingAddress;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getStreet1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getStreet2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getState()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getPostCode()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x2

    .line 24
    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, p0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 26
    const-string p0, "\n"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

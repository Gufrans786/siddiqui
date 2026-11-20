.class Lcom/oppwa/mobile/connect/provider/c;
.super Ljava/lang/Object;
.source "OppRequestHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    const-string/jumbo p0, "transactionStatus"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    const-string v1, "clientAuthResponse"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {p0}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 142
    new-instance v2, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    invoke-direct {v2, p0, v1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;-><init>(Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->DECOUPLED_CONFIRMED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 145
    const-string p0, "cardholderInfo"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->setCardHolderInfo(Ljava/lang/String;)V

    :cond_0
    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/provider/model/BinInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/c;->b(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "binType"

    invoke-direct {p0, p1, v1}, Lcom/oppwa/mobile/connect/provider/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string/jumbo v2, "type"

    invoke-direct {p0, p1, v2}, Lcom/oppwa/mobile/connect/provider/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    new-instance v2, Lcom/oppwa/mobile/connect/provider/model/BinInfo;

    invoke-direct {v2, v0, v1, p1}, Lcom/oppwa/mobile/connect/provider/model/BinInfo;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x2c

    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 164
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 165
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 166
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    const-string v0, "brands"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 26
    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;[Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BrandsValidation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 56
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "/v1/checkouts/%1$s/brand?names="

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lcom/oppwa/mobile/connect/provider/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request: [GET] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 62
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->makeRequest(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {p2, p5}, Lcom/oppwa/mobile/connect/payment/BrandsValidation;->createFromJson(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    .line 72
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderConnectionMalformedResponseError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2
.end method

.method a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CheckoutInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 39
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "/v1/checkouts/%1$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request: [GET] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 44
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->makeRequest(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p2}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->createCheckoutInfoFromJSON(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    .line 54
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderConnectionMalformedResponseError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2
.end method

.method a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;[Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/ImagesRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/v1/images?brands="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/oppwa/mobile/connect/provider/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    .line 77
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->makeRequest(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 79
    new-instance p2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {p2}, Lcom/oppwa/mobile/connect/payment/ImagesRequest;->createFromJson(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/payment/ImagesRequest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 83
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderConnectionMalformedResponseError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2
.end method

.method a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/provider/Transaction;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p5}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v1, "/v1/checkouts/%s%s"

    invoke-static {v1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getParamsForRequest()Ljava/util/Map;

    move-result-object v6

    .line 6
    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/oppwa/mobile/connect/provider/c;->a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/payment/PaymentParams;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 15
    invoke-static/range {v2 .. v7}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->makeRequest(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    move-object v1, v2

    .line 24
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/oppwa/mobile/connect/provider/d;

    .line 28
    invoke-virtual {p5}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getCheckoutId()Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/oppwa/mobile/connect/provider/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V

    .line 33
    invoke-virtual {v0, p5}, Lcom/oppwa/mobile/connect/provider/d;->a(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p5

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    .line 37
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderConnectionMalformedResponseError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/provider/Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 97
    invoke-virtual {p3}, Lcom/oppwa/mobile/connect/provider/Transaction;->getThreeDS2Info()Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->getCallbackUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "clientAuthRequest"

    invoke-static {v1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    .line 114
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->getCallbackUrl()Ljava/lang/String;

    move-result-object v1

    .line 117
    :try_start_0
    invoke-static {p1, v1, p2}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/oppwa/mobile/connect/provider/c;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->getProtocolVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->setProtocolVersion(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3, p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->a(Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p3

    :catch_0
    move-exception p1

    .line 127
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderConnectionMalformedResponseError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2

    .line 129
    :cond_1
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 130
    const-string p2, "ThreeDS2Info callback url is missing."

    invoke-static {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderInternalError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1

    .line 131
    :cond_2
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 132
    const-string p2, "ThreeDS2Info is missing."

    invoke-static {p2}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderInternalError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method

.method a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/model/BinInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/v1/checkouts/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, "/bins"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string p5, "bin"

    invoke-static {p5, p4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    .line 89
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->makeRequest(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 91
    new-instance p2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/provider/c;->a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/provider/model/BinInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 95
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderConnectionMalformedResponseError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2
.end method

.method a(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/payment/PaymentParams;Ljava/lang/String;)V
    .locals 1

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Request: [POST] "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "\n"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->mask()V

    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->info(Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->wipeString(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method b(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "/v1/checkouts/%1$s/configuration/IDEAL_BANKS"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 4
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->makeRequest(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 7
    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/provider/c;->a(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 14
    new-instance p2, Lcom/oppwa/mobile/connect/exception/PaymentException;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentProviderConnectionMalformedResponseError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p2
.end method

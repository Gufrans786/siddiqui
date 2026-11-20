.class Lcom/oppwa/mobile/connect/provider/d;
.super Ljava/lang/Object;
.source "OppTransactionResponseParser.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

.field private final e:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/d;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/d;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/oppwa/mobile/connect/provider/d;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/oppwa/mobile/connect/provider/d;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 6
    iput-object p5, p0, Lcom/oppwa/mobile/connect/provider/d;->e:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;
    .locals 3

    .line 61
    const-string v0, "confirmation_url"

    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "callbackUrl"

    invoke-direct {p0, p1, v1}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "status"

    invoke-direct {p0, p1, v2}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance v2, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    .line 77
    invoke-static {p1}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;->forName(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaStatus;)V

    return-object v2
.end method

.method private a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 83
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 85
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 89
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "url"

    const-string v1, "preconditions"

    const-string v2, "redirect"

    .line 32
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 35
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    const-string v3, "iframe#hidden"

    const-string v4, "origin"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/oppwa/mobile/connect/provider/HttpUtils;->a(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 46
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "additionalAttributes"

    .line 98
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 101
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    const-string v0, "secureTransactionId"

    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/provider/d;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string/jumbo v1, "transactionStatus"

    invoke-direct {p0, p1, v1}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "clientAuthResponse"

    invoke-direct {p0, p1, v2}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    const-string/jumbo v3, "threeDSProtocolVersion"

    invoke-direct {p0, p1, v3}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 11
    invoke-static {v1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 13
    sget-object v1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->AUTH_PARAMS_REQUIRED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 17
    new-instance v4, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    invoke-direct {v4, v1, v2}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;-><init>(Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4, v3}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->setProtocolVersion(Ljava/lang/String;)V

    .line 20
    sget-object v2, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->DECOUPLED_CONFIRMED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    const-string v1, "cardholderInfo"

    invoke-direct {p0, p1, v1}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->setCardHolderInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v4

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "parameters"

    const-string v1, "redirect"

    .line 71
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 81
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string/jumbo p1, "value"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connectorId"

    const-string v1, "failureCallbackUrl"

    const-string v2, "callbackUrl"

    const-string v3, "clientToken"

    .line 29
    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/oppwa/mobile/connect/provider/d;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-direct {p0, p1, v2}, Lcom/oppwa/mobile/connect/provider/d;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-direct {p0, p1, v1}, Lcom/oppwa/mobile/connect/provider/d;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 47
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 48
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 49
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {p2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const-string p1, ""

    .line 64
    :goto_0
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ALIPAY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "KLARNA_PAYMENTS_SLICEIT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "BANCONTACT_LINK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "KLARNA_PAYMENTS_PAYLATER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "KLARNA_PAYMENTS_PAYNOW"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object v0

    .line 12
    :pswitch_0
    invoke-static {p1}, Lcom/oppwa/mobile/connect/provider/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 13
    const-string p2, "alipaySignedInfo"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 19
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    return-object v0

    .line 20
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/provider/d;->b(Lorg/json/JSONObject;Ljava/util/Map;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x57ffcb3a -> :sswitch_4
        -0x575c7384 -> :sswitch_3
        0x7d74248 -> :sswitch_2
        0x897c585 -> :sswitch_1
        0x733c5e4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "redirect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    const-string v0, "BOLETO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const-string v0, "MASTERPASS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    const-string v0, "VIPPS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    const-string/jumbo p2, "shortUrl"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    :goto_0
    const-string/jumbo p2, "url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    const-string v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/d;->b(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->getProtocolVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    const-string v2, "redirect"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->setCallbackUrl(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-virtual {p1, v1}, Lcom/oppwa/mobile/connect/provider/Transaction;->a(Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;)V

    .line 13
    sget-object v0, Lcom/oppwa/mobile/connect/provider/TransactionType;->SYNC:Lcom/oppwa/mobile/connect/provider/TransactionType;

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/provider/Transaction;->a(Lcom/oppwa/mobile/connect/provider/TransactionType;)V

    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getPaymentBrand()Ljava/lang/String;

    move-result-object v1

    .line 17
    const-string v2, "YANDEX_CHECKOUT"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppwa/mobile/connect/provider/Transaction;->a(Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;)V

    .line 21
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/oppwa/mobile/connect/provider/d;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppwa/mobile/connect/provider/Transaction;->a(Ljava/util/Map;)V

    .line 23
    const-string/jumbo v2, "workflow"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASYNC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    sget-object v2, Lcom/oppwa/mobile/connect/provider/TransactionType;->ASYNC:Lcom/oppwa/mobile/connect/provider/TransactionType;

    invoke-virtual {p1, v2}, Lcom/oppwa/mobile/connect/provider/Transaction;->a(Lcom/oppwa/mobile/connect/provider/TransactionType;)V

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/oppwa/mobile/connect/provider/d;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppwa/mobile/connect/provider/Transaction;->a(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/d;->d:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/d;->e:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 27
    invoke-direct {p0, v0, v1, v2}, Lcom/oppwa/mobile/connect/provider/d;->a(Lorg/json/JSONObject;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/provider/Transaction;->b(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_3
    sget-object v0, Lcom/oppwa/mobile/connect/provider/TransactionType;->SYNC:Lcom/oppwa/mobile/connect/provider/TransactionType;

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/provider/Transaction;->a(Lcom/oppwa/mobile/connect/provider/TransactionType;)V

    return-void
.end method

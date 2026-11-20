.class public Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;
.super Ljava/lang/Object;
.source "PaymentDataRequestJsonBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONArray;

.field private c:Lorg/json/JSONObject;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Lorg/json/JSONArray;

.field private g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->f:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->f:Lorg/json/JSONArray;

    .line 6
    const-string v2, "allowedCountryCodes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->g:Ljava/lang/Boolean;

    .line 7
    const-string v2, "phoneNumberRequired"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setAllowedPaymentMethods(Lorg/json/JSONArray;)Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->b:Lorg/json/JSONArray;

    return-object p0
.end method

.method public setEmailRequired(Z)Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMerchantInfo(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setShippingAddressParameters(Lorg/json/JSONArray;Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->f:Lorg/json/JSONArray;

    .line 2
    iput-object p2, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShippingAddressRequired(Z)Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setTransactionInfo(Lorg/json/JSONObject;)Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->c:Lorg/json/JSONObject;

    return-object p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "apiVersion"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    const-string v1, "apiVersionMinor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->a:Ljava/lang/String;

    .line 4
    const-string v2, "merchantName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->b:Lorg/json/JSONArray;

    .line 5
    const-string v2, "allowedPaymentMethods"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->c:Lorg/json/JSONObject;

    .line 6
    const-string/jumbo v2, "transactionInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->d:Ljava/lang/Boolean;

    .line 7
    const-string v2, "emailRequired"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->e:Ljava/lang/Boolean;

    .line 8
    const-string/jumbo v2, "shippingAddressRequired"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/utils/googlepay/PaymentDataRequestJsonBuilder;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "shippingAddressParameters"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

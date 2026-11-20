.class public Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;
.super Ljava/lang/Object;
.source "CardPaymentMethodJsonBuilder.java"


# instance fields
.field private a:Lorg/json/JSONArray;

.field private b:Lorg/json/JSONArray;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->g:Ljava/lang/String;

    .line 6
    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->h:Ljava/lang/Boolean;

    .line 7
    const-string v2, "phoneNumberRequired"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->a:Lorg/json/JSONArray;

    .line 2
    const-string v2, "allowedAuthMethods"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->b:Lorg/json/JSONArray;

    .line 3
    const-string v2, "allowedCardNetworks"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->c:Ljava/lang/Boolean;

    .line 4
    const-string v2, "allowPrepaidCards"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->d:Ljava/lang/Boolean;

    .line 5
    const-string v2, "allowCreditCards"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->e:Ljava/lang/Boolean;

    .line 6
    const-string v2, "assuranceDetailsRequired"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->f:Ljava/lang/Boolean;

    .line 7
    const-string v2, "billingAddressRequired"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "billingAddressParameters"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private c()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string/jumbo v1, "type"

    const-string v2, "PAYMENT_GATEWAY"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v2, "gateway"

    const-string v3, "aciworldwide"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->i:Ljava/lang/String;

    .line 5
    const-string v3, "gatewayMerchantId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 6
    const-string v2, "parameters"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setAllowCreditCards(Z)Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAllowPrepaidCards(Z)Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAllowedAuthMethods(Lorg/json/JSONArray;)Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->a:Lorg/json/JSONArray;

    return-object p0
.end method

.method public setAllowedCardNetworks(Lorg/json/JSONArray;)Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->b:Lorg/json/JSONArray;

    return-object p0
.end method

.method public setAssuranceDetailsRequired(Z)Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setBillingAddressParameters(Ljava/lang/String;Z)Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->g:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setBillingAddressRequired(Z)Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGatewayMerchantId(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->i:Ljava/lang/String;

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
    const-string/jumbo v1, "type"

    const-string v2, "CARD"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "parameters"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/utils/googlepay/CardPaymentMethodJsonBuilder;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "tokenizationSpecification"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

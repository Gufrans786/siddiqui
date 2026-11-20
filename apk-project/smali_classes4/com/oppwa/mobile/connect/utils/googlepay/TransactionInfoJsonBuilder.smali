.class public Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;
.super Ljava/lang/Object;
.source "TransactionInfoJsonBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCheckoutOption(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setTotalPrice(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setTotalPriceLabel(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setTotalPriceStatus(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->c:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->a:Ljava/lang/String;

    .line 2
    const-string v2, "currencyCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->b:Ljava/lang/String;

    .line 3
    const-string v2, "countryCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->c:Ljava/lang/String;

    .line 4
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->d:Ljava/lang/String;

    .line 5
    const-string/jumbo v2, "totalPriceStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->e:Ljava/lang/String;

    .line 6
    const-string/jumbo v2, "totalPrice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->f:Ljava/lang/String;

    .line 7
    const-string/jumbo v2, "totalPriceLabel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/TransactionInfoJsonBuilder;->g:Ljava/lang/String;

    .line 8
    const-string v2, "checkoutOption"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

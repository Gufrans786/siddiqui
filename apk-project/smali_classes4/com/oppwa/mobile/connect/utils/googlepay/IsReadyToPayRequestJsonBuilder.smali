.class public Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;
.super Ljava/lang/Object;
.source "IsReadyToPayRequestJsonBuilder.java"


# instance fields
.field private a:Lorg/json/JSONArray;

.field private b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAllowedPaymentMethods(Lorg/json/JSONArray;)Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;->a:Lorg/json/JSONArray;

    return-object p0
.end method

.method public setExistingPaymentMethodRequired(Z)Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;->b:Ljava/lang/Boolean;

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

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;->a:Lorg/json/JSONArray;

    .line 4
    const-string v2, "allowedPaymentMethods"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/googlepay/IsReadyToPayRequestJsonBuilder;->b:Ljava/lang/Boolean;

    .line 5
    const-string v2, "existingPaymentMethodRequired"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

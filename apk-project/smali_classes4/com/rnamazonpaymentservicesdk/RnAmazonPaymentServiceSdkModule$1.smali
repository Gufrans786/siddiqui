.class Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule$1;
.super Ljava/lang/Object;
.source "RnAmazonPaymentServiceSdkModule.java"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/callbacks/FortInterfaces$OnTnxProcessed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;->callSdk(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;

.field final synthetic val$onFailure:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$onSuccess:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule$1;->this$0:Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule;

    iput-object p2, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule$1;->val$onFailure:Lcom/facebook/react/bridge/Callback;

    iput-object p3, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule$1;->val$onSuccess:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule$1;->val$onFailure:Lcom/facebook/react/bridge/Callback;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule$1;->val$onFailure:Lcom/facebook/react/bridge/Callback;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/rnamazonpaymentservicesdk/RnAmazonPaymentServiceSdkModule$1;->val$onSuccess:Lcom/facebook/react/bridge/Callback;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment$1;
.super Ljava/lang/Object;
.source "CustomCheckoutFragment.java"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;

.field final synthetic val$btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;


# direct methods
.method constructor <init>(Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment$1;->this$0:Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;

    iput-object p2, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment$1;->val$btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 129
    invoke-static {}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->-$$Nest$sfgetcallbackOnFailure()Lcom/facebook/react/bridge/Callback;

    move-result-object p1

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

    .line 124
    invoke-static {}, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment;->-$$Nest$sfgetcallbackOnSuccess()Lcom/facebook/react/bridge/Callback;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment$1;->val$btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    const-string p2, "Done"

    invoke-virtual {p1, p2}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startLoading()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment$1;->val$btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment$1;->val$btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/rnamazonpaymentservicesdk/CustomCheckoutFragment$1;->val$btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setClickable(Z)V

    return-void
.end method

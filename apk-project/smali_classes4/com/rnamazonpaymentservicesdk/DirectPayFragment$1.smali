.class Lcom/rnamazonpaymentservicesdk/DirectPayFragment$1;
.super Ljava/lang/Object;
.source "DirectPayFragment.java"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnamazonpaymentservicesdk/DirectPayFragment;

.field final synthetic val$btnDirectPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;


# direct methods
.method constructor <init>(Lcom/rnamazonpaymentservicesdk/DirectPayFragment;Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment$1;->this$0:Lcom/rnamazonpaymentservicesdk/DirectPayFragment;

    iput-object p2, p0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment$1;->val$btnDirectPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 109
    const-string p1, "Failure"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->-$$Nest$sfgetcallbackOnFailure()Lcom/facebook/react/bridge/Callback;

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

    .line 103
    const-string p1, "Success"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/rnamazonpaymentservicesdk/DirectPayFragment;->-$$Nest$sfgetcallbackOnSuccess()Lcom/facebook/react/bridge/Callback;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment$1;->val$btnDirectPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    const-string p2, "Done"

    invoke-virtual {p1, p2}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startLoading()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/rnamazonpaymentservicesdk/DirectPayFragment$1;->val$btnDirectPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const-string v0, "Loading"

    const-string v1, "Loading!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

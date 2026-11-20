.class final Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$initListeners$3;
.super Lkotlin/jvm/internal/Lambda;
.source "CreditCardPaymentActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$initListeners$3;->this$0:Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$initListeners$3;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    .line 107
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$initListeners$3;->this$0:Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardExpiry:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->setText$fortpayment_release(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity$initListeners$3;->this$0:Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;->access$getBinding$p(Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    invoke-virtual {p1, v2}, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;->setText$fortpayment_release(Ljava/lang/String;)V

    return-void
.end method

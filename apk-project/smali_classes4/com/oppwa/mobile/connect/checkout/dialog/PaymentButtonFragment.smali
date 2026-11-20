.class public Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;
.super Landroidx/fragment/app/Fragment;
.source "PaymentButtonFragment.java"


# static fields
.field public static final OPP_PAYMENT_BRAND_CARD:Ljava/lang/String; = "CARD"


# instance fields
.field private a:Lcom/oppwa/mobile/connect/checkout/dialog/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static isReadyForGooglePay(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/lang/String;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/GooglePayHelper;->isReadyToPayWithGoogle(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/lang/String;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    return-void
.end method


# virtual methods
.method public getPaymentBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentButton()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->f()Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-direct {p1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    .line 4
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->g()V

    .line 5
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->h()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {p3, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->i()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->j()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->k()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public setPaymentBrand(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setPaymentButtonIntegrationMode(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonIntegrationMode;)V

    return-void
.end method

.method public submitTransaction(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->d(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;)V

    return-void
.end method

.method public submitTransaction(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentButtonFragment;->a:Lcom/oppwa/mobile/connect/checkout/dialog/e;

    invoke-virtual {v0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/e;->a(Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;Landroid/content/ComponentName;)V

    return-void
.end method

.class public abstract Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragmentWithTokenization;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "PaymentInfoFragmentWithTokenization.java"


# instance fields
.field private o:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->e:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/registration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->e:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    .line 2
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/omnitoken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected e()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragmentWithTokenization;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 2
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getStorePaymentDetailsMode()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    move-result-object v0

    sget-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->ALWAYS:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragmentWithTokenization;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/oppwa/mobile/connect/R$id;->store_payment_info_checkbox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragmentWithTokenization;->o:Landroid/widget/CheckBox;

    .line 4
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragmentWithTokenization;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    sget p2, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_register:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    return-void

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getStorePaymentDetailsMode()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    move-result-object p2

    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->PROMPT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->h:Lcom/oppwa/mobile/connect/payment/token/Token;

    if-nez p2, :cond_1

    .line 9
    sget p2, Lcom/oppwa/mobile/connect/R$id;->store_payment_info_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

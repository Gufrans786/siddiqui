.class public Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "ChinaUnionPayPaymentInfoFragment.java"


# instance fields
.field private o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    return-void
.end method

.method private d()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 8
    :cond_0
    :try_start_0
    new-instance v1, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v3}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/oppwa/mobile/connect/payment/chinaunionpay/ChinaUnionPayPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v2
.end method

.method private e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oppwa/mobile/connect/R$integer;->cardHolderMaxLength:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v2, 0x81000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_card_holder:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v2, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_card_holder:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_card_holder:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHelperText(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->d()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    .line 14
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setOptional(Z)V

    return-void
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->d()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_china_union_pay_payment_info:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p2, Lcom/oppwa/mobile/connect/R$id;->holder_text_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 5
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ChinaUnionPayPaymentInfoFragment;->e()V

    return-void
.end method

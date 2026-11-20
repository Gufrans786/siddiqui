.class public Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "GiropayPaymentInfoFragment.java"


# instance fields
.field private o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private final q:Lcom/oppwa/mobile/connect/checkout/dialog/x;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    .line 8
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/x;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "#### #### #### #### #### #### #### ###"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/x;-><init>(Ljava/lang/Character;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->r:I

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)V
    .locals 4

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_bic_bank_code:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 2
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_bic_bank_code:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHelperText(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->c()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    .line 6
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x81000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 8
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 9
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_bic_bank_code:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/c;-><init>(Z)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 15
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->r:I

    if-ne v0, v3, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setGravityForRTLLanguages()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 17
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isBankCodeValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isBicValid(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->isIBANRequired()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 7
    :cond_0
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_iban_account_number:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 8
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_iban_account_number:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHelperText(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(Lcom/oppwa/mobile/connect/checkout/dialog/x;Z)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    .line 13
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v2, 0x81000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 15
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 16
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v2, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_iban_account_number:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/c;-><init>(Z)V

    aput-object v2, v0, v3

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x26

    .line 20
    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 22
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 24
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->r:I

    if-ne v0, v1, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setGravityForRTLLanguages()V

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 27
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isIbanValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->isAccountNumberValid(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return p1
.end method

.method private d()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->e()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v3}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->isIBANRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-virtual {v3, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-direct {p0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    move-object v3, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    move-object v1, v4

    move-object v3, v1

    .line 24
    :goto_0
    invoke-direct {p0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    move-object v2, v4

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 31
    :goto_1
    :try_start_0
    invoke-static {v0, v1, v3, v2, v5}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->createGiroPayPaymentParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;

    move-result-object v0
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v4
.end method

.method private e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->isIBANRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->d()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_giropay_payment_info:I

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    iput p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->r:I

    .line 5
    sget p2, Lcom/oppwa/mobile/connect/R$id;->iban_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 6
    sget p2, Lcom/oppwa/mobile/connect/R$id;->bic_or_bank_code_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 8
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->b(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)V

    .line 9
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/GiropayPaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)V

    return-void
.end method

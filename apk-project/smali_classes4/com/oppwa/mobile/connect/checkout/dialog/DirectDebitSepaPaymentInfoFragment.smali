.class public Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragmentWithTokenization;
.source "DirectDebitSepaPaymentInfoFragment.java"


# instance fields
.field private p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private final r:Lcom/oppwa/mobile/connect/checkout/dialog/x;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragmentWithTokenization;-><init>()V

    .line 8
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/x;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "#### #### #### #### #### #### #### ###"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/x;-><init>(Ljava/lang/Character;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->s:I

    return-void
.end method

.method private f()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->l()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 10
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    .line 13
    invoke-virtual {v3, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragmentWithTokenization;->e()Z

    move-result v3

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->createDirectDebitSepaPaymentParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;

    move-result-object v0
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v4
.end method

.method private g()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->h:Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getTokenId()Ljava/lang/String;

    move-result-object v1

    .line 5
    :try_start_0
    new-instance v2, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/oppwa/mobile/connect/payment/token/TokenPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private h()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oppwa/mobile/connect/R$integer;->accountHolderMaxLength:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x81000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_direct_debit_sepa_account_holder:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_direct_debit_sepa_account_holder:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->b()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v2}, Landroid/text/InputFilter$AllCaps;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/c;

    invoke-direct {v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/c;-><init>(Z)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x26

    .line 4
    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x80090

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 12
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_direct_debit_sepa_iban:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_direct_debit_sepa_iban:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_iban:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHelperText(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 17
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-static {v1, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(Lcom/oppwa/mobile/connect/checkout/dialog/x;Z)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    .line 20
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->s:I

    if-ne v0, v4, :cond_0

    .line 21
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setGravityForRTLLanguages()V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->h:Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getBankAccount()Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->getHolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setNotEditableText(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_direct_debit_sepa_account_holder:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->h:Lcom/oppwa/mobile/connect/payment/token/Token;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getBankAccount()Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->getIban()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setNotEditableText(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_direct_debit_sepa_iban:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    return-void
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->h:Lcom/oppwa/mobile/connect/payment/token/Token;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->f()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->g()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_direct_debit_sepa_payment_info:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragmentWithTokenization;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    iput p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->s:I

    .line 5
    sget p2, Lcom/oppwa/mobile/connect/R$id;->holder_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 6
    sget p2, Lcom/oppwa/mobile/connect/R$id;->iban_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 8
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->h:Lcom/oppwa/mobile/connect/payment/token/Token;

    if-nez p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->h()V

    .line 10
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->i()V

    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->j()V

    .line 13
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/DirectDebitSepaPaymentInfoFragment;->k()V

    return-void
.end method

.class public Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "IkanoPrivateLabelVAPaymentInfoFragment.java"


# instance fields
.field private o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

.field private p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

.field private q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->r:I

    return-void
.end method

.method private d()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 8

    .line 10
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 15
    :cond_0
    :try_start_0
    new-instance v2, Lcom/oppwa/mobile/connect/payment/card/IkanoPrivateLabelVAPaymentParams;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 16
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    .line 18
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;->getMonth()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    .line 19
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;->getYear()Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->f()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/oppwa/mobile/connect/payment/card/IkanoPrivateLabelVAPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->r:I

    .line 3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->number_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    .line 4
    sget v0, Lcom/oppwa/mobile/connect/R$id;->expiry_date_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    .line 5
    sget v0, Lcom/oppwa/mobile/connect/R$id;->verification_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 7
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->g()V

    .line 8
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->h()V

    .line 9
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->i()V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/StringBuilder;)V

    .line 3
    const-string v1, " "

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/utils/StringUtils;->removeSubstring(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_account_number:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_account_number:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHelperText(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_account_number:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6
    new-instance v0, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->getValidation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;

    sget v3, Lcom/oppwa/mobile/connect/R$string;->checkout_error_account_number_invalid:I

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/s$m;-><init>(Ljava/util/regex/Pattern;ZI)V

    .line 11
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    const-string v3, "IK_PRIVATE_LABEL_VA"

    invoke-virtual {v1, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->setCardBrand(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/CardBrandInfo;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->setNumberPatternAndValidator(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/s$m;)V

    .line 14
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setGravityForRTLLanguages()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_card_expiration_date:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_card_expiration_date:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_expiration_date:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHelperText(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_error_account_expiration_date_invalid:I

    sget v2, Lcom/oppwa/mobile/connect/R$string;->checkout_error_account_expired:I

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/s$n;-><init>(II)V

    .line 9
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    invoke-virtual {v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/s$n;)V

    .line 11
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setGravityForRTLLanguages()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getSkipCVVMode()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    move-result-object v0

    sget-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;->ALWAYS:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSkipCVVMode;

    const/4 v2, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x80002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_account_verification:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_account_verification:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHelperText(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_account_verification:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oppwa/mobile/connect/R$integer;->accountVerificationMaxLength:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 19
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->r:I

    if-ne v0, v1, :cond_1

    .line 20
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setGravityForRTLLanguages()V

    :cond_1
    return-void
.end method

.method private j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->validate()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;

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
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->d()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_ikano_private_label_va_payment_info:I

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
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoPrivateLabelVAPaymentInfoFragment;->d(Landroid/view/View;)V

    return-void
.end method

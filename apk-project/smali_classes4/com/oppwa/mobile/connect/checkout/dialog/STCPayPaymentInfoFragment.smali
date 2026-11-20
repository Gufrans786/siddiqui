.class public Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "STCPayPaymentInfoFragment.java"


# instance fields
.field private o:Landroid/widget/RadioGroup;

.field private p:Landroid/widget/RadioButton;

.field private q:Landroid/widget/RadioButton;

.field private r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:I


# direct methods
.method public static synthetic $r8$lambda$UgXxvJGoWtVwdFhW164lXiGhfsQ(Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->a(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->t:I

    return-void
.end method

.method private synthetic a(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->p:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->clearError()V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_phone_number:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->g()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    .line 6
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setGravityForRTLLanguages()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->o:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->t:I

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->isSTCPayQrCodeRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->s:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->e()V

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->d()V

    return-void
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->p:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;->MOBILE_PHONE:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;-><init>(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;)V

    .line 4
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;->setMobilePhoneNumber(Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->q:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;->QR_CODE:Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/payment/stcpay/STCPayPaymentParams;-><init>(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/stcpay/STCPayVerificationOption;)V
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_1
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_stcpay_payment_info:I

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
    sget p2, Lcom/oppwa/mobile/connect/R$id;->form_type_radio_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->o:Landroid/widget/RadioGroup;

    .line 4
    sget p2, Lcom/oppwa/mobile/connect/R$id;->mobile_phone_radio_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->p:Landroid/widget/RadioButton;

    .line 5
    sget p2, Lcom/oppwa/mobile/connect/R$id;->mobile_phone_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 6
    sget p2, Lcom/oppwa/mobile/connect/R$id;->qrcode_radio_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->q:Landroid/widget/RadioButton;

    .line 7
    sget p2, Lcom/oppwa/mobile/connect/R$id;->form_type_method_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->s:Landroid/widget/RelativeLayout;

    .line 9
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/STCPayPaymentInfoFragment;->f()V

    return-void
.end method

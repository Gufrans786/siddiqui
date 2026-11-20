.class public Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "MBWayPaymentInfoFragment.java"


# instance fields
.field private o:Landroid/widget/RadioGroup;

.field private p:Landroid/widget/RadioButton;

.field private q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;


# direct methods
.method public static synthetic $r8$lambda$YilTL3eML8l5myLkeQoeLZuUV_c(Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->a(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->p:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->h()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->i()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x80020

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->f()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_email:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_country_code:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const-string v1, "Portugal 351"

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setNotEditableText(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_phone_number:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->g()Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->o:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private g()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->d()V

    .line 2
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->e()V

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->f()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->clearError()V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->clearError()V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->p:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 3
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 4
    invoke-virtual {v3}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->p:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 7
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "351"

    iget-object v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 9
    invoke-virtual {v4}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/oppwa/mobile/connect/payment/mbway/MBWayPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_mbway_payment_info:I

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

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->o:Landroid/widget/RadioGroup;

    .line 4
    sget p2, Lcom/oppwa/mobile/connect/R$id;->email_radio_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->p:Landroid/widget/RadioButton;

    .line 6
    sget p2, Lcom/oppwa/mobile/connect/R$id;->email_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->q:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 7
    sget p2, Lcom/oppwa/mobile/connect/R$id;->country_code_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->r:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 8
    sget p2, Lcom/oppwa/mobile/connect/R$id;->mobile_phone_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->s:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 10
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/MBWayPaymentInfoFragment;->g()V

    return-void
.end method

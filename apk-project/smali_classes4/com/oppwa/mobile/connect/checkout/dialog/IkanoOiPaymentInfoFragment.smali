.class public Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "IkanoOiPaymentInfoFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$bQnJZ44o13pFE-QYKloqyV-UpiM(Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->f()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://terms.iklabs.se/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/ikea/openinvoice/toc.pdf"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 12
    :cond_0
    :try_start_0
    new-instance v0, Lcom/oppwa/mobile/connect/payment/ikanooi/IkanoOiPaymentParams;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 13
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 15
    invoke-virtual {v4}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/oppwa/mobile/connect/payment/ikanooi/IkanoOiPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->q:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->agreement_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_terms_and_conditions_agreement:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->p:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_hint_national_identifier:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_helper_national_identifier:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHelperText(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    .line 17
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->national_id_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 2
    sget v0, Lcom/oppwa/mobile/connect/R$id;->agreement_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->p:Landroid/widget/CheckBox;

    .line 3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->agreement_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->q:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->e()V

    .line 8
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->d(Landroid/view/View;)V

    return-void
.end method

.method private synthetic f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_terms_and_conditions:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "IKANOOI_SE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "IKANOOI_NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "IKANOOI_FI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 16
    :goto_0
    const-string/jumbo v1, "sv"

    packed-switch v3, :pswitch_data_0

    const-string v0, ""

    return-object v0

    .line 17
    :pswitch_0
    const-string v2, "se"

    invoke-direct {p0, v2, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_1
    const-string v1, "no"

    invoke-direct {p0, v1, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_2
    sget v2, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_finnish:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    const-string v3, "fi"

    invoke-direct {p0, v3, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-static {v2, v4}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    sget v4, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_swedish:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-direct {p0, v3, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v4, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x229aefe8 -> :sswitch_2
        0x229af0e6 -> :sswitch_1
        0x229af177 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->d()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$anim;->opp_show_button:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/oppwa/mobile/connect/R$anim;->opp_hide_button:I

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$integer;->button_anim_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_ikano_payment_info:I

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
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/IkanoOiPaymentInfoFragment;->e(Landroid/view/View;)V

    return-void
.end method

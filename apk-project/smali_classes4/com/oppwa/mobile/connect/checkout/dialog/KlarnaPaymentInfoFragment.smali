.class public Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "KlarnaPaymentInfoFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private o:[Ljava/lang/String;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sM2i1XcOsqwjjSsYdi9DIGoYM9k(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->e()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/checkout/dialog/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/v;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    const-string/jumbo v0, "{EID}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/widget/CheckBox;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->p:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->p:Ljava/util/List;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/v;Landroid/view/ViewGroup;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2
    sget v1, Lcom/oppwa/mobile/connect/R$layout;->opp_layout_terms_agreement:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/oppwa/mobile/connect/R$id;->agreement_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    sget v3, Lcom/oppwa/mobile/connect/R$id;->agreement_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5
    sget v4, Lcom/oppwa/mobile/connect/R$id;->agreement_checkbox:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 8
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/dialog/v;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->b(Lcom/oppwa/mobile/connect/checkout/dialog/v;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v6, v7}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/dialog/v;->c()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x8

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getKlarnaCountry()Ljava/lang/String;

    move-result-object v1

    const-string v6, "NL"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    sget p1, Lcom/oppwa/mobile/connect/R$id;->agreement_image:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    sget p2, Lcom/oppwa/mobile/connect/R$drawable;->klarna_credit_warning:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 22
    invoke-direct {p0, p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/v;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v1, v3, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 27
    invoke-direct {p0, v4}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->a(Landroid/widget/CheckBox;)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 34
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b(Lcom/oppwa/mobile/connect/checkout/dialog/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/v;->a()Ljava/lang/String;

    move-result-object p1

    .line 4
    const-string/jumbo v0, "{EID}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "?fee="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    const-string v0, "KLARNA_INVOICE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getKlarnaInvoiceFee()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getKlarnaInstallmentsFee()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    const-string v1, "KLARNA_INVOICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/oppwa/mobile/connect/R$raw;->klarna_invoice_settings:I

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/oppwa/mobile/connect/R$raw;->klarna_installments_settings:I

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/l;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/oppwa/mobile/connect/payment/PaymentParams;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->p:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 6
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/oppwa/mobile/connect/R$anim;->opp_hide_button:I

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$integer;->button_anim_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 21
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/oppwa/mobile/connect/R$anim;->opp_show_button:I

    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 22
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->e:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getKlarnaMerchantIds()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->o:[Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_klarna_payment_info:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->o:[Ljava/lang/String;

    if-eqz p2, :cond_3

    array-length p2, p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->d()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 9
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getKlarnaCountry()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p2, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/v;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->klarna_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/dialog/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->o:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 23
    sget v4, Lcom/oppwa/mobile/connect/R$id;->payment_info:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p2, v4}, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/v;Landroid/view/ViewGroup;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/KlarnaPaymentInfoFragment;->p:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

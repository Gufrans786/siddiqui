.class public Lcom/oppwa/mobile/connect/checkout/dialog/SofortPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;
.source "SofortPaymentInfoFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;-><init>()V

    return-void
.end method

.method private j()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 2
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->e()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->createSofortPaymentParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;

    move-result-object v0
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/SofortPaymentInfoFragment;->j()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    return-object v0
.end method

.method protected d()[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;
    .locals 4

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->germany:I

    .line 3
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DE"

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->netherlands:I

    .line 7
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NL"

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->austria:I

    .line 11
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AT"

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->belgium:I

    .line 15
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BE"

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->switzerland:I

    .line 19
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CH"

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->united_kingdom:I

    .line 23
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GB"

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->spain:I

    .line 27
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ES"

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->italy:I

    .line 31
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IT"

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    sget v2, Lcom/oppwa/mobile/connect/R$string;->poland:I

    .line 35
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PL"

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_select_country:I

    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->b(I)V

    .line 4
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->h()V

    .line 5
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->i()V

    return-void
.end method

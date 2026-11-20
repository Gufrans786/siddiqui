.class public Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;
.source "IdealPaymentInfoFragment.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/provider/IdealBanksListener;


# instance fields
.field private s:[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

.field private t:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;


# direct methods
.method public static synthetic $r8$lambda$L9y5u7wiZ7E-ipZYOdxXS8uOqXQ(Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;->k()V

    return-void
.end method

.method public static synthetic $r8$lambda$VrF4d0BBLOOOup8A0WyUyYESnUo(Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;->a(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;->s:[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    return-void
.end method

.method private synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;->b(Ljava/util/Map;)[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;->s:[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->h()V

    .line 3
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->i()V

    return-void
.end method

.method private b(Ljava/util/Map;)[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/oppwa/mobile/connect/checkout/dialog/w$b;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    new-instance v3, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
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
    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->createIdealPaymentParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;

    move-result-object v0
    :try_end_0
    .catch Lcom/oppwa/mobile/connect/exception/PaymentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic k()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->i()V

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->g()V

    return-void
.end method


# virtual methods
.method protected b()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;->j()Lcom/oppwa/mobile/connect/payment/PaymentParams;

    move-result-object v0

    return-object v0
.end method

.method protected d()[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;->s:[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    return-object v0
.end method

.method public idealBanksRequestFailed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public idealBanksRequestSucceeded(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_select_bank:I

    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->b(I)V

    .line 4
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->f()V

    .line 5
    new-instance p1, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;-><init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;->t:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    .line 6
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getProviderDomain()Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->setProviderDomain(Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V

    .line 7
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/IdealPaymentInfoFragment;->t:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->d:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCheckoutId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->requestIdealBanks(Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IdealBanksListener;)V

    return-void
.end method

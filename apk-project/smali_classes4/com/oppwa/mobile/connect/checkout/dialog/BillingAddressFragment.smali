.class public Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;
.source "BillingAddressFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

.field private f:Landroidx/appcompat/widget/AppCompatSpinner;

.field private g:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

.field private h:Landroidx/appcompat/widget/AppCompatSpinner;

.field private i:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

.field private j:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private l:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private m:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private n:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

.field private p:Landroidx/activity/OnBackPressedCallback;

.field private q:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VmDKoCWm77FwIbsSr1gJjkBvFHo(Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_billing_address:I

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;-><init>(I)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->d:Ljava/util/Set;

    return-void
.end method

.method private a(Landroid/widget/ArrayAdapter;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private a(Ljava/util/List;IZ)Landroid/widget/ArrayAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_0
    sget p3, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_optional:I

    .line 9
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 11
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v5, p2

    .line 15
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$b;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/oppwa/mobile/connect/R$layout;->opp_item_countries_states:I

    move-object v6, p1

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$b;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h()V

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h()V

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;Ljava/lang/String;ZII)V
    .locals 0

    .line 17
    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    if-nez p3, :cond_0

    .line 20
    sget p3, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_optional:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const/4 p3, 0x1

    .line 21
    invoke-virtual {p1, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setOptional(Z)V

    .line 24
    :cond_0
    invoke-virtual {p1, p4}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setHint(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setText(Ljava/lang/String;)V

    .line 27
    invoke-static {p5}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->b(I)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    .line 31
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->d:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->j:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    .line 40
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_state_spinner_hint:I

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 43
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStateRequired()Z

    move-result v1

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Ljava/util/List;IZ)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->j:Landroid/widget/ArrayAdapter;

    .line 49
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 52
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->j:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 53
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->j:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 56
    :goto_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->j:Landroid/widget/ArrayAdapter;

    .line 57
    invoke-direct {p0, v0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Landroid/widget/ArrayAdapter;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    .line 66
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k()V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "US"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->c()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 29
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    const-string v0, "CA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->a()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b()V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x81000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 12
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 14
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 16
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->m:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 17
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->m:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 19
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->n:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 21
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->n:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 23
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 25
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->city_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 5
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 6
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isCityRequired()Z

    move-result v3

    sget v4, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_city_hint:I

    sget v5, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_city_required_error:I

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;Ljava/lang/String;ZII)V

    return-void
.end method

.method private c()Landroid/os/Bundle;
    .locals 8

    .line 40
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->m:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v3}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->n:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v4}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v4

    .line 45
    iget-object v5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v5

    .line 47
    new-instance v6, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    invoke-direct {v6}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;-><init>()V

    .line 48
    invoke-virtual {v6, v0}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setCountry(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v1, v7

    :cond_0
    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setState(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, v7

    :cond_1
    invoke-virtual {v0, v2}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setCity(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v3, v7

    :cond_2
    invoke-virtual {v0, v3}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setPostCode(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    .line 52
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v4, v7

    :cond_3
    invoke-virtual {v0, v4}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setStreet1(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    .line 53
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v5, v7

    :cond_4
    invoke-virtual {v0, v5}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setStreet2(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 54
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isCountryRequired()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setCountryRequired(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 55
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStateRequired()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setStateRequired(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 56
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isCityRequired()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setCityRequired(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 57
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isPostCodeRequired()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setPostCodeRequired(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 58
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStreet1Required()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setStreet1Required(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 59
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStreet2Required()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->setStreet2Required(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->build()Lcom/oppwa/mobile/connect/payment/BillingAddress;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v2, "BILLING_ADDRESS_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v1
.end method

.method private c(Landroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->country_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->f:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 2
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->b()Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    const-string v1, "NOT_SELECTED"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 11
    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_country_spinner_hint:I

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 14
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isCountryRequired()Z

    move-result v2

    .line 15
    invoke-direct {p0, v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Ljava/util/List;IZ)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->f:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 22
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->f:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 26
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->b()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 27
    invoke-virtual {v3}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    invoke-direct {p0, v0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Landroid/widget/ArrayAdapter;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    .line 39
    sget v0, Lcom/oppwa/mobile/connect/R$id;->country_spinner_helper_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->g:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    return-void
.end method

.method private d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->r:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->r:Ljava/util/LinkedList;

    .line 10
    const-string v1, "NOT_SELECTED"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->r:Ljava/util/LinkedList;

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 6

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->post_code_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->m:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 5
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getPostCode()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 6
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isPostCodeRequired()Z

    move-result v3

    sget v4, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_post_code_hint:I

    sget v5, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_post_code_required_error:I

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;Ljava/lang/String;ZII)V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .line 17
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->f:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 18
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/view/View;)V
    .locals 7

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->state_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 4
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getState()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 5
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStateRequired()Z

    move-result v4

    sget v5, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_state_hint:I

    sget v6, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_state_required_error:I

    move-object v1, p0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;Ljava/lang/String;ZII)V

    .line 14
    sget v0, Lcom/oppwa/mobile/connect/R$id;->state_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object v0, v1, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 15
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 16
    sget v0, Lcom/oppwa/mobile/connect/R$id;->state_spinner_helper_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    iput-object p1, v1, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->i:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    return-void
.end method

.method private f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->q:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->q:Ljava/util/LinkedList;

    .line 10
    const-string v1, "NOT_SELECTED"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->q:Ljava/util/LinkedList;

    return-object v0
.end method

.method private f(Landroid/view/View;)V
    .locals 6

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->street1_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->n:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 5
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getStreet1()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 6
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStreet1Required()Z

    move-result v3

    sget v4, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_street1_hint:I

    sget v5, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_street_required_error:I

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;Ljava/lang/String;ZII)V

    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 6

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->street2_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    iput-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->o:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 5
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getStreet2()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 6
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStreet2Required()Z

    move-result v3

    sget v4, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_street2_hint:I

    sget v5, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_street_required_error:I

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;Ljava/lang/String;ZII)V

    return-void
.end method

.method private g()Z
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isCountryRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->f:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->g:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 15
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->isStateRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 16
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 17
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->i:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    move v0, v1

    .line 22
    :cond_1
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 23
    invoke-virtual {v3}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_3
    return v0
.end method

.method private h()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->p:Landroidx/activity/OnBackPressedCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->g:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 4
    const-string v1, "CA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    .line 14
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->f()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/dialog/m;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    .line 22
    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->i:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->i:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->clearError()V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->i:Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$a;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;Z)V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->p:Landroidx/activity/OnBackPressedCallback;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->p:Landroidx/activity/OnBackPressedCallback;

    .line 12
    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->p:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->f:Landroidx/appcompat/widget/AppCompatSpinner;

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->i()V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    if-ne p1, p2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->j()V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "BILLING_ADDRESS_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/payment/BillingAddress;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e:Lcom/oppwa/mobile/connect/payment/BillingAddress;

    .line 5
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a:Landroid/widget/TextView;

    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_billing_address_title:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->b:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->b:Landroid/widget/ImageButton;

    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->c(Landroid/view/View;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->e(Landroid/view/View;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->b(Landroid/view/View;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->d(Landroid/view/View;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->f(Landroid/view/View;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->g(Landroid/view/View;)V

    .line 17
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->b()V

    return-void
.end method

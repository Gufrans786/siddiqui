.class public Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;
.source "PaymentMethodSelectionFragment.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;


# instance fields
.field private d:[Lcom/oppwa/mobile/connect/payment/token/Token;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

.field private i:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

.field private j:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

.field private k:Lcom/oppwa/mobile/connect/checkout/dialog/y;

.field private l:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;

.field private m:Lcom/oppwa/mobile/connect/checkout/dialog/c0;


# direct methods
.method public static synthetic $r8$lambda$B-FmCcqZgo4NvD6OKTtoQawe_gY(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;Landroid/view/View;Lcom/oppwa/mobile/connect/checkout/dialog/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->a(Landroid/view/View;Lcom/oppwa/mobile/connect/checkout/dialog/j;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O4f_2mx3HUIJeRn5DVrZCb_OVYc(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;Lcom/oppwa/mobile/connect/payment/token/Token;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->a(Lcom/oppwa/mobile/connect/payment/token/Token;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kZHAzg5WLqK5j8LNW9D8xSayWEw(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zVvr2n65F8Hpa3eikSfR6PPJVCk(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Lcom/oppwa/mobile/connect/checkout/dialog/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->b(Landroid/view/View;Lcom/oppwa/mobile/connect/checkout/dialog/j;)V

    return-void
.end method

.method private a(Landroid/view/View;[Ljava/lang/String;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->d:[Lcom/oppwa/mobile/connect/payment/token/Token;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->f:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    .line 7
    :cond_2
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_brand_section_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_brands_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v3, Lcom/oppwa/mobile/connect/checkout/dialog/y;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->j:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    .line 16
    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/payment/BrandsValidation;->getLabels()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v4, p2, v5}, Lcom/oppwa/mobile/connect/checkout/dialog/y;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/y;

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 20
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 21
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/y;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/y;

    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;)V

    invoke-virtual {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/y;->a(Lcom/oppwa/mobile/connect/checkout/dialog/y$a;)V

    return-void
.end method

.method protected static a(Lcom/oppwa/mobile/connect/checkout/dialog/j;II)V
    .locals 1

    if-le p1, p2, :cond_1

    sub-int p2, p1, p2

    sub-int p2, p1, p2

    .line 27
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->d()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->d()I

    move-result p2

    .line 30
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(II)V

    return-void

    :cond_1
    if-ge p1, p2, :cond_2

    .line 32
    invoke-virtual {p0, p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->a(II)V

    :cond_2
    return-void
.end method

.method private synthetic a(Lcom/oppwa/mobile/connect/payment/token/Token;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V
    .locals 2

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v1, "PAYMENT_METHOD_RESULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string p1, "TOKEN_RESULT_KEY"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 38
    const-class p2, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/view/View;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method private b()V
    .locals 8

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->e:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 6
    iget-object v7, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->j:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    invoke-virtual {v7, v6}, Lcom/oppwa/mobile/connect/payment/BrandsValidation;->isCardBrand(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->f:[Ljava/lang/String;

    .line 14
    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->g:[Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/view/View;Lcom/oppwa/mobile/connect/checkout/dialog/j;)V
    .locals 2

    .line 15
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/dialog/j;->c()I

    move-result v0

    .line 16
    sget v1, Lcom/oppwa/mobile/connect/R$id;->payment_method_selection_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->b(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_0

    .line 19
    invoke-static {p2, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/j;II)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/payment/token/Token;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_cards_brand_section_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_cards_brands_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->f:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 13
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 14
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 15
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;

    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;)V

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->setListener(Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$b;)V

    return-void
.end method

.method private c()Z
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->i:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->getCardBrandsDisplayMode()Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    move-result-object v0

    sget-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;->GROUPED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutCardBrandsDisplayMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->f:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->c(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->g:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->e(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->g:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->a(Landroid/view/View;[Ljava/lang/String;)V

    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->e:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->a(Landroid/view/View;[Ljava/lang/String;)V

    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->d:[Lcom/oppwa/mobile/connect/payment/token/Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_tokens_section_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_tokens_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v2, Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->d:[Lcom/oppwa/mobile/connect/payment/token/Token;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Landroid/app/Activity;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;-><init>(Landroid/content/Context;[Lcom/oppwa/mobile/connect/payment/token/Token;I)V

    iput-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->m:Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 20
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->m:Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->m:Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment$$ExternalSyntheticLambda3;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;)V

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Lcom/oppwa/mobile/connect/checkout/dialog/c0$b;)V

    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->total_amount_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    sget v0, Lcom/oppwa/mobile/connect/R$id;->total_amount_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    sget v1, Lcom/oppwa/mobile/connect/R$id;->total_amount_value:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 7
    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_total_amount:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->h:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getAmount()D

    move-result-wide v0

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->h:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    .line 9
    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static newInstance(Lcom/oppwa/mobile/connect/checkout/dialog/a0;Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;Lcom/oppwa/mobile/connect/payment/CheckoutInfo;Lcom/oppwa/mobile/connect/payment/BrandsValidation;)Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_PAYMENT_METHODS"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    const-string p0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_SETTINGS"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    const-string p0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_INFO"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    const-string p0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_BRANDS_VALIDATION"

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    new-instance p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->i:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    .line 7
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_INFO"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->h:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    .line 8
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_BRANDS_VALIDATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->j:Lcom/oppwa/mobile/connect/payment/BrandsValidation;

    .line 10
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_PAYMENT_METHODS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/a0;

    .line 11
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->d()[Lcom/oppwa/mobile/connect/payment/token/Token;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->d:[Lcom/oppwa/mobile/connect/payment/token/Token;

    .line 12
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a0;->c()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->e:[Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->b()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_payment_method_selection:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onImageLoaded(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->m:Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->d:[Lcom/oppwa/mobile/connect/payment/token/Token;

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 4
    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    iget-object v5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->m:Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/y;

    if-eqz v0, :cond_4

    .line 14
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->g:[Ljava/lang/String;

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->e:[Ljava/lang/String;

    .line 20
    :goto_1
    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v5, v0, v3

    .line 21
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 22
    iget-object v5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->k:Lcom/oppwa/mobile/connect/checkout/dialog/y;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->f:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_3
    if-ge v3, v2, :cond_7

    aget-object v5, v0, v3

    .line 30
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 31
    iget-object v5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;

    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->a()Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 32
    iget-object v5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;

    invoke-virtual {v5}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->a()Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 34
    :cond_5
    iget-object v5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->l:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->b(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader$Listener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a:Landroid/widget/TextView;

    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_select_payment_method:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->d:[Lcom/oppwa/mobile/connect/payment/token/Token;

    if-eqz p2, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->g(Landroid/view/View;)V

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->e:[Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->d(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->f(Landroid/view/View;)V

    .line 17
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->i:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutSettings;->isTotalAmountRequired()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->h:Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    if-eqz p2, :cond_3

    .line 18
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;->h(Landroid/view/View;)V

    .line 21
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 23
    instance-of p2, p2, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;

    if-eqz p2, :cond_4

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutActivity;->u()Lcom/oppwa/mobile/connect/checkout/dialog/j;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 27
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment$$ExternalSyntheticLambda2;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/PaymentMethodSelectionFragment;Landroid/view/View;Lcom/oppwa/mobile/connect/checkout/dialog/j;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

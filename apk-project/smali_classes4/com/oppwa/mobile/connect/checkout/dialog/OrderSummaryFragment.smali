.class public Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;
.source "OrderSummaryFragment.java"


# instance fields
.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

.field private f:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$R6rNlSx1DHFnqqaaO-f62ww6ML8(Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->f(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/oppwa/mobile/connect/R$layout;->opp_item_order_details:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2
    sget v1, Lcom/oppwa/mobile/connect/R$id;->order_item_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    sget v2, Lcom/oppwa/mobile/connect/R$id;->order_item_amount:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->total_amount_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->e:Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->getOrderTotal()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->e:Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->getOrderItems()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget v0, Lcom/oppwa/mobile/connect/R$id;->total_amount_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 8
    :cond_0
    sget v1, Lcom/oppwa/mobile/connect/R$id;->order_details_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-direct {p0, v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 16
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->card_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->e:Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->getPaymentDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->e:Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->getPaymentBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    sget v1, Lcom/oppwa/mobile/connect/R$id;->brand_logo:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 2
    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_pay:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 4
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->e:Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->getShippingInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/oppwa/mobile/connect/R$id;->shipping_address_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    sget v0, Lcom/oppwa/mobile/connect/R$id;->shipping_address:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->e:Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;->getShippingInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 2
    const-class v0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static newInstance(Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_ORDER_SUMMARY"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    const-string p0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CURRENCY"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;-><init>()V

    .line 6
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
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_ORDER_SUMMARY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->e:Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummary;

    .line 7
    const-string v0, "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CURRENCY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->d:Landroid/view/LayoutInflater;

    .line 2
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_order_summary:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a:Landroid/widget/TextView;

    sget v0, Lcom/oppwa/mobile/connect/R$string;->checkout_order_review:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->c(Landroid/view/View;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->e(Landroid/view/View;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->b(Landroid/view/View;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/OrderSummaryFragment;->d(Landroid/view/View;)V

    return-void
.end method

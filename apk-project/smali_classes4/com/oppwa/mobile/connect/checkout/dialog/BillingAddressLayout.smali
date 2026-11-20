.class public Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressLayout;
.super Landroid/widget/RelativeLayout;
.source "BillingAddressLayout.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    .line 8
    sget p2, Lcom/oppwa/mobile/connect/R$layout;->opp_layout_billing_address:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressLayout;->a()V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->billing_address_text_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressLayout;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public changeStyleOfBillingAddress(I)V
    .locals 1

    .line 1
    filled-new-array {p1}, [I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressLayout;->a:Landroid/widget/TextView;

    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public showBillingAddress(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

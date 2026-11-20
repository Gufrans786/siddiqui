.class public abstract Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;
.source "ListPaymentInfoFragment.java"


# instance fields
.field protected o:Landroid/widget/ListView;

.field protected p:Lcom/oppwa/mobile/connect/checkout/dialog/w;

.field protected q:Landroid/widget/RelativeLayout;

.field protected r:Landroid/widget/RelativeLayout;


# direct methods
.method public static synthetic $r8$lambda$BEem6krAyF6Ct1DtBbGPgZUsIx0(Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/w;

    invoke-virtual {p1, p3}, Lcom/oppwa/mobile/connect/checkout/dialog/w;->a(I)V

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/w;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected abstract d()[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/w;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/w;->a()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->o:Landroid/widget/ListView;

    .line 3
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    .line 5
    iget-object v0, v0, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->r:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/PaymentInfoFragment;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected h()V
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->d()[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/w;-><init>(Landroid/content/Context;[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/w;

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->o:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->p:Lcom/oppwa/mobile/connect/checkout/dialog/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/w;->a(I)V

    return-void
.end method

.method protected i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->r:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->q:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_fragment_list_payment_info:I

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
    sget p2, Lcom/oppwa/mobile/connect/R$id;->list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->o:Landroid/widget/ListView;

    .line 5
    sget p2, Lcom/oppwa/mobile/connect/R$id;->list_payment_info_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->q:Landroid/widget/RelativeLayout;

    .line 6
    sget p2, Lcom/oppwa/mobile/connect/R$id;->progress_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/ListPaymentInfoFragment;->r:Landroid/widget/RelativeLayout;

    return-void
.end method

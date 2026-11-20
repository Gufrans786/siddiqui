.class Lcom/oppwa/mobile/connect/checkout/dialog/w;
.super Landroid/widget/BaseAdapter;
.source "ListPaymentInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/w$c;,
        Lcom/oppwa/mobile/connect/checkout/dialog/w$b;
    }
.end annotation


# instance fields
.field private final a:[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

.field private final b:Landroid/view/LayoutInflater;

.field private c:I


# direct methods
.method constructor <init>(Landroid/content/Context;[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/w;->a:[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    .line 4
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/w;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/w;->c:I

    return v0
.end method

.method a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/w;->c:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/w;->a:[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/w;->a:[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/w;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/oppwa/mobile/connect/R$layout;->opp_item_payment_info:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance p3, Lcom/oppwa/mobile/connect/checkout/dialog/w$c;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/w$c;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/w$a;)V

    .line 5
    sget v1, Lcom/oppwa/mobile/connect/R$id;->text_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/oppwa/mobile/connect/checkout/dialog/w$c;->a:Landroid/widget/TextView;

    .line 6
    sget v1, Lcom/oppwa/mobile/connect/R$id;->mark_image_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/oppwa/mobile/connect/checkout/dialog/w$c;->b:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppwa/mobile/connect/checkout/dialog/w$c;

    .line 13
    :goto_0
    iget-object v1, p3, Lcom/oppwa/mobile/connect/checkout/dialog/w$c;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/w;->a:[Lcom/oppwa/mobile/connect/checkout/dialog/w$b;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/oppwa/mobile/connect/checkout/dialog/w$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/w;->c:I

    if-ne p1, v1, :cond_1

    .line 16
    iget-object p1, p3, Lcom/oppwa/mobile/connect/checkout/dialog/w$c;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2

    .line 18
    :cond_1
    iget-object p1, p3, Lcom/oppwa/mobile/connect/checkout/dialog/w$c;->b:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

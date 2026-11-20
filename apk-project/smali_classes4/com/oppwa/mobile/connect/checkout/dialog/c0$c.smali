.class Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PaymentTokenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ProgressBar;

.field final synthetic d:Lcom/oppwa/mobile/connect/checkout/dialog/c0;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/c0;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->d:Lcom/oppwa/mobile/connect/checkout/dialog/c0;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_token_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->a:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_token_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->b:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/oppwa/mobile/connect/R$id;->loading_panel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->c:Landroid/widget/ProgressBar;

    .line 8
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Lcom/oppwa/mobile/connect/checkout/dialog/c0;I)I

    return-void
.end method

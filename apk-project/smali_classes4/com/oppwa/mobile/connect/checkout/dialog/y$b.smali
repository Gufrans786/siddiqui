.class Lcom/oppwa/mobile/connect/checkout/dialog/y$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PaymentBrandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_brand_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;->a:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/oppwa/mobile/connect/R$id;->payment_brand_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;->b:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/oppwa/mobile/connect/R$id;->loading_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;->c:Landroid/widget/ProgressBar;

    return-void
.end method

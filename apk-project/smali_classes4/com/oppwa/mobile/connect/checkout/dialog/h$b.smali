.class Lcom/oppwa/mobile/connect/checkout/dialog/h$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardBrandsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ProgressBar;

.field c:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->card_brand_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;->a:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/oppwa/mobile/connect/R$id;->loading_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;->b:Landroid/widget/ProgressBar;

    .line 5
    sget v0, Lcom/oppwa/mobile/connect/R$id;->card_brand_border:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;->c:Landroid/widget/RelativeLayout;

    return-void
.end method

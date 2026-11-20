.class public Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GroupedCardsItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->grouped_cards_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/oppwa/mobile/connect/R$id;->loading_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;->b:Landroid/widget/ProgressBar;

    return-void
.end method

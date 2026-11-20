.class Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GroupedCardsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/oppwa/mobile/connect/R$id;->card_brands_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

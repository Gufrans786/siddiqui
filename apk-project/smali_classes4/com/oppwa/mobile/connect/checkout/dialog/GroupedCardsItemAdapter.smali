.class public Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GroupedCardsItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;->a:[Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;->onBindViewHolder(Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;I)V
    .locals 3

    .line 2
    iget-object v0, p1, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;->a:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;->b:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/l;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;->b:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object v1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    iget-object p1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oppwa/mobile/connect/R$layout;->opp_item_card:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

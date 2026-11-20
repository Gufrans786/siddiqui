.class Lcom/oppwa/mobile/connect/checkout/dialog/h;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CardBrandsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/h$a;,
        Lcom/oppwa/mobile/connect/checkout/dialog/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oppwa/mobile/connect/checkout/dialog/h$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:[Ljava/lang/String;

.field private c:Lcom/oppwa/mobile/connect/checkout/dialog/h$a;

.field private d:I


# direct methods
.method public static synthetic $r8$lambda$ke25BXLPUnFz_rnIWlS4G6lyN8M(Lcom/oppwa/mobile/connect/checkout/dialog/h;Lcom/oppwa/mobile/connect/checkout/dialog/h$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a(Lcom/oppwa/mobile/connect/checkout/dialog/h$b;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->d:I

    .line 5
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->b:[Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/h$b;Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->d:I

    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 50
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->c:Lcom/oppwa/mobile/connect/checkout/dialog/h$a;

    if-eqz p1, :cond_0

    .line 51
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->b:[Ljava/lang/String;

    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->d:I

    aget-object p2, p2, v0

    invoke-interface {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/h$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oppwa/mobile/connect/checkout/dialog/h$b;
    .locals 2

    .line 12
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oppwa/mobile/connect/R$layout;->opp_item_card_brands:I

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 15
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/oppwa/mobile/connect/checkout/dialog/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->c:Lcom/oppwa/mobile/connect/checkout/dialog/h$a;

    return-void
.end method

.method public a(Lcom/oppwa/mobile/connect/checkout/dialog/h$b;I)V
    .locals 5

    .line 16
    iget-object v0, p1, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->b:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 18
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/l;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 22
    iget-object v4, p1, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    iget-object v2, p1, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;->b:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 26
    :cond_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/oppwa/mobile/connect/checkout/dialog/h$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/h$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/h;Lcom/oppwa/mobile/connect/checkout/dialog/h$b;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->d:I

    if-ne p2, v2, :cond_1

    .line 36
    iget-object p2, p1, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 37
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a:Landroid/content/Context;

    sget v3, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_selected:I

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object p2, p1, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 43
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iput v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->d:I

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->b:[Ljava/lang/String;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/h;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/h$b;

    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a(Lcom/oppwa/mobile/connect/checkout/dialog/h$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a(Landroid/view/ViewGroup;I)Lcom/oppwa/mobile/connect/checkout/dialog/h$b;

    move-result-object p1

    return-object p1
.end method

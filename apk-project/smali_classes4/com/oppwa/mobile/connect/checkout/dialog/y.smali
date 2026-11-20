.class Lcom/oppwa/mobile/connect/checkout/dialog/y;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PaymentBrandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/y$a;,
        Lcom/oppwa/mobile/connect/checkout/dialog/y$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oppwa/mobile/connect/checkout/dialog/y$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[Ljava/lang/String;

.field private final c:Landroid/os/Bundle;

.field private d:Lcom/oppwa/mobile/connect/checkout/dialog/y$a;


# direct methods
.method public static synthetic $r8$lambda$hVGUQZMOUUN1p8vcmBTUr24sUmc(Lcom/oppwa/mobile/connect/checkout/dialog/y;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/y;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->b:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->c:Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->c:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 30
    :cond_1
    invoke-static {p2}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 19
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->d:Lcom/oppwa/mobile/connect/checkout/dialog/y$a;

    if-eqz p2, :cond_0

    .line 20
    invoke-interface {p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/y$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oppwa/mobile/connect/checkout/dialog/y$b;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oppwa/mobile/connect/R$layout;->opp_item_payment_brand:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/oppwa/mobile/connect/checkout/dialog/y$a;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->d:Lcom/oppwa/mobile/connect/checkout/dialog/y$a;

    return-void
.end method

.method public a(Lcom/oppwa/mobile/connect/checkout/dialog/y$b;I)V
    .locals 3

    .line 4
    iget-object v0, p1, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->b:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;->c:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object v1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/y$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/y$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/y;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/y;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/y$b;

    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/y;->a(Lcom/oppwa/mobile/connect/checkout/dialog/y$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/y;->a(Landroid/view/ViewGroup;I)Lcom/oppwa/mobile/connect/checkout/dialog/y$b;

    move-result-object p1

    return-object p1
.end method

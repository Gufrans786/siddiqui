.class public Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GroupedCardsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$b;,
        Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[Ljava/lang/String;

.field private c:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$b;

.field private d:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;


# direct methods
.method public static synthetic $r8$lambda$ypiibqcG_57amVhyvbAk53SsaJQ(Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->a(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->b:[Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 7
    sget v1, Lcom/oppwa/mobile/connect/R$dimen;->card_brand_logo_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 8
    sget v2, Lcom/oppwa/mobile/connect/R$dimen;->card_brand_logo_padding:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    div-int/2addr v0, v1

    return v0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->c:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$b;

    if-eqz p1, :cond_0

    .line 2
    const-string v0, "CARD"

    invoke-interface {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->d:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$a;

    .line 5
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->a(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 6
    iget-object v0, p1, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->b:[Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->d:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsItemAdapter;

    .line 9
    iget-object v0, p1, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object p2, p1, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 13
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oppwa/mobile/connect/R$layout;->opp_item_grouped_cards:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$a;

    invoke-direct {p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setListener(Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter;->c:Lcom/oppwa/mobile/connect/checkout/dialog/GroupedCardsAdapter$b;

    return-void
.end method

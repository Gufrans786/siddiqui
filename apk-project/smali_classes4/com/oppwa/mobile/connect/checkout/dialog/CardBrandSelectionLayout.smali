.class public Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;
.super Landroid/widget/LinearLayout;
.source "CardBrandSelectionLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$c;,
        Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$b;

.field private c:[Ljava/lang/String;

.field private d:Lcom/oppwa/mobile/connect/checkout/dialog/h;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public static synthetic $r8$lambda$8OdjMTDz0A1EDMpBcS9ZNzoBrnU(Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H_UyFo4n4B-IhJYMwDgKeK5kvqA(Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$w9sz0PItm24vwcbVFH2ZvDTwWVw(Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->f:Z

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$layout;->opp_layout_card_brand_selection:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    sget v0, Lcom/oppwa/mobile/connect/R$id;->card_brands_recycler_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 16
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1, p2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a([Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/h;
    .locals 2

    .line 7
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/h;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/h;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$$ExternalSyntheticLambda2;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;)V

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a(Lcom/oppwa/mobile/connect/checkout/dialog/h$a;)V

    return-object v0
.end method

.method private synthetic a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/d;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic a(I)V
    .locals 1

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/d;->a(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 9
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->e:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->b:Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$b;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCardBrands()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 3
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->f:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/d;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$$ExternalSyntheticLambda1;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 19
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 22
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->f:Z

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->f:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$c;

    .line 3
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p1, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->e:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$c;->b:[Ljava/lang/String;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->c:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->setCardBrands([Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->b:Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$b;

    if-eqz p1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$c;

    invoke-direct {v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$c;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$c;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->c:[Ljava/lang/String;

    iput-object v0, v1, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$c;->b:[Ljava/lang/String;

    return-object v1
.end method

.method public setCardBrands([Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/checkout/dialog/h;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/h;

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->a([Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/h;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/h;

    .line 6
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a([Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/h;

    invoke-virtual {v0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/h;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->c:[Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->b:Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$b;

    return-void
.end method

.method public setSelectedBrand(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/h;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->e:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/oppwa/mobile/connect/R$dimen;->card_brand_selection_layout_height:I

    .line 14
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x4

    .line 16
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    invoke-static {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/d;->a(Landroid/view/ViewGroup;II)V

    .line 20
    iput-boolean v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->f:Z

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public updateCardBrands(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/h;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->c:[Ljava/lang/String;

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

    .line 5
    iget-object v4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardBrandSelectionLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/h;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

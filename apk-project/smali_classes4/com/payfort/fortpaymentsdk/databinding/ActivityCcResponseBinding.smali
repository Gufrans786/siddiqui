.class public final Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;
.super Ljava/lang/Object;
.source "ActivityCcResponseBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final responseContainerRL:Landroid/widget/RelativeLayout;

.field public final responseInfo1TV:Landroid/widget/TextView;

.field public final responseInfo2TV:Landroid/widget/TextView;

.field public final responseStatusHintTV:Landroid/widget/TextView;

.field public final responseStatusIconIV:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseContainerRL:Landroid/widget/RelativeLayout;

    .line 43
    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseInfo1TV:Landroid/widget/TextView;

    .line 44
    iput-object p4, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseInfo2TV:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseStatusHintTV:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->responseStatusIconIV:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;
    .locals 7

    .line 76
    move-object v1, p0

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 78
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->responseInfo1TV:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 84
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->responseInfo2TV:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 90
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->responseStatusHintTV:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 96
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->responseStatusIconIV:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 102
    new-instance v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;
    .locals 2

    .line 63
    sget v0, Lcom/payfort/fortpaymentsdk/R$layout;->activity_cc_response:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->bind(Landroid/view/View;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcResponseBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

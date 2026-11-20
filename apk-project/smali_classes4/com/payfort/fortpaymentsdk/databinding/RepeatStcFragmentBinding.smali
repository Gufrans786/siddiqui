.class public final Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;
.super Ljava/lang/Object;
.source "RepeatStcFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/Button;

.field public final btnChangeMobile:Landroid/widget/TextView;

.field public final btnContinue:Lcom/google/android/material/button/MaterialButton;

.field public final currencySymbolIV:Landroid/widget/ImageView;

.field public final firstUnderLine:Landroid/view/View;

.field public final header:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final holder:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final progressLoading:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textView:Landroid/widget/TextView;

.field public final tvAmount:Landroid/widget/TextView;

.field public final tvMobileNumber:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/LinearLayoutCompat;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->btnBack:Landroid/widget/Button;

    .line 68
    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->btnChangeMobile:Landroid/widget/TextView;

    .line 69
    iput-object p4, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->btnContinue:Lcom/google/android/material/button/MaterialButton;

    .line 70
    iput-object p5, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->currencySymbolIV:Landroid/widget/ImageView;

    .line 71
    iput-object p6, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->firstUnderLine:Landroid/view/View;

    .line 72
    iput-object p7, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->header:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    iput-object p8, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->holder:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 74
    iput-object p9, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->progressLoading:Landroid/widget/ProgressBar;

    .line 75
    iput-object p10, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->textView:Landroid/widget/TextView;

    .line 76
    iput-object p11, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->tvAmount:Landroid/widget/TextView;

    .line 77
    iput-object p12, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->tvMobileNumber:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;
    .locals 15

    .line 107
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->btnBack:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 113
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->btnChangeMobile:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 119
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->btnContinue:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    if-eqz v6, :cond_0

    .line 125
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->currencySymbolIV:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 131
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->firstUnderLine:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 137
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->header:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    .line 143
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->holder:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v10, :cond_0

    .line 149
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->progressLoading:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ProgressBar;

    if-eqz v11, :cond_0

    .line 155
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->textView:I

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 161
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->tvAmount:I

    .line 162
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 167
    sget v0, Lcom/payfort/fortpaymentsdk/R$id;->tvMobileNumber:I

    .line 168
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 173
    new-instance v2, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v14}, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/LinearLayoutCompat;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 178
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-static {p0, v0, v1}, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;
    .locals 2

    .line 94
    sget v0, Lcom/payfort/fortpaymentsdk/R$layout;->repeat_stc_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->bind(Landroid/view/View;)Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/databinding/RepeatStcFragmentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

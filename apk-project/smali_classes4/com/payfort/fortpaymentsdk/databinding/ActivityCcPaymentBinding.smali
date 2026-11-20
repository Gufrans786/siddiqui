.class public final Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;
.super Ljava/lang/Object;
.source "ActivityCcPaymentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final amountContainer:Landroid/widget/LinearLayout;

.field public final amountTV:Landroid/widget/TextView;

.field public final appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public final btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

.field public final cardHolderNameView:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

.field public final currencySymbolIV:Landroid/widget/ImageView;

.field public final etCardCvv:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

.field public final etCardExpiry:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

.field public final etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

.field public final guideline:Landroidx/constraintlayout/widget/Guideline;

.field public final guideline2:Landroidx/constraintlayout/widget/Guideline;

.field public final linearLayout:Landroid/widget/LinearLayout;

.field public final loadingContainer:Landroid/widget/RelativeLayout;

.field public final progressLoading:Landroid/widget/ProgressBar;

.field public final rememberMeRL:Landroid/widget/LinearLayout;

.field public final rememberMeTB:Landroid/widget/ToggleButton;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/appbar/AppBarLayout;Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;Landroid/widget/ImageView;Lcom/payfort/fortpaymentsdk/views/CardCvvView;Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Landroid/widget/ToggleButton;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 97
    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->amountContainer:Landroid/widget/LinearLayout;

    .line 98
    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->amountTV:Landroid/widget/TextView;

    .line 99
    iput-object p4, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 100
    iput-object p5, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->btnPay:Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    .line 101
    iput-object p6, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->cardHolderNameView:Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    .line 102
    iput-object p7, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->currencySymbolIV:Landroid/widget/ImageView;

    .line 103
    iput-object p8, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardCvv:Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    .line 104
    iput-object p9, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardExpiry:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    .line 105
    iput-object p10, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->etCardNumberView:Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    .line 106
    iput-object p11, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->guideline:Landroidx/constraintlayout/widget/Guideline;

    .line 107
    iput-object p12, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->guideline2:Landroidx/constraintlayout/widget/Guideline;

    .line 108
    iput-object p13, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->linearLayout:Landroid/widget/LinearLayout;

    .line 109
    iput-object p14, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->loadingContainer:Landroid/widget/RelativeLayout;

    .line 110
    iput-object p15, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->progressLoading:Landroid/widget/ProgressBar;

    move-object/from16 p1, p16

    .line 111
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rememberMeRL:Landroid/widget/LinearLayout;

    move-object/from16 p1, p17

    .line 112
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rememberMeTB:Landroid/widget/ToggleButton;

    move-object/from16 p1, p18

    .line 113
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;
    .locals 22

    move-object/from16 v0, p0

    .line 143
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->amountContainer:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 149
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->amountTV:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 155
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->appbarLayout:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v7, :cond_0

    .line 161
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->btnPay:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;

    if-eqz v8, :cond_0

    .line 167
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->cardHolderNameView:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;

    if-eqz v9, :cond_0

    .line 173
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->currencySymbolIV:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 179
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->etCardCvv:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/payfort/fortpaymentsdk/views/CardCvvView;

    if-eqz v11, :cond_0

    .line 185
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->etCardExpiry:I

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    if-eqz v12, :cond_0

    .line 191
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->etCardNumberView:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;

    if-eqz v13, :cond_0

    .line 197
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->guideline:I

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v14, :cond_0

    .line 203
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->guideline2:I

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v15, :cond_0

    .line 209
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->linearLayout:I

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    .line 215
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->loadingContainer:I

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/RelativeLayout;

    if-eqz v17, :cond_0

    .line 221
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->progressLoading:I

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ProgressBar;

    if-eqz v18, :cond_0

    .line 227
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->rememberMeRL:I

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_0

    .line 233
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->rememberMeTB:I

    .line 234
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ToggleButton;

    if-eqz v20, :cond_0

    .line 239
    sget v1, Lcom/payfort/fortpaymentsdk/R$id;->toolbar:I

    .line 240
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/appcompat/widget/Toolbar;

    if-eqz v21, :cond_0

    .line 245
    new-instance v3, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v21}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/appbar/AppBarLayout;Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;Lcom/payfort/fortpaymentsdk/views/CardHolderNameView;Landroid/widget/ImageView;Lcom/payfort/fortpaymentsdk/views/CardCvvView;Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Landroid/widget/ToggleButton;Landroidx/appcompat/widget/Toolbar;)V

    return-object v3

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-static {p0, v0, v1}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;
    .locals 2

    .line 130
    sget v0, Lcom/payfort/fortpaymentsdk/R$layout;->activity_cc_payment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    :cond_0
    invoke-static {p0}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->bind(Landroid/view/View;)Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

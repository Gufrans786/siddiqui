.class public Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;
.super Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;
.source "CheckoutThreeDS2WebViewFragment.java"


# instance fields
.field private d:Lcom/oppwa/mobile/connect/provider/Transaction;

.field protected e:Landroid/webkit/WebView;

.field protected f:Landroid/webkit/WebView;

.field private g:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$C0SL5O8tqwDN0j1LsqlBvk7z-gk(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->d(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;)Lcom/oppwa/mobile/connect/provider/Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->d:Lcom/oppwa/mobile/connect/provider/Transaction;

    return-object p0
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->g:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->d:Lcom/oppwa/mobile/connect/provider/Transaction;

    .line 7
    const-string v1, "ThreeDS2 web flow page loading failed"

    invoke-static {v1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 2
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->e:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->b()V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .line 6
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->b(Lcom/oppwa/mobile/connect/provider/Transaction;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->e:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 42
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method private d(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/oppwa/mobile/connect/provider/Transaction;)Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "TRANSACTION"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    new-instance p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected b(Lcom/oppwa/mobile/connect/provider/Transaction;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/provider/Transaction;->getThreeDS2MethodRedirectUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c()Landroid/webkit/WebView;
    .locals 3

    .line 1
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected d()Landroid/webkit/WebView;
    .locals 4

    .line 1
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment$a;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment$a;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    sget v2, Lcom/oppwa/mobile/connect/R$id;->header_layout:I

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    const-string v0, "TRANSACTION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppwa/mobile/connect/provider/Transaction;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->d:Lcom/oppwa/mobile/connect/provider/Transaction;

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->c()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->e:Landroid/webkit/WebView;

    .line 12
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->d()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->f:Landroid/webkit/WebView;

    .line 14
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->d:Lcom/oppwa/mobile/connect/provider/Transaction;

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->c(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    .line 15
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->d:Lcom/oppwa/mobile/connect/provider/Transaction;

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->d(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/oppwa/mobile/connect/R$layout;->opp_webview_checkout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->b(Landroid/view/View;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->c(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->f()V

    .line 4
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->g()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a:Landroid/widget/TextView;

    sget p2, Lcom/oppwa/mobile/connect/R$string;->checkout_payment_details:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 4
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->e()V

    return-void
.end method

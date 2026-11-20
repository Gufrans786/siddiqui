.class public Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;
.super Landroidx/fragment/app/Fragment;
.source "ThreeDSWebFragment.java"


# instance fields
.field protected a:Landroid/webkit/WebView;

.field protected b:Landroid/webkit/WebView;

.field private c:Landroidx/activity/OnBackPressedCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$layout;->threeds_web_fragment:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;)Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->c()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 23
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 24
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 2

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v1, "payment_error"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 30
    const-string v1, "async_result"

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 40
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 41
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private c()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 1

    .line 1
    const-string v0, "ThreeDS2 web flow page loading failed."

    invoke-static {v0}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Landroid/webkit/WebView;
    .locals 3

    .line 3
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 5
    new-instance v1, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$b;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$b;-><init>(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 21
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected b()Landroid/webkit/WebView;
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

    .line 3
    new-instance v1, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$c;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$c;-><init>(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$a;-><init>(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;Z)V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->c:Landroidx/activity/OnBackPressedCallback;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->c:Landroidx/activity/OnBackPressedCallback;

    .line 12
    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->d()V

    .line 4
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->e()V

    .line 6
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->c:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 4
    const-string v0, "redirect_url"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 6
    const-string/jumbo v1, "threeds_method_redirect_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a:Landroid/webkit/WebView;

    .line 9
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b:Landroid/webkit/WebView;

    .line 11
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a(Landroid/view/View;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b(Landroid/view/View;)V

    return-void
.end method

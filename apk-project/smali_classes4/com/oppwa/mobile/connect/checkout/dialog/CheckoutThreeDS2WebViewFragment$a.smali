.class Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment$a;
.super Landroid/webkit/WebViewClient;
.source "CheckoutThreeDS2WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->d()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 6
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->b(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    const-string p1, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;)Lcom/oppwa/mobile/connect/provider/Transaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    .line 5
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment$a;->a:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;->a(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutThreeDS2WebViewFragment;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

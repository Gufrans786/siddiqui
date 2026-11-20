.class Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$c;
.super Landroid/webkit/WebViewClient;
.source "ThreeDSWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->b()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$c;->a:Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$c;->a:Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 6
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$c;->a:Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;)Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$c;->a:Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

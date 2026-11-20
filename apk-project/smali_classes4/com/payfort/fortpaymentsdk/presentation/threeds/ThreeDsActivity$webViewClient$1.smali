.class public final Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$webViewClient$1;
.super Landroid/webkit/WebViewClient;
.source "ThreeDsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->webViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J.\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0017\u00a8\u0006\u0011"
    }
    d2 = {
        "com/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$webViewClient$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onReceivedError",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "onRenderProcessGone",
        "",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "fortpayment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$webViewClient$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;

    .line 85
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$webViewClient$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->access$getViewModel(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->checkUrlNotContainsThreeDs(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$webViewClient$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->access$getViewModel(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->checkResponseIfExist(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$webViewClient$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->access$getViewModel(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->validateErrorCode(I)V

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 92
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2
.end method

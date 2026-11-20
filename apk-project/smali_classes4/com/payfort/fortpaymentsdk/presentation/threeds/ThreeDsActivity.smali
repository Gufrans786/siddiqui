.class public final Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;
.super Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;
.source "ThreeDsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreeDsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreeDsActivity.kt\ncom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,132:1\n75#2,13:133\n*S KotlinDebug\n*F\n+ 1 ThreeDsActivity.kt\ncom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity\n*L\n40#1:133,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0006J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0012\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0008\u0010\u0017\u001a\u00020\u0012H\u0014J\u0008\u0010\u0018\u001a\u00020\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;",
        "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;",
        "()V",
        "mWebView",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "getUrl",
        "()Ljava/lang/String;",
        "url$delegate",
        "Lkotlin/Lazy;",
        "viewModel",
        "Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;",
        "getViewModel",
        "()Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;",
        "viewModel$delegate",
        "getSdkToken",
        "observeValues",
        "",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "setResultError",
        "setResultSuccess",
        "sdkResponse",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "webViewClient",
        "Landroid/webkit/WebViewClient;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$Companion;

.field public static final KEY_FAILURE:Ljava/lang/String; = "FAILURE"

.field public static final KEY_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final URL:Ljava/lang/String; = "URL"


# instance fields
.field private mWebView:Landroid/webkit/WebView;

.field private final url$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->Companion:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 22
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;-><init>()V

    .line 40
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$viewModel$2;

    invoke-direct {v1, p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$viewModel$2;-><init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 141
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 143
    new-instance v4, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 145
    new-instance v5, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 141
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    .line 40
    iput-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 45
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$url$2;

    invoke-direct {v0, p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$url$2;-><init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->url$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMWebView$p(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getViewModel()Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setResultError(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->setResultError()V

    return-void
.end method

.method public static final synthetic access$setResultSuccess(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->setResultSuccess(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void
.end method

.method private final getUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->url$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getViewModel()Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    return-object v0
.end method

.method private final observeValues()V
    .locals 4

    .line 60
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getViewModel()Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->getErrorHappened()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$1;

    invoke-direct {v2, p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 63
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getViewModel()Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->getShowWebView()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$2;

    invoke-direct {v2, p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$2;-><init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 67
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getViewModel()Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->getResult()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$3;

    invoke-direct {v2, p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$observeValues$3;-><init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final setResultError()V
    .locals 3

    .line 125
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->Companion:Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;->getTHREEDS_INTENT_FILTER$fortpayment_release()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v1, "FAILURE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->finish()V

    return-void
.end method

.method private final setResultSuccess(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V
    .locals 2

    .line 118
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->Companion:Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler$Companion;->getTHREEDS_INTENT_FILTER$fortpayment_release()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v1, "SUCCESS"

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->finish()V

    return-void
.end method

.method private final webViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 85
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$webViewClient$1;

    invoke-direct {v0, p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$webViewClient$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;)V

    check-cast v0, Landroid/webkit/WebViewClient;

    return-object v0
.end method


# virtual methods
.method public final getSdkToken()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sdk_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/payfort/fortpaymentsdk/R$layout;->webview:I

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->setContentView(I)V

    .line 50
    sget p1, Lcom/payfort/fortpaymentsdk/R$id;->webView:I

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.webView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->mWebView:Landroid/webkit/WebView;

    .line 51
    sget-object p1, Lcom/payfort/fortpaymentsdk/utils/WebViewUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/WebViewUtils;

    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v2, "mWebView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/payfort/fortpaymentsdk/utils/WebViewUtils;->setupWebView(Landroid/webkit/WebView;)V

    .line 52
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->mWebView:Landroid/webkit/WebView;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->webViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getViewModel()Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getSdkToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->setSdkToken(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->mWebView:Landroid/webkit/WebView;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->mWebView:Landroid/webkit/WebView;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    :goto_0
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->gone(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->observeValues()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->onStart()V

    .line 78
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

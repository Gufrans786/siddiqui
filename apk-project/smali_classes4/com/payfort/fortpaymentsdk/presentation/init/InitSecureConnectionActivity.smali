.class public final Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;
.super Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;
.source "InitSecureConnectionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInitSecureConnectionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitSecureConnectionActivity.kt\ncom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,122:1\n75#2,13:123\n*S KotlinDebug\n*F\n+ 1 InitSecureConnectionActivity.kt\ncom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity\n*L\n25#1:123,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\u000eH\u0002J\u0012\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u000eH\u0014J\u0008\u0010\u0015\u001a\u00020\u000eH\u0002J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;",
        "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;",
        "()V",
        "binding",
        "Lcom/payfort/fortpaymentsdk/databinding/ActivityInitSecureConnBinding;",
        "mMessageReceiver",
        "Landroid/content/BroadcastReceiver;",
        "viewModel",
        "Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;",
        "getViewModel",
        "()Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "finish",
        "",
        "handleShowLoading",
        "observeValues",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "setNoInternetMessageResult",
        "setupLocalBroadCastConfigs",
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
.field private binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityInitSecureConnBinding;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 23
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;-><init>()V

    .line 25
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$viewModel$2;

    invoke-direct {v1, p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$viewModel$2;-><init>(Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 131
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 133
    new-instance v4, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, v0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 135
    new-instance v5, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 131
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    .line 25
    iput-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getViewModel()Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;

    return-object v0
.end method

.method private final handleShowLoading()V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "showLoading"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityInitSecureConnBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/payfort/fortpaymentsdk/databinding/ActivityInitSecureConnBinding;->initContainerRL:Landroid/widget/RelativeLayout;

    const-string v1, "binding.initContainerRL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/utils/ViewExtKt;->gone(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final observeValues()V
    .locals 4

    .line 51
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getViewModel()Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v2

    const-string v3, "getMerchantRequest()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    .line 53
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getViewModel()Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->getResult()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;

    invoke-direct {v2, p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$observeValues$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->setNoInternetMessageResult()V

    return-void
.end method

.method private final setNoInternetMessageResult()V
    .locals 3

    .line 85
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payfort/fortpaymentsdk/R$string;->pf_no_connection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    sget v1, Lcom/payfort/fortpaymentsdk/R$string;->pf_no_connection:I

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getMerchantRequest$fortpayment_release()Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->getFailedToInitConnectionResponse(Ljava/lang/String;Ljava/util/Map;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object v0

    const-string v1, "getFailedToInitConnectio\u2026hantRequest().requestMap)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->failedMessage$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void
.end method

.method private final setupLocalBroadCastConfigs()V
    .locals 4

    .line 94
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$setupLocalBroadCastConfigs$1;

    invoke-direct {v0, p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity$setupLocalBroadCastConfigs$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    const-string v1, "mMessageReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    .line 105
    const-string v3, "responseEvent"

    .line 104
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 117
    invoke-super {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->getLocalizationService()Lcom/payfort/fortpaymentsdk/utils/LocalizationService;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lcom/payfort/fortpaymentsdk/domain/model/FortSdkCache;->getDEFAULT_SYSTEM_LANGUAGE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payfort/fortpaymentsdk/utils/LocalizationService;->restoreLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-super {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/databinding/ActivityInitSecureConnBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/payfort/fortpaymentsdk/databinding/ActivityInitSecureConnBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->binding:Lcom/payfort/fortpaymentsdk/databinding/ActivityInitSecureConnBinding;

    if-nez p1, :cond_0

    .line 35
    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/databinding/ActivityInitSecureConnBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->setFinishOnTouchOutside(Z)V

    .line 39
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->handleShowLoading()V

    .line 40
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->setupLocalBroadCastConfigs()V

    .line 41
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->observeValues()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 112
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/InitSecureConnectionActivity;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    const-string v1, "mMessageReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    invoke-super {p0}, Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;->onDestroy()V

    return-void
.end method

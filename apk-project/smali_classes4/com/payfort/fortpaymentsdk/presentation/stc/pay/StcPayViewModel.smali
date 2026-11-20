.class public final Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "StcPayViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStcPayViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StcPayViewModel.kt\ncom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,78:1\n515#2:79\n500#2,6:80\n*S KotlinDebug\n*F\n+ 1 StcPayViewModel.kt\ncom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel\n*L\n40#1:79\n40#1:80,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "purchaseUseCase",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;",
        "(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;)V",
        "_purchaseResult",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "purchaseResult",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getPurchaseResult",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "isOtpValid",
        "",
        "otp",
        "",
        "purchase",
        "",
        "context",
        "Landroid/content/Context;",
        "fortRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "mobileNumber",
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
.field private final _purchaseResult:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final purchaseResult:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final purchaseUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;


# direct methods
.method public static synthetic $r8$lambda$fzSiZ6ZJpaQnfhXTYXgsU5ifCjw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->purchase$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;)V
    .locals 2

    const-string v0, "purchaseUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->purchaseUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;

    .line 26
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 p1, 0x0

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 28
    invoke-static {v1, v1, p1, v0, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->_purchaseResult:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 29
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->purchaseResult:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method public static final synthetic access$get_purchaseResult$p(Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->_purchaseResult:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method private static final purchase$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getPurchaseResult()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->purchaseResult:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final isOtpValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "otp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final purchase(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileNumber"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    invoke-virtual {v1, p1, p2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "sdkRequest.requestMap"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "phone_number"

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "command"

    const-string v0, "PURCHASE"

    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "digital_wallet"

    const-string v0, "STCPAY"

    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string p3, "service_command"

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 40
    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p4

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 80
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v1, v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->setRequestMap(Ljava/util/Map;)V

    .line 44
    iget-object p3, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->purchaseUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;

    invoke-virtual {p3, v1}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p3

    .line 45
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 46
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance p4, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;

    invoke-direct {p4, p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$purchase$2;-><init>(Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "fun purchase(context: Co\u2026}.addTo(disposable)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, p2}, Lio/reactivex/rxkotlin/DisposableKt;->addTo(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

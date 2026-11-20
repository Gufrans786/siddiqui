.class public final Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "RepeatStcViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "getCustomerAccountUseCase",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;",
        "generateOtpUseCase",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;",
        "(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;)V",
        "_generateOtpResult",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "_resultGetCustomer",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "generateOtpResult",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getGenerateOtpResult",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "resultGetCustomer",
        "getResultGetCustomer",
        "generateOtp",
        "",
        "context",
        "Landroid/content/Context;",
        "fortRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "mobileNumber",
        "",
        "getCustomAccount",
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
.field private final _generateOtpResult:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _resultGetCustomer:Lkotlinx/coroutines/flow/MutableSharedFlow;
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

.field private final generateOtpResult:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final generateOtpUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;

.field private final getCustomerAccountUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;

.field private final resultGetCustomer:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VNoO-yLer26ig9MJVL0x3mxV5aQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->generateOtp$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k9t-NRwJNXWJFmxnsAQN8NABgpQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->getCustomAccount$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;)V
    .locals 2

    const-string v0, "getCustomerAccountUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generateOtpUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->getCustomerAccountUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;

    .line 26
    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->generateOtpUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;

    .line 28
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x7

    .line 30
    invoke-static {p1, p1, p2, v0, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->_resultGetCustomer:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 31
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->resultGetCustomer:Lkotlinx/coroutines/flow/SharedFlow;

    .line 33
    invoke-static {p1, p1, p2, v0, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->_generateOtpResult:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 34
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->generateOtpResult:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method public static final synthetic access$get_generateOtpResult$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->_generateOtpResult:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$get_resultGetCustomer$p(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->_resultGetCustomer:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method private static final generateOtp$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getCustomAccount$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final generateOtp(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileNumber"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    invoke-virtual {v0, p1, p2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "sdkRequest.requestMap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "phone_number"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p3, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->generateOtpUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;

    invoke-virtual {p3, v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p3

    .line 72
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 73
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 74
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel$generateOtp$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel$generateOtp$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "fun generateOtp(context:\u2026}.addTo(disposable)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, p2}, Lio/reactivex/rxkotlin/DisposableKt;->addTo(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final getCustomAccount(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    invoke-virtual {v0, p1, p2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "sdkRequest.requestMap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "service_command"

    const-string v4, "GET_CUSTOMER_ACCOUNTS"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "digital_wallet"

    const-string v3, "STCPAY"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->getCustomerAccountUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;

    invoke-virtual {v1, v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 41
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 42
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel$getCustomAccount$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel$getCustomAccount$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "fun getCustomAccount(con\u2026}.addTo(disposable)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, p2}, Lio/reactivex/rxkotlin/DisposableKt;->addTo(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final getGenerateOtpResult()Lkotlinx/coroutines/flow/SharedFlow;
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

    .line 34
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->generateOtpResult:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final getResultGetCustomer()Lkotlinx/coroutines/flow/SharedFlow;
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

    .line 31
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;->resultGetCustomer:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

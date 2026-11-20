.class public final Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "StcGenerateOtpViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStcGenerateOtpViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StcGenerateOtpViewModel.kt\ncom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,87:1\n515#2:88\n500#2,6:89\n*S KotlinDebug\n*F\n+ 1 StcGenerateOtpViewModel.kt\ncom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel\n*L\n48#1:88\n48#1:89,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001dR\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "generateOtpUseCase",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;",
        "(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;)V",
        "_generateOtpResult",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "_validateMobileNumberResult",
        "Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;",
        "",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "generateOtpResult",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getGenerateOtpResult",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "validateMobileNumberResult",
        "Landroidx/lifecycle/LiveData;",
        "getValidateMobileNumberResult",
        "()Landroidx/lifecycle/LiveData;",
        "generateOtp",
        "",
        "context",
        "Landroid/content/Context;",
        "fortRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "mobileNumber",
        "",
        "validateMobileNumber",
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

.field private final _validateMobileNumberResult:Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
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

.field private final validateMobileNumberResult:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Yg4R4lQ4GBXRtzC35YuOsgAKvEI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->generateOtp$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;)V
    .locals 2

    const-string v0, "generateOtpUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->generateOtpUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;

    .line 29
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 32
    new-instance p1, Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;

    invoke-direct {p1}, Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->_validateMobileNumberResult:Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;

    .line 33
    const-string v0, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Boolean>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->validateMobileNumberResult:Landroidx/lifecycle/LiveData;

    const/4 p1, 0x0

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 35
    invoke-static {v1, v1, p1, v0, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->_generateOtpResult:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 36
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->generateOtpResult:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method public static final synthetic access$get_generateOtpResult$p(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->_generateOtpResult:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method private static final generateOtp$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final generateOtp(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileNumber"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    invoke-virtual {v0, p1, p2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "sdkRequest.requestMap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "phone_number"

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "GENERATE_OTP"

    const-string v4, "service_command"

    invoke-interface {p3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "STCPAY"

    const-string v5, "digital_wallet"

    invoke-interface {p3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p3, 0x8

    .line 45
    new-array p3, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v4, p3, v1

    const/4 v1, 0x1

    aput-object v5, p3, v1

    const/4 v1, 0x2

    .line 46
    aput-object v3, p3, v1

    const/4 v1, 0x3

    const-string v3, "merchant_reference"

    aput-object v3, p3, v1

    const/4 v1, 0x4

    const-string v3, "amount"

    aput-object v3, p3, v1

    const/4 v1, 0x5

    .line 47
    const-string v3, "currency"

    aput-object v3, p3, v1

    const/4 v1, 0x6

    const-string v3, "language"

    aput-object v3, p3, v1

    const/4 v1, 0x7

    const-string v3, "sdk_token"

    aput-object v3, p3, v1

    .line 45
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 48
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 89
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0, v2}, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;->setRequestMap(Ljava/util/Map;)V

    .line 52
    iget-object p3, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->generateOtpUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;

    invoke-virtual {p3, v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p3

    .line 53
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 54
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel$generateOtp$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel$generateOtp$2;-><init>(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "fun generateOtp(context:\u2026}.addTo(disposable)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

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

    .line 36
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->generateOtpResult:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final getValidateMobileNumberResult()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->validateMobileNumberResult:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final validateMobileNumber(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "mobileNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    check-cast p1, Ljava/lang/CharSequence;

    sget-object v0, Lcom/payfort/fortpaymentsdk/constants/Constants$EXTRAS;->INSTANCE:Lcom/payfort/fortpaymentsdk/constants/Constants$EXTRAS;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/constants/Constants$EXTRAS;->getSAUDI_NUMBERS_REGEX$fortpayment_release()Lkotlin/text/Regex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 82
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;->_validateMobileNumberResult:Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/SingleLiveEvent;->postValue(Ljava/lang/Object;)V

    return p1
.end method

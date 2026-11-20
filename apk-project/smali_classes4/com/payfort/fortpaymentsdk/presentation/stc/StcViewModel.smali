.class public final Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "StcViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_transactionResult",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "transactionResult",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getTransactionResult",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "isMerchantRequestContainsTokenName",
        "",
        "merchantRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "setTransactionResult",
        "",
        "it",
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
.field private final _transactionResult:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transactionResult:Lkotlinx/coroutines/flow/SharedFlow;
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
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 16
    invoke-static {v2, v2, v0, v1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;->_transactionResult:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;->transactionResult:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method public static final synthetic access$get_transactionResult$p(Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;->_transactionResult:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method


# virtual methods
.method public final getTransactionResult()Lkotlinx/coroutines/flow/SharedFlow;
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

    .line 17
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;->transactionResult:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final isMerchantRequestContainsTokenName(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v1, "token_name"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final setTransactionResult(Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/ResponseState<",
            "+",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel$setTransactionResult$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel$setTransactionResult$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/stc/StcViewModel;Lcom/payfort/fortpaymentsdk/domain/model/ResponseState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

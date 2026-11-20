.class public final Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ValidateViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR \u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "validateDataUseCase",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
        "Lio/reactivex/Observable;",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        "(Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;)V",
        "_result",
        "Landroidx/lifecycle/MutableLiveData;",
        "result",
        "Landroidx/lifecycle/LiveData;",
        "getResult",
        "()Landroidx/lifecycle/LiveData;",
        "validateRequest",
        "",
        "context",
        "Landroid/content/Context;",
        "fortRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "callback",
        "Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;",
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
.field private _result:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ">;"
        }
    .end annotation
.end field

.field private final validateDataUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0WtXgsfvj6NuINitw8Ft-wCcL84(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateRequest$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FW0mnwdo_fTXyVFbhuDeK15rlLM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateRequest$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XgkcxpB3m3SWr92DVHyIV-mCx44(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateRequest$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$keO75sHY0bxgIlefB4kc44ZSlZ0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateRequest$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "validateDataUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateDataUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;

    .line 19
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$get_result$p(Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private static final validateRequest$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final validateRequest$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final validateRequest$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final validateRequest$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getResult()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final validateRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    invoke-virtual {v0, p1, p2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateDataUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;

    invoke-interface {p2, p1}, Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 28
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$1;

    invoke-direct {p2, p0}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$2;

    invoke-direct {p2, p0}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$2;-><init>(Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;)V

    .line 30
    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 28
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final validateRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    invoke-virtual {v0, p1, p2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel;->validateDataUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;

    invoke-interface {v1, v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 39
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$3;

    invoke-direct {v1, p3, p2, p1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$3;-><init>(Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Landroid/content/Context;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;

    invoke-direct {v1, p1, p2, p3}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$validateRequest$4;-><init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V

    .line 53
    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$$ExternalSyntheticLambda3;

    invoke-direct {p1, v1}, Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModel$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 39
    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

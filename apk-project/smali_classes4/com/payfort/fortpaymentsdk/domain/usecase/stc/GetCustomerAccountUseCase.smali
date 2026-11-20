.class public final Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;
.super Ljava/lang/Object;
.source "GetCustomerAccountUseCase.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase<",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
        "Lio/reactivex/Observable<",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
        "Lio/reactivex/Observable;",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        "fortRepository",
        "Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;",
        "(Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;)V",
        "execute",
        "request",
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
.field private final fortRepository:Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;


# direct methods
.method public static synthetic $r8$lambda$iBRox-nl41DiR8Dgx7jmF5k7gkA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;->execute$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tDhf3JUPEt0Gmie579J6m71lTr4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;->execute$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uoGHtohzZX-656m73PmnJNk0Vcs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;->execute$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;)V
    .locals 1

    const-string v0, "fortRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;->fortRepository:Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;

    return-void
.end method

.method private static final execute$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    return-object p0
.end method

.method private static final execute$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    return-object p0
.end method

.method private static final execute$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;->fortRepository:Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;->getCustomerAccount(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$execute$1;->INSTANCE:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$execute$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 23
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$execute$2;->INSTANCE:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$execute$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 24
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$execute$3;->INSTANCE:Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$execute$3;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 25
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/model/Result$Loading;->INSTANCE:Lcom/payfort/fortpaymentsdk/domain/model/Result$Loading;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 24
    const-string v0, "fortRepository.getCustom\u2026startWith(Result.Loading)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;
.super Ljava/lang/Object;
.source "StcViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u0002H\u0006\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\tH\u0016\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "stcRepository",
        "Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;",
        "(Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;)V",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
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
.field private final stcRepository:Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;


# direct methods
.method public constructor <init>(Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;)V
    .locals 1

    const-string/jumbo v0, "stcRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;->stcRepository:Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const-class v0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;

    new-instance v0, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;->stcRepository:Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;)V

    invoke-direct {p1, v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpViewModel;-><init>(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1

    .line 19
    :cond_0
    const-class v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;

    new-instance v0, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;->stcRepository:Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;)V

    new-instance v1, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;->stcRepository:Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;

    invoke-direct {v1, v2}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;)V

    invoke-direct {p1, v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcViewModel;-><init>(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GetCustomerAccountUseCase;Lcom/payfort/fortpaymentsdk/domain/usecase/stc/GenerateOtpUseCase;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1

    .line 24
    :cond_1
    const-class v0, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 26
    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;

    new-instance v0, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcViewModelFactory;->stcRepository:Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;-><init>(Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;)V

    invoke-direct {p1, v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/pay/StcPayViewModel;-><init>(Lcom/payfort/fortpaymentsdk/domain/usecase/stc/StcPurchaseUseCase;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to construct viewmodel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

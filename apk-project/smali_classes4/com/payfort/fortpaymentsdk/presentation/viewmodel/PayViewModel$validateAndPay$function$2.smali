.class final Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        "Lio/reactivex/Observable<",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $cvc:Ljava/lang/String;

.field final synthetic $sdkToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;->$cvc:Ljava/lang/String;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

    iput-object p3, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;->$sdkToken:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    instance-of v0, p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;->getResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;->getResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;->getMerchantToken()Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getMaskedCardNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->Companion:Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;->getPaymentOptionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;->fromCodeOrNull(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;->$cvc:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;->this$0:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;

    iget-object v3, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;->$sdkToken:Ljava/lang/String;

    .line 84
    sget-object v5, Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;

    invoke-virtual {v5, v1}, Lcom/payfort/fortpaymentsdk/utils/ValidationUtils;->isDigitsOnlyKotlin$fortpayment_release(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;->getDefaultCvcLength()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 85
    invoke-static {v2}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->access$getPayUseCase$p(Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;)Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;

    move-result-object v0

    sget-object v2, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequestFromMerchantToken(Landroid/content/Context;Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    new-instance p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;

    new-instance v1, Lcom/payfort/fortpaymentsdk/exceptions/InvalidCvcLengthException;

    invoke-direct {v1, v0}, Lcom/payfort/fortpaymentsdk/exceptions/InvalidCvcLengthException;-><init>(Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p1, v1}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_2
    new-instance p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;

    new-instance v0, Lcom/payfort/fortpaymentsdk/exceptions/MerchantTokenNoExistException;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/exceptions/MerchantTokenNoExistException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p1, v0}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 95
    :cond_3
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 98
    :cond_4
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;->invoke(Lcom/payfort/fortpaymentsdk/domain/model/Result;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

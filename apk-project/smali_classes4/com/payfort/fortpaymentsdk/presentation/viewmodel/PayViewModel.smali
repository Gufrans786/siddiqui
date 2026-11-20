.class public final Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PayViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J.\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J \u0010\u0013\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ4\u0010\u0013\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "validateDataUseCase",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;",
        "payUseCase",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;",
        "(Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;)V",
        "handleResult",
        "",
        "it",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        "fortPayCallback",
        "Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;",
        "context",
        "Landroid/content/Context;",
        "fortRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "isFormWithoutFields",
        "",
        "validateAndPay",
        "prepareSdkRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
        "isValidatedBefore",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$Companion;

.field private static final KEY_CARD_SECURITY_CODE:Ljava/lang/String; = "card_security_code"

.field public static final KEY_TOKEN_NAME:Ljava/lang/String; = "token_name"


# instance fields
.field private final payUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;

.field private final validateDataUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;


# direct methods
.method public static synthetic $r8$lambda$66wctfO8893Iz40I-pigR5b-yY0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FXQJBjKqISQYofsQlg5f5BSY3Fs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FzKeH__2ODkrSFDjfyCBLyvj1lE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bm9RdPXN27IU3Y6cE8BRUdiquY0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k_ptNQs_IIZT_O9wO2xqNqDan08(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tybUCLQNn2D8yOZvw0aowvxfG_4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->Companion:Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;)V
    .locals 1

    const-string/jumbo v0, "validateDataUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateDataUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->payUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;

    return-void
.end method

.method public static final synthetic access$getPayUseCase$p(Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;)Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->payUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;

    return-object p0
.end method

.method public static final synthetic access$handleResult(Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;Lcom/payfort/fortpaymentsdk/domain/model/Result;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->handleResult(Lcom/payfort/fortpaymentsdk/domain/model/Result;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    return-void
.end method

.method private final handleResult(Lcom/payfort/fortpaymentsdk/domain/model/Result;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 1

    .line 120
    instance-of v0, p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Success;->getResponse()Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;->onSuccess(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void

    .line 121
    :cond_0
    instance-of v0, p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    check-cast p1, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/Result$Failure;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p3, p1, p4}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->convertThrowableToSdkResponse(Landroid/content/Context;Ljava/lang/Throwable;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 123
    invoke-interface {p2, p1}, Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;->onFailure(Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;)V

    return-void

    .line 125
    :cond_1
    sget-object p3, Lcom/payfort/fortpaymentsdk/domain/model/Result$Loading;->INSTANCE:Lcom/payfort/fortpaymentsdk/domain/model/Result$Loading;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;->startLoading()V

    :cond_2
    return-void
.end method

.method public static synthetic validateAndPay$default(Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;ZLcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateAndPay(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;ZLcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V

    return-void
.end method

.method private static final validateAndPay$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final validateAndPay$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final validateAndPay$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final validateAndPay$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final validateAndPay$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final validateAndPay$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final isFormWithoutFields(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "card_security_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "token_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final validateAndPay(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "card_security_code"

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 70
    invoke-virtual {p0, p2}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->isFormWithoutFields(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    invoke-virtual {v0, p1, p2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->getRequestMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "sdk_token"

    invoke-virtual {v1, v2, v3}, Lcom/payfort/fortpaymentsdk/utils/Utils;->getParamValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;

    invoke-direct {v2, v4, p0, p1, v1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$2;-><init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;Landroid/content/Context;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 103
    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateDataUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;

    invoke-virtual {v1, v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v1, v2}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 104
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$3;

    move-object v5, p0

    move-object v7, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$3;-><init>(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Ljava/lang/String;Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;Landroid/content/Context;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda4;

    invoke-direct {p1, v2}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$4;

    invoke-direct {p2, v7, v3, v6}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$4;-><init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V

    .line 111
    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance p3, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda5;

    invoke-direct {p3, p2}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 104
    invoke-virtual {v0, p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final validateAndPay(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;ZLcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepareSdkRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->INSTANCE:Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;

    invoke-virtual {v0, p1, p2}, Lcom/payfort/fortpaymentsdk/handlers/CreatorHandler;->createSdkRequest(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$1;

    invoke-direct {v1, p0, p3}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$function$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz p4, :cond_0

    .line 52
    iget-object p4, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->payUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;

    invoke-virtual {p4, p3}, Lcom/payfort/fortpaymentsdk/domain/usecase/PayUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p3

    goto :goto_0

    .line 54
    :cond_0
    iget-object p3, p0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;->validateDataUseCase:Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;

    invoke-virtual {p3, v0}, Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;->execute(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance p4, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda0;

    invoke-direct {p4, v1}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p3

    const-string/jumbo p4, "validateDataUseCase.exec\u2026equest).flatMap(function)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :goto_0
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 57
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance p4, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;

    invoke-direct {p4, p0, p5, p1, p2}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p4, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$2;

    invoke-direct {p4, p1, p2, p5}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$validateAndPay$2;-><init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V

    .line 60
    check-cast p4, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Lcom/payfort/fortpaymentsdk/presentation/viewmodel/PayViewModel$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 57
    invoke-virtual {p3, v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

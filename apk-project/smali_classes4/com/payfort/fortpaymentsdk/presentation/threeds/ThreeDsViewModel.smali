.class public final Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ThreeDsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 #2\u00020\u0001:\u0001#B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u000e\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0014J\u000e\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0014J\u000e\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\"R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0010R \u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "useCase",
        "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;",
        "Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;",
        "Lio/reactivex/Observable;",
        "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
        "(Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;)V",
        "_errorHappened",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "_result",
        "_showWebView",
        "errorHappened",
        "Landroidx/lifecycle/LiveData;",
        "getErrorHappened",
        "()Landroidx/lifecycle/LiveData;",
        "result",
        "getResult",
        "sdkToken",
        "",
        "getSdkToken",
        "()Ljava/lang/String;",
        "setSdkToken",
        "(Ljava/lang/String;)V",
        "showWebView",
        "getShowWebView",
        "callCompleteSdkFlow",
        "threeDsRequest",
        "checkResponseIfExist",
        "url",
        "checkUrlNotContainsThreeDs",
        "validateErrorCode",
        "errorCode",
        "",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$Companion;

.field private static final RESPONSE_TOKEN:Ljava/lang/String; = "response_token"


# instance fields
.field private _errorHappened:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private _result:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ">;"
        }
    .end annotation
.end field

.field private _showWebView:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private sdkToken:Ljava/lang/String;

.field private final useCase:Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase<",
            "Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4RV6vUiYKp_W4Hb5-rSYf84NqGA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->callCompleteSdkFlow$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B9OcLvXTGy3sKca6jb0tjMAS8tY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->callCompleteSdkFlow$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->Companion:Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase<",
            "Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/Result;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "useCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->useCase:Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;

    .line 23
    const-string p1, ""

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->sdkToken:Ljava/lang/String;

    .line 24
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->_errorHappened:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->_showWebView:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$get_result$p(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private final callCompleteSdkFlow(Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->useCase:Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$callCompleteSdkFlow$1;

    invoke-direct {v0, p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$callCompleteSdkFlow$1;-><init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;)V

    .line 63
    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 62
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$callCompleteSdkFlow$2;

    invoke-direct {v0, p0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$callCompleteSdkFlow$2;-><init>(Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;)V

    .line 65
    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 62
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static final callCompleteSdkFlow$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final callCompleteSdkFlow$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final checkResponseIfExist(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "/FortAPI/sdk/process3DsMobile"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 55
    const-string v0, "response_token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->sdkToken:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v2

    :cond_1
    invoke-direct {v0, v1, p1}, Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->callCompleteSdkFlow(Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;)V

    :cond_2
    return-void
.end method

.method public final checkUrlNotContainsThreeDs(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "/FortAPI/sdk/process3DsMobile"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->_showWebView:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getErrorHappened()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->_errorHappened:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

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

    .line 35
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->_result:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSdkToken()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->sdkToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowWebView()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->_showWebView:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setSdkToken(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->sdkToken:Ljava/lang/String;

    return-void
.end method

.method public final validateErrorCode(I)V
    .locals 1

    const/16 v0, -0xc

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x8

    if-eq p1, v0, :cond_0

    const/4 v0, -0x7

    if-eq p1, v0, :cond_0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;->_errorHappened:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

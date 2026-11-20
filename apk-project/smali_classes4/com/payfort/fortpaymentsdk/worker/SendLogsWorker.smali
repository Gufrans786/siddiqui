.class public final Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;
.super Landroidx/work/RxWorker;
.source "SendLogsWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;",
        "Landroidx/work/RxWorker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "getAppContext",
        "()Landroid/content/Context;",
        "createWork",
        "Lio/reactivex/Single;",
        "Landroidx/work/ListenableWorker$Result;",
        "getSdkRequest",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
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
.field public static final Companion:Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$Companion;

.field private static environment:Ljava/lang/String;

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$ZWPaxjGzzCvvOZNK9dgKZ2y_fzg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/work/ListenableWorker$Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->createWork$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uSSoNFoL_1XDhNOgpOhyItBWWTc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->createWork$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->Companion:Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$Companion;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->environment:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/work/RxWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 15
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->appContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getEnvironment$cp()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getGson$cp()Lcom/google/gson/Gson;
    .locals 1

    .line 15
    sget-object v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final synthetic access$setEnvironment$cp(Ljava/lang/String;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->environment:Ljava/lang/String;

    return-void
.end method

.method private static final createWork$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final createWork$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/work/ListenableWorker$Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/work/ListenableWorker$Result;

    return-object p0
.end method

.method private final getSdkRequest()Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;
    .locals 3

    .line 51
    sget-object v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "SDK_REQUEST"

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gson.fromJson(inputData.\u2026, SdkRequest::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    return-object v0
.end method


# virtual methods
.method public createWork()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->environment:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/Utils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/Utils;

    iget-object v1, p0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/Utils;->getLatestEnvironment$fortpayment_release(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->environment:Ljava/lang/String;

    .line 57
    :cond_0
    sget-object v0, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    sget-object v1, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideFortRepository(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;

    move-result-object v0

    .line 58
    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->getSdkRequest()Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;->logData(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$createWork$1;->INSTANCE:Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$createWork$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$createWork$2;->INSTANCE:Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$createWork$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    .line 58
    invoke-static {v0}, Lio/reactivex/Single;->fromObservable(Lio/reactivex/ObservableSource;)Lio/reactivex/Single;

    move-result-object v0

    .line 63
    const-string v1, "fromObservable(provideFo\u2026map { Result.success() })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/worker/SendLogsWorker;->appContext:Landroid/content/Context;

    return-object v0
.end method

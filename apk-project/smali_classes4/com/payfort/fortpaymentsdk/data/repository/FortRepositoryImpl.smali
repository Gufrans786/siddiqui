.class public final Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;
.super Ljava/lang/Object;
.source "FortRepositoryImpl.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;",
        "Lcom/payfort/fortpaymentsdk/domain/repository/FortRepository;",
        "dataSource",
        "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;",
        "(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;)V",
        "complete3ds",
        "Lio/reactivex/Observable;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "sdkToken",
        "",
        "responseToken",
        "convertJsonObjectToSdkResponse",
        "it",
        "Lcom/google/gson/JsonObject;",
        "logData",
        "body",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
        "processData",
        "validateCardNumber",
        "validateData",
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
.field private final dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;


# direct methods
.method public static synthetic $r8$lambda$_sQe-TVp2ZWUDN1TdtSZlu_Z-RQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->complete3ds$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;)V
    .locals 1

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    return-void
.end method

.method public static final synthetic access$convertJsonObjectToSdkResponse(Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;Lcom/google/gson/JsonObject;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->convertJsonObjectToSdkResponse(Lcom/google/gson/JsonObject;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p0

    return-object p0
.end method

.method private static final complete3ds$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    return-object p0
.end method

.method private final convertJsonObjectToSdkResponse(Lcom/google/gson/JsonObject;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;
    .locals 2

    .line 69
    new-instance v0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$convertJsonObjectToSdkResponse$empMapType$1;

    invoke-direct {v0}, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$convertJsonObjectToSdkResponse$empMapType$1;-><init>()V

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$convertJsonObjectToSdkResponse$empMapType$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->INSTANCE:Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;

    invoke-virtual {v1}, Lcom/payfort/fortpaymentsdk/utils/InjectionUtils;->provideGson$fortpayment_release()Lcom/google/gson/Gson;

    move-result-object v1

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 71
    invoke-static {p1}, Lcom/payfort/fortpaymentsdk/utils/MapUtils;->collectResponseFromHashMap(Ljava/util/HashMap;)Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public complete3ds(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "sdkToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    invoke-interface {v0, p1, p2}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;->complete3ds(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$complete3ds$1;

    invoke-direct {p2, p0}, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$complete3ds$1;-><init>(Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "override fun complete3ds\u2026ponse(it)\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public logData(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;->logData(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public processData(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;->pay(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public validateCardNumber(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;->validateCardNumber(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public validateData(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/FortRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;->validate(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

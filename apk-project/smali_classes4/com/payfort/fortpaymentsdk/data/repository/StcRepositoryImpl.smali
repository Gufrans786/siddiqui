.class public final Lcom/payfort/fortpaymentsdk/data/repository/StcRepositoryImpl;
.super Ljava/lang/Object;
.source "StcRepositoryImpl.kt"

# interfaces
.implements Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/data/repository/StcRepositoryImpl;",
        "Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;",
        "dataSource",
        "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;",
        "(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;)V",
        "generateOtp",
        "Lio/reactivex/Observable;",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "body",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
        "getCustomerAccount",
        "stcPurchase",
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
.method public constructor <init>(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;)V
    .locals 1

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/data/repository/StcRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    return-void
.end method


# virtual methods
.method public generateOtp(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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

    .line 12
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/StcRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;->generateOtp(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getCustomerAccount(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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

    .line 20
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/StcRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;->getCustomerAccount(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public stcPurchase(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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

    .line 16
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/data/repository/StcRepositoryImpl;->dataSource:Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;

    invoke-interface {v0, p1}, Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;->stcPurchase(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

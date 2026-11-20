.class public interface abstract Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;
.super Ljava/lang/Object;
.source "FortDataSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\u0011\u001a\u00020\u000bH&J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0011\u001a\u00020\u000bH&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;",
        "",
        "complete3ds",
        "Lio/reactivex/Observable;",
        "Lcom/google/gson/JsonObject;",
        "sdkToken",
        "",
        "responseToken",
        "generateOtp",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;",
        "body",
        "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;",
        "getCustomerAccount",
        "logData",
        "pay",
        "stcPurchase",
        "validate",
        "request",
        "validateCardNumber",
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


# virtual methods
.method public abstract complete3ds(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract generateOtp(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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
.end method

.method public abstract getCustomerAccount(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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
.end method

.method public abstract logData(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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
.end method

.method public abstract pay(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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
.end method

.method public abstract stcPurchase(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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
.end method

.method public abstract validate(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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
.end method

.method public abstract validateCardNumber(Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;)Lio/reactivex/Observable;
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
.end method

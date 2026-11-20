.class public interface abstract Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;
.super Ljava/lang/Object;
.source "StcRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/domain/repository/StcRepository;",
        "",
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


# virtual methods
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

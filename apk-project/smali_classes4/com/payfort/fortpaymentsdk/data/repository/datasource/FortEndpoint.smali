.class public interface abstract Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;
.super Ljava/lang/Object;
.source "FortEndpoint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J4\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032$\u0008\u0001\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007`\u0008H\'J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\n0\u0003H\'J\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;",
        "",
        "complete3dsFlow",
        "Lio/reactivex/Observable;",
        "Lcom/google/gson/JsonObject;",
        "hashMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "getSslCertificate",
        "Lretrofit2/Response;",
        "logData",
        "bodyMap",
        "processData",
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


# virtual methods
.method public abstract complete3dsFlow(Ljava/util/HashMap;)Lio/reactivex/Observable;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/FortAPI/sdk/response"
    .end annotation
.end method

.method public abstract getSslCertificate()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/FortAPI/sdk/validate"
    .end annotation
.end method

.method public abstract logData(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/FortAPI/sdk/logging"
    .end annotation
.end method

.method public abstract processData(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/FortAPI/sdk/processSdkTnx"
    .end annotation
.end method

.method public abstract validateData(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "FortAPI/sdk/validate"
    .end annotation
.end method

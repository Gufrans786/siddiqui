.class public Lcom/rnmapbox/rnmbx/v11compat/httpinterceptor/HttpServiceBase;
.super Ljava/lang/Object;
.source "HttpInterceptor.kt"

# interfaces
.implements Lcom/mapbox/common/HttpServiceInterceptorInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\rH\u0016J\u0010\u0010\u0004\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\n\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/v11compat/httpinterceptor/HttpServiceBase;",
        "Lcom/mapbox/common/HttpServiceInterceptorInterface;",
        "<init>",
        "()V",
        "onRequest",
        "",
        "request",
        "Lcom/mapbox/common/HttpRequest;",
        "continuation",
        "Lcom/mapbox/common/HttpServiceInterceptorRequestContinuation;",
        "onResponse",
        "response",
        "Lcom/mapbox/common/HttpResponse;",
        "Lcom/mapbox/common/HttpServiceInterceptorResponseContinuation;",
        "onDownload",
        "Lcom/mapbox/common/DownloadOptions;",
        "download",
        "onUpload",
        "Lcom/mapbox/common/UploadOptions;",
        "options",
        "rnmapbox_maps_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload(Lcom/mapbox/common/DownloadOptions;)Lcom/mapbox/common/DownloadOptions;
    .locals 1

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onRequest(Lcom/mapbox/common/HttpRequest;)Lcom/mapbox/common/HttpRequest;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onRequest(Lcom/mapbox/common/HttpRequest;Lcom/mapbox/common/HttpServiceInterceptorRequestContinuation;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/rnmapbox/rnmbx/v11compat/httpinterceptor/HttpServiceBase;->onRequest(Lcom/mapbox/common/HttpRequest;)Lcom/mapbox/common/HttpRequest;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/mapbox/common/HttpRequestOrResponse;

    invoke-direct {v0, p1}, Lcom/mapbox/common/HttpRequestOrResponse;-><init>(Lcom/mapbox/common/HttpRequest;)V

    invoke-interface {p2, v0}, Lcom/mapbox/common/HttpServiceInterceptorRequestContinuation;->run(Lcom/mapbox/common/HttpRequestOrResponse;)V

    return-void
.end method

.method public onResponse(Lcom/mapbox/common/HttpResponse;)Lcom/mapbox/common/HttpResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onResponse(Lcom/mapbox/common/HttpResponse;Lcom/mapbox/common/HttpServiceInterceptorResponseContinuation;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/rnmapbox/rnmbx/v11compat/httpinterceptor/HttpServiceBase;->onResponse(Lcom/mapbox/common/HttpResponse;)Lcom/mapbox/common/HttpResponse;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mapbox/common/HttpServiceInterceptorResponseContinuation;->run(Lcom/mapbox/common/HttpResponse;)V

    return-void
.end method

.method public onUpload(Lcom/mapbox/common/UploadOptions;)Lcom/mapbox/common/UploadOptions;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

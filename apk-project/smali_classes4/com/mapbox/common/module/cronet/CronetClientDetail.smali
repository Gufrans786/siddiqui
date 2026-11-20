.class public final Lcom/mapbox/common/module/cronet/CronetClientDetail;
.super Ljava/lang/Object;
.source "CronetClientDetail.kt"

# interfaces
.implements Lcom/mapbox/common/module/HttpClientDetail;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCronetClientDetail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CronetClientDetail.kt\ncom/mapbox/common/module/cronet/CronetClientDetail\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n1#2:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J@\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0008\u0012\u00060\rj\u0002`\u000e\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u0014H\u0016JH\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0008\u0012\u00060\rj\u0002`\u000e\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u0014H\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/mapbox/common/module/cronet/CronetClientDetail;",
        "Lcom/mapbox/common/module/HttpClientDetail;",
        "fallback",
        "(Lcom/mapbox/common/module/HttpClientDetail;)V",
        "cronetEngine",
        "Lcom/mapbox/common/module/cronet/LazyEngine;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "buildRequest",
        "Lcom/mapbox/common/module/RequestDetail;",
        "request",
        "Lcom/mapbox/common/http_backend/Request;",
        "id",
        "",
        "Lcom/mapbox/common/module/RequestId;",
        "requestObserver",
        "Lcom/mapbox/common/http_backend/RequestObserver;",
        "onRequestFinished",
        "Lkotlin/Function1;",
        "",
        "Lcom/mapbox/common/module/RequestFinishedCallback;",
        "buildRequestWithEngine",
        "Lcom/mapbox/common/module/cronet/CronetRequestDetail;",
        "engine",
        "Lorg/chromium/net/CronetEngine;",
        "setMaxRequestsPerHost",
        "max",
        "",
        "supportsKeepCompression",
        "",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cronetEngine:Lcom/mapbox/common/module/cronet/LazyEngine;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fallback:Lcom/mapbox/common/module/HttpClientDetail;


# direct methods
.method public constructor <init>(Lcom/mapbox/common/module/HttpClientDetail;)V
    .locals 1

    const-string v0, "fallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mapbox/common/module/cronet/CronetClientDetail;->fallback:Lcom/mapbox/common/module/HttpClientDetail;

    .line 24
    invoke-static {}, Lcom/mapbox/common/SchedulerFactory;->threadPool()Lcom/mapbox/common/Scheduler;

    move-result-object p1

    const-string/jumbo v0, "threadPool()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mapbox/common/SchedulerExecutorDispatcherKt;->asExecutor(Lcom/mapbox/common/Scheduler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/common/module/cronet/CronetClientDetail;->executor:Ljava/util/concurrent/Executor;

    .line 25
    new-instance p1, Lcom/mapbox/common/module/cronet/LazyEngine;

    invoke-virtual {p0}, Lcom/mapbox/common/module/cronet/CronetClientDetail;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mapbox/common/module/cronet/LazyEngine;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/mapbox/common/module/cronet/CronetClientDetail;->cronetEngine:Lcom/mapbox/common/module/cronet/LazyEngine;

    return-void
.end method

.method private final buildRequestWithEngine(Lorg/chromium/net/CronetEngine;Lcom/mapbox/common/http_backend/Request;JLcom/mapbox/common/http_backend/RequestObserver;Lkotlin/jvm/functions/Function1;)Lcom/mapbox/common/module/cronet/CronetRequestDetail;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/CronetEngine;",
            "Lcom/mapbox/common/http_backend/Request;",
            "J",
            "Lcom/mapbox/common/http_backend/RequestObserver;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/common/module/cronet/CronetRequestDetail;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/mapbox/common/ThreadServiceType;->DEFAULT:Lcom/mapbox/common/ThreadServiceType;

    invoke-static {v0}, Lcom/mapbox/common/SchedulerFactory;->createSequenced(Lcom/mapbox/common/ThreadServiceType;)Lcom/mapbox/common/Scheduler;

    move-result-object v0

    const-string v1, "createSequenced(ThreadServiceType.DEFAULT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Lcom/mapbox/common/SchedulerExecutorDispatcherKt;->asExecutor(Lcom/mapbox/common/Scheduler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    move-wide v2, p3

    .line 50
    new-instance p3, Lcom/mapbox/common/module/cronet/UrlCallback;

    invoke-direct {p3, v2, v3, p5, p6}, Lcom/mapbox/common/module/cronet/UrlCallback;-><init>(JLcom/mapbox/common/http_backend/RequestObserver;Lkotlin/jvm/functions/Function1;)V

    .line 51
    invoke-virtual {p2}, Lcom/mapbox/common/http_backend/Request;->getUrl()Ljava/lang/String;

    move-result-object p4

    move-object p5, p3

    check-cast p5, Lorg/chromium/net/UrlRequest$Callback;

    invoke-virtual {p1, p4, p5, v1}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Lcom/mapbox/common/http_backend/Request;->getHeaders()Ljava/util/HashMap;

    move-result-object p4

    const-string p5, "request.headers"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object p5, p4

    check-cast p5, Ljava/util/Map;

    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/Map$Entry;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v2, p6}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Lcom/mapbox/common/http_backend/Request;->getMethod()Lcom/mapbox/common/HttpMethod;

    move-result-object p5

    invoke-virtual {p5}, Lcom/mapbox/common/HttpMethod;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "request.method.toString()"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p5, p6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p5

    const-string/jumbo p6, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 58
    invoke-virtual {p2}, Lcom/mapbox/common/http_backend/Request;->getMethod()Lcom/mapbox/common/HttpMethod;

    move-result-object p5

    sget-object p6, Lcom/mapbox/common/HttpMethod;->POST:Lcom/mapbox/common/HttpMethod;

    if-ne p5, p6, :cond_2

    .line 59
    invoke-virtual {p2}, Lcom/mapbox/common/http_backend/Request;->getBody()Lcom/mapbox/common/ReadStream;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 63
    const-string p6, "content-type"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_1

    const-string p6, "Content-Type"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 64
    const-string p4, "application/octet-stream"

    invoke-virtual {p1, p6, p4}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 69
    :cond_1
    invoke-static {p5}, Lcom/mapbox/common/module/cronet/CronetClientDetailKt;->access$toOkioBuffer(Lcom/mapbox/common/ReadStream;)Lokio/Buffer;

    move-result-object p4

    .line 71
    invoke-virtual {p4}, Lokio/Buffer;->readByteArray()[B

    move-result-object p4

    invoke-static {p4}, Lorg/chromium/net/apihelpers/UploadDataProviders;->create([B)Lorg/chromium/net/UploadDataProvider;

    move-result-object p4

    .line 70
    invoke-virtual {p1, p4, v1}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    :cond_2
    move-object p4, p1

    .line 77
    new-instance p1, Lcom/mapbox/common/module/cronet/CronetRequestDetail;

    invoke-virtual {p4}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object p4

    const-string p5, "requestBuilder.build()"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mapbox/common/http_backend/Request;->getTimeout()J

    move-result-wide p5

    move-object p2, p4

    move-wide p4, p5

    move-object p6, v0

    invoke-direct/range {p1 .. p6}, Lcom/mapbox/common/module/cronet/CronetRequestDetail;-><init>(Lorg/chromium/net/UrlRequest;Lcom/mapbox/common/module/cronet/UrlCallback;JLcom/mapbox/common/Scheduler;)V

    return-object p1
.end method


# virtual methods
.method public buildRequest(Lcom/mapbox/common/http_backend/Request;JLcom/mapbox/common/http_backend/RequestObserver;Lkotlin/jvm/functions/Function1;)Lcom/mapbox/common/module/RequestDetail;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/common/http_backend/Request;",
            "J",
            "Lcom/mapbox/common/http_backend/RequestObserver;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/common/module/RequestDetail;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestObserver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRequestFinished"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/mapbox/common/module/cronet/CronetClientDetail;->cronetEngine:Lcom/mapbox/common/module/cronet/LazyEngine;

    invoke-virtual {v0}, Lcom/mapbox/common/module/cronet/LazyEngine;->getEngine()Lorg/chromium/net/CronetEngine;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    if-eqz v2, :cond_0

    invoke-direct/range {v1 .. v7}, Lcom/mapbox/common/module/cronet/CronetClientDetail;->buildRequestWithEngine(Lorg/chromium/net/CronetEngine;Lcom/mapbox/common/http_backend/Request;JLcom/mapbox/common/http_backend/RequestObserver;Lkotlin/jvm/functions/Function1;)Lcom/mapbox/common/module/cronet/CronetRequestDetail;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/mapbox/common/module/RequestDetail;

    return-object p1

    .line 34
    :cond_0
    iget-object v2, v1, Lcom/mapbox/common/module/cronet/CronetClientDetail;->fallback:Lcom/mapbox/common/module/HttpClientDetail;

    invoke-interface/range {v2 .. v7}, Lcom/mapbox/common/module/HttpClientDetail;->buildRequest(Lcom/mapbox/common/http_backend/Request;JLcom/mapbox/common/http_backend/RequestObserver;Lkotlin/jvm/functions/Function1;)Lcom/mapbox/common/module/RequestDetail;

    move-result-object p1

    return-object p1
.end method

.method public executor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mapbox/common/module/cronet/CronetClientDetail;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public setMaxRequestsPerHost(B)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mapbox/common/module/cronet/CronetClientDetail;->fallback:Lcom/mapbox/common/module/HttpClientDetail;

    invoke-interface {v0, p1}, Lcom/mapbox/common/module/HttpClientDetail;->setMaxRequestsPerHost(B)V

    return-void
.end method

.method public supportsKeepCompression()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

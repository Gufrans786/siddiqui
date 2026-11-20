.class public final Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;
.super Lcom/rnmapbox/rnmbx/v11compat/httpinterceptor/HttpServiceBase;
.source "CustomHttpHeaders.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005J>\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0013j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;",
        "Lcom/rnmapbox/rnmbx/v11compat/httpinterceptor/HttpServiceBase;",
        "<init>",
        "()V",
        "LOG_TAG",
        "",
        "map",
        "",
        "Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;",
        "getMap",
        "()Ljava/util/Map;",
        "addCustomHeader",
        "",
        "headerName",
        "headerValue",
        "options",
        "Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;",
        "removeCustomHeader",
        "getCustomRequestHeaders",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "customRequestHeaders",
        "httpRequest",
        "Lcom/mapbox/common/HttpRequest;",
        "onRequest",
        "request",
        "onDownload",
        "Lcom/mapbox/common/DownloadOptions;",
        "download",
        "onResponse",
        "Lcom/mapbox/common/HttpResponse;",
        "response",
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


# static fields
.field public static final INSTANCE:Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;

.field public static final LOG_TAG:Ljava/lang/String; = "CustomHttpHeaders"

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;

    invoke-direct {v0}, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;-><init>()V

    sput-object v0, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->INSTANCE:Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/v11compat/httpinterceptor/HttpServiceBase;-><init>()V

    return-void
.end method

.method public static synthetic addCustomHeader$default(Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->addCustomHeader(Ljava/lang/String;Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;)V

    return-void
.end method


# virtual methods
.method public final addCustomHeader(Ljava/lang/String;Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;)V
    .locals 2

    const-string v0, "headerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/mapbox/common/HttpServiceFactory;->getInstance()Lcom/mapbox/common/HttpServiceInterface;

    move-result-object v0

    .line 22
    move-object v1, p0

    check-cast v1, Lcom/mapbox/common/HttpServiceInterceptorInterface;

    .line 21
    invoke-interface {v0, v1}, Lcom/mapbox/common/HttpServiceInterface;->setInterceptor(Lcom/mapbox/common/HttpServiceInterceptorInterface;)V

    .line 24
    sget-object v0, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->map:Ljava/util/Map;

    new-instance v1, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;

    invoke-direct {v1, p2, p3}, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;-><init>(Ljava/lang/String;Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getCustomRequestHeaders(Ljava/util/Map;Lcom/mapbox/common/HttpRequest;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;",
            ">;",
            "Lcom/mapbox/common/HttpRequest;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "customRequestHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "httpRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 33
    sget-object v0, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;

    invoke-virtual {v2}, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;->getOptions()Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersOptions;->getUrlRegexp()Lkotlin/text/Regex;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {p2}, Lcom/mapbox/common/HttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {p2}, Lcom/mapbox/common/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;

    invoke-virtual {v1}, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;->getHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_2
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;

    invoke-virtual {v1}, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;->getHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rnmapbox/rnmbx/modules/CustomHttpHeadersMapValue;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->map:Ljava/util/Map;

    return-object v0
.end method

.method public onDownload(Lcom/mapbox/common/DownloadOptions;)Lcom/mapbox/common/DownloadOptions;
    .locals 4

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/mapbox/common/DownloadOptions;->getRequest()Lcom/mapbox/common/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/common/HttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mapbox/common/DownloadOptions;->getRequest()Lcom/mapbox/common/HttpRequest;

    move-result-object v2

    const-string v3, "getRequest(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->getCustomRequestHeaders(Ljava/util/Map;Lcom/mapbox/common/HttpRequest;)Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p1
.end method

.method public onRequest(Lcom/mapbox/common/HttpRequest;)Lcom/mapbox/common/HttpRequest;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/mapbox/common/HttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Lcom/mapbox/common/HttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->map:Ljava/util/Map;

    invoke-virtual {p0, v1, p1}, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->getCustomRequestHeaders(Ljava/util/Map;Lcom/mapbox/common/HttpRequest;)Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p1
.end method

.method public onResponse(Lcom/mapbox/common/HttpResponse;)Lcom/mapbox/common/HttpResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final removeCustomHeader(Ljava/lang/String;)V
    .locals 1

    const-string v0, "headerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/rnmapbox/rnmbx/modules/CustomHttpHeaders;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public final Lcom/mapbox/common/module/MapboxHttpClientKt;
.super Ljava/lang/Object;
.source "MapboxHttpClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000*\u000c\u0008\u0000\u0010\u0003\"\u00020\u00042\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "ALLOW_FROM_BACKGROUND_LIST",
        "",
        "",
        "RequestId",
        "",
        "common_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ALLOW_FROM_BACKGROUND_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://api.mapbox.com/sdk-sessions/v1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    const-string v2, "https://events.mapbox.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 33
    const-string v2, "https://config.mapbox.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 34
    const-string v2, "https://api-events-staging.tilestream.net"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 35
    const-string v2, "https://api-events-config-staging.tilestream.net"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 36
    const-string v2, "https://cloudfront-staging.tilestream.net"

    aput-object v2, v0, v1

    .line 30
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mapbox/common/module/MapboxHttpClientKt;->ALLOW_FROM_BACKGROUND_LIST:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getALLOW_FROM_BACKGROUND_LIST$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/mapbox/common/module/MapboxHttpClientKt;->ALLOW_FROM_BACKGROUND_LIST:Ljava/util/List;

    return-object v0
.end method

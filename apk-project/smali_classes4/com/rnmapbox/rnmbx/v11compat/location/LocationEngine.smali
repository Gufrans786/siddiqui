.class public final Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;
.super Ljava/lang/Object;
.source "Location.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR \u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;",
        "",
        "locationProvider",
        "Lcom/mapbox/common/location/DeviceLocationProvider;",
        "request",
        "Lcom/mapbox/common/location/LocationProviderRequest;",
        "<init>",
        "(Lcom/mapbox/common/location/DeviceLocationProvider;Lcom/mapbox/common/location/LocationProviderRequest;)V",
        "getLocationProvider",
        "()Lcom/mapbox/common/location/DeviceLocationProvider;",
        "setLocationProvider",
        "(Lcom/mapbox/common/location/DeviceLocationProvider;)V",
        "getRequest",
        "()Lcom/mapbox/common/location/LocationProviderRequest;",
        "setRequest",
        "(Lcom/mapbox/common/location/LocationProviderRequest;)V",
        "observers",
        "",
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;",
        "getObservers",
        "()Ljava/util/List;",
        "setObservers",
        "(Ljava/util/List;)V",
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


# instance fields
.field private locationProvider:Lcom/mapbox/common/location/DeviceLocationProvider;

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lcom/mapbox/common/location/LocationProviderRequest;


# direct methods
.method public constructor <init>(Lcom/mapbox/common/location/DeviceLocationProvider;Lcom/mapbox/common/location/LocationProviderRequest;)V
    .locals 1

    const-string v0, "locationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;->locationProvider:Lcom/mapbox/common/location/DeviceLocationProvider;

    iput-object p2, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;->request:Lcom/mapbox/common/location/LocationProviderRequest;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;->observers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getLocationProvider()Lcom/mapbox/common/location/DeviceLocationProvider;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;->locationProvider:Lcom/mapbox/common/location/DeviceLocationProvider;

    return-object v0
.end method

.method public final getObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;->observers:Ljava/util/List;

    return-object v0
.end method

.method public final getRequest()Lcom/mapbox/common/location/LocationProviderRequest;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;->request:Lcom/mapbox/common/location/LocationProviderRequest;

    return-object v0
.end method

.method public final setLocationProvider(Lcom/mapbox/common/location/DeviceLocationProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;->locationProvider:Lcom/mapbox/common/location/DeviceLocationProvider;

    return-void
.end method

.method public final setObservers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;->observers:Ljava/util/List;

    return-void
.end method

.method public final setRequest(Lcom/mapbox/common/location/LocationProviderRequest;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;->request:Lcom/mapbox/common/location/LocationProviderRequest;

    return-void
.end method

.class public final Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;
.super Ljava/lang/Object;
.source "LocationManager.kt"

# interfaces
.implements Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;
.implements Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocationManager.kt\ncom/rnmapbox/rnmbx/location/LocationProviderForEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,277:1\n1#2:278\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0016\u001a\u00020\u0017H\u0007J\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0011H\u0017J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0011H\u0016J\u0012\u0010\u001c\u001a\u00020\u00172\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001fJ\u0010\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0014\u0010#\u001a\u00020\u00172\n\u0010$\u001a\u00060%j\u0002`&H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;",
        "Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;",
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;",
        "mEngine",
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;Landroid/content/Context;)V",
        "getMEngine",
        "()Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;",
        "setMEngine",
        "(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mConsumers",
        "Ljava/util/ArrayList;",
        "Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;",
        "getMConsumers",
        "()Ljava/util/ArrayList;",
        "setMConsumers",
        "(Ljava/util/ArrayList;)V",
        "beforeAddingFirstConsumer",
        "",
        "afterRemovedLastConsumer",
        "registerLocationConsumer",
        "locationConsumer",
        "unRegisterLocationConsumer",
        "notifyLocationUpdates",
        "location",
        "Lcom/mapbox/common/location/Location;",
        "Lcom/rnmapbox/rnmbx/v11compat/location/Location;",
        "onSuccess",
        "locationEngineResult",
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;",
        "onFailure",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
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
.field private final context:Landroid/content/Context;

.field private mConsumers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngine:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;


# direct methods
.method public constructor <init>(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mEngine:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;

    iput-object p2, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->context:Landroid/content/Context;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mConsumers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final afterRemovedLastConsumer()V
    .locals 0

    return-void
.end method

.method public final beforeAddingFirstConsumer()V
    .locals 4

    .line 46
    sget-object v0, Lcom/mapbox/android/core/permissions/PermissionsManager;->Companion:Lcom/mapbox/android/core/permissions/PermissionsManager$Companion;

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mapbox/android/core/permissions/PermissionsManager$Companion;->areLocationPermissionsGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mEngine:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;

    if-eqz v0, :cond_1

    .line 51
    move-object v1, p0

    check-cast v1, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;

    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationKt;->requestLocationUpdatesV11(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;Landroid/os/Looper;Ljava/lang/Float;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getMConsumers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mConsumers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMEngine()Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mEngine:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;

    return-object v0
.end method

.method public final notifyLocationUpdates(Lcom/mapbox/common/location/Location;)V
    .locals 9

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;

    .line 76
    invoke-virtual {p1}, Lcom/mapbox/common/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/mapbox/common/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v2

    const/4 v3, 0x1

    .line 77
    new-array v4, v3, [Lcom/mapbox/geojson/Point;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v6, 0x2

    invoke-static {v1, v4, v2, v6, v2}, Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer$DefaultImpls;->onLocationUpdated$default(Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;[Lcom/mapbox/geojson/Point;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 78
    invoke-virtual {p1}, Lcom/mapbox/common/location/Location;->getBearing()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 79
    new-array v3, v3, [D

    aput-wide v7, v3, v5

    invoke-static {v1, v3, v2, v6, v2}, Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer$DefaultImpls;->onBearingUpdated$default(Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;[DLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;)V
    .locals 1

    const-string v0, "locationEngineResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->getLastLocation()Lcom/mapbox/common/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->notifyLocationUpdates(Lcom/mapbox/common/location/Location;)V

    :cond_0
    return-void
.end method

.method public registerLocationConsumer(Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;)V
    .locals 1

    const-string v0, "locationConsumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->beforeAddingFirstConsumer()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mEngine:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;

    invoke-static {p1, v0}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationKt;->getLastLocation(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;)V

    :cond_1
    return-void
.end method

.method public final setMConsumers(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mConsumers:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMEngine(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mEngine:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngine;

    return-void
.end method

.method public unRegisterLocationConsumer(Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;)V
    .locals 1

    const-string v0, "locationConsumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->mConsumers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/location/LocationProviderForEngine;->afterRemovedLastConsumer()V

    :cond_0
    return-void
.end method

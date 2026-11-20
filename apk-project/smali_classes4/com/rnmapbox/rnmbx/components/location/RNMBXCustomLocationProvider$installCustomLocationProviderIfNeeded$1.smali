.class public final Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider$installCustomLocationProviderIfNeeded$1;
.super Ljava/lang/Object;
.source "RNMBXCustomLocationProvider.kt"

# interfaces
.implements Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;->installCustomLocationProviderIfNeeded(Lcom/mapbox/maps/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider$installCustomLocationProviderIfNeeded$1",
        "Lcom/mapbox/maps/plugin/locationcomponent/LocationProvider;",
        "registerLocationConsumer",
        "",
        "locationConsumer",
        "Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;",
        "unRegisterLocationConsumer",
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
.field final synthetic this$0:Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;


# direct methods
.method constructor <init>(Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider$installCustomLocationProviderIfNeeded$1;->this$0:Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerLocationConsumer(Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;)V
    .locals 9

    const-string v0, "locationConsumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider$installCustomLocationProviderIfNeeded$1;->this$0:Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;->getHeading()Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 91
    new-array v0, v3, [D

    aput-wide v5, v0, v2

    invoke-static {p1, v0, v4, v1, v4}, Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer$DefaultImpls;->onBearingUpdated$default(Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;[DLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider$installCustomLocationProviderIfNeeded$1;->this$0:Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;->getCoordinate()Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v0

    .line 95
    new-array v3, v3, [Lcom/mapbox/geojson/Point;

    aput-object v0, v3, v2

    invoke-static {p1, v3, v4, v1, v4}, Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer$DefaultImpls;->onLocationUpdated$default(Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;[Lcom/mapbox/geojson/Point;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider$installCustomLocationProviderIfNeeded$1;->this$0:Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;

    invoke-static {v0}, Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;->access$getLocationConsumers$p(Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterLocationConsumer(Lcom/mapbox/maps/plugin/locationcomponent/LocationConsumer;)V
    .locals 1

    const-string v0, "locationConsumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider$installCustomLocationProviderIfNeeded$1;->this$0:Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;

    invoke-static {v0}, Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;->access$getLocationConsumers$p(Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

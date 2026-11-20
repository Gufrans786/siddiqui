.class public final Lcom/rnmapbox/rnmbx/events/LocationEvent;
.super Ljava/lang/Object;
.source "LocationEvent.kt"

# interfaces
.implements Lcom/rnmapbox/rnmbx/events/IEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0015\u0008\u0016\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\tJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0001H\u0016J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0000J\u0008\u0010#\u001a\u00020 H\u0016J\u0008\u0010$\u001a\u00020\u001dH\u0016R\u0012\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/events/LocationEvent;",
        "Lcom/rnmapbox/rnmbx/events/IEvent;",
        "location",
        "Lcom/mapbox/common/location/Location;",
        "Lcom/rnmapbox/rnmbx/v11compat/location/Location;",
        "mapView",
        "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;",
        "<init>",
        "(Lcom/mapbox/common/location/Location;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V",
        "(Lcom/mapbox/common/location/Location;)V",
        "uUID",
        "Ljava/util/UUID;",
        "getUUID",
        "()Ljava/util/UUID;",
        "iD",
        "",
        "getID",
        "()I",
        "key",
        "",
        "getKey",
        "()Ljava/lang/String;",
        "type",
        "getType",
        "timestamp",
        "",
        "getTimestamp",
        "()J",
        "equals",
        "",
        "event",
        "payload",
        "Lcom/facebook/react/bridge/WritableMap;",
        "getPayload",
        "()Lcom/facebook/react/bridge/WritableMap;",
        "toJSON",
        "canCoalesce",
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
.field private final location:Lcom/mapbox/common/location/Location;

.field private final mapView:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;

.field private final uUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/mapbox/common/location/Location;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/rnmapbox/rnmbx/events/LocationEvent;-><init>(Lcom/mapbox/common/location/Location;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/common/location/Location;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->location:Lcom/mapbox/common/location/Location;

    iput-object p2, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->mapView:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    const-string p2, "randomUUID(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->uUID:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Lcom/rnmapbox/rnmbx/events/IEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    check-cast p1, Lcom/rnmapbox/rnmbx/events/LocationEvent;

    .line 36
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->uUID:Ljava/util/UUID;

    iget-object p1, p1, Lcom/rnmapbox/rnmbx/events/LocationEvent;->uUID:Ljava/util/UUID;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Lcom/rnmapbox/rnmbx/events/LocationEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->uUID:Ljava/util/UUID;

    iget-object p1, p1, Lcom/rnmapbox/rnmbx/events/LocationEvent;->uUID:Ljava/util/UUID;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getID()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->mapView:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/rnmapbox/rnmbx/events/constants/EventKeys;->USER_LOCATION_UPDATE:Lcom/rnmapbox/rnmbx/events/constants/EventKeys;

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/events/constants/EventKeys;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 45
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    .line 46
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v1, Lcom/facebook/react/bridge/WritableMap;

    .line 47
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->location:Lcom/mapbox/common/location/Location;

    invoke-virtual {v2}, Lcom/mapbox/common/location/Location;->getLongitude()D

    move-result-wide v2

    const-string v4, "longitude"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 48
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->location:Lcom/mapbox/common/location/Location;

    invoke-virtual {v2}, Lcom/mapbox/common/location/Location;->getLatitude()D

    move-result-wide v2

    const-string v4, "latitude"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 49
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->location:Lcom/mapbox/common/location/Location;

    invoke-virtual {v2}, Lcom/mapbox/common/location/Location;->getAltitude()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 50
    const-string v4, "altitude"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->location:Lcom/mapbox/common/location/Location;

    invoke-static {v2}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationKt;->getAccuracy(Lcom/mapbox/common/location/Location;)D

    move-result-wide v2

    const-string v4, "accuracy"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 55
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->location:Lcom/mapbox/common/location/Location;

    invoke-virtual {v2}, Lcom/mapbox/common/location/Location;->getBearing()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 56
    const-string v4, "heading"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 57
    const-string v4, "course"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->location:Lcom/mapbox/common/location/Location;

    invoke-virtual {v2}, Lcom/mapbox/common/location/Location;->getSpeed()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 60
    const-string/jumbo v4, "speed"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 62
    :cond_2
    const-string v2, "coords"

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 64
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->location:Lcom/mapbox/common/location/Location;

    invoke-virtual {v1}, Lcom/mapbox/common/location/Location;->getTimestamp()J

    move-result-wide v1

    long-to-double v1, v1

    const-string/jumbo v3, "timestamp"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 29
    const-string/jumbo v0, "userlocationdupdated"

    return-object v0
.end method

.method public final getUUID()Ljava/util/UUID;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/events/LocationEvent;->uUID:Ljava/util/UUID;

    return-object v0
.end method

.method public toJSON()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 69
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "createMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/events/LocationEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/events/LocationEvent;->getPayload()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "payload"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

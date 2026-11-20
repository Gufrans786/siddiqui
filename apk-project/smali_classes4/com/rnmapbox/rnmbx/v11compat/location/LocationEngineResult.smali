.class public final Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;
.super Ljava/lang/Object;
.source "Location.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0002\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0011\u0010\n\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004H\u00c6\u0003J\u001b\u0010\u000b\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\"\u0010\u0002\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;",
        "",
        "lastLocation",
        "Lcom/mapbox/common/location/Location;",
        "Lcom/rnmapbox/rnmbx/v11compat/location/Location;",
        "<init>",
        "(Lcom/mapbox/common/location/Location;)V",
        "getLastLocation",
        "()Lcom/mapbox/common/location/Location;",
        "setLastLocation",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private lastLocation:Lcom/mapbox/common/location/Location;


# direct methods
.method public constructor <init>(Lcom/mapbox/common/location/Location;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->lastLocation:Lcom/mapbox/common/location/Location;

    return-void
.end method

.method public static synthetic copy$default(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;Lcom/mapbox/common/location/Location;ILjava/lang/Object;)Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->lastLocation:Lcom/mapbox/common/location/Location;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->copy(Lcom/mapbox/common/location/Location;)Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/mapbox/common/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->lastLocation:Lcom/mapbox/common/location/Location;

    return-object v0
.end method

.method public final copy(Lcom/mapbox/common/location/Location;)Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;
    .locals 1

    new-instance v0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;

    invoke-direct {v0, p1}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;-><init>(Lcom/mapbox/common/location/Location;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->lastLocation:Lcom/mapbox/common/location/Location;

    iget-object p1, p1, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->lastLocation:Lcom/mapbox/common/location/Location;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getLastLocation()Lcom/mapbox/common/location/Location;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->lastLocation:Lcom/mapbox/common/location/Location;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->lastLocation:Lcom/mapbox/common/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/common/location/Location;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setLastLocation(Lcom/mapbox/common/location/Location;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->lastLocation:Lcom/mapbox/common/location/Location;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;->lastLocation:Lcom/mapbox/common/location/Location;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationEngineResult(lastLocation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;
.super Ljava/lang/Object;
.source "Location.kt"

# interfaces
.implements Lcom/mapbox/common/location/LocationObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;",
        "Lcom/mapbox/common/location/LocationObserver;",
        "callback",
        "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;",
        "<init>",
        "(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;)V",
        "getCallback",
        "()Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;",
        "onLocationUpdateReceived",
        "",
        "locations",
        "",
        "Lcom/mapbox/common/location/Location;",
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
.field private final callback:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;


# direct methods
.method public constructor <init>(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;->callback:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;->callback:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;

    return-object v0
.end method

.method public onLocationUpdateReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/common/location/Location;",
            ">;)V"
        }
    .end annotation

    const-string v0, "locations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;->callback:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;

    new-instance v1, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/common/location/Location;

    invoke-direct {v1, p1}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;-><init>(Lcom/mapbox/common/location/Location;)V

    invoke-interface {v0, v1}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;->onSuccess(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;)V

    return-void
.end method

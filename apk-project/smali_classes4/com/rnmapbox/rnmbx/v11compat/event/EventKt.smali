.class public final Lcom/rnmapbox/rnmbx/v11compat/event/EventKt;
.super Ljava/lang/Object;
.source "Event.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a \u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a8\u0006\u000b"
    }
    d2 = {
        "getMapLoadingErrorEventData",
        "Lcom/rnmapbox/rnmbx/v11compat/event/MapLoadingErrorEventData;",
        "Lcom/rnmapbox/rnmbx/v11compat/event/Event;",
        "subscribe",
        "",
        "Lcom/mapbox/maps/MapboxMap;",
        "observer",
        "Lcom/rnmapbox/rnmbx/v11compat/event/Observer;",
        "events",
        "",
        "",
        "rnmapbox_maps_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getMapLoadingErrorEventData(Lcom/rnmapbox/rnmbx/v11compat/event/Event;)Lcom/rnmapbox/rnmbx/v11compat/event/MapLoadingErrorEventData;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p0, Lcom/rnmapbox/rnmbx/v11compat/event/MapLoadingErrorEventData;

    const-string v0, "n/a"

    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/v11compat/event/MapLoadingErrorEventData;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static final subscribe(Lcom/mapbox/maps/MapboxMap;Lcom/rnmapbox/rnmbx/v11compat/event/Observer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/maps/MapboxMap;",
            "Lcom/rnmapbox/rnmbx/v11compat/event/Observer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "observer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "events"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

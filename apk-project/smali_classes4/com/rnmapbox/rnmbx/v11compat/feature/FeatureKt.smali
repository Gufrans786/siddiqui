.class public final Lcom/rnmapbox/rnmbx/v11compat/feature/FeatureKt;
.super Ljava/lang/Object;
.source "Feature.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"\u0019\u0010\u0002\u001a\u00020\u0003*\u00060\u0001j\u0002`\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\"\u0019\u0010\u0002\u001a\u00020\u0003*\u00060\u0008j\u0002`\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\n*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0007\"\u00020\u00082\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "QueriedRenderedFeature",
        "Lcom/mapbox/maps/QueriedRenderedFeature;",
        "feature",
        "Lcom/mapbox/geojson/Feature;",
        "Lcom/rnmapbox/rnmbx/v11compat/feature/QueriedRenderedFeature;",
        "getFeature",
        "(Lcom/mapbox/maps/QueriedRenderedFeature;)Lcom/mapbox/geojson/Feature;",
        "QueriedSourceFeature",
        "Lcom/mapbox/maps/QueriedSourceFeature;",
        "Lcom/rnmapbox/rnmbx/v11compat/feature/QueriedSourceFeature;",
        "(Lcom/mapbox/maps/QueriedSourceFeature;)Lcom/mapbox/geojson/Feature;",
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
.method public static final getFeature(Lcom/mapbox/maps/QueriedRenderedFeature;)Lcom/mapbox/geojson/Feature;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/mapbox/maps/QueriedRenderedFeature;->getQueriedFeature()Lcom/mapbox/maps/QueriedFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mapbox/maps/QueriedFeature;->getFeature()Lcom/mapbox/geojson/Feature;

    move-result-object p0

    const-string v0, "getFeature(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getFeature(Lcom/mapbox/maps/QueriedSourceFeature;)Lcom/mapbox/geojson/Feature;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/mapbox/maps/QueriedSourceFeature;->getQueriedFeature()Lcom/mapbox/maps/QueriedFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mapbox/maps/QueriedFeature;->getFeature()Lcom/mapbox/geojson/Feature;

    move-result-object p0

    const-string v0, "getFeature(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

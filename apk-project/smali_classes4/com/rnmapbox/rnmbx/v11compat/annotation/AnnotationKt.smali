.class public final Lcom/rnmapbox/rnmbx/v11compat/annotation/AnnotationKt;
.super Ljava/lang/Object;
.source "Annotation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001a\u0010\u0007\u001a\u00020\u0008*\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000*\n\u0010\u0002\"\u00020\u00012\u00020\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "INVALID_ANNOTATION_ID",
        "",
        "AnnotationID",
        "geometry",
        "Lcom/mapbox/maps/ViewAnnotationOptions$Builder;",
        "point",
        "Lcom/mapbox/geojson/Geometry;",
        "offsets",
        "",
        "x",
        "",
        "y",
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


# static fields
.field public static final INVALID_ANNOTATION_ID:Ljava/lang/String; = ""


# direct methods
.method public static final geometry(Lcom/mapbox/maps/ViewAnnotationOptions$Builder;Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/maps/ViewAnnotationOptions$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lcom/mapbox/maps/viewannotation/ViewAnnotationOptionsKtxKt;->geometry(Lcom/mapbox/maps/ViewAnnotationOptions$Builder;Lcom/mapbox/geojson/Geometry;)Lcom/mapbox/maps/ViewAnnotationOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final offsets(Lcom/mapbox/maps/ViewAnnotationOptions$Builder;DD)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/mapbox/maps/ViewAnnotationAnchorConfig$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/ViewAnnotationAnchorConfig$Builder;-><init>()V

    sget-object v1, Lcom/mapbox/maps/ViewAnnotationAnchor;->CENTER:Lcom/mapbox/maps/ViewAnnotationAnchor;

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/ViewAnnotationAnchorConfig$Builder;->anchor(Lcom/mapbox/maps/ViewAnnotationAnchor;)Lcom/mapbox/maps/ViewAnnotationAnchorConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mapbox/maps/ViewAnnotationAnchorConfig$Builder;->offsetX(D)Lcom/mapbox/maps/ViewAnnotationAnchorConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/mapbox/maps/ViewAnnotationAnchorConfig$Builder;->offsetY(D)Lcom/mapbox/maps/ViewAnnotationAnchorConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/maps/ViewAnnotationAnchorConfig$Builder;->build()Lcom/mapbox/maps/ViewAnnotationAnchorConfig;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/ViewAnnotationOptions$Builder;->variableAnchors(Ljava/util/List;)Lcom/mapbox/maps/ViewAnnotationOptions$Builder;

    return-void
.end method

.class public abstract Lcom/rnmapbox/rnmbx/v11compat/annotation/OnViewAnnotationUpdatedListener;
.super Ljava/lang/Object;
.source "Annotation.kt"

# interfaces
.implements Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/v11compat/annotation/OnViewAnnotationUpdatedListener;",
        "Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener;",
        "<init>",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAnnotationAnchorCoordinateUpdated(Landroid/view/View;Lcom/mapbox/geojson/Point;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener$DefaultImpls;->onViewAnnotationAnchorCoordinateUpdated(Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener;Landroid/view/View;Lcom/mapbox/geojson/Point;)V

    return-void
.end method

.method public onViewAnnotationAnchorUpdated(Landroid/view/View;Lcom/mapbox/maps/ViewAnnotationAnchorConfig;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener$DefaultImpls;->onViewAnnotationAnchorUpdated(Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener;Landroid/view/View;Lcom/mapbox/maps/ViewAnnotationAnchorConfig;)V

    return-void
.end method

.method public onViewAnnotationPositionUpdated(Landroid/view/View;Lcom/mapbox/maps/ScreenCoordinate;DD)V
    .locals 0

    .line 30
    invoke-static/range {p0 .. p6}, Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener$DefaultImpls;->onViewAnnotationPositionUpdated(Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener;Landroid/view/View;Lcom/mapbox/maps/ScreenCoordinate;DD)V

    return-void
.end method

.method public onViewAnnotationVisibilityUpdated(Landroid/view/View;Z)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener$DefaultImpls;->onViewAnnotationVisibilityUpdated(Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener;Landroid/view/View;Z)V

    return-void
.end method

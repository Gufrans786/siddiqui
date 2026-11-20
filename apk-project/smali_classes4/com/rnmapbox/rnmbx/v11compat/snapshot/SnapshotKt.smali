.class public final Lcom/rnmapbox/rnmbx/v11compat/snapshot/SnapshotKt;
.super Ljava/lang/Object;
.source "Snapshot.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0000\u001a\u0004\u0018\u00010\u0003\u001a(\u0010\u0004\u001a\u00020\u0001*\u00020\u00052\u001c\u0010\u0006\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00010\u0007\u001a\n\u0010\t\u001a\u00020\n*\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "accessToken",
        "",
        "Lcom/mapbox/maps/MapSnapshotOptions$Builder;",
        "",
        "startV11",
        "Lcom/mapbox/maps/Snapshotter;",
        "callback",
        "Lkotlin/Function2;",
        "Landroid/graphics/Bitmap;",
        "toMapboxImage",
        "Lcom/mapbox/maps/Image;",
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
.method public static final accessToken(Lcom/mapbox/maps/MapSnapshotOptions$Builder;Ljava/lang/String;)V
    .locals 0

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final startV11(Lcom/mapbox/maps/Snapshotter;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/maps/Snapshotter;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/graphics/Bitmap;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/rnmapbox/rnmbx/v11compat/snapshot/SnapshotKt$sam$com_mapbox_maps_SnapshotResultCallback$0;

    invoke-direct {v0, p1}, Lcom/rnmapbox/rnmbx/v11compat/snapshot/SnapshotKt$sam$com_mapbox_maps_SnapshotResultCallback$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lcom/mapbox/maps/SnapshotResultCallback;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mapbox/maps/Snapshotter;->start(Lcom/mapbox/maps/SnapshotOverlayCallback;Lcom/mapbox/maps/SnapshotResultCallback;)V

    return-void
.end method

.method public static final toMapboxImage(Landroid/graphics/Bitmap;)Lcom/mapbox/maps/Image;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/mapbox/maps/ExtensionUtils;->toMapboxImage(Landroid/graphics/Bitmap;)Lcom/mapbox/maps/Image;

    move-result-object p0

    return-object p0
.end method

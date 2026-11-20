.class public final Lcom/rnmapbox/rnmbx/v11compat/offlinemanager/OfflineManagerKt;
.super Ljava/lang/Object;
.source "OfflineManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u001c\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u001aL\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0015\u001a\u0012\u0010\u0016\u001a\u00020\u0017*\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0004\u00a8\u0006\u0019"
    }
    d2 = {
        "getOfflineRegionManager",
        "Lcom/mapbox/maps/OfflineRegionManager;",
        "getAccessToken",
        "Lkotlin/Function0;",
        "",
        "getOfflineManager",
        "Lcom/mapbox/maps/OfflineManager;",
        "tileStore",
        "Lcom/mapbox/common/TileStore;",
        "getTilesetDescriptors",
        "Ljava/util/ArrayList;",
        "Lcom/mapbox/common/TilesetDescriptor;",
        "Lkotlin/collections/ArrayList;",
        "offlineManager",
        "styleURI",
        "minZoom",
        "",
        "maxZoom",
        "stylePackOptions",
        "Lcom/mapbox/maps/StylePackLoadOptions;",
        "tilesets",
        "",
        "setAccessToken",
        "",
        "token",
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
.method public static final getOfflineManager(Lcom/mapbox/common/TileStore;Lkotlin/jvm/functions/Function0;)Lcom/mapbox/maps/OfflineManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/common/TileStore;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mapbox/maps/OfflineManager;"
        }
    .end annotation

    const-string/jumbo v0, "tileStore"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "getAccessToken"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance p0, Lcom/mapbox/maps/OfflineManager;

    invoke-direct {p0}, Lcom/mapbox/maps/OfflineManager;-><init>()V

    return-object p0
.end method

.method public static final getOfflineRegionManager(Lkotlin/jvm/functions/Function0;)Lcom/mapbox/maps/OfflineRegionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mapbox/maps/OfflineRegionManager;"
        }
    .end annotation

    const-string v0, "getAccessToken"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance p0, Lcom/mapbox/maps/OfflineRegionManager;

    invoke-direct {p0}, Lcom/mapbox/maps/OfflineRegionManager;-><init>()V

    return-object p0
.end method

.method public static final getTilesetDescriptors(Lcom/mapbox/maps/OfflineManager;Ljava/lang/String;BBLcom/mapbox/maps/StylePackLoadOptions;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/maps/OfflineManager;",
            "Ljava/lang/String;",
            "BB",
            "Lcom/mapbox/maps/StylePackLoadOptions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/mapbox/common/TilesetDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "offlineManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "styleURI"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stylePackOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tilesets"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;-><init>()V

    .line 21
    invoke-virtual {v0, p1}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->styleURI(Ljava/lang/String;)Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p2}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->minZoom(B)Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p3}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->maxZoom(B)Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p4}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->stylePackOptions(Lcom/mapbox/maps/StylePackLoadOptions;)Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    move-result-object p4

    const/high16 v0, 0x40000000    # 2.0f

    .line 25
    invoke-virtual {p4, v0}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->pixelRatio(F)Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    move-result-object p4

    .line 26
    invoke-virtual {p4}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->build()Lcom/mapbox/maps/TilesetDescriptorOptions;

    move-result-object p4

    .line 27
    invoke-virtual {p0, p4}, Lcom/mapbox/maps/OfflineManager;->createTilesetDescriptor(Lcom/mapbox/maps/TilesetDescriptorOptions;)Lcom/mapbox/common/TilesetDescriptor;

    move-result-object p4

    const-string v0, "createTilesetDescriptor(...)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 28
    new-array v1, v1, [Lcom/mapbox/common/TilesetDescriptor;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p4

    .line 29
    move-object v1, p5

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    invoke-direct {v1}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->styleURI(Ljava/lang/String;)Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p5}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->tilesets(Ljava/util/List;)Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p2}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->minZoom(B)Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1, p3}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->maxZoom(B)Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/mapbox/maps/TilesetDescriptorOptions$Builder;->build()Lcom/mapbox/maps/TilesetDescriptorOptions;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/mapbox/maps/OfflineManager;->createTilesetDescriptor(Lcom/mapbox/maps/TilesetDescriptorOptions;)Lcom/mapbox/common/TilesetDescriptor;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p4
.end method

.method public static final setAccessToken(Lcom/mapbox/common/TileStore;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "token"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/mapbox/common/MapboxOptions;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method

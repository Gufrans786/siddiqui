.class public final Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;
.super Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;
.source "RNMBXRasterParticleLayer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer<",
        "Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;",
        "Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;",
        "Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "mSourceLayerID",
        "",
        "getMSourceLayerID",
        "()Ljava/lang/String;",
        "setMSourceLayerID",
        "(Ljava/lang/String;)V",
        "makeLayer",
        "addStyles",
        "",
        "setSourceLayerID",
        "sourceLayer",
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
.field private mSourceLayerID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addStyles()V
    .locals 6

    .line 24
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->getMLayer()Lcom/mapbox/maps/extension/style/layers/Layer;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;

    if-eqz v0, :cond_0

    .line 25
    sget-object v1, Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyleFactory;->INSTANCE:Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyleFactory;

    new-instance v2, Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyle;

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->mReactStyle:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v5, p0, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->mMap:Lcom/mapbox/maps/MapboxMap;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyle;-><init>(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/mapbox/maps/MapboxMap;)V

    invoke-virtual {v1, v0, v2}, Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyleFactory;->setRasterParticleLayerStyle(Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyle;)V

    return-void

    .line 26
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;

    .line 27
    sget-object v0, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    const-string v1, "RNMBXRasterParticleLayer"

    const-string v2, "mLayer is null"

    invoke-virtual {v0, v1, v2}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getMSourceLayerID()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->mSourceLayerID:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic makeLayer()Lcom/mapbox/maps/extension/style/layers/Layer;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->makeLayer()Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    return-object v0
.end method

.method public makeLayer()Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;
    .locals 3

    .line 16
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->mSourceID:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->mSourceLayerID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;->sourceLayer(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;

    :cond_0
    return-object v0
.end method

.method public final setMSourceLayerID(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->mSourceLayerID:Ljava/lang/String;

    return-void
.end method

.method public final setSourceLayerID(Ljava/lang/String;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->mSourceLayerID:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXRasterParticleLayer;->getMLayer()Lcom/mapbox/maps/extension/style/layers/Layer;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;->sourceLayer(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;

    :cond_0
    return-void
.end method

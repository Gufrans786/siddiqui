.class public final Lcom/rnmapbox/rnmbx/v11compat/stylefactory/StyleFactoryKt;
.super Ljava/lang/Object;
.source "StyleFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0000\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "rasterColor",
        "",
        "Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;",
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
.method public static final rasterColor(Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;->Companion:Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;->color(I)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;->rasterColor(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;

    return-void
.end method

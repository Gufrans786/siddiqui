.class public final Lcom/rnmapbox/rnmbx/components/images/NativeImageUpdater$DefaultImpls;
.super Ljava/lang/Object;
.source "RNMBXImages.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rnmapbox/rnmbx/components/images/NativeImageUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic updateImage$default(Lcom/rnmapbox/rnmbx/components/images/NativeImageUpdater;Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;DILjava/lang/Object;)V
    .locals 9

    if-nez p10, :cond_5

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    and-int/lit8 p3, p9, 0x8

    if-eqz p3, :cond_1

    .line 63
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p9, 0x10

    if-eqz p3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_2
    move-object v5, p5

    and-int/lit8 p3, p9, 0x20

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    move-object v6, p3

    goto :goto_0

    :cond_3
    move-object v6, p6

    :goto_0
    and-int/lit8 p3, p9, 0x40

    if-eqz p3, :cond_4

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    move-wide v7, p3

    goto :goto_1

    :cond_4
    move-wide/from16 v7, p7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v8}, Lcom/rnmapbox/rnmbx/components/images/NativeImageUpdater;->updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;D)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateImage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

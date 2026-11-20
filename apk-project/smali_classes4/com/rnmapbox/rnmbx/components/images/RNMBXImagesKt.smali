.class public final Lcom/rnmapbox/rnmbx/components/images/RNMBXImagesKt;
.super Ljava/lang/Object;
.source "RNMBXImages.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\u001af\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u001a\u001e\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "addBitmapImage",
        "Lcom/mapbox/bindgen/Expected;",
        "",
        "Lcom/mapbox/bindgen/None;",
        "Lcom/mapbox/maps/Style;",
        "imageId",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "sdf",
        "",
        "stretchX",
        "",
        "Lcom/mapbox/maps/ImageStretches;",
        "stretchY",
        "content",
        "Lcom/mapbox/maps/ImageContent;",
        "scale",
        "",
        "nativeImage",
        "Lcom/rnmapbox/rnmbx/components/images/NativeImage;",
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
.method public static final addBitmapImage(Lcom/mapbox/maps/Style;Lcom/rnmapbox/rnmbx/components/images/NativeImage;)Lcom/mapbox/bindgen/Expected;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/maps/Style;",
            "Lcom/rnmapbox/rnmbx/components/images/NativeImage;",
            ")",
            "Lcom/mapbox/bindgen/Expected<",
            "Ljava/lang/String;",
            "Lcom/mapbox/bindgen/None;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/components/images/NativeImage;->getInfo()Lcom/rnmapbox/rnmbx/components/images/ImageInfo;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/components/images/NativeImage;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const-string p1, "getBitmap(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getSdf()Z

    move-result v4

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getStretchX()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getStretchY()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getContent()Lcom/mapbox/maps/ImageContent;

    move-result-object v7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v8, v9}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getScaleOr(D)D

    move-result-wide v8

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/rnmapbox/rnmbx/components/images/RNMBXImagesKt;->addBitmapImage(Lcom/mapbox/maps/Style;Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;D)Lcom/mapbox/bindgen/Expected;

    move-result-object p0

    return-object p0
.end method

.method public static final addBitmapImage(Lcom/mapbox/maps/Style;Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;D)Lcom/mapbox/bindgen/Expected;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/maps/Style;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Ljava/util/List<",
            "Lcom/mapbox/maps/ImageStretches;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mapbox/maps/ImageStretches;",
            ">;",
            "Lcom/mapbox/maps/ImageContent;",
            "D)",
            "Lcom/mapbox/bindgen/Expected<",
            "Ljava/lang/String;",
            "Lcom/mapbox/bindgen/None;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stretchX"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stretchY"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    move-object v1, v0

    check-cast v1, Ljava/nio/Buffer;

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 38
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4064000000000000L    # 160.0

    div-double/2addr v3, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, v3

    mul-double/2addr v1, p7

    double-to-float p7, v1

    move-object p8, p2

    move p2, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move p4, p3

    .line 39
    new-instance p3, Lcom/mapbox/maps/Image;

    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v2, "array(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rnmapbox/rnmbx/v11compat/image/ImageKt;->toImageData([B)Lcom/mapbox/bindgen/DataRef;

    move-result-object v0

    invoke-direct {p3, v1, p8, v0}, Lcom/mapbox/maps/Image;-><init>(IILcom/mapbox/bindgen/DataRef;)V

    .line 36
    invoke-virtual/range {p0 .. p7}, Lcom/mapbox/maps/Style;->addStyleImage(Ljava/lang/String;FLcom/mapbox/maps/Image;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;)Lcom/mapbox/bindgen/Expected;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic addBitmapImage$default(Lcom/mapbox/maps/Style;Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;DILjava/lang/Object;)Lcom/mapbox/bindgen/Expected;
    .locals 9

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    and-int/lit8 p3, p9, 0x8

    if-eqz p3, :cond_1

    .line 33
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

    invoke-static/range {v0 .. v8}, Lcom/rnmapbox/rnmbx/components/images/RNMBXImagesKt;->addBitmapImage(Lcom/mapbox/maps/Style;Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;D)Lcom/mapbox/bindgen/Expected;

    move-result-object p0

    return-object p0
.end method

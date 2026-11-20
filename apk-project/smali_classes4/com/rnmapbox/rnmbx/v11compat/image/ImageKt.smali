.class public final Lcom/rnmapbox/rnmbx/v11compat/image/ImageKt;
.super Ljava/lang/Object;
.source "Image.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0003\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0007\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0008\u001a\n\u0010\t\u001a\u00020\n*\u00020\u000b\u001a,\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u001a\"\u0010\u0016\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013\u001a\u0016\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a\u001a\n\u0010\u001c\u001a\u00020\u001d*\u00020\n\u001a\n\u0010\u001e\u001a\u00020\u0001*\u00020\n*\n\u0010\u0000\"\u00020\u00012\u00020\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "ImageHolder",
        "Lcom/mapbox/maps/ImageHolder;",
        "toImageData",
        "Lcom/mapbox/bindgen/DataRef;",
        "",
        "toByteArray",
        "toBitmapImageHolder",
        "Landroid/graphics/drawable/VectorDrawable;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        "toMapboxImage",
        "Lcom/mapbox/maps/Image;",
        "Landroid/graphics/Bitmap;",
        "addStyleImage",
        "",
        "Lcom/mapbox/maps/Style;",
        "imageId",
        "",
        "image",
        "info",
        "Lcom/rnmapbox/rnmbx/components/images/ImageInfo;",
        "scale",
        "",
        "addBitmapImage",
        "bitmap",
        "emptyImage",
        "width",
        "",
        "height",
        "toDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "toImageHolder",
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
.method public static final addBitmapImage(Lcom/mapbox/maps/Style;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/rnmapbox/rnmbx/components/images/ImageInfo;)V
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {p2}, Lcom/mapbox/maps/ExtensionUtils;->toMapboxImage(Landroid/graphics/Bitmap;)Lcom/mapbox/maps/Image;

    move-result-object v3

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 71
    invoke-static/range {v1 .. v8}, Lcom/rnmapbox/rnmbx/v11compat/image/ImageKt;->addStyleImage$default(Lcom/mapbox/maps/Style;Ljava/lang/String;Lcom/mapbox/maps/Image;Lcom/rnmapbox/rnmbx/components/images/ImageInfo;DILjava/lang/Object;)V

    return-void
.end method

.method public static final addStyleImage(Lcom/mapbox/maps/Style;Ljava/lang/String;Lcom/mapbox/maps/Image;Lcom/rnmapbox/rnmbx/components/images/ImageInfo;D)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 67
    invoke-virtual {p3, v0, v1}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getScaleOr(D)D

    move-result-wide v0

    mul-double/2addr v0, p4

    double-to-float v4, v0

    invoke-virtual {p3}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getSdf()Z

    move-result v6

    invoke-virtual {p3}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getStretchX()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getStretchY()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Lcom/rnmapbox/rnmbx/components/images/ImageInfo;->getContent()Lcom/mapbox/maps/ImageContent;

    move-result-object v9

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/mapbox/maps/Style;->addStyleImage(Ljava/lang/String;FLcom/mapbox/maps/Image;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;)Lcom/mapbox/bindgen/Expected;

    return-void
.end method

.method public static synthetic addStyleImage$default(Lcom/mapbox/maps/Style;Ljava/lang/String;Lcom/mapbox/maps/Image;Lcom/rnmapbox/rnmbx/components/images/ImageInfo;DILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/rnmapbox/rnmbx/v11compat/image/ImageKt;->addStyleImage(Lcom/mapbox/maps/Style;Ljava/lang/String;Lcom/mapbox/maps/Image;Lcom/rnmapbox/rnmbx/components/images/ImageInfo;D)V

    return-void
.end method

.method public static final emptyImage(II)Lcom/mapbox/maps/Image;
    .locals 2

    .line 79
    new-instance v0, Lcom/mapbox/maps/Image;

    mul-int v1, p0, p1

    mul-int/lit8 v1, v1, 0x4

    .line 80
    invoke-static {v1}, Lcom/mapbox/bindgen/DataRef;->allocateNative(I)Lcom/mapbox/bindgen/DataRef;

    move-result-object v1

    .line 79
    invoke-direct {v0, p0, p1, v1}, Lcom/mapbox/maps/Image;-><init>(IILcom/mapbox/bindgen/DataRef;)V

    return-object v0
.end method

.method public static final toBitmapImageHolder(Landroid/graphics/drawable/BitmapDrawable;)Lcom/mapbox/maps/ImageHolder;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/mapbox/maps/ImageHolder;->Companion:Lcom/mapbox/maps/ImageHolder$Companion;

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mapbox/maps/ImageHolder$Companion;->from(Landroid/graphics/Bitmap;)Lcom/mapbox/maps/ImageHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final toBitmapImageHolder(Landroid/graphics/drawable/VectorDrawable;)Lcom/mapbox/maps/ImageHolder;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/mapbox/maps/ImageHolder;->Companion:Lcom/mapbox/maps/ImageHolder$Companion;

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mapbox/maps/ImageHolder$Companion;->from(Landroid/graphics/Bitmap;)Lcom/mapbox/maps/ImageHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final toByteArray(Lcom/mapbox/bindgen/DataRef;)[B
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/mapbox/bindgen/DataRef;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/mapbox/bindgen/DataRef;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const-string v0, "array(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/bindgen/DataRef;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    const-string v0, "getBuffer(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 35
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static final toDrawable(Lcom/mapbox/maps/Image;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/mapbox/maps/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapbox/maps/Image;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/mapbox/maps/Image;->getData()Lcom/mapbox/bindgen/DataRef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mapbox/bindgen/DataRef;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    check-cast p0, Ljava/nio/Buffer;

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 88
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final toImageData([B)Lcom/mapbox/bindgen/DataRef;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    array-length v0, p0

    invoke-static {v0}, Lcom/mapbox/bindgen/DataRef;->allocateNative(I)Lcom/mapbox/bindgen/DataRef;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/mapbox/bindgen/DataRef;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final toImageHolder(Lcom/mapbox/maps/Image;)Lcom/mapbox/maps/ImageHolder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/mapbox/maps/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/mapbox/maps/Image;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/mapbox/maps/Image;->getData()Lcom/mapbox/bindgen/DataRef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mapbox/bindgen/DataRef;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    check-cast p0, Ljava/nio/Buffer;

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 95
    sget-object p0, Lcom/mapbox/maps/ImageHolder;->Companion:Lcom/mapbox/maps/ImageHolder$Companion;

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/ImageHolder$Companion;->from(Landroid/graphics/Bitmap;)Lcom/mapbox/maps/ImageHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final toMapboxImage(Landroid/graphics/Bitmap;)Lcom/mapbox/maps/Image;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lcom/mapbox/maps/ExtensionUtils;->toMapboxImage(Landroid/graphics/Bitmap;)Lcom/mapbox/maps/Image;

    move-result-object p0

    return-object p0
.end method

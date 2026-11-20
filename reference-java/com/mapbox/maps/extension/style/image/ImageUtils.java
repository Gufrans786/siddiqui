package com.mapbox.maps.extension.style.image;

import android.graphics.Bitmap;
import com.mapbox.maps.Image;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.StyleContract;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0019\b\u0002\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\n\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u000b2\u0019\b\u0002\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\n\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nH\u0007\u001a5\u0010\f\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u001b\b\u0002\u0010\u0006\u001a\u0015\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007¢\u0006\u0002\b\nH\u0007\u001a\u0012\u0010\u000f\u001a\u00020\t*\u00020\u00102\u0006\u0010\u0000\u001a\u00020\u0011\u001a\u0012\u0010\u0012\u001a\u00020\t*\u00020\u00102\u0006\u0010\u0000\u001a\u00020\u0011¨\u0006\u0013"}, d2 = {"image", "Lcom/mapbox/maps/extension/style/image/ImageExtensionImpl;", "imageId", "", "bitmap", "Landroid/graphics/Bitmap;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/image/ImageExtensionImpl$Builder;", "", "Lkotlin/ExtensionFunctionType;", "Lcom/mapbox/maps/Image;", "image9Patch", "Lcom/mapbox/maps/extension/style/image/ImageNinePatchExtensionImpl;", "Lcom/mapbox/maps/extension/style/image/ImageNinePatchExtensionImpl$Builder;", "addImage", "Lcom/mapbox/maps/MapboxStyleManager;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleImageExtension;", "addImage9Patch", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class ImageUtils {
    public static final ImageNinePatchExtensionImpl image9Patch(String imageId, Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return image9Patch$default(imageId, bitmap, null, 4, null);
    }

    @Deprecated(message = "Constructing image without image or bitmap is deprecated. Please use `fun image(imageId: String, image: Image, block: ImageExtensionImpl.Builder.() -> Unit): ImageExtensionImpl` or `fun image(imageId: String, bitmap: Bitmap, block: ImageExtensionImpl.Builder.() -> Unit): ImageExtensionImpl` instead.", replaceWith = @ReplaceWith(expression = "image(imageId, image, block)", imports = {}))
    public static final ImageExtensionImpl image(String imageId, Function1<? super ImageExtensionImpl.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(block, "block");
        ImageExtensionImpl.Builder builder = new ImageExtensionImpl.Builder(imageId);
        block.invoke(builder);
        return builder.build();
    }

    public static ImageExtensionImpl image$default(String str, Image image, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = new Function1<ImageExtensionImpl.Builder, Unit>() {
                public final void invoke2(ImageExtensionImpl.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "$this$null");
                }

                @Override
                public Unit invoke(ImageExtensionImpl.Builder builder) {
                    invoke2(builder);
                    return Unit.INSTANCE;
                }
            };
        }
        return image(str, image, (Function1<? super ImageExtensionImpl.Builder, Unit>) function1);
    }

    public static final ImageExtensionImpl image(String imageId, Image image, Function1<? super ImageExtensionImpl.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(block, "block");
        ImageExtensionImpl.Builder builder = new ImageExtensionImpl.Builder(imageId, image);
        block.invoke(builder);
        return builder.build();
    }

    public static ImageExtensionImpl image$default(String str, Bitmap bitmap, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = new Function1<ImageExtensionImpl.Builder, Unit>() {
                public final void invoke2(ImageExtensionImpl.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "$this$null");
                }

                @Override
                public Unit invoke(ImageExtensionImpl.Builder builder) {
                    invoke2(builder);
                    return Unit.INSTANCE;
                }
            };
        }
        return image(str, bitmap, (Function1<? super ImageExtensionImpl.Builder, Unit>) function1);
    }

    public static final ImageExtensionImpl image(String imageId, Bitmap bitmap, Function1<? super ImageExtensionImpl.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(block, "block");
        ImageExtensionImpl.Builder builder = new ImageExtensionImpl.Builder(imageId, bitmap);
        block.invoke(builder);
        return builder.build();
    }

    public static final void addImage(MapboxStyleManager mapboxStyleManager, StyleContract.StyleImageExtension image) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(image, "image");
        image.bindTo(mapboxStyleManager);
    }

    public static ImageNinePatchExtensionImpl image9Patch$default(String str, Bitmap bitmap, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = null;
        }
        return image9Patch(str, bitmap, function1);
    }

    public static final ImageNinePatchExtensionImpl image9Patch(String imageId, Bitmap bitmap, Function1<? super ImageNinePatchExtensionImpl.Builder, Unit> function1) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        if (function1 != null) {
            ImageNinePatchExtensionImpl.Builder builder = new ImageNinePatchExtensionImpl.Builder(imageId, bitmap);
            function1.invoke(builder);
            ImageNinePatchExtensionImpl imageNinePatchExtensionImplBuild = builder.build();
            if (imageNinePatchExtensionImplBuild != null) {
                return imageNinePatchExtensionImplBuild;
            }
        }
        return new ImageNinePatchExtensionImpl.Builder(imageId, bitmap).build();
    }

    public static final void addImage9Patch(MapboxStyleManager mapboxStyleManager, StyleContract.StyleImageExtension image) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(image, "image");
        image.bindTo(mapboxStyleManager);
    }
}

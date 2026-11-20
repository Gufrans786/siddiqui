package com.rnmapbox.rnmbx.components.images;

import android.graphics.Bitmap;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.maps.Image;
import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import com.mapbox.maps.Style;
import com.rnmapbox.rnmbx.v11compat.image.ImageKt;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\u001af\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u001a\u001e\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013¨\u0006\u0014"}, d2 = {"addBitmapImage", "Lcom/mapbox/bindgen/Expected;", "", "Lcom/mapbox/bindgen/None;", "Lcom/mapbox/maps/Style;", "imageId", "bitmap", "Landroid/graphics/Bitmap;", "sdf", "", "stretchX", "", "Lcom/mapbox/maps/ImageStretches;", "stretchY", "content", "Lcom/mapbox/maps/ImageContent;", "scale", "", "nativeImage", "Lcom/rnmapbox/rnmbx/components/images/NativeImage;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RNMBXImagesKt {
    public static Expected addBitmapImage$default(Style style, String str, Bitmap bitmap, boolean z, List list, List list2, ImageContent imageContent, double d, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i & 8) != 0) {
            list = CollectionsKt.emptyList();
        }
        List list3 = list;
        if ((i & 16) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        return addBitmapImage(style, str, bitmap, z2, list3, list2, (i & 32) != 0 ? null : imageContent, (i & 64) != 0 ? 1.0d : d);
    }

    public static final Expected<String, None> addBitmapImage(Style style, String imageId, Bitmap bitmap, boolean z, List<ImageStretches> stretchX, List<ImageStretches> stretchY, ImageContent imageContent, double d) {
        Intrinsics.checkNotNullParameter(style, "<this>");
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(stretchX, "stretchX");
        Intrinsics.checkNotNullParameter(stretchY, "stretchY");
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getByteCount());
        bitmap.copyPixelsToBuffer(byteBufferAllocate);
        float density = (float) ((1.0d / (160.0d / ((double) bitmap.getDensity()))) * d);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        byte[] bArrArray = byteBufferAllocate.array();
        Intrinsics.checkNotNullExpressionValue(bArrArray, "array(...)");
        return style.addStyleImage(imageId, density, new Image(width, height, ImageKt.toImageData(bArrArray)), z, stretchX, stretchY, imageContent);
    }

    public static final Expected<String, None> addBitmapImage(Style style, NativeImage nativeImage) {
        Intrinsics.checkNotNullParameter(style, "<this>");
        Intrinsics.checkNotNullParameter(nativeImage, "nativeImage");
        ImageInfo info = nativeImage.getInfo();
        String name = info.getName();
        Bitmap bitmap = nativeImage.getDrawable().getBitmap();
        Intrinsics.checkNotNullExpressionValue(bitmap, "getBitmap(...)");
        return addBitmapImage(style, name, bitmap, info.getSdf(), info.getStretchX(), info.getStretchY(), info.getContent(), info.getScaleOr(1.0d));
    }
}

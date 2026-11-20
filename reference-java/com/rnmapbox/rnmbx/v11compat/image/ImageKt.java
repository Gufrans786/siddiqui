package com.rnmapbox.rnmbx.v11compat.image;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import androidx.core.graphics.drawable.DrawableKt;
import app.notifee.core.event.LogEvent;
import com.mapbox.bindgen.DataRef;
import com.mapbox.maps.ExtensionUtils;
import com.mapbox.maps.Image;
import com.mapbox.maps.ImageHolder;
import com.mapbox.maps.Style;
import com.rnmapbox.rnmbx.components.images.ImageInfo;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0003\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0007\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\b\u001a\n\u0010\t\u001a\u00020\n*\u00020\u000b\u001a,\u0010\f\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u001a\"\u0010\u0016\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013\u001a\u0016\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a\u001a\n\u0010\u001c\u001a\u00020\u001d*\u00020\n\u001a\n\u0010\u001e\u001a\u00020\u0001*\u00020\n*\n\u0010\u0000\"\u00020\u00012\u00020\u0001¨\u0006\u001f"}, d2 = {"ImageHolder", "Lcom/mapbox/maps/ImageHolder;", "toImageData", "Lcom/mapbox/bindgen/DataRef;", "", "toByteArray", "toBitmapImageHolder", "Landroid/graphics/drawable/VectorDrawable;", "Landroid/graphics/drawable/BitmapDrawable;", "toMapboxImage", "Lcom/mapbox/maps/Image;", "Landroid/graphics/Bitmap;", "addStyleImage", "", "Lcom/mapbox/maps/Style;", "imageId", "", "image", LogEvent.LEVEL_INFO, "Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "scale", "", "addBitmapImage", "bitmap", "emptyImage", "width", "", "height", "toDrawable", "Landroid/graphics/drawable/Drawable;", "toImageHolder", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ImageKt {
    public static final DataRef toImageData(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        DataRef dataRefAllocateNative = DataRef.allocateNative(bArr.length);
        dataRefAllocateNative.getBuffer().put(bArr);
        Intrinsics.checkNotNull(dataRefAllocateNative);
        return dataRefAllocateNative;
    }

    public static final byte[] toByteArray(DataRef dataRef) {
        Intrinsics.checkNotNullParameter(dataRef, "<this>");
        if (dataRef.getBuffer().hasArray()) {
            byte[] bArrArray = dataRef.getBuffer().array();
            Intrinsics.checkNotNullExpressionValue(bArrArray, "array(...)");
            return bArrArray;
        }
        ByteBuffer buffer = dataRef.getBuffer();
        Intrinsics.checkNotNullExpressionValue(buffer, "getBuffer(...)");
        byte[] bArr = new byte[buffer.remaining()];
        int iPosition = buffer.position();
        buffer.get(bArr);
        buffer.position(iPosition);
        return bArr;
    }

    public static final ImageHolder toBitmapImageHolder(VectorDrawable vectorDrawable) {
        Intrinsics.checkNotNullParameter(vectorDrawable, "<this>");
        return ImageHolder.INSTANCE.from(DrawableKt.toBitmap$default(vectorDrawable, 0, 0, null, 7, null));
    }

    public static final ImageHolder toBitmapImageHolder(BitmapDrawable bitmapDrawable) {
        Intrinsics.checkNotNullParameter(bitmapDrawable, "<this>");
        return ImageHolder.INSTANCE.from(DrawableKt.toBitmap$default(bitmapDrawable, 0, 0, null, 7, null));
    }

    public static final Image toMapboxImage(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return ExtensionUtils.toMapboxImage(bitmap);
    }

    public static void addStyleImage$default(Style style, String str, Image image, ImageInfo imageInfo, double d, int i, Object obj) {
        if ((i & 8) != 0) {
            d = 1.0d;
        }
        addStyleImage(style, str, image, imageInfo, d);
    }

    public static final void addStyleImage(Style style, String imageId, Image image, ImageInfo info, double d) {
        Intrinsics.checkNotNullParameter(style, "<this>");
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(info, "info");
        style.addStyleImage(imageId, (float) (info.getScaleOr(1.0d) * d), image, info.getSdf(), info.getStretchX(), info.getStretchY(), info.getContent());
    }

    public static final void addBitmapImage(Style style, String imageId, Bitmap bitmap, ImageInfo info) {
        Intrinsics.checkNotNullParameter(style, "<this>");
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(info, "info");
        addStyleImage$default(style, imageId, ExtensionUtils.toMapboxImage(bitmap), info, 0.0d, 8, null);
    }

    public static final Image emptyImage(int i, int i2) {
        return new Image(i, i2, DataRef.allocateNative(i * i2 * 4));
    }

    public static final Drawable toDrawable(Image image) {
        Intrinsics.checkNotNullParameter(image, "<this>");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(image.getWidth(), image.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        bitmapCreateBitmap.copyPixelsFromBuffer(image.getData().getBuffer());
        return new BitmapDrawable(Resources.getSystem(), bitmapCreateBitmap);
    }

    public static final ImageHolder toImageHolder(Image image) {
        Intrinsics.checkNotNullParameter(image, "<this>");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(image.getWidth(), image.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        bitmapCreateBitmap.copyPixelsFromBuffer(image.getData().getBuffer());
        return ImageHolder.INSTANCE.from(bitmapCreateBitmap);
    }
}

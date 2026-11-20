package com.mapbox.maps.extension.style.image;

import android.graphics.Bitmap;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.maps.ExtensionUtils;
import com.mapbox.maps.Image;
import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import com.mapbox.maps.MapboxStyleManager;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0003\u001a<\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005*\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\rH\u0007\u001a\n\u0010\u000e\u001a\u00020\u0001*\u00020\u0003¨\u0006\u000f"}, d2 = {"decodeNinePatchChunk", "Lcom/mapbox/maps/extension/style/image/NinePatchImage;", "bitmap", "Landroid/graphics/Bitmap;", "addImage9Patch", "Lcom/mapbox/bindgen/Expected;", "", "Lcom/mapbox/bindgen/None;", "Lcom/mapbox/maps/MapboxStyleManager;", "imageId", "scale", "", "sdf", "", "parse9PatchBitmap", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class NinePatchUtils {
    public static final Expected<String, None> addImage9Patch(MapboxStyleManager mapboxStyleManager, String imageId, Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return addImage9Patch$default(mapboxStyleManager, imageId, bitmap, 0.0f, false, 12, null);
    }

    public static final Expected<String, None> addImage9Patch(MapboxStyleManager mapboxStyleManager, String imageId, Bitmap bitmap, float f) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return addImage9Patch$default(mapboxStyleManager, imageId, bitmap, f, false, 8, null);
    }

    public static Expected addImage9Patch$default(MapboxStyleManager mapboxStyleManager, String str, Bitmap bitmap, float f, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            f = mapboxStyleManager.getPixelRatio();
        }
        if ((i & 8) != 0) {
            z = false;
        }
        return addImage9Patch(mapboxStyleManager, str, bitmap, f, z);
    }

    public static final Expected<String, None> addImage9Patch(MapboxStyleManager mapboxStyleManager, String imageId, Bitmap bitmap, float f, boolean z) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        NinePatchImage ninePatchImageDecodeNinePatchChunk = decodeNinePatchChunk(bitmap);
        return mapboxStyleManager.addStyleImage(imageId, f, ninePatchImageDecodeNinePatchChunk.getInternalImage(), z, ninePatchImageDecodeNinePatchChunk.getStretchX(), ninePatchImageDecodeNinePatchChunk.getStretchY(), ninePatchImageDecodeNinePatchChunk.getImageContent());
    }

    public static final NinePatchImage parse9PatchBitmap(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return decodeNinePatchChunk(bitmap);
    }

    private static final NinePatchImage decodeNinePatchChunk(Bitmap bitmap) {
        List listEmptyList;
        List listEmptyList2;
        byte[] ninePatchChunk = bitmap.getNinePatchChunk();
        if (ninePatchChunk == null) {
            throw new IllegalArgumentException("Given bitmap must be a 9-patch drawable (.9.png)!");
        }
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(ninePatchChunk).order(ByteOrder.nativeOrder());
        byteBufferOrder.get();
        byte b = byteBufferOrder.get();
        byte b2 = byteBufferOrder.get();
        byteBufferOrder.get();
        byteBufferOrder.getInt();
        byteBufferOrder.getInt();
        int i = byteBufferOrder.getInt();
        int i2 = byteBufferOrder.getInt();
        int i3 = byteBufferOrder.getInt();
        int i4 = byteBufferOrder.getInt();
        byteBufferOrder.getInt();
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < b; i5++) {
            arrayList.add(Integer.valueOf(byteBufferOrder.getInt()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i6 = 0; i6 < b2; i6++) {
            arrayList2.add(Integer.valueOf(byteBufferOrder.getInt()));
        }
        Image mapboxImage = ExtensionUtils.toMapboxImage(bitmap);
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            arrayList4.add(Float.valueOf(((Number) it.next()).intValue()));
        }
        Iterator it2 = arrayList4.iterator();
        if (it2.hasNext()) {
            ArrayList arrayList5 = new ArrayList();
            Object next = it2.next();
            while (it2.hasNext()) {
                Object next2 = it2.next();
                arrayList5.add(new ImageStretches(((Number) next).floatValue(), ((Number) next2).floatValue()));
                next = next2;
            }
            listEmptyList = arrayList5;
        } else {
            listEmptyList = CollectionsKt.emptyList();
        }
        ArrayList arrayList6 = arrayList2;
        ArrayList arrayList7 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList6, 10));
        Iterator it3 = arrayList6.iterator();
        while (it3.hasNext()) {
            arrayList7.add(Float.valueOf(((Number) it3.next()).intValue()));
        }
        Iterator it4 = arrayList7.iterator();
        if (it4.hasNext()) {
            ArrayList arrayList8 = new ArrayList();
            Object next3 = it4.next();
            while (it4.hasNext()) {
                Object next4 = it4.next();
                arrayList8.add(new ImageStretches(((Number) next3).floatValue(), ((Number) next4).floatValue()));
                next3 = next4;
            }
            listEmptyList2 = arrayList8;
        } else {
            listEmptyList2 = CollectionsKt.emptyList();
        }
        return new NinePatchImage(mapboxImage, listEmptyList, listEmptyList2, new ImageContent(i, i3, bitmap.getWidth() - i2, bitmap.getHeight() - i4));
    }
}

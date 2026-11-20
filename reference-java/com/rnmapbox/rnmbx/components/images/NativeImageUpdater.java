package com.rnmapbox.rnmbx.components.images;

import android.graphics.Bitmap;
import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\bf\u0018\u00002\u00020\u0001JX\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0011H&¨\u0006\u0012"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/NativeImageUpdater;", "", "updateImage", "", "imageId", "", "bitmap", "Landroid/graphics/Bitmap;", "sdf", "", "stretchX", "", "Lcom/mapbox/maps/ImageStretches;", "stretchY", "content", "Lcom/mapbox/maps/ImageContent;", "scale", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface NativeImageUpdater {
    void updateImage(String imageId, Bitmap bitmap, boolean sdf, List<ImageStretches> stretchX, List<ImageStretches> stretchY, ImageContent content, double scale);

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void updateImage$default(NativeImageUpdater nativeImageUpdater, String str, Bitmap bitmap, boolean z, List list, List list2, ImageContent imageContent, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateImage");
            }
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
            nativeImageUpdater.updateImage(str, bitmap, z2, list3, list2, (i & 32) != 0 ? null : imageContent, (i & 64) != 0 ? 1.0d : d);
        }
    }
}

package com.rnmapbox.rnmbx.components.styles;

import android.content.Context;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.mapbox.maps.MapboxMap;
import com.rnmapbox.rnmbx.components.images.ImageInfo;
import com.rnmapbox.rnmbx.utils.DownloadMapImageTask;
import com.rnmapbox.rnmbx.utils.ImageEntry;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0012J$\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyle;", "", "mContext", "Landroid/content/Context;", "reactStyle", "Lcom/facebook/react/bridge/ReadableMap;", "map", "Lcom/mapbox/maps/MapboxMap;", "<init>", "(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/mapbox/maps/MapboxMap;)V", "mReactStyle", "mMap", "allStyleKeys", "", "", "getAllStyleKeys", "()Ljava/util/List;", "getStyleValueForKey", "Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyleValue;", "styleKey", "imageEntry", "Lcom/rnmapbox/rnmbx/utils/ImageEntry;", "styleValue", "addImage", "", "callback", "Lcom/rnmapbox/rnmbx/utils/DownloadMapImageTask$OnAllImagesLoaded;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXStyle {
    public static final String LOG_TAG = "RNMBXStyle";
    private final Context mContext;
    private final MapboxMap mMap;
    private final ReadableMap mReactStyle;

    public final void addImage(RNMBXStyleValue styleValue, String styleKey) {
        Intrinsics.checkNotNullParameter(styleValue, "styleValue");
        Intrinsics.checkNotNullParameter(styleKey, "styleKey");
        addImage$default(this, styleValue, styleKey, null, 4, null);
    }

    public RNMBXStyle(Context mContext, ReadableMap readableMap, MapboxMap map) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(map, "map");
        this.mContext = mContext;
        this.mReactStyle = readableMap;
        this.mMap = map;
    }

    public final List<String> getAllStyleKeys() {
        ReadableMap readableMap = this.mReactStyle;
        if (readableMap == null) {
            return new ArrayList();
        }
        ReadableMapKeySetIterator readableMapKeySetIteratorKeySetIterator = readableMap.keySetIterator();
        ArrayList arrayList = new ArrayList();
        while (readableMapKeySetIteratorKeySetIterator.hasNextKey()) {
            String strNextKey = readableMapKeySetIteratorKeySetIterator.nextKey();
            if (!Intrinsics.areEqual(strNextKey, "__MAPBOX_STYLESHEET__")) {
                arrayList.add(strNextKey);
            }
        }
        return arrayList;
    }

    public final RNMBXStyleValue getStyleValueForKey(String styleKey) throws Exception {
        Intrinsics.checkNotNullParameter(styleKey, "styleKey");
        ReadableMap readableMap = this.mReactStyle;
        Intrinsics.checkNotNull(readableMap);
        ReadableMap map = readableMap.getMap(styleKey);
        if (map != null) {
            return new RNMBXStyleValue(styleKey, map);
        }
        Logger.INSTANCE.e(LOG_TAG, "Value for " + styleKey + " not found");
        throw new Exception("RNMBXStyle - Value for " + styleKey + " not found");
    }

    public final ImageEntry imageEntry(RNMBXStyleValue styleValue) {
        Intrinsics.checkNotNullParameter(styleValue, "styleValue");
        String imageURI = styleValue.getImageURI();
        Intrinsics.checkNotNull(imageURI);
        Double imageScale = styleValue.getImageScale();
        String imageURI2 = styleValue.getImageURI();
        Intrinsics.checkNotNull(imageURI2);
        return new ImageEntry(imageURI, new ImageInfo(imageURI2, imageScale, false, null, null, null, null, null, 252, null));
    }

    public static void addImage$default(RNMBXStyle rNMBXStyle, RNMBXStyleValue rNMBXStyleValue, String str, DownloadMapImageTask.OnAllImagesLoaded onAllImagesLoaded, int i, Object obj) {
        if ((i & 4) != 0) {
            onAllImagesLoaded = null;
        }
        rNMBXStyle.addImage(rNMBXStyleValue, str, onAllImagesLoaded);
    }

    public final void addImage(RNMBXStyleValue styleValue, String styleKey, DownloadMapImageTask.OnAllImagesLoaded callback) {
        Intrinsics.checkNotNullParameter(styleValue, "styleValue");
        Intrinsics.checkNotNullParameter(styleKey, "styleKey");
        if (!styleValue.getIsAddImage()) {
            if (callback != null) {
                callback.onAllImagesLoaded();
            }
        } else {
            Logger.INSTANCE.w(LOG_TAG, "Deprecated: Image in style is deprecated, use images component instead. key: " + styleKey + " [image-in-style-deprecated]");
            String imageURI = styleValue.getImageURI();
            Intrinsics.checkNotNull(imageURI);
            new DownloadMapImageTask(this.mContext, this.mMap, null, callback).execute(new Map.Entry[]{new AbstractMap.SimpleEntry(imageURI, imageEntry(styleValue))});
        }
    }
}

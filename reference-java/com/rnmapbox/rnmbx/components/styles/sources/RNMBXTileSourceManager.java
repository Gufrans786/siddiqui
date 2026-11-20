package com.rnmapbox.rnmbx.components.styles.sources;

import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.google.android.gms.common.internal.ImagesContract;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXTileSource;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\b&\u0018\u0000*\f\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\fH\u0016¢\u0006\u0002\u0010\rJ\u0015\u0010\u000e\u001a\u00020\f2\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000fJ%\u0010\u0010\u001a\u00020\u00112\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0016¢\u0006\u0002\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u00112\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\fH\u0016¢\u0006\u0002\u0010\u0015J\u001d\u0010\u0016\u001a\u00020\u00112\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010\u0019J\u001d\u0010\u001a\u001a\u00020\u00112\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010\u0019J\u001d\u0010\u001c\u001a\u00020\u00112\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u001d\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010\u0019J\u001d\u0010\u001e\u001a\u00020\u00112\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010\u0019J\u001d\u0010 \u001a\u00020\u00112\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010\u0019J\u001d\u0010\"\u001a\u00020\u00112\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010#\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010\u0019J\u001d\u0010$\u001a\u00020\u00112\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010\u0019¨\u0006&"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSourceManager;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "reactApplicationContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getChildAt", "Landroid/view/View;", "source", "childPosition", "", "(Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;I)Landroid/view/View;", "getChildCount", "(Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;)I", "addView", "", "childView", "(Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;Landroid/view/View;I)V", "removeViewAt", "(Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;I)V", "setId", "id", "Lcom/facebook/react/bridge/Dynamic;", "(Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSource;Lcom/facebook/react/bridge/Dynamic;)V", "setUrl", ImagesContract.URL, "setTileUrlTemplates", "tileUrlTemplates", "setAttribution", "attribution", "setMinZoomLevel", "minZoomLevel", "setMaxZoomLevel", "maxZoomLevel", "setTms", "tms", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class RNMBXTileSourceManager<T extends RNMBXTileSource<?>> extends AbstractEventEmitter<T> {
    public RNMBXTileSourceManager(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        Intrinsics.checkNotNullParameter(reactApplicationContext, "reactApplicationContext");
    }

    @Override
    public View getChildAt(T source, int childPosition) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source.getChildAt(childPosition);
    }

    @Override
    public int getChildCount(T source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source.getChildCount();
    }

    @Override
    public void addView(T source, View childView, int childPosition) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(childView, "childView");
        source.addLayer(childView, childPosition);
    }

    @Override
    public void removeViewAt(T source, int childPosition) {
        Intrinsics.checkNotNullParameter(source, "source");
        source.removeLayer(childPosition);
    }

    @ReactProp(name = "id")
    public final void setId(T source, Dynamic id) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(id, "id");
        source.setID(id.asString());
    }

    @ReactProp(name = ImagesContract.URL)
    public final void setUrl(T source, Dynamic url) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(url, "url");
        source.setURL(url.asString());
    }

    @ReactProp(name = "tileUrlTemplates")
    public final void setTileUrlTemplates(T source, Dynamic tileUrlTemplates) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(tileUrlTemplates, "tileUrlTemplates");
        ReadableArray readableArrayAsArray = tileUrlTemplates.asArray();
        if (readableArrayAsArray == null) {
            Logger.INSTANCE.e("RNMBXTileSourceManager", "tileUrlTemplates array is null");
            return;
        }
        ArrayList arrayList = new ArrayList();
        int size = readableArrayAsArray.size();
        for (int i = 0; i < size; i++) {
            if (readableArrayAsArray.getType(i) == ReadableType.String) {
                String string = readableArrayAsArray.getString(i);
                if (string != null) {
                    arrayList.add(string);
                } else {
                    Logger.INSTANCE.d("RNMBXTileSource", "Skipping null URL template at index " + i);
                }
            }
        }
        source.setTileUrlTemplates(arrayList);
    }

    @ReactProp(name = "attribution")
    public final void setAttribution(T source, Dynamic attribution) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(attribution, "attribution");
        source.setAttribution(attribution.asString());
    }

    @ReactProp(name = "minZoomLevel")
    public final void setMinZoomLevel(T source, Dynamic minZoomLevel) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(minZoomLevel, "minZoomLevel");
        source.setMinZoomLevel(Integer.valueOf(minZoomLevel.asInt()));
    }

    @ReactProp(name = "maxZoomLevel")
    public final void setMaxZoomLevel(T source, Dynamic maxZoomLevel) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(maxZoomLevel, "maxZoomLevel");
        source.setMaxZoomLevel(Integer.valueOf(maxZoomLevel.asInt()));
    }

    @ReactProp(name = "tms")
    public final void setTms(T source, Dynamic tms) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(tms, "tms");
        source.setTMS(tms.asBoolean());
    }
}

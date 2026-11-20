package com.rnmapbox.rnmbx.components.styles.sources;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXImageSourceManagerInterface;
import com.google.android.gms.common.internal.ImagesContract;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLngQuad;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u001eB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0014J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0017H\u0017J\u0018\u0010\u0018\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0017H\u0017J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0017H\u0017J\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0017H\u0017¨\u0006\u001f"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXImageSourceManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXImageSource;", "Lcom/facebook/react/viewmanagers/RNMBXImageSourceManagerInterface;", "<init>", "()V", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "getChildAt", "Landroid/view/View;", "source", "childPosition", "", "getChildCount", "addView", "", "childView", "removeViewAt", "setId", "id", "Lcom/facebook/react/bridge/Dynamic;", "setUrl", ImagesContract.URL, "setCoordinates", "arr", "setExisting", "value", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXImageSourceManager extends ViewGroupManager<RNMBXImageSource> implements RNMBXImageSourceManagerInterface<RNMBXImageSource> {
    public static final String REACT_CLASS = "RNMBXImageSource";

    public RNMBXImageSourceManager() {
        super(null, 1, null);
    }

    @Override
    public String getName() {
        return "RNMBXImageSource";
    }

    @Override
    public RNMBXImageSource createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXImageSource(reactContext);
    }

    @Override
    public View getChildAt(RNMBXImageSource source, int childPosition) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source.getChildAt(childPosition);
    }

    @Override
    public int getChildCount(RNMBXImageSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source.getChildCount();
    }

    @Override
    public void addView(RNMBXImageSource source, View childView, int childPosition) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(childView, "childView");
        source.addLayer(childView, childPosition);
    }

    @Override
    public void removeViewAt(RNMBXImageSource source, int childPosition) {
        Intrinsics.checkNotNullParameter(source, "source");
        source.removeLayer(childPosition);
    }

    @Override
    @ReactProp(name = "id")
    public void setId(RNMBXImageSource source, Dynamic id) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(id, "id");
        source.setID(id.asString());
    }

    @Override
    @ReactProp(name = ImagesContract.URL)
    public void setUrl(RNMBXImageSource source, Dynamic url) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(url, "url");
        source.setURL(url.asString());
    }

    @Override
    @ReactProp(name = "coordinates")
    public void setCoordinates(RNMBXImageSource source, Dynamic arr) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(arr, "arr");
        LatLngQuad latLngQuad = GeoJSONUtils.toLatLngQuad(arr.asArray());
        if (latLngQuad == null) {
            return;
        }
        source.setCoordinates(latLngQuad);
    }

    @Override
    @ReactProp(name = "existing")
    public void setExisting(RNMBXImageSource source, Dynamic value) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(value, "value");
        source.setMExisting(Boolean.valueOf(value.asBoolean()));
    }
}

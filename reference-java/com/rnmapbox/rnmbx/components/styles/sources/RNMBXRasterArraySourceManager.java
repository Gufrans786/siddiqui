package com.rnmapbox.rnmbx.components.styles.sources;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXRasterArraySourceManagerInterface;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventKeysKt;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.Map;
import javax.annotation.Nonnull;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0006\n\u0002\b\u0003\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u001dB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0017J\u0012\u0010\n\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0015J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0017J\u0016\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0011H\u0017J\u0018\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0011H\u0017J\u001b\u0010\u0017\u001a\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002¢\u0006\u0002\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXRasterArraySourceManager;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSourceManager;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXRasterArraySource;", "Lcom/facebook/react/viewmanagers/RNMBXRasterArraySourceManagerInterface;", "reactApplicationContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setTileSize", "", "source", "tileSize", "Lcom/facebook/react/bridge/Dynamic;", "customEvents", "", "setExisting", "value", "setSourceBounds", "validateBbox", "", "bbox", "", "", "([Ljava/lang/Double;)Z", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXRasterArraySourceManager extends RNMBXTileSourceManager<RNMBXRasterArraySource> implements RNMBXRasterArraySourceManagerInterface<RNMBXRasterArraySource> {
    public static final String REACT_CLASS = "RNMBXRasterArraySource";
    public static final boolean isImplemented = true;

    @Override
    public void setId(View view, Dynamic dynamic) {
        setId((RNMBXTileSource) view, dynamic);
    }

    @Override
    public void setMaxZoomLevel(View view, Dynamic dynamic) {
        setMaxZoomLevel((RNMBXTileSource) view, dynamic);
    }

    @Override
    public void setMinZoomLevel(View view, Dynamic dynamic) {
        setMinZoomLevel((RNMBXTileSource) view, dynamic);
    }

    @Override
    public void setTileUrlTemplates(View view, Dynamic dynamic) {
        setTileUrlTemplates((RNMBXTileSource) view, dynamic);
    }

    @Override
    public void setUrl(View view, Dynamic dynamic) {
        setUrl((RNMBXTileSource) view, dynamic);
    }

    public RNMBXRasterArraySourceManager(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        Intrinsics.checkNotNullParameter(reactApplicationContext, "reactApplicationContext");
    }

    @Override
    @Nonnull
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    @Nonnull
    public RNMBXRasterArraySource createViewInstance(@Nonnull ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXRasterArraySource(reactContext);
    }

    @Override
    @ReactProp(name = "tileSize")
    public void setTileSize(RNMBXRasterArraySource source, Dynamic tileSize) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(tileSize, "tileSize");
        source.setTileSize(tileSize.asInt());
    }

    @Override
    public Map<String, String> customEvents() {
        return EventKeysKt.eventMapOf(TuplesKt.to(EventKeys.MAP_ANDROID_CALLBACK, "onAndroidCallback"));
    }

    @Override
    @ReactProp(name = "existing")
    public void setExisting(RNMBXRasterArraySource source, Dynamic value) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(value, "value");
        source.setMExisting(Boolean.valueOf(value.asBoolean()));
    }

    @Override
    @ReactProp(name = "sourceBounds")
    public void setSourceBounds(RNMBXRasterArraySource source, Dynamic value) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(value, "value");
        ReadableArray readableArrayAsArray = value.asArray();
        if (value.getType() != ReadableType.Array || readableArrayAsArray == null || readableArrayAsArray.size() != 4) {
            Logger.INSTANCE.e(REACT_CLASS, "source bounds must be an array with left, bottom, top, and right values");
            return;
        }
        Double[] dArr = new Double[4];
        for (int i = 0; i < 4; i++) {
            dArr[i] = Double.valueOf(readableArrayAsArray.getDouble(i));
        }
        if (!validateBbox(dArr)) {
            Logger.INSTANCE.e(REACT_CLASS, "source bounds contain invalid bbox");
        } else {
            source.setSourceBounds(dArr);
        }
    }

    private final boolean validateBbox(Double[] bbox) {
        if (bbox.length != 4) {
            return false;
        }
        double dDoubleValue = bbox[0].doubleValue();
        double dDoubleValue2 = bbox[1].doubleValue();
        double dDoubleValue3 = bbox[2].doubleValue();
        double dDoubleValue4 = bbox[3].doubleValue();
        return (((-180.0d) > dDoubleValue ? 1 : ((-180.0d) == dDoubleValue ? 0 : -1)) <= 0 && (dDoubleValue > 180.0d ? 1 : (dDoubleValue == 180.0d ? 0 : -1)) <= 0 && ((-180.0d) > dDoubleValue3 ? 1 : ((-180.0d) == dDoubleValue3 ? 0 : -1)) <= 0 && (dDoubleValue3 > 180.0d ? 1 : (dDoubleValue3 == 180.0d ? 0 : -1)) <= 0) && (((-90.0d) > dDoubleValue2 ? 1 : ((-90.0d) == dDoubleValue2 ? 0 : -1)) <= 0 && (dDoubleValue2 > 90.0d ? 1 : (dDoubleValue2 == 90.0d ? 0 : -1)) <= 0 && ((-90.0d) > dDoubleValue4 ? 1 : ((-90.0d) == dDoubleValue4 ? 0 : -1)) <= 0 && (dDoubleValue4 > 90.0d ? 1 : (dDoubleValue4 == 90.0d ? 0 : -1)) <= 0) && ((dDoubleValue > dDoubleValue3 ? 1 : (dDoubleValue == dDoubleValue3 ? 0 : -1)) < 0 && (dDoubleValue2 > dDoubleValue4 ? 1 : (dDoubleValue2 == dDoubleValue4 ? 0 : -1)) < 0);
    }
}

package com.rnmapbox.rnmbx.components.styles.sources;

import android.view.View;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXVectorSourceManagerInterface;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventKeysKt;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.Map;
import javax.annotation.Nonnull;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0002\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u0019B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0017J\u0012\u0010\n\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0015J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0017J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0011H\u0017J\u0018\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0017J\u0016\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u0018H\u0016¨\u0006\u001a"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXVectorSourceManager;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXTileSourceManager;", "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXVectorSource;", "Lcom/facebook/react/viewmanagers/RNMBXVectorSourceManagerInterface;", "reactApplicationContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setHasPressListener", "", "source", "hasPressListener", "Lcom/facebook/react/bridge/Dynamic;", "setHitbox", "map", "setExisting", "view", "value", "customEvents", "", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXVectorSourceManager extends RNMBXTileSourceManager<RNMBXVectorSource> implements RNMBXVectorSourceManagerInterface<RNMBXVectorSource> {
    public static final String REACT_CLASS = "RNMBXVectorSource";

    @Override
    public void setAttribution(View view, Dynamic dynamic) {
        setAttribution((RNMBXTileSource) view, dynamic);
    }

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
    public void setTms(View view, Dynamic dynamic) {
        setTms((RNMBXTileSource) view, dynamic);
    }

    @Override
    public void setUrl(View view, Dynamic dynamic) {
        setUrl((RNMBXTileSource) view, dynamic);
    }

    public RNMBXVectorSourceManager(ReactApplicationContext reactApplicationContext) {
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
    public RNMBXVectorSource createViewInstance(@Nonnull ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXVectorSource(reactContext, this);
    }

    @Override
    @ReactProp(name = "hasPressListener")
    public void setHasPressListener(RNMBXVectorSource source, Dynamic hasPressListener) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(hasPressListener, "hasPressListener");
        source.setHasPressListener(hasPressListener.asBoolean());
    }

    @Override
    @ReactProp(name = "hitbox")
    public void setHitbox(RNMBXVectorSource source, Dynamic map) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(map, "map");
        ReadableMap readableMapAsMap = map.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e("RNMBXVectorSourceManager", "hitbox map is null");
        } else {
            source.setHitbox(readableMapAsMap);
        }
    }

    @Override
    @ReactProp(name = "existing")
    public void setExisting(RNMBXVectorSource view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(value, "value");
        view.setMExisting(Boolean.valueOf(value.asBoolean()));
    }

    @Override
    public Map<String, String> customEvents() {
        return EventKeysKt.eventMapOf(TuplesKt.to(EventKeys.VECTOR_SOURCE_LAYER_CLICK, "onMapboxVectorSourcePress"), TuplesKt.to(EventKeys.MAP_ANDROID_CALLBACK, "onAndroidCallback"));
    }
}

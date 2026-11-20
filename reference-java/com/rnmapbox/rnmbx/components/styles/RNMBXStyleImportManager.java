package com.rnmapbox.rnmbx.components.styles;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXStyleImportManagerInterface;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.extensions.DynamicKt;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u0016B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\rH\u0014J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0017J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0013H\u0017J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0015H\u0017¨\u0006\u0017"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyleImportManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/components/styles/RNMBXStyleImport;", "Lcom/facebook/react/viewmanagers/RNMBXStyleImportManagerInterface;", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "customEvents", "", "", "getName", "createViewInstance", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setId", "", "view", "value", "setExisting", "", BackgroundGeolocation.ACTION_SET_CONFIG, "Lcom/facebook/react/bridge/Dynamic;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXStyleImportManager extends AbstractEventEmitter<RNMBXStyleImport> implements RNMBXStyleImportManagerInterface<RNMBXStyleImport> {
    public static final String REACT_CLASS = "RNMBXStyleImport";

    @Override
    @ReactProp(name = "existing")
    public void setExisting(RNMBXStyleImport view, boolean value) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    public RNMBXStyleImportManager(ReactApplicationContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override
    public Map<String, String> customEvents() {
        return MapBuilder.builder().build();
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNMBXStyleImport createViewInstance(ThemedReactContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new RNMBXStyleImport(context);
    }

    @Override
    @ReactProp(name = "id")
    public void setId(RNMBXStyleImport view, String value) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (value != null) {
            view.setId(value);
        }
    }

    @Override
    @ReactProp(name = "config")
    public void setConfig(RNMBXStyleImport view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.getType() != ReadableType.Map) {
            Logger.INSTANCE.e(REACT_CLASS, "config expected Map but received: " + value.getType());
        } else {
            ReadableMap readableMapAsMap = value.asMap();
            if (readableMapAsMap == null) {
                Logger.INSTANCE.e(REACT_CLASS, "config map is null");
            } else {
                view.setConfig(DynamicKt.toValueHashMap(readableMapAsMap));
            }
        }
    }
}

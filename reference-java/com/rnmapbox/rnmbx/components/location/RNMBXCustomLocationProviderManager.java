package com.rnmapbox.rnmbx.components.location;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXCustomLocationProviderManagerInterface;
import com.rnmapbox.rnmbx.utils.Logger;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u0012B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0014J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0017J\u001a\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0017J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0014¨\u0006\u0013"}, d2 = {"Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProviderManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/rnmapbox/rnmbx/components/location/RNMBXCustomLocationProvider;", "Lcom/facebook/react/viewmanagers/RNMBXCustomLocationProviderManagerInterface;", "<init>", "()V", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setCoordinate", "", "view", "value", "Lcom/facebook/react/bridge/Dynamic;", "setHeading", "onAfterUpdateTransaction", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXCustomLocationProviderManager extends ViewGroupManager<RNMBXCustomLocationProvider> implements RNMBXCustomLocationProviderManagerInterface<RNMBXCustomLocationProvider> {
    public static final String LOG_TAG = "RNMBXCustomLocationProvider";
    public static final String REACT_CLASS = "RNMBXCustomLocationProvider";

    public RNMBXCustomLocationProviderManager() {
        super(null, 1, null);
    }

    @Override
    public String getName() {
        return "RNMBXCustomLocationProvider";
    }

    @Override
    public RNMBXCustomLocationProvider createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXCustomLocationProvider(reactContext);
    }

    @Override
    @ReactProp(name = "coordinate")
    public void setCoordinate(RNMBXCustomLocationProvider view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        if ((value != null ? value.getType() : null) == ReadableType.Array) {
            ReadableArray readableArrayAsArray = value.asArray();
            if (readableArrayAsArray == null) {
                Logger.INSTANCE.e("RNMBXCustomLocationProvider", "coordinate array is null");
                return;
            } else if (readableArrayAsArray.size() == 2 && readableArrayAsArray.getType(0) == ReadableType.Number && readableArrayAsArray.getType(1) == ReadableType.Number) {
                view.setCoordinate(new Pair<>(Double.valueOf(readableArrayAsArray.getDouble(0)), Double.valueOf(readableArrayAsArray.getDouble(1))));
                return;
            } else {
                Logger.INSTANCE.e("RNMBXCustomLocationProvider", "coordinate is expected to be an array of numbers with 2 elements");
                return;
            }
        }
        Logger.INSTANCE.e("RNMBXCustomLocationProvider", "coordinate is expected to be an array of numbers with 2 elements");
    }

    @Override
    @ReactProp(name = "heading")
    public void setHeading(RNMBXCustomLocationProvider view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        if ((value != null ? value.getType() : null) == ReadableType.Number) {
            view.setHeading(Double.valueOf(value.asDouble()));
        } else {
            Logger.INSTANCE.e("RNMBXCustomLocationProvider", "heading is expected to be a number");
        }
    }

    @Override
    public void onAfterUpdateTransaction(RNMBXCustomLocationProvider view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onAfterUpdateTransaction(view);
        view.applyAllChanges();
    }
}

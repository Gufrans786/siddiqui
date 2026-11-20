package com.rnmapbox.rnmbx.components.location;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXNativeUserLocationManagerInterface;
import com.mapbox.maps.plugin.PuckBearing;
import com.rnmapbox.rnmbx.utils.Logger;
import javax.annotation.Nonnull;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u001bB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0017J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0017J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\fH\u0017J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\fH\u0017J\u001a\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0017J\u001a\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0017J\u001a\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0017J\u001a\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0017J\u0018\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0016H\u0017J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\fH\u0017J\u0012\u0010\u0018\u001a\u00020\u00022\b\b\u0001\u0010\u0019\u001a\u00020\u001aH\u0015¨\u0006\u001c"}, d2 = {"Lcom/rnmapbox/rnmbx/components/location/RNMBXNativeUserLocationManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/rnmapbox/rnmbx/components/location/RNMBXNativeUserLocation;", "Lcom/facebook/react/viewmanagers/RNMBXNativeUserLocationManagerInterface;", "<init>", "()V", "getName", "", "setAndroidRenderMode", "", "userLocation", "mode", "Lcom/facebook/react/bridge/Dynamic;", "setPuckBearing", "view", "value", "setPuckBearingEnabled", "setTopImage", "setBearingImage", "setShadowImage", "setScale", "setVisible", "", "setPulsing", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXNativeUserLocationManager extends ViewGroupManager<RNMBXNativeUserLocation> implements RNMBXNativeUserLocationManagerInterface<RNMBXNativeUserLocation> {
    public static final String REACT_CLASS = "RNMBXNativeUserLocation";

    public RNMBXNativeUserLocationManager() {
        super(null, 1, null);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNMBXNativeUserLocation";
    }

    @Override
    @ReactProp(name = "androidRenderMode")
    public void setAndroidRenderMode(RNMBXNativeUserLocation userLocation, Dynamic mode) {
        Intrinsics.checkNotNullParameter(userLocation, "userLocation");
        Intrinsics.checkNotNullParameter(mode, "mode");
        if (!mode.isNull()) {
            Logger.INSTANCE.e("RNMBXNativeUserLocationManager", "androidRenderMode is deprecated, use puckBearing instead");
        }
        String strAsString = mode.asString();
        if (strAsString != null) {
            int iHashCode = strAsString.hashCode();
            if (iHashCode == -1039745817) {
                if (strAsString.equals("normal")) {
                    userLocation.setAndroidRenderMode(RenderMode.NORMAL);
                }
            } else if (iHashCode == 102570) {
                if (strAsString.equals("gps")) {
                    userLocation.setAndroidRenderMode(RenderMode.GPS);
                }
            } else if (iHashCode == 950484242 && strAsString.equals("compass")) {
                userLocation.setAndroidRenderMode(RenderMode.COMPASS);
            }
        }
    }

    @Override
    @ReactProp(name = "puckBearing")
    public void setPuckBearing(RNMBXNativeUserLocation view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(value, "value");
        String strAsString = value.asString();
        if (Intrinsics.areEqual(strAsString, "heading")) {
            view.setPuckBearing(PuckBearing.HEADING);
        } else if (Intrinsics.areEqual(strAsString, "course")) {
            view.setPuckBearing(PuckBearing.COURSE);
        } else if (strAsString != null) {
            Logger.INSTANCE.e("RNMBXNativeUserLocationManager", "unexpected value for puckBearing: " + value);
        }
    }

    @Override
    @ReactProp(name = "puckBearingEnabled")
    public void setPuckBearingEnabled(RNMBXNativeUserLocation view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.isNull()) {
            return;
        }
        if (value.getType() == ReadableType.Boolean) {
            view.setPuckBearingEnabled(Boolean.valueOf(value.asBoolean()));
        } else {
            Logger.INSTANCE.e("RNMBXNativeUserLocationManager", "unexpected value for puckBearingEnabled: " + value);
        }
    }

    @Override
    @ReactProp(name = "topImage")
    public void setTopImage(RNMBXNativeUserLocation view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTopImage(value != null ? value.asString() : null);
    }

    @Override
    @ReactProp(name = "bearingImage")
    public void setBearingImage(RNMBXNativeUserLocation view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setBearingImage(value != null ? value.asString() : null);
    }

    @Override
    @ReactProp(name = "shadowImage")
    public void setShadowImage(RNMBXNativeUserLocation view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setShadowImage(value != null ? value.asString() : null);
    }

    @Override
    @ReactProp(defaultDouble = 1.0d, name = "scale")
    public void setScale(RNMBXNativeUserLocation view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setScale(RNMBXNativeUserLocationManagerKt._convertToDoubleValueOrExpression(value, "scale"));
    }

    @Override
    @ReactProp(name = ViewProps.VISIBLE)
    public void setVisible(RNMBXNativeUserLocation view, boolean value) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setVisible(value);
    }

    @Override
    @ReactProp(name = "pulsing")
    public void setPulsing(RNMBXNativeUserLocation view, Dynamic value) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.isNull()) {
            return;
        }
        view.setPulsing(value.asMap());
    }

    @Override
    @Nonnull
    public RNMBXNativeUserLocation createViewInstance(@Nonnull ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXNativeUserLocation(reactContext);
    }
}

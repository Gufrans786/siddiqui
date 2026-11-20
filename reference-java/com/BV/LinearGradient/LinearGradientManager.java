package com.BV.LinearGradient;

import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.mapbox.maps.plugin.gestures.GesturesPluginImpl;

public class LinearGradientManager extends SimpleViewManager<LinearGradientView> {
    public static final String PROP_ANGLE = "angle";
    public static final String PROP_ANGLE_CENTER = "angleCenter";
    public static final String PROP_BORDER_RADII = "borderRadii";
    public static final String PROP_COLORS = "colors";
    public static final String PROP_END_POINT = "endPoint";
    public static final String PROP_LOCATIONS = "locations";
    public static final String PROP_START_POINT = "startPoint";
    public static final String PROP_USE_ANGLE = "useAngle";
    public static final String REACT_CLASS = "BVLinearGradient";

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public LinearGradientView createViewInstance(ThemedReactContext themedReactContext) {
        return new LinearGradientView(themedReactContext);
    }

    @ReactProp(name = PROP_COLORS)
    public void setColors(LinearGradientView linearGradientView, ReadableArray readableArray) {
        linearGradientView.setColors(readableArray);
    }

    @ReactProp(name = "locations")
    public void setLocations(LinearGradientView linearGradientView, ReadableArray readableArray) {
        if (readableArray != null) {
            linearGradientView.setLocations(readableArray);
        }
    }

    @ReactProp(name = PROP_START_POINT)
    public void setStartPoint(LinearGradientView linearGradientView, ReadableArray readableArray) {
        linearGradientView.setStartPoint(readableArray);
    }

    @ReactProp(name = PROP_END_POINT)
    public void setEndPoint(LinearGradientView linearGradientView, ReadableArray readableArray) {
        linearGradientView.setEndPoint(readableArray);
    }

    @ReactProp(defaultBoolean = false, name = PROP_USE_ANGLE)
    public void setUseAngle(LinearGradientView linearGradientView, boolean z) {
        linearGradientView.setUseAngle(z);
    }

    @ReactProp(name = PROP_ANGLE_CENTER)
    public void setAngleCenter(LinearGradientView linearGradientView, ReadableArray readableArray) {
        linearGradientView.setAngleCenter(readableArray);
    }

    @ReactProp(defaultFloat = GesturesPluginImpl.MAX_SHOVE_ANGLE, name = PROP_ANGLE)
    public void setAngle(LinearGradientView linearGradientView, float f) {
        linearGradientView.setAngle(f);
    }

    @ReactProp(name = PROP_BORDER_RADII)
    public void setBorderRadii(LinearGradientView linearGradientView, ReadableArray readableArray) {
        linearGradientView.setBorderRadii(readableArray);
    }
}

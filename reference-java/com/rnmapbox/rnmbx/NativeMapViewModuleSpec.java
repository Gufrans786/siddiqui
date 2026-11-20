package com.rnmapbox.rnmbx;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public abstract class NativeMapViewModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNMBXMapViewModule";

    @ReactMethod
    public abstract void clearData(@Nullable Double d, Promise promise);

    @ReactMethod
    public abstract void getCenter(@Nullable Double d, Promise promise);

    @ReactMethod
    public abstract void getCoordinateFromView(@Nullable Double d, ReadableArray readableArray, Promise promise);

    @ReactMethod
    public abstract void getFeatureState(@Nullable Double d, String str, String str2, @Nullable String str3, Promise promise);

    @ReactMethod
    public abstract void getPointInView(@Nullable Double d, ReadableArray readableArray, Promise promise);

    @ReactMethod
    public abstract void getVisibleBounds(@Nullable Double d, Promise promise);

    @ReactMethod
    public abstract void getZoom(@Nullable Double d, Promise promise);

    @ReactMethod
    public abstract void queryRenderedFeaturesAtPoint(@Nullable Double d, ReadableArray readableArray, ReadableArray readableArray2, ReadableArray readableArray3, Promise promise);

    @ReactMethod
    public abstract void queryRenderedFeaturesInRect(@Nullable Double d, ReadableArray readableArray, ReadableArray readableArray2, ReadableArray readableArray3, Promise promise);

    @ReactMethod
    public abstract void querySourceFeatures(@Nullable Double d, String str, ReadableArray readableArray, ReadableArray readableArray2, Promise promise);

    @ReactMethod
    public abstract void queryTerrainElevation(@Nullable Double d, ReadableArray readableArray, Promise promise);

    @ReactMethod
    public abstract void removeFeatureState(@Nullable Double d, String str, @Nullable String str2, String str3, @Nullable String str4, Promise promise);

    @ReactMethod
    public abstract void setFeatureState(@Nullable Double d, String str, ReadableMap readableMap, String str2, @Nullable String str3, Promise promise);

    @ReactMethod
    public abstract void setHandledMapChangedEvents(@Nullable Double d, ReadableArray readableArray, Promise promise);

    @ReactMethod
    public abstract void setSourceVisibility(@Nullable Double d, boolean z, String str, String str2, Promise promise);

    @ReactMethod
    public abstract void takeSnap(@Nullable Double d, boolean z, Promise promise);

    public NativeMapViewModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNMBXMapViewModule";
    }
}

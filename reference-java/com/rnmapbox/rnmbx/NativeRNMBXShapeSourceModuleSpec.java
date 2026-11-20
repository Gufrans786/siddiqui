package com.rnmapbox.rnmbx;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public abstract class NativeRNMBXShapeSourceModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNMBXShapeSourceModule";

    @ReactMethod
    public abstract void getClusterChildren(@Nullable Double d, String str, Promise promise);

    @ReactMethod
    public abstract void getClusterExpansionZoom(@Nullable Double d, String str, Promise promise);

    @ReactMethod
    public abstract void getClusterLeaves(@Nullable Double d, String str, double d2, double d3, Promise promise);

    public NativeRNMBXShapeSourceModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNMBXShapeSourceModule";
    }
}

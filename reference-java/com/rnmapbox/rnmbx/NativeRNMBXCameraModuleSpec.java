package com.rnmapbox.rnmbx;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public abstract class NativeRNMBXCameraModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNMBXCameraModule";

    @ReactMethod
    public abstract void moveBy(@Nullable Double d, double d2, double d3, double d4, double d5, Promise promise);

    @ReactMethod
    public abstract void scaleBy(@Nullable Double d, double d2, double d3, double d4, double d5, double d6, Promise promise);

    @ReactMethod
    public abstract void updateCameraStop(@Nullable Double d, ReadableMap readableMap, Promise promise);

    public NativeRNMBXCameraModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNMBXCameraModule";
    }
}

package com.rnmapbox.rnmbx;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public abstract class NativeRNMBXViewportModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNMBXViewportModule";

    @ReactMethod
    public abstract void getState(@Nullable Double d, Promise promise);

    @ReactMethod
    public abstract void idle(@Nullable Double d, Promise promise);

    @ReactMethod
    public abstract void transitionTo(@Nullable Double d, ReadableMap readableMap, ReadableMap readableMap2, Promise promise);

    public NativeRNMBXViewportModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNMBXViewportModule";
    }
}

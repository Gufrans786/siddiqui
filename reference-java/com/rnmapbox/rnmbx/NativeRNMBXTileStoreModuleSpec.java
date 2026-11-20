package com.rnmapbox.rnmbx;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public abstract class NativeRNMBXTileStoreModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNMBXTileStoreModule";

    @ReactMethod
    public abstract void setOption(double d, String str, String str2, ReadableMap readableMap, Promise promise);

    @ReactMethod
    public abstract void shared(@Nullable String str, Promise promise);

    public NativeRNMBXTileStoreModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNMBXTileStoreModule";
    }
}

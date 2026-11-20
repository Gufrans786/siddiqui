package com.rnmapbox.rnmbx;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;

public abstract class NativeRNMBXMovePointShapeAnimatorModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNMBXMovePointShapeAnimatorModule";

    @ReactMethod
    public abstract void generate(double d, ReadableArray readableArray, Promise promise);

    @ReactMethod
    public abstract void moveTo(double d, ReadableArray readableArray, double d2, Promise promise);

    public NativeRNMBXMovePointShapeAnimatorModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNMBXMovePointShapeAnimatorModule";
    }
}

package com.rnmapbox.rnmbx;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;

public abstract class NativeRNMBXChangeLineOffsetsShapeAnimatorModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNMBXChangeLineOffsetsShapeAnimatorModule";

    @ReactMethod
    public abstract void generate(double d, ReadableArray readableArray, double d2, double d3, Promise promise);

    @ReactMethod
    public abstract void setEndOffset(double d, double d2, double d3, Promise promise);

    @ReactMethod
    public abstract void setLineString(double d, ReadableArray readableArray, double d2, double d3, Promise promise);

    @ReactMethod
    public abstract void setStartOffset(double d, double d2, double d3, Promise promise);

    public NativeRNMBXChangeLineOffsetsShapeAnimatorModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNMBXChangeLineOffsetsShapeAnimatorModule";
    }
}

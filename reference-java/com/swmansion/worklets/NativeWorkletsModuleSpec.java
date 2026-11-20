package com.swmansion.worklets;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;

public abstract class NativeWorkletsModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "WorkletsModule";

    @ReactMethod(isBlockingSynchronousMethod = true)
    public abstract boolean installTurboModule();

    public NativeWorkletsModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return NAME;
    }
}

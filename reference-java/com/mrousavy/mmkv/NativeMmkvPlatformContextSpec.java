package com.mrousavy.mmkv;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public abstract class NativeMmkvPlatformContextSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "MmkvPlatformContext";

    @ReactMethod(isBlockingSynchronousMethod = true)
    @Nullable
    public abstract String getAppGroupDirectory();

    @ReactMethod(isBlockingSynchronousMethod = true)
    public abstract String getBaseDirectory();

    public NativeMmkvPlatformContextSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return NAME;
    }
}

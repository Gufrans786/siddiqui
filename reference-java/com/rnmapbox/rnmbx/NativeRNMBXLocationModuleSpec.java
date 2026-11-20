package com.rnmapbox.rnmbx;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;

public abstract class NativeRNMBXLocationModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNMBXLocationModule";

    @ReactMethod
    public abstract void getLastKnownLocation(Promise promise);

    @ReactMethod
    public abstract void setLocationEventThrottle(double d);

    @ReactMethod
    public abstract void setMinDisplacement(double d);

    @ReactMethod
    public abstract void setRequestsAlwaysUse(boolean z);

    @ReactMethod
    public abstract void simulateHeading(double d, double d2);

    @ReactMethod
    public abstract void start(double d);

    @ReactMethod
    public abstract void stop();

    public NativeRNMBXLocationModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNMBXLocationModule";
    }

    protected final void emitOnLocationUpdate(ReadableMap readableMap) {
        this.mEventEmitterCallback.invoke("onLocationUpdate", readableMap);
    }
}

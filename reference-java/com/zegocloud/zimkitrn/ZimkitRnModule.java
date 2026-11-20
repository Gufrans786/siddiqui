package com.zegocloud.zimkitrn;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;

@ReactModule(name = ZimkitRnModule.NAME)
public class ZimkitRnModule extends ReactContextBaseJavaModule {
    public static final String NAME = "ZimkitRn";

    public ZimkitRnModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    public String getName() {
        return NAME;
    }

    @ReactMethod
    public void multiply(double d, double d2, Promise promise) {
        promise.resolve(Double.valueOf(d * d2));
    }
}

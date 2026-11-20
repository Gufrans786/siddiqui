package com.reactnativecommunity.webview;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;

public abstract class NativeRNCWebViewModuleSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNCWebViewModule";

    @ReactMethod
    public abstract void isFileUploadSupported(Promise promise);

    @ReactMethod
    public abstract void shouldStartLoadWithLockIdentifier(boolean z, double d);

    public NativeRNCWebViewModuleSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNCWebViewModule";
    }
}

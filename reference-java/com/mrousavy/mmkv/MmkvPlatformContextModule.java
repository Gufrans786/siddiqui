package com.mrousavy.mmkv;

import com.facebook.react.bridge.ReactApplicationContext;

public class MmkvPlatformContextModule extends NativeMmkvPlatformContextSpec {
    private final ReactApplicationContext context;

    @Override
    public String getAppGroupDirectory() {
        return null;
    }

    public MmkvPlatformContextModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.context = reactApplicationContext;
    }

    @Override
    public String getBaseDirectory() {
        return this.context.getFilesDir().getAbsolutePath() + "/mmkv";
    }
}

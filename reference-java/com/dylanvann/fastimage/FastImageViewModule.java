package com.dylanvann.fastimage;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;

class FastImageViewModule extends NativeFastImageViewModuleSpec {
    FastImageViewModuleImplementation impl;

    FastImageViewModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.impl = new FastImageViewModuleImplementation(reactApplicationContext);
    }

    @Override
    public String getName() {
        return "FastImageViewModule";
    }

    @Override
    public void preload(ReadableArray readableArray) {
        this.impl.preload(readableArray);
    }

    @Override
    public void clearMemoryCache(Promise promise) {
        this.impl.clearMemoryCache(promise);
    }

    @Override
    public void clearDiskCache(Promise promise) {
        this.impl.clearDiskCache(promise);
    }
}

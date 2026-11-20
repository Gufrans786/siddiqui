package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class ResourceLoadResultCallbackNative implements ResourceLoadResultCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<ResourceLoadError, ResourceLoadResult> expected);

    private ResourceLoadResultCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ResourceLoadResultCallbackPeerCleaner(j));
    }

    private static class ResourceLoadResultCallbackPeerCleaner implements Runnable {
        private long peer;

        public ResourceLoadResultCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ResourceLoadResultCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

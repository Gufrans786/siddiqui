package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class ResourceLoadProgressCallbackNative implements ResourceLoadProgressCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(ResourceLoadProgress resourceLoadProgress);

    private ResourceLoadProgressCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ResourceLoadProgressCallbackPeerCleaner(j));
    }

    private static class ResourceLoadProgressCallbackPeerCleaner implements Runnable {
        private long peer;

        public ResourceLoadProgressCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ResourceLoadProgressCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

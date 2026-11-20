package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class ResourceRequestCallbackNative implements ResourceRequestCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(ResourceRequest resourceRequest);

    private ResourceRequestCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ResourceRequestCallbackPeerCleaner(j));
    }

    private static class ResourceRequestCallbackPeerCleaner implements Runnable {
        private long peer;

        public ResourceRequestCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ResourceRequestCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class GenericEventCallbackNative implements GenericEventCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(GenericEvent genericEvent);

    private GenericEventCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new GenericEventCallbackPeerCleaner(j));
    }

    private static class GenericEventCallbackPeerCleaner implements Runnable {
        private long peer;

        public GenericEventCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            GenericEventCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

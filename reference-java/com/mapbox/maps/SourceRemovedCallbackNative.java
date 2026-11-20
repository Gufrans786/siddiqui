package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class SourceRemovedCallbackNative implements SourceRemovedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(SourceRemoved sourceRemoved);

    private SourceRemovedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new SourceRemovedCallbackPeerCleaner(j));
    }

    private static class SourceRemovedCallbackPeerCleaner implements Runnable {
        private long peer;

        public SourceRemovedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SourceRemovedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

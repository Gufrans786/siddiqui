package com.mapbox.common.location;

import com.mapbox.bindgen.CleanerService;

final class GetLocationCallbackNative implements GetLocationCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Location location);

    private GetLocationCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new GetLocationCallbackPeerCleaner(j));
    }

    private static class GetLocationCallbackPeerCleaner implements Runnable {
        private long peer;

        public GetLocationCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            GetLocationCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

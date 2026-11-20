package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class SourceDataLoadedCallbackNative implements SourceDataLoadedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(SourceDataLoaded sourceDataLoaded);

    private SourceDataLoadedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new SourceDataLoadedCallbackPeerCleaner(j));
    }

    private static class SourceDataLoadedCallbackPeerCleaner implements Runnable {
        private long peer;

        public SourceDataLoadedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SourceDataLoadedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

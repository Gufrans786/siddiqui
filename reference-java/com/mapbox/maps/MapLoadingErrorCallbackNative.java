package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class MapLoadingErrorCallbackNative implements MapLoadingErrorCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(MapLoadingError mapLoadingError);

    private MapLoadingErrorCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MapLoadingErrorCallbackPeerCleaner(j));
    }

    private static class MapLoadingErrorCallbackPeerCleaner implements Runnable {
        private long peer;

        public MapLoadingErrorCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MapLoadingErrorCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

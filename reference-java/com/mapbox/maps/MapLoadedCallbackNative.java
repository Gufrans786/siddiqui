package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class MapLoadedCallbackNative implements MapLoadedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(MapLoaded mapLoaded);

    private MapLoadedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MapLoadedCallbackPeerCleaner(j));
    }

    private static class MapLoadedCallbackPeerCleaner implements Runnable {
        private long peer;

        public MapLoadedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MapLoadedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

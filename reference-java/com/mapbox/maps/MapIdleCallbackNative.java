package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class MapIdleCallbackNative implements MapIdleCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(MapIdle mapIdle);

    private MapIdleCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MapIdleCallbackPeerCleaner(j));
    }

    private static class MapIdleCallbackPeerCleaner implements Runnable {
        private long peer;

        public MapIdleCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MapIdleCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

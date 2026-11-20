package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class MapClientNative implements MapClient {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void scheduleRepaint();

    public MapClientNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MapClientPeerCleaner(j));
    }

    private static class MapClientPeerCleaner implements Runnable {
        private long peer;

        public MapClientPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MapClientNative.cleanNativePeer(this.peer);
        }
    }
}

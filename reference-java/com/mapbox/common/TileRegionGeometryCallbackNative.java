package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.geojson.Geometry;

final class TileRegionGeometryCallbackNative implements TileRegionGeometryCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<TileRegionError, Geometry> expected);

    private TileRegionGeometryCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileRegionGeometryCallbackPeerCleaner(j));
    }

    private static class TileRegionGeometryCallbackPeerCleaner implements Runnable {
        private long peer;

        public TileRegionGeometryCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileRegionGeometryCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Geometry;

final class TileStoreObserverNative implements TileStoreObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onRegionGeometryChanged(String str, Geometry geometry);

    @Override
    public native void onRegionLoadFinished(String str, Expected<TileRegionError, TileRegion> expected);

    @Override
    public native void onRegionLoadProgress(String str, TileRegionLoadProgress tileRegionLoadProgress);

    @Override
    public native void onRegionMetadataChanged(String str, Value value);

    @Override
    public native void onRegionRemoved(String str);

    public TileStoreObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new TileStoreObserverPeerCleaner(j));
    }

    private static class TileStoreObserverPeerCleaner implements Runnable {
        private long peer;

        public TileStoreObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TileStoreObserverNative.cleanNativePeer(this.peer);
        }
    }
}

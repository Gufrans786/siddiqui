package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.geojson.Point;

final class ElevationDataNative implements ElevationData {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native Double getElevation(Point point);

    @Override
    public native double getTerrainExaggeration();

    public ElevationDataNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ElevationDataPeerCleaner(j));
    }

    private static class ElevationDataPeerCleaner implements Runnable {
        private long peer;

        public ElevationDataPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ElevationDataNative.cleanNativePeer(this.peer);
        }
    }
}

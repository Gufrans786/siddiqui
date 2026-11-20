package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import java.util.List;

final class CustomLayerMapProjectionNative implements CustomLayerMapProjection {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native List<Double> convertMercatorModelMatrix(List<Double> list, boolean z);

    @Override
    public native List<Double> getModelMatrix();

    @Override
    public native List<Double> getTransitionMatrix();

    @Override
    public native float getTransitionPhase();

    public CustomLayerMapProjectionNative(long j) {
        this.peer = j;
        CleanerService.register(this, new CustomLayerMapProjectionPeerCleaner(j));
    }

    private static class CustomLayerMapProjectionPeerCleaner implements Runnable {
        private long peer;

        public CustomLayerMapProjectionPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            CustomLayerMapProjectionNative.cleanNativePeer(this.peer);
        }
    }
}

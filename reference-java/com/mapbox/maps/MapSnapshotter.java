package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Point;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;

final class MapSnapshotter extends CameraManager {
    protected static native void cleanNativePeer(long j);

    private native void initialize(MapSnapshotOptions mapSnapshotOptions);

    public native void cancel();

    public native Double getElevation(Point point);

    public native Size getSize();

    public native void reduceMemoryUse();

    public native void setSize(Size size);

    public native void start(SnapshotCompleteCallback snapshotCompleteCallback);

    public MapSnapshotter(MapSnapshotOptions mapSnapshotOptions) {
        super(0L);
        initialize(mapSnapshotOptions);
    }

    protected MapSnapshotter(long j) {
        super(0L);
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new MapSnapshotterPeerCleaner(j));
    }

    private static class MapSnapshotterPeerCleaner implements Runnable {
        private long peer;

        public MapSnapshotterPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MapSnapshotter.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}

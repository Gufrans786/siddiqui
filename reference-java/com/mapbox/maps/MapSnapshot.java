package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Point;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.util.List;

final class MapSnapshot {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public native List<String> attributions();

    public native Point coordinate(ScreenCoordinate screenCoordinate);

    public native Image moveImage();

    public native ScreenCoordinate screenCoordinate(Point point);

    protected MapSnapshot(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new MapSnapshotPeerCleaner(j));
    }

    private static class MapSnapshotPeerCleaner implements Runnable {
        private long peer;

        public MapSnapshotPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MapSnapshot.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}

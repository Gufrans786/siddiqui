package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;

@Deprecated
public final class OfflineRegion {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public native OfflineRegionGeometryDefinition getGeometryDefinition();

    public native long getIdentifier();

    public native byte[] getMetadata();

    public native void getStatus(OfflineRegionStatusCallback offlineRegionStatusCallback);

    public native OfflineRegionTilePyramidDefinition getTilePyramidDefinition();

    public native void invalidate(AsyncOperationResultCallback asyncOperationResultCallback);

    public native void purge(AsyncOperationResultCallback asyncOperationResultCallback);

    public native void setMetadata(byte[] bArr, AsyncOperationResultCallback asyncOperationResultCallback);

    public native void setOfflineRegionDownloadState(OfflineRegionDownloadState offlineRegionDownloadState);

    public native void setOfflineRegionObserver(OfflineRegionObserver offlineRegionObserver);

    protected OfflineRegion(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new OfflineRegionPeerCleaner(j));
    }

    private static class OfflineRegionPeerCleaner implements Runnable {
        private long peer;

        public OfflineRegionPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OfflineRegion.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}

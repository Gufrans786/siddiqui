package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.common.TileStore;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;

public final class MapsResourceOptions {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native void clearData(AsyncOperationResultCallback asyncOperationResultCallback);

    public static native String getAssetPath();

    public static native String getBaseURL();

    public static native String getDataPath();

    public static native TileStore getTileStore();

    public static native TileStoreUsageMode getTileStoreUsageMode();

    public static native void setAssetPath(String str);

    public static native void setBaseURL(String str);

    public static native void setDataPath(String str);

    public static native void setTileStore(TileStore tileStore);

    public static native void setTileStoreUsageMode(TileStoreUsageMode tileStoreUsageMode);

    protected MapsResourceOptions(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new MapsResourceOptionsPeerCleaner(j));
    }

    private static class MapsResourceOptionsPeerCleaner implements Runnable {
        private long peer;

        public MapsResourceOptionsPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MapsResourceOptions.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}

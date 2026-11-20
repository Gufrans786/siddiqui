package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public class TilesetDescriptor {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public native void toValue(TilesetDescriptorValueCallback tilesetDescriptorValueCallback);

    protected TilesetDescriptor(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new TilesetDescriptorPeerCleaner(j));
    }

    private static class TilesetDescriptorPeerCleaner implements Runnable {
        private long peer;

        public TilesetDescriptorPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            TilesetDescriptor.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}

package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class CustomRasterSourceTileStatusChangedCallbackNative implements CustomRasterSourceTileStatusChangedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(CanonicalTileID canonicalTileID, CustomRasterSourceTileStatus customRasterSourceTileStatus);

    private CustomRasterSourceTileStatusChangedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new CustomRasterSourceTileStatusChangedCallbackPeerCleaner(j));
    }

    private static class CustomRasterSourceTileStatusChangedCallbackPeerCleaner implements Runnable {
        private long peer;

        public CustomRasterSourceTileStatusChangedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            CustomRasterSourceTileStatusChangedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

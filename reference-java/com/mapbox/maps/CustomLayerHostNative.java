package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class CustomLayerHostNative implements CustomLayerHost {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void contextLost();

    @Override
    public native void deinitialize();

    @Override
    public native void initialize();

    @Override
    public native CustomLayerRenderConfiguration prerender(CustomLayerRenderParameters customLayerRenderParameters);

    @Override
    public native void render(CustomLayerRenderParameters customLayerRenderParameters);

    @Override
    public native void renderToTile(CanonicalTileID canonicalTileID);

    public CustomLayerHostNative(long j) {
        this.peer = j;
        CleanerService.register(this, new CustomLayerHostPeerCleaner(j));
    }

    private static class CustomLayerHostPeerCleaner implements Runnable {
        private long peer;

        public CustomLayerHostPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            CustomLayerHostNative.cleanNativePeer(this.peer);
        }
    }
}

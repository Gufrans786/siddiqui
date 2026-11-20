package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class CustomRasterSourceTileRendererNative implements CustomRasterSourceTileRenderer {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void contextLost();

    @Override
    public native void deinitialize();

    @Override
    public native void initialize();

    @Override
    public native boolean isTileRenderable(CanonicalTileID canonicalTileID, CustomRasterSourceTileStatus customRasterSourceTileStatus);

    @Override
    public native void prerender(CustomLayerRenderParameters customLayerRenderParameters);

    @Override
    public native void renderToTile(CanonicalTileID canonicalTileID);

    public CustomRasterSourceTileRendererNative(long j) {
        this.peer = j;
        CleanerService.register(this, new CustomRasterSourceTileRendererPeerCleaner(j));
    }

    private static class CustomRasterSourceTileRendererPeerCleaner implements Runnable {
        private long peer;

        public CustomRasterSourceTileRendererPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            CustomRasterSourceTileRendererNative.cleanNativePeer(this.peer);
        }
    }
}

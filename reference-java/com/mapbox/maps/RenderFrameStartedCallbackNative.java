package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class RenderFrameStartedCallbackNative implements RenderFrameStartedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(RenderFrameStarted renderFrameStarted);

    private RenderFrameStartedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new RenderFrameStartedCallbackPeerCleaner(j));
    }

    private static class RenderFrameStartedCallbackPeerCleaner implements Runnable {
        private long peer;

        public RenderFrameStartedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            RenderFrameStartedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

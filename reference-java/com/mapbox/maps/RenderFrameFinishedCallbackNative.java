package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class RenderFrameFinishedCallbackNative implements RenderFrameFinishedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(RenderFrameFinished renderFrameFinished);

    private RenderFrameFinishedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new RenderFrameFinishedCallbackPeerCleaner(j));
    }

    private static class RenderFrameFinishedCallbackPeerCleaner implements Runnable {
        private long peer;

        public RenderFrameFinishedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            RenderFrameFinishedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

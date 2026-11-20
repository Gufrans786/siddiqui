package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class InteractionHandlerNative implements InteractionHandler {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native boolean handleBegin(QueriedFeature queriedFeature, InteractionContext interactionContext);

    @Override
    public native void handleChange(InteractionContext interactionContext);

    @Override
    public native void handleEnd(InteractionContext interactionContext);

    public InteractionHandlerNative(long j) {
        this.peer = j;
        CleanerService.register(this, new InteractionHandlerPeerCleaner(j));
    }

    private static class InteractionHandlerPeerCleaner implements Runnable {
        private long peer;

        public InteractionHandlerPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            InteractionHandlerNative.cleanNativePeer(this.peer);
        }
    }
}

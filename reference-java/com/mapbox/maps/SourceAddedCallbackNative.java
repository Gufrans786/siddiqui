package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class SourceAddedCallbackNative implements SourceAddedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(SourceAdded sourceAdded);

    private SourceAddedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new SourceAddedCallbackPeerCleaner(j));
    }

    private static class SourceAddedCallbackPeerCleaner implements Runnable {
        private long peer;

        public SourceAddedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SourceAddedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}

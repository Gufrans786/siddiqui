package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class PlaybackFinishedNative implements PlaybackFinished {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run();

    private PlaybackFinishedNative(long j) {
        this.peer = j;
        CleanerService.register(this, new PlaybackFinishedPeerCleaner(j));
    }

    private static class PlaybackFinishedPeerCleaner implements Runnable {
        private long peer;

        public PlaybackFinishedPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            PlaybackFinishedNative.cleanNativePeer(this.peer);
        }
    }
}

package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class MovementModeObserverNative implements MovementModeObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onMovementModeChanged(MovementInfo movementInfo);

    @Override
    public native void onMovementModeError(String str);

    public MovementModeObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new MovementModeObserverPeerCleaner(j));
    }

    private static class MovementModeObserverPeerCleaner implements Runnable {
        private long peer;

        public MovementModeObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            MovementModeObserverNative.cleanNativePeer(this.peer);
        }
    }
}

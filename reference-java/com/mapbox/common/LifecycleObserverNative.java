package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class LifecycleObserverNative implements LifecycleObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onLifecycleStateChanged(LifecycleState lifecycleState);

    @Override
    public native void onMonitoringStateChanged(LifecycleMonitoringState lifecycleMonitoringState, String str);

    public LifecycleObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new LifecycleObserverPeerCleaner(j));
    }

    private static class LifecycleObserverPeerCleaner implements Runnable {
        private long peer;

        public LifecycleObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            LifecycleObserverNative.cleanNativePeer(this.peer);
        }
    }
}
